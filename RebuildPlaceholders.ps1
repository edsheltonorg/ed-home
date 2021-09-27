# set placeholder file name
$fileName = "placeholder"

# recursively delete all files that match placeholder file name
function RecurseDeletePlaceholder {
    gci $PSScriptRoot -Recurse -File -Name $fileName |
        Remove-Item
    echo "Done deleting all ($fileName)s!"
}

# create bottom directory list, using Stuart Moore's algorithm
function BottomDirAddPlaceholder {
    $dirs = gci $PSScriptRoot -Recurse -Directory
    $bottomDirs = [System.Collections.ArrayList]::new()
    foreach ($d in $dirs) {
        $t = split-path $d.FullName -Parent
        if ($bottomDirs -notcontains $t) {
            $bottomDirs.add($d.fullname) > $null
        }
        else {
            $bottomDirs.remove($t)
            $bottomDirs.add($d.fullname) > $null
        }
    }

    # add blank file to every bottom directory, using placeholder file name
    foreach ($d in $bottomDirs) {
        New-Item -ItemType file "$d\$fileName" > $null
    }
    echo "Done creating all ($fileName)s!"
}

# User input for switch
$userInput = Read-Host "1: Full Script`n2: Only Delete '$fileName'`n"

function UserSwitch {
    param ($x)
    switch ($x) {
        "1" {
            RecurseDeletePlaceholder
            BottomDirAddPlaceholder
        }
        "2" {
            RecurseDeletePlaceholder
        }
        Default {
            echo "Input error, exiting script...`n"
        }
    }
}

UserSwitch($userInput)
