[![Sidekick](Images/SKLogo.png)](../README.md)

## `FL` (File Lister)

A super quick file lister with no "bells and whistles".  

It will list all the matching files in the current folder and path.  

Unlike DR and its variants, the files are sorted alphabetically within each folder, and the folders are listed in the order they are specified.  

It takes only one optional parameter, a wildcard expression. These rules applies:  

* With no dot as parameter, the wildcard is checked against the files' extensions.
*	The same happens when the first character is a dot.
*	With a parameter which ends with a dot, all file extensions will be included.

These are some legal Sidekick commands: 

| Command | Action |
|:---|:---
| 	`FL *` |			All files are listed|
|	`FL`	|		All `.prg`  files are listed since .prg is default|
|	`FL dbf`	|		All `.dbf`  files are listed|
|	`FL p?g`	|		All `.prg` and `.png`  files are listed |
|	`FL p*.`	|		All  files where the name starts with a `p` are listed |
|	`FL p*.v*` |		Same as above, except the extension must start with a `v`|

By default, nothing happens when you close the Sidekick Form.  
However, if you close the form with Enter, you have a few additional options. Both can copy the highlighted file's path and name to the clipboard.  
*	Add the command line switch `/Y` (as in Yes) to have this done directly.
*	You can also use the alternative command `FLY` to have the filename copied directly.
*	Or add the command line switch `/Q` (as in Question) to be asked to confirm.




![skfl](./Images/skfl.png)






