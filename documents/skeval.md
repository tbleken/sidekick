[![Sidekick](Images/SKLogo.png)](../README.md)

## `EV` (or `=`) (EValuate function)

### Insert the result from functions

If you want to insert the `result` of a function into your file, **Sidekick** makes this extremely easy.

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 


| You type:  | After pressing ![`F8`](Images/F8.png):|
|:----------|:----------------------|
| `= xxx()`  | The **result** of function xxx is inserted |
| `= xxx` | Same as above |
| `=xxx` | Same as above |
| `eval xxx`  |  Same as above |

`xxx` can be **any** VFP function or UDF. Only functions which return a value, are accepted. 

Example:  

| You type:  | After pressing ![`F8`](Images/F8.png):| 
|:----------|:----------------------| 
| `=date()` | Today's date is inserted| 
| `eval date()` | Today's date is inserted| 
| `=date` | Same as above, parentheses (brackets) are automatically added with no parameters | 
| `=myfunc()` | myfunc is called and returned value is inserted|  
| `=sqrt(10)` | 3.16 is inserted (or 3.1623 if Set Decimals is 4)|

One common use for this feature, is to add misc. comments with important "dynamic" information into the source code.  

If you have a file called `mycrap.prg` in your path, this file is also checked for functions with the given name.  

For instance I have the following function in my own `myscrap.prg`:  
```foxpro
Function Fix
Text To lcReturn Noshow Textmerge Pretext 1+2+4
  ************************************************
  ****   This segment must be fixed  *************
  ************************************************
EndText
Return m.lcReturn
```
When I use the Sidekick command `=fix`, the following text is inserted:  
```foxpro
************************************************
****   This segment must be fixed  *************
************************************************
```
This makes this text stand out since I have configured VFP to show comments with a yellow background. And the word `Fixed` is normally not used elsewhere in my code.


***Note:*** This function only works in VFP's editors 