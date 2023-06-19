# Ed's Home Directory

Here are my main goals:

- Directories can be backed up by function.
- Files are easily discoverable.

Basically I've kept it as simple as possible!

# `$HOME/ed`

Location for files used ***only by you or your system***.

Put this directory *under* your `$HOME` so the OS doesn't pollute it.

```powershell
app-testing               # Testing different servers, services, and VMs
bin                       # Binary files for OS (copied from server)
downloads                 # Downloads & exports

media
|-- events                    # Media best categorized by time and place
|-- funny
|-- people
|-- playlists
|-- reactions
|-- social                    # Media best categorized by social groups
`-- wallpaper

private-data              # Personal data
|-- bookmarks
|-- contacts
|-- dotfiles
|-- keys-and-certs
|-- knowledge-management      # Data used for personal knowledge system
|-- paperwork                 # Copies of documents and receipts
|-- passwords
|-- professional              # Professional pictures & resumes
|-- rss
`-- vpn

projects                  # Main working location, feel free to add more
|-- code
|-- education
|-- family
|-- gaming
`-- meme

projects-public           # Separate working location for public info
|-- code
`-- media

scratch                   # Area to experiment or put temporary work
```
# `$HOME/Servers`

These are files used ***by multiple people or systems***.

At some point, each directory can be replaced by a service and/or server.

```powershell
apps                      # Production servers, services, and VMs
archival                  # Archives of media, web pages, and data
backups                   # File and OS image level backups
documentation             # Reference copies for citations
|-- education
|-- manuals
`-- web

family                    # Collaborative server for family
|-- events
|-- paperwork
|-- projects
|-- secrets
`-- temp

media                     # Media server
|-- audio
|   |-- ambience
|   |-- ambience-mix              # Music over ambient sound
|   |-- artist
|   |-- audiobook
|   |-- broadcasts                # Radio and news
|   |-- mix                       # Both playlist and proper mix sets
|   |-- muzak                     # "Fake" music, like bossanova mixes
|   |-- ost
|   `-- podcast
|
|-- games
|   |-- emulation
|   |-- native                    # Targeting real hardware (PC)
|   `-- web                       # Flash and javascript games
|
|-- print
|   |-- art
|   |-- books
|   |-- comics
|   |-- magazines
|   `-- misc
|
`-- video
    |-- broadcasts
    |-- discs
    |-- movies
    |-- shows
    `-- web

media-project-tools         # Media used in the creation of media
|-- audio
|   |-- midi
|   |-- sample-packs
|   |-- soundfonts
|   |-- stems
|   |-- tabs-and-sheets
|   `-- tool-audio
|
|-- picture
|   |-- stock-clip-art
|   |-- stock-photos
|   `-- tool-pictures
|
`-- video
    |-- stock
    |-- stock-fx
    `-- tool-videos

software
|-- font
|-- hardware                  # Hardware drivers, firmware, and software
|-- os-media                  # Install media and virtualization drivers
|-- software                  # Software installers & related media
`-- bin                       # Extracted binaries and scripts for path
    |-- cross-platform
    |-- cross-platform-posix
    |-- linux
    |-- macos
    `-- windows
```

# Download & Remove Placeholder Files

Placeholders exist so github can display the structure.

The included scripts can remove them quickly:

```bash
# Navigate to your home folder
cd $HOME

# Download and move into the project
git clone https://github.com/edsheltonorg/ed-home.git
cd ed-home

# Remove placeholders [Windows / PowerShell]; option "2"
.\RebuildPlaceHolder.ps1

# Remove placeholders [Cross-Platform / Python]; options "2"
python rebuild_placeholder.py
```

# Considerations

While this is my personal setup, you can easily extend it.

- Projects can be sorted and created for anything you want
- If you need to create a logically separate profile, make another \<user>
- Servers aren't necessary, you can organize the files now & copy later

The included scripts allow you to easily create a repo yourself!

# License

Licensed under the Zero-Clause BSD.

Treat this as you would public domain work.

Thank you!
