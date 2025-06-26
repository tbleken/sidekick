[![Sidekick](Images/SKLogo.png)](../README.md)

## `TA` (or `.`) (Test Area)

### Your easy accessible testing area `SKTestArea.prg`  
`SKTestArea.prg` is initially an empty file. The purpose is to have *one* file to use during your development and testing. If the first line is `Return`, no harm is done if you accidentally "do" it.  

This file is also a perfect place to store your frequently used `Sidekick` "commands"  

Update: You can now have more than one of these testing areas, all will have names that start with `SK`.


| You type:                |        Result after pressing `F8`                                |
|:-------------------------|:----------------------------------------------------------|
| `Test`                  | Opens `SKTestArea.prg`  |
| `Ta`                  | Same as above  |
| `. (dot)`                  | Same as above  |
| `, (comma)`                | Same as above                              |
| `Ta 1`               | Opens `SKTestArea_1.prg` |
| `.1`           | Same as above |
| `. 1` | Same as above|
| `.MyTest` | Opens `SKTestArea_MyTest.prg`|

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools.