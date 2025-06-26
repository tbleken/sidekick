6[![Sidekick](Images/SKLogo.png)](../README.md)

## `ES` (EdisSource builder)

This command will create the correct EditSource() command necessary to open the active form(s) and/or program file(s), and place the cursor on the current line.  

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 

| You type:                |        Result after pressing ![`F8`](Images/F8.png)|
|:-------------------------|:----------------------------------------------------------|
| es       | Sidekick will show the built syntax to open the active window, and ask if you want to copy it to the clipboard |
| es all   | Same as above, all the open windows are included, except the active one |

The different path options are defined in Sidekick Options (Thor Tools -> Options). However, this setting can be temporarily overridden:
* `es /f` means full path, fullpath(filename) is used.
* `es /j` means no path, justfname(filename) is used.
* `es /r` means relative path, sys(2014(filename)) is used.


## Sidekick project file [`Sidekick.sk`](skorg.md)
 
If you have a [`Sidekick`](skorg.md) "project" file open, this command behaves differently.

| You type:                |        Result after pressing ![`F8`](Images/F8.png)              |
|:-------------------------|:----------------------------------------------------------|
| `es 1-999` (x)      | `Sidekick` will show the syntax to open all the active windows, and ask if you want to paste it a the current position. `x` will be used as project number.|
| `es +`   | Same as above, except the first available group number will be used, and you will be asked to enter a name for this group |
| `+`   | Same as above, this short version works only in the `project file` |
| `es + SomeName`   | Same as above, except the first available group number will be used, and the specified name for this group will be suggested |
| `+ SomeName` | Same as above |

`x` must be an integer. Every line in the created code will be prepended with this number, and will form a group, either a new one, or added to an already existing group. See the [documentation](skorg.md) for details. 

If no group number is entered, 0 will be used, meaning the group of files that will always be opened if any group is opened. This is done by typing the group number in the command windows, and press ![`F8`](Images/F8.png).

As specified in the second line, if you type `+` as a parameter, the lowest unused group number will be located. This makes it very easy to create a new `Sidekick` "project", and give it a name.

If you add `/r` after `es` (or `+`), you force relative paths. Likewise, `/f` will force full paths.

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as this hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 
