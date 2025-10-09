[![Sidekick](Images/SKLogo.png)](../README.md)

## How does `Sidekick` work? 
#### A more detailed overview and an explanation of some of `Sidekick` several features. 

Most of Sidekick's features take a whole line, and "interprets" it. You enter some text, press ![`F8`](Images/F8.png), and the "magic" happens. Or the text is already stored in a "Sidekick project" file, typically a .sk. 

If no text is marked and the cursor is "inside" a single word, `Sidekick` will check for a table with that name. If it finds one, it will select that table and open it a special Sidekick form. 

Then Sidekick will try to execute the current line, or all the marked lines, if more than one is marked. This gives a very easy way to execute a line of code, or a part of some code. Note that in line comments (&&) are properly ignored. *See also [Execute Selected Text](skrc.md).*  

`Sidekick's` next step is to analyze the line in which the cursor is positioned. 

An initial \* is respected as a commented line for single executable lines. **However**, if the first word following the \* is a `Sidekick` keyword, the \* is ignored! This makes it easy to hide "secret" expandable `Sidekick` "code" in your programs. This code will only be available during your development, since it will be ignored in the working program.

*Note:* To distinguish "real" VFP commands from `Sidekick` keywords, it's necessary to add the the keyword `ed`, as the first word in a line in a prg. This is **not** necessary in the Command window. 

This is really handy, since you can have a special file with all your `Sidekick` code snippets. Tip: Use `SKTestarea.prg` for this, available directly from the Command window by typing . (dot) and pressing ![`F8`](Images/F8.png).  

Update: Sidekick now also includes the file `thor_tool_sidekickmenu.prg`. It's recommended to create a Thor hotkey to this file also, for instance **shift-**![`F8`](Images/F8.png). With this the "screen reader" part of `Sidekick` bypassed, and will show the Sidekick Command Box directly, independent of "where" in the IDE you are.  

If you open this file, you will see that the variable `tcCommand` is an empty string by default. Replace it with a Sidekick command of your liking.

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 
