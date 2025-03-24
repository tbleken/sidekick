### 2025-01-15, Version 1.50 (Not released yet)

Complete re-write where the whole Pandora "engine" now is moved into a separate class library, `Thor_proc_pandora.vcx`.  

####  New commands: 
* [`zip`](documents/panzip.md): Zip a file or several files separated by commas, into a file you specify, or into an automatically incremented target file. "Related" files will automatically be included.
* [`unzip`](documents/panunzip.md): Unzip a file into the folder of your choice, or into a user configurable default folder.
* [`tidy`](documents/pantidy.md): Move a file or several files separated by commas, into a folder you specify, or into an automatically incremented target folder. "Related" files will automatically be included.

#### New functionality:
* [`pandora.ini`](documents/panconfig.md): If the configuration file `pandora.ini` doesn't exist, it's automatically created with the default values set. Edit it to fit your preferences.

# Breaking change:
The "long" `Pandora`command `Dir` is no longer supported, since it "collides" with VFP's command `Dir` which has similar but not identical behavior. Instead you can use `dr`, although we recommend the shorter version `*`.  
The **extended** dir versions, `dirx` and `dire`, still work as normal. Although we recommend the shorter versions, `**` and `***`.  

### 2024-12-18, Version 1.10

Several bugs fixed, and documents updated.  
Minor changes to [`NO`](documents/panno.md) syntax, parameter must be without any space characters.

New commands added: 
* [`?= memvar`](documents/pandb.md): Pandora will replace this with `?'memvar',memvar`. An easy way to add debugging info.
* [`Db memvar`](documents/pandb.md): Pandora will replace this with `Debugout 'memvar',memvar`. Similar to `?`, to add debugging info.     
* [ `EC`:](documents/panec.md) Pandora will try to execute whatever is in the clipboard.  
* [ `ES`:](documents/panes.md) Pandora creates the EdisSource() code to open the active form(s)/program(s) and place the cursor at the current position. Several options are available.
* [`*n`:](documents/pancomm.md) Will create a line of * (asterisk) characters repeated `n` times. This option is frequently used to separate code segments, typically procedures and functions.

New shorter syntax options to frequently used commands, works in the command window only:
* [`+`:](documents/pandir.md#dirc) Short version of [DirX](documents/pandir.md#dirc), will show "all" data for VFP files, Enter opens file.
* [`++`](documents/pandir.md#dirx): Short version of [DirRun](documents/pandir.md#dirx), will show "all" data for VFP files, Enter tries to run file. 

### 2024-11-19, Version 1.07

Pandora didn't always accept upper or mixed case keywords, fixed.


### 2024-09-20, Version 1.06

Minor bug fixes.  

Added shorter syntax options for some commands:  
* [`De`](documents/pandesc.md) is a shorter form for [`Desc`](documents/pandesc.md)
* [`Lor`](documents/panrt.md) is a shorter form for [`Lorem`](documents/panrt.md)

### 2024-09-18, Version 1.05

Minor bug fixes.  

Added the possibility to pass a string parameter to custom Pandora extensions. 

### 2023-11-06, Version 1.04

Added two new commands, both have similar behavior but with different parameters and results.

[`RT`:](documents/panrt.md) Generates random, readable but meaningless text. For creating "dummy" values.  
[`Lorem`:](documents/panrt.md) Generates random and meaningless text. Also for creating "dummy" text.

### 2023-11-03, Version 1.03

Changed how `Pandora` stores the name of the currently selected `.pan` project file. The name of this file is now stored in `Pandora.txt` in the current folder. If no `Pandora.txt` file exists, the default `Pandora.pan` is used. This makes it possible to have separate active `Pandora` projects for different folders.

Added options for `TA` command: It now allows a parameter which will be added to the name of the test area. See [Your easy accessible testing area Pandora.prg](documents/panta.md) for details.

### 2023-10-14, Version 1.02 ###

Added new command :
* [`Dirrun`](documents/pandir.md#dirx) and the shorter version [`***:`](documents/pandir.md#dirx)  
This command will limit the listed files to .prg and .scx, and **run** the selected file.  

Changed the short command for [`Inc`](documents/paninc.md) to [`#`](documents/paninc.md).

Several minor changes to the documentation.

### 2023-10-5, Version 1.01 ###

Changed the syntax for the Dir commands, and in which window the different syntax versions can be used.
Most important is the new DirX command and the command's shorter versions,
`**` and `**:`. The latter, and `\*:` which is short for `Dir`,  can now also be used in all of VFP's editors.  

The addition of `DirX` and the shorter versions, means fewer commands to remember. A side effect is that some earlier `Dir` options can't be called anymore. Instead all the options are now combined into the new `DirX` command, and its shorter versions.

Documentation updated accordingly.

Corrected the documentation for Pandora's command [`Ins`](documents/panins.md).

### 2023-10-2, Version 1.00 ###

#### First release of `Pandora` to go public

![Picture](./documents/Images/vfpxpoweredby_alternative.gif)
