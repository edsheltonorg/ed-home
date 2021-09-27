# Project Overview

This is my personal directory structure & system I've used for a long time.

Advantages to system:
- Root is completely seperate from preferred OS, increasing portability.
- Top level locations can be scaled to different disk / network mounts easily.
- Structure naturally divides by purpose, visibility, and utility to user.
- Structure easy to backup or quickly move around.
- Structure has version control and backups in mind.

## Overview

| Directory | Contents                                                     |
| ---------- | ------------------------------------------------------------ |
| archival | Storage of files and media intended for archival use primarily |
| ed | User related files and media |
| job   | Job related files and media, separated for easier discernment |
| media | Traditional large-format shareable static content |
| media-games | Storage of videogame media |
| media-sw | Storage of user-agnostic software media |
| people | Storage of files and media for friends and family mostly |
| rclone-mounts | Clean place to mount networked drives, cloud backups mainly |

## Remove all those placeholder files

Each bottom level directory has a blank file so github will show the structure.

To remove the blanks, follow these instructions:

- `git clone https://github.com/edsheltonorg/ed-folder-structure.git`
- `cd ed-folder-structure`
- Run my placeholder script:
    - Windows: `.\RebuildPlaceHolder.ps1`
    - Linux: `python rebuild_placeholder.py`
- Select option `2`
