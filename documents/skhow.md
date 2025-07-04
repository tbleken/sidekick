[![Sidekick](Images/SKLogo.png)](../README.md)

## How does `Sidekick` work? 
#### A more detailed overview and an explanation of some of `Sidekick` several features. 

Most of Sidekick's features take a whole line, and "interprets" it. You enter some text, press ![`F8`](Images/F8.png), and the "magic" happens. Or the text is already stored in a "library" file, typically a .prg. 

If no text is marked and the cursor is "inside" a word, `Sidekick` will Select the table with that name. If that alias is not in use, `Sidekick` calls PEME_OpenTable.PRG, if it exists, to try to open the table. This is ["SuperBrowse mode"](sksb.md).

Before checking for keywords, the tool tries to execute the current line, or all the marked lines, if more than one is marked. This gives a very easy way to execute a line of code, or a part of some code. Note that in line comments (&&) are properly ignored. *See also [Execute Selected Text](skrc.md).*  

An initial \* is respected as a commented line for single executable lines. **However**, if the first word following the \* is a `Sidekick` keyword, the \* is ignored! This makes it easy to hide "secret" expandable `Sidekick` "code" in your programs. This code will only be available during your development, since it will be ignored in the working program.

*Note:* To distinguish "real" VFP commands from `Sidekick` keywords, it's necessary to add the the keyword `ed`, as the first word in a line in a prg. This is **not** necessary in the Command window. 

This is really handy, since you can have a special file with all your `Sidekick` code snippets. Tip: Use `SKTestarea.prg` for this, available directly from the Command window by typing . (dot) and pressing ![`F8`](Images/F8.png).

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 
