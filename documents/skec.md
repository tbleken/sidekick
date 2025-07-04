[![Sidekick](Images/SKLogo.png)](../README.md)

## `EC` (Execute Command or Execute Clipboard)

This feature has two different functions:

1. If you specify additional "parameters", these "parameters" will be executed via Execscript(). This makes it easy to run commands when the Command Window is not available. If for instance you have forgotten Clear Events, or your code has entered an eternal loop.
2. With no parameters but with text in the clipboard (_cliptext), Sidekick will try to execute it.


| You type:                |        Result after pressing ![`F8`](Images/F8.png) |
|:-------------------------|:----------------------------------------------------------|
| `ec cancel`              | The `Cancel` command is executed |
| `ec clear event`         | The `Clear Event` command is executed |
| `ec`                       | If the clipboard contains a VFP command, it will be executed |

Sidekick uses Try-Catch-Endtry blocks for this feature, no error trapping is performed.

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 

