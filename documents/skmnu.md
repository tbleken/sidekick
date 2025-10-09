[![Sidekick](Images/SKLogo.png)](../README.md)

## `Menu` (or `?`)

This "command" shows a list of all the `Sidekick` tools that are relevant from where in the IDE you are. 

| You type:                |        Result after pressing ![`F8`](Images/F8.png) |
|:-------------------------|:----------------------------------------------------------|
| `menu`                       | A list of all relevant `Sidekick` commands is shown.  |
| `?` | Same as above |  
| `??` | Same as above, except your Sidekick extensions are not included 

Select the option you want, and press `Enter`.  

Some commands have necessary or optional parameters. For these commands, an inputbox will open so that you can type them in, and press `Enter`.

**Important**: The `Sidekick` commands that "write back" to the command window or one of VFP's code editors, can not be called from this menu! They require that the code window in question is the active one when you press ![`F8`](Images/F8.png).  

The actual menu you will, see depends on where in the IDE you are.

![skmenu](./Images/skmenu.png)![skmenu]

**New feature** added in version 1.32 is that all your Sidekick extensions, sk_*.prg, are included in the list. Instead of a valid URL, they have the text *Private* or *Override*.    
In the image above you will see several such extensions.  

Note that if your extensions have a valid *description* line, it is displayed. If not, you will see a reminder, like in the *DOS* entry.  

Also note the extension **Br** where the URL is *Override*. **Br** is an internal Sidekick command. However, since also a file called *sk_br.prg* exists in the current path, it will take precedence. In other words, Sidekick's internal **BR** command is overridden. 

Use two question marks, `??`, as command if you want to see a list containing only internal Sidekick commands. Note that in this case, overridden Sidekick commands will still be overridden!

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools.