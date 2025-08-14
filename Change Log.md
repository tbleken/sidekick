### 2025-08-14, Version 1.25

Some bugs have been fixed.  

New command [ER (Error)](documents/skerr.md) is implemented. This command will show details about the last generated error in a grid.  

Added the possibility to override `Sidekick's` features. For instance if you don't like the functionality of the command `br`, you create `sk_br.prg`. `Sidekick` will find this file, and run it instead of the built in function. See [Create your own Sidekick extensions](documents/skext.md) for more.

Necessary changes have been done to make sure that most of `SideKick's` commands can be run from an inputbox when the cursor is on a blank line or over the desktop.  

A nice side effect of this is that you in many situations get an "emergency exit". For instance if you can't access the command window because your program is running, you can press the dedicated `SideKick` key, type `Cancel` followed by `Enter`. Or `Set Step On` to activate the Debugger. Or `clear event` and similar commands.

### 2025-07-31, Version 1.21
Fixed a long lasting bug in the grids which made PgDn and PgUp behave "strangely". 

### 2025-07-30, Version 1.20
This version includes a complete remake of how SideKick separates the different "commands" into designated methods. Earlier this was done in a series of Case statements. The new routine involves a "Factory model" which makes maintenance much easier.  

One side effect of this new model, is that it's not necessary to have a space between a `Sidekick` "command" and the first parameter.  

The [TA (Test area)](documents/skta.md) tool has been vastly improved, and several options has been added. Over all, this has been a much more appealing feature. See [the documentation](documents/skta.md) for more.  



### 2025-07-04, Version 1.05
Added option to the `EC` command, making it possible to execute commands when the Command Window is not available. Super handy for instance when your code hangs.

### 2025-07-03, Version 1.04
More minor bug fixes.

### 2025-07-01, Version 1.03
Minor bug fixes.

### 2025-07-01, Version 1.02

Minor bug fixes. Added code to set defaults when run before it's configured.
Added `Sidekick.sk` file as a sample `Sidekick` project file.

### 2025-06-30, Version 1.00 First version released to the public.

All documentation is synchronized.



 

![Picture](./documents/Images/vfpxpoweredby_alternative.gif)
