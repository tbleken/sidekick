[![Sidekick](Images/SKLogo.png)](../README.md)

## EC (Execute clipboard)

If the clipboard (_cliptext) contains text, this command will make Sidekick try to execute it.


| You type:                |        Result after pressing ![`F8`](Images/F8.png) |
|:-------------------------|:----------------------------------------------------------|
| ec                       | If the clipboard contains a VFP command, it will be executed |
 
Sidekick will try to execute the content of the clipboard inside a Try-Catch-Endtry block, no error trapping is performed.

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as this hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 

