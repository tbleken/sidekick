[![Sidekick](Images/SKLogo.png)](../README.md)

## Random text generator  

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as this hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 

This tool comes in two versions.  
**RT:** Generates random text which looks like normal text.  
**Lorem:** Generates random text in the standard "Lorem Ipsum" format. 

This text is typically used as "dummy" data during testing and for documentation.

Both tools have two parameters which are similar but not identical.  

| Command | Short version | Syntax |  
|:---|:--|:--|  
| `RT` | |  RT lnSentences, lnParagraphs  |  
| `Lorem` | `Lor`| Lorem lnLength, lnParagraphs  |

Parameter description:  
lnSentences: Number of returned sentences  
lnParagraphs: Number of returned paragraphs. Paragraphs are divided by a blank line.  
lnLength: A numeric value which indicates the average length of the paragraphs:   

    0 means short  
    1 means medium, default  
    2 means long  
    3 means very long  

