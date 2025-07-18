[![Sidekick](Images/SKLogo.png)](../README.md)

## `BR` (Browse)



| You type:                |        Result after pressing ![`F8`](Images/F8.png) |
|:-------------------------|:----------------------------------------------------------|
| `br`                       | The currently selected table is shown in `Sidekick's` grid form |
| `br /w`      | Same as above, except the grid is writable |

By default the grid is read-only, add `/w` to enable writing.

The grid has advanced incremental search; only record where all the given "words" are anywhere in any field, including numeric and memo fields.

This what you see if you issue 
```foxpro
Use (_foxcode) Again
Br (Press F8)
```
</br>  

![skbr](Images/skbr.png)

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 

