# root

I prefer to keep all these folders on a separate NTFS partition.

## Overview

| Directory | Contents                                                     |
| ---------- | ------------------------------------------------------------ |
| archival | Storage of media and files intended primarily for archival |
| ed | User related files and media |
| job   | Job related files and media, separated for easier discernment |
| media | Traditional large-format shareable static content |
| media-games | Storage of videogame media |
| media-sw | Storage of user-agnostic software media |
| people | Storage of files and media from other users |

## Remove all those placeholder files

Each bottom level directory has a blank file so github will show the structure.

To remove the blanks, follow these instructions:

- `git clone https://github.com/edsheltonorg/ed-folder-structure.git`
- `cd ed-folder-structure`
- Run my placeholder script:
    - Windows: `.\RebuildPlaceHolder.ps1`
    - Linux: `python rebuild_placeholder.py`
- Select option `2`
