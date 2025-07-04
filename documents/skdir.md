[![Sidekick](Images/SKLogo.png)](../README.md)

## File Picklists (advanced Dir)</a>  

**Sidekick** comes with a nice "file finder" with several options. For instance it will show the number of records in all DBF's plus the size of the corresponding memo file.    

To start with a more limited selection of files, you can specify one or more "words" from the file name. All listed words, separated by a space, must be present in the filename or path of the listed files. If the "words list" contains a `.` (dot), you can also specify the extension. In that case also non VFP files are included in the search. 

When the list shows up, you can filter it even further, each "word" you type must be present in what you see or inside the memo fields. Also numeric fields and date fields are included in the filtering process.

This tool comes in three variants:

**Note ** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 


# Version #1, `+` (or `dr`) : Will open files for editing


| Command        |        Result after pressing ![`F8`](Images/F8.png)      |
|:--|:----------------------------------------------------------|
|`+`                     | Picklist of all VFP files in the path, for editing |  
|`+ bb`|  As above, only files having `db` in its name *or* extension|
|`+ db cust` |  All files with names containing  `db` *and* `cust` |  
|`+ my .prg` |  All files with `my` in the name *and* `prg`as extension|
| `+ .png` | All files `.png` files |
| `+ *`  | All files are shown |
| `dr *`  | Same as above, see note below |  

**Note** that the `+` version only works in the command window! The reason is that `+` is also used as a short version for `Sidekick's` [Ins](skins.md) command. If you need this functionality from one of VFP's program editors, you can use `dr` instead. Or even better, use the enhanced version `++` which gives much more information, see next paragraph for details.

![skdir](Images/skdir.png)

<a id="dirc">  

# Version #2, `++` (or `drx`) : Like #1 with many more information </a>

Version 2 adds several more columns, and more information:  

* **Lines column:** the number of lines in all .txt, .prg, .h and .sk files
* **Text column:** the content of the files as mentioned above   
* **Memosize column:** the size, in bytes, of the corresponding memo files.  
* In addition, the record count is filled in for **all** VFP tables, including .dbc and .*x files. This can be very handy for analyzing the complexity of applications.

This gives three big advantages:  
1. Hover the mouse over the field `text`, and you will see the file contents as a tooltip.
1. The incremental search also includes the contents of the files.
2. `++` works in all of VFP's editors, including the Command window.

Note that the syntax is identical to `+`. This means that unless you have a slow computer, slow network connection or extremely many files, it's recommended to always use the `++` version. 
![dirc](Images/skdirc.png)
<a id="dirrun"> 

# Version #3, `+++` (or `drr`) : Similar to version #2, `++`, except it will *run* forms and programs </a>

Syntax is identical to #1 and #2. This variant will show the same information as `++`, but only .prg and .scx files are listed. When you press `Enter`, **Sidekick** will try to `run` the selected file. 

![dirrun](Images/skdirrun.png)
 
## A quick summary:
* `+`: will show a picklist of all VFP "main" files
* `++`: Like `+` but with more info
* `+++`: Like `++` but will only show .prg and .scx, selected file will be `run`, if possible.



