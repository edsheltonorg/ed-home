# Project Overview

This is my personal directory structure.

Advantages to system:
- Root is completely seperate from preferred OS, increasing portability.
- Top level locations can be scaled to different disk / network mounts easily.
- Structure naturally divides by purpose, visibility, and utility to user.
- Structure easy to backup or quickly move around.
- Structure has version control and backups in mind.
- Included is a Get-Things-Done system I use, found in `./ed/private/pda/gtd/`

## Overview

| Directory | Contents                                                     |
| ---------- | ------------------------------------------------------------ |
| archival | Storage of files and media intended for archival use primarily |
| ed | User related files and media |
| job   | Job related files and media, separated for easier discernment |
| media | Traditional large-format shareable static content, think Plex server |
| media-games | Storage of videogame media |
| media-sw | Storage of user-agnostic software media |
| people | Storage of files and media for friends and family mostly |
| rclone-mounts | Clean place to mount networked drives, cloud backups mainly |

## Download this system & delete those placeholders

Each bottom level directory has a blank file so github will show the structure.

To remove the blanks, follow these instructions:

- `git clone https://github.com/edsheltonorg/ed-folder-structure.git`
- `cd ed-folder-structure`
- Run my placeholder script:
    - Windows: `.\RebuildPlaceHolder.ps1`
    - Linux: `python rebuild_placeholder.py`
- Select option `2`

## Technical Recommendations

- If dual-booting, I'd elect NTFS. MacOS/Windows/Linux/BSD all support it well.
- I'd stay away from exFAT b/c it lacks a lot of data integrity other FSs have.
- I encourage scripting your backups to encrypted `rclone-mounts`.

## Structure Recommendations

- I would change the user directory from `./ed/` to your name or handle `:)`
- I'm not a big media or videogame person. Feel free to add to what's there!
- If you can keep job stuff on job computers, always prefer that.
- Feel free to expand or delete the `./ed/private/pda/gtd/` directory.

# License

Licensed under the Zero-Clause BSD.

Treat this as you would public domain work, no attribution required. Thank you!
