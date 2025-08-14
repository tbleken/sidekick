[![Sidekick](Images/SKLogo.png)](../README.md)

## `BE` (BindEvent builder)

The syntax for BindEvent() is a little cryptic. This little tool makes it much easier, especially since it in most cases can take advantage of IntellisenseX. 

To illustrate, this is what you type in a method:
```foxpro
be this.Click thisform.Cbomonths1.Refresh
```


After pressing ![`F8`](Images/F8.png), this is this is what you get:

```foxpro
Bindevent(this, "click", thisform.cbomonths1, "refresh")
```

**Note 1:** This tool only works in the Class Editor or Form Designer.

**Note 2:** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 
