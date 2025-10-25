
[![How Sidekick works](documents/Images/SKLogo.png)](documents/skhow.md)

SideKick version 1.50 released October 25, 2025.

[What's new in this release](Change%20Log.md)

***
`Sidekick` is a collection of powerful VFP add-on tools that are launched via command line syntax followed by pressing a hotkey.

In this documentation ![`F8`](documents/Images/F8.png) is used as this hotkey, for consistency. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools.

Some of these programmers' tools are unique to `Sidekick`, while others provide access to existing Thor tools.  
This is a list of all the "commands" that `Sidekick` supports, along with a short description. Click the text for details.

**Note:** In some cases a space as delimiter between a command and one or more parameters can cause unexpected problems. For instance a space can trigger an unwanted Intellisense routine. To avoid this, you can use a vertical bar, `|`, instead of the space.

# General commands: 

These "commands" work in **all** of VFP's code editors, including the command window:

|Command | Result after pressing `Sidekick` hotkey, e.g. ![`F8`](documents/Images/F8.png)|
|:--|:-------------|
|[(-nothing-)](documents/skf8.md)| [Opens inputbox so you can type in `Sidekick` or VFP commands](documents\skf8.md)| 
|[. (dot)](documents/skta.md)| [Easily accessible "test area"](documents/skta.md)| 
|[!](documents/skext.md)| [Create and run your own `Sidekick` extensions](documents/skext.md)|
|[!!](documents/skext.md#paned)| [Edit your own `Sidekick` extensions](documents/skext.md#paned)|
|[EC](documents/skec.md)|[Tries to execute the contents of the clipboard](documents/skec.md)|
|[Ed](documents/sked.md)| [An easy way to open most files](documents/sked.md)|
|[FF](documents/skff.md)| [File Finder, searches the current folder and subfolders](documents/skff.md)|
|[FL](documents/skfl.md)| [File Lister, searches the current folder and path](documents/skff.md)|
|[Fp](documents/skfp.md)| [Field picker to create SQL statements](documents/skfp.md)|
|[Hk](documents/skhk.md) |[List of all assigned hot keys](documents/skhk.md)|
|[Lorem](documents/skrt.md) | [Generate random "Lorem Ipsum" text](documents/skrt.md)|
|[NO <sub>Note 1</sub>](documents/skno.md)     |[NewObject() syntax builder](documents/skno.md)|
|[Pa](documents/skpa.md) | [Show the current Path plus some more](documents/skpa.md)|
|[Sk](documents/skext.md) | [Create and run your own `Sidekick` extensions](documents/skext.md)|
|[Sked](documents/skext.md#paned) | [Edit your own `Sidekick` extensions](documents/skext.md#paned)|
|[RT](documents/skrt.md) | [Generate random readable text](documents/skrt.md)|
|[Ta (or Test, .)](documents/skta.md)| [Easily accessible "test area"](documents/skta.md)|
|[Th (or Thor, Tools)](documents/skth.md) | [Picklist of registered **Thor** tools](documents/skth.md)|
|Version (or Ver) | Shows `Sidekick` version number|

**Note 1:** `NO` behaves somewhat differently in the Command Window than in VFP's editors.

# Command window commands: 

In addition to the "commands" listed above, these work **only** in the **Command Window:**

|Command |Result after pressing `Sidekick` hotkey, e.g. ![`F8`](documents/Images/F8.png)|
|:--|:-------------|
|[? ](documents/skmnu.md)  | [Menu of relevant `Sidekick` options](documents/skmnu.md)|
|[- (minus)](documents/skorg.md)  | [Opens default files listed in active .sk file](documents/skorg.md)|
|[+](documents/skdir.md)  |[List all VFP files in the path](documents/skdir.md)|
|[++](documents/skdir.md#dirc)  | [Same as above, more info in the table](documents/skdir.md#dirc)|
|[+++](documents/skdir.md#dirc)  | [Same as above, will try to run the selected file](documents/skdir.md#dirc)|
|[0 (zero)](documents/skorg.md) | [Opens active .pan file for editing](documents/skorg.md)|
|[De (or Desc)](documents/skdesc.md)| [List of all prg's which have a description](documents/skdesc.md)|
|[Dr](documents/skdir.md)  |[List all VFP files in the path](documents/skdir.md)|
|[Pr (or Project, *)](documents/skorg.md#proj) | [List of projects in active .sk file](documents/skorg.md#proj)|
|[Tidy](documents/sktidy.md)  | [Easily move one or several files ](documents/sktidy.md)|
|[Zip](documents/skzip.md)  | [Easily zip one or several files ](documents/skzip.md)|
|Help |This document|

# Code windows commands:
Likewise, these "commands" **only** work in VFP's code editors (**Modify Command, Form or Class designer**):

|Command | Result after pressing `Sidekick` hotkey, e.g. ![`F8`](documents/Images/F8.png)|
|:--|:-------------|
|[-na-](documents/skrc.md)  | [Run the code where your cursor is](documents/skrc.md)|
|[-blank-](documents/skmnu.md)  | [Menu of relevant Sidekick options](documents/skmnu.md)|
| [?= ](documents/skdb.md)|[Creates ? command for listing memvar name and value on the screen](documents/skdb.md)|
|[+ ](documents/skins.md)| [Insert contents from a prg](documents/skins.md)|
|[=](documents/skeval.md)| [Insert returned value from a function](documents/skeval.md)|
| [*n (n=number) ](documents/skcomm.md)|[Create comment line to break code](documents/skcomm.md) | 
|[Db](documents/skdb.md) | [Creates DebugOut command for listing memvar name and value in the DebugOut window](documents/skdb.md)|
|[DD <sub>Note 2</sub>](documents/skdd.md)     | [DoDefault() syntax builder](documents/skdd.md)|
|[Es](documents/skes.md)| [Creates EditSource() command for open windows](documents/skes.md)|
|[Eval](documents/skeval.md)|[Insert returned value from a function](documents/skeval.md)|
|[Inc](documents/skinc.md)| [Insert #Include statement](documents/skinc.md)|
|[Insert (or Ins, +)](documents/skins.md) | [Insert contents from a prg](documents/skins.md)|
|[Menu](documents/skmnu.md)  | [Menu of relevant `Sidekick` options](documents/skmnu.md)|

**Note 2:** `DD` only works in VFP's **Form or Class Designer**, and **not** in *Modify Command*.

**-na-** means special handling, see [documentation](documents/skrc.md) for details.

-----------------------

## `Sidekick` "Project Organizer"

In addition to the features mentioned above, `Sidekick` comes with an advanced "project organizer", [click here for details](documents/skorg.md).

----------------------  

## Installation
  
The easiest and only supported way to install `Sidekick`, is to use Thor's Check For Update.

---------------------

#### [How does `Sidekick` work? And an introduction to some of its features.](documents/skhow.md)

--------------

# More "extras" to follow, suggestions are welcomed
