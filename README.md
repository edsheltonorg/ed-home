# Ed's Home Directory

Welcome to my Home Directory!

Three big issues plague other directories styles:

1. Too specific directory nesting
2. Strict file type over file function
3. No clean hand-off to managing software

This ultimately wastes your time since its not easily sustainable.

# Advantages

Using low-depth, function-first, user/server split directories:

- Scoped file-level backups are nearly free
- Portable & archivable units of data become normal
- Lower overall count of directories make discovery easier

This format should be mostly universal regardless of hobbies and OS.

# `$HOME/<USER>`

This directory holds all files unique to the user and the OS.

```powershell
bin                       # Binary files for OS(s) path(s)
|-- cross-platform
|-- cross-platform-posix
|-- linux
|-- macos
`-- windows

documents                 # Traditional uncategorized work location

downloads                 # Traditional download/export location

media
|-- events                    # Media best categorized by time and place
|-- funny
|-- people
|-- playlists
|-- professional              # Pictures of self for work
|-- reaction
`-- social                    # Media best categorized by social groups

network                   # Place to mount network locations

private                   # Personal data, intended only for me
|-- computer-data             # Data unique to me, used by programs
|   |-- bookmarks
|   |-- contacts
|   |-- dotfiles
|   `-- rss
|
|-- computer-secrets          # Data that holds login information
|   |-- keys
|   |-- otp
|   |-- passwords
|   `-- vpn
|
|-- knowledge-management      # Data used for personal wiki system
|
`-- paperwork                 # Copies of documents and receipts
    |-- education
    |-- financial
    |-- government
    |-- healthcare
    |-- identification
    |-- insurance
    |-- job
    |-- legal
    |-- property
    `-- receipts

projects                  # Main working location, sorted by function
|-- business
|-- code                      # Private code
|-- code-public               # Publicly tracked code, exercise caution
|-- education
|-- family
|-- gaming
`-- meme

shared                    # Local network sharing

virtualization            # Virtual media and related software
```

# `$HOME/Servers` or `/Servers`

This directory holds all files that can be shared with others.

```powershell
archival                  # Archives of media, web pages, and data

backup                    # File and OS image level backups

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

log                       # Ingress location for logs

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
|-- video
|   |-- broadcasts
|   |-- discs
|   |-- movies
|   |-- shows
|   `-- web
|
`-- project-tools             # Media used in the creation of media
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
git clone https://github.com/edsheltonorg/ed-home-directory.git
cd ed-home-directory

# Remove placeholders [Windows / PowerShell]; option "2"
.\RebuildPlaceHolder.ps1

# Remove placeholders [Cross-Platform / Python]; options "2"
python rebuild_placeholder.py
```

# Considerations

While this is my personal setup, you can easily extend it.

- Projects can be sorted and created for anything you want
- If you need to create a logically separate profile, make another \<user>
- Servers aren't necessary, you can simply organize files now and copy later

The included scripts allow you to easily create a repo yourself!

# License

Licensed under the Zero-Clause BSD.

Treat this as you would public domain work.

Thank you!
