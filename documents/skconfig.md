[![Sidekick](Images/SKLogo.png)](../README.md)


## Configure `Sidekick`

All important `Sidekick` settings are stored in the file `sidekick.h`. However, since an update to `Sidekick` will overwrite this file, do ***not*** edit this file!!! 

Instead, if you want to change any default values, make the changes in the file `sidekick_override.h`. This file will ***not*** be update.  

In order to change a value in `sidekick_override.h`, you must first `#UNDEFINE` the old old statement, and then `#DEFINE` a new one. Something like this: 

```foxpro
#UNDEFINE ccBackupFolder
#DEFINE ccBackupFolder 'MyBack?'
```
  
Any changes you make in `sidekick_override.h` will take effect the next time you run `Sidekick`, the necessary compilations will happen automatically.

This is a list of the different settings, and what they stand for. 

* `ccBackupFolder` (default `BU?`): Specifies the default target folder for `Sidekick's` [tidy](sktidy.md) feature. The question mark (`?`) instructs `Sidekick` to move the specified file(s) into folders with automatically incremented names. The first will be called BU0001, the next BU0002 and so on. If you delete any folder, the next folder will still be the highest "number" + 1.
* `ccMaxDescriptionLine` (default 15): Sets the maximum number of lines that `Sidekick` checks for a [Description](skdesc.md) line in program files (.prg). I higher value will increase the time it takes to show the list of matching files.  
* `ccNextLength` (default 4): Specifies the length of automatically increased numbers which can be used in `Sidekick's`[zip](skzip.md) and [tidy](sktidy.md) features.
* `ccSidekickComments` (Default `SkComments.prg`): Defines the name of the file to read "comment snippets" or "scraps" from.
* `ccSidekickDef` (default `Sidekick.txt`): Defines the name of the file which contains the name of the current [Sidekick group definition](skorg.md) file. 
* `ccSidekickHelp` (default `https://github.com/tbleken/Sidekick`): Root folder for `Sidekick` help files.
* `ccRun` (default `exe`): Defines the "command" to tell Sidekick to execute/run a file instead of opening it in [Sidekick projects](skorg.md).
* `ccUnzipFolder` (default `SKUnzip`): Specifies the default target folder for `Sidekick's` [unzip](skzip.md) feature. This folder name will always be incremented like described above. 
* `ccVersion`: The current `Sidekick` version number.
* `ccVFPFilesToList` (Default `[dbf], [scx], [vcx], [prg], [h], [dbc], [frx], [lbx], [mnx], [txt], [sk]`): List of file types to read as VFP and Sidekick files.
* `ccVFPTablesExtended` (Default `[dbf], [dbc], [frx], [lbx], [mnx], [pjx], [scx], [vcx]`): List of file extensions to read additional data from.
* `ccWaitTimeOut` (default 3000 meaning 3000 mS or 3 seconds): This value specifies who long messages are shown before they go away.  
* `ccZipDelay` (default 0.1, meaning 0.1 second or 100 mS): `Sidekick's` [zip](skzip.md) feature needs a little time to create an empty .zip file which will eventually hold the specified files. If you end up with any "ghost" files, you may have to increase this number.
* `ccZipTarget` (default `SKZip_`): Specifies the default target folder for `Sidekick's` [zip](skzip.md) feature. This folder name will always be incremented like described above. 

## `sidekick_override.h`

As mentioned above, do ***not*** make any changes in `Sidekick.h`!! Instead, make the changes in `sidekick_override.h` which you will find in Thor's Tools folder. The default content of this file is:

```foxpro
*** Override file for sidekick.h. Called from sidekick.h
***
*** This file is not overridden by updates
*** while sidekick.h is..

*** #Undefine ccRelativePath
*** #Define ccRelativePath .T.
```
Note that the last two lines must be commented if you really want `ccRelativePath` to be `.T.`.


