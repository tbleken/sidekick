[![Sidekick](Images/SKLogo.png)](../README.md)

## `?=` and `DB` 

These commands behaves similarly. Both creates code to list variable names and their value.  

`?=` will give the output on the screen  
`db` will give the output on the Debug Output, if it's open

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools.

| You type:                |        Result after pressing ![`F8`](Images/F8.png)          |
|:-------------------------|:----------------------------------------------------------|
| `?=lnVar`                    | ?'lnVar', lnVar |
| `?=m.lnMax `                    | ?'lnMax', m.lnMax |
| `?= m.lnMax `                    | Same as above, space is optional |  
| `db m.lcString `| DebugOut 'lcString ', m.lcString |

These "commands" takes advantage of IntellisenseX, if you use the `m.` version. This means that you only need to type `m.` plus a few letters, select the wanted variable name and press ![`F8`](Images/F8.png).

No rocket science, but a real time saver. :grin: