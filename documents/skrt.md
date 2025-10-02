[![Sidekick](Images/SKLogo.png)](../README.md)

## Random Text generator

**Note:** In this documentation ![`F8`](Images/F8.png) is consistently used as the hotkey for `Sidekick`. It can easily be changed by using one of [Thor's](https://github.com/VFPX/Thor) tools. 

This tool comes in two versions.  
`RT`: Generates random text which looks like normal text.  
`Lorem` Generates random text in the standard "Lorem Ipsum" format. 

This text is typically used as "dummy" data during testing and for documentation.

### Lorem Ipsum format:

| You type:  | After pressing ![`F8`](Images/F8.png)|
|:----------|:----------------------------------------------------------------------|
| `Lorem` | Two sentences of random text is filled in  |
| `Lor`| Same as above |
| `Lor 5`| Same as above, 5 sentences |

If no number is specified, 2 is default. Maximum number of sentences is 122.

**Option:** Add `/c` as a parameter, and the text goes to the clipboard instead of the currently active code window.

### Random Text format:

| You type:  | After pressing ![`F8`](Images/F8.png)|
|:----------|:----------------------------------------------------------------------|
| `RT` | One sentence of random "understandable" text, "medium size", is filled in  |  
| `RT 3 2`| 3 paragraphs, each of type "long" |
| `RT 3,2`| Same as above|
| `RT 1 3`| 1 paragraph, of type "very long" |

The parameters can be separated by space or a comma.

Parameters description:  

**First parameter:** Number of returned paragraphs, default is 1. Paragraphs are divided by a blank line.  
**Second parameter:** A numeric value which indicates the average length of the paragraphs:   
<ol start="0">
<li>Short</li>
<li>Medium, default </li>
<li>Long </li>
<li>Very long </li></ol>


**Option:** Add `/c` as a parameter, and the text goes to the clipboard instead of the currently active code window. 

