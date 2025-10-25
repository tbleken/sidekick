![Sidekick](Images/SKLogo.png)](../README.md)

## `INS` (or `+`) (INSert) 

### Insert the code from another prg 

Often you want to insert the code from another prg into the active file. Typically this is a small code snippet or a function. Or it can be a header file, or even a complete prg file.  

With `Sidekick` this is extremely simple.

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 


| Command | Result after pressing ![`F8`](Images/F8.png)|
|:----------|:--------------------|
| `ins` | A list of all procedures in all the prgs in the path  |
| `+` (`plus`) | Same as above |
| `+xxx` | Same as above, only procedures and prg's with xxx in its name|
| `ins xxx.prg`|The whole contents of xxx.prg is inserted|
| `+ xxx.prg` | Same as above'|
| `+xxx /v` | A list of methods from class libraries (`.vcx`) where xxx is a part of the library or method name
| `+xxx /s` | Same as above, except forms (`.scx`) are checked instead of class libraries.
| `+ .h` | A list of all .h files are presented |
| `+xxx.h`  | The complete contents of xxx.h is inserted |

If you don't specify any file extension, .prg is assumed.  

You can hover the mouse over the green cells, and see what will be inserted. Select the one you want, and press `Enter`; or `Escape` to cancel.

Result of `+ change`: 

![Ins](Images/skins.png)

Result of `+ reset /v`:  

![skinsv](./Images/skinsv.png)

Result of `+ .h`:

![skinsh](./Images/skinsh.png)

***Note:*** This function only works in VFP's code editors. In the Command WIndow the short form for this function, `+`, will show the simplest version of [Sidekick's File Picker (advanced dir)](skdir.md).
