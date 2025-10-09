* Description: Sidekick Menu *

Lparameters lxParam1

#Define ccXToolName        'SidekickMenu'
#Define ccSidekickHelp 'https://github.com/tbleken/Sidekick'
#Define ccVersion '1.37'


*********************************************************************************
*********************************************************************************
*********************************************************************************
* Standard prefix for all tools for Thor, allowing this tool to
*   tell Thor about itself.

If Pcount() = 1              ;
    And [O] = Vartype (m.lxParam1)  ;
    And [thorinfo] == Lower (m.lxParam1.Class)
  With m.lxParam1

    * Required
    .Prompt       = ccXToolName
    .AppID        = ccXToolName

    * Optional
    Text To .Description Noshow && a description for the tool
Sidekick version with InputBox()    
    Endtext
    .StatusBarText = []
    .CanRunAtStartUp = .T.

    * These are used to group and sort tools when they are displayed in menus or the Thor form
    .Source       = [TB] && where did this tool come from?  Your own initials, for instance
    .Category      = [] && creates categorization of tools; defaults to .Source if empty
    .Sort       = 0 && the sort order for all items from the same Category

    * For public tools, such as PEM Editor, etc.
    *!*      .Version     = [2.0] && e.g., 'Version 7, May 18, 2011'
    .Version     = ccVersion
    .Author        = [TB]
    .Link          = ccSidekickHelp && link to a page for this tool
    .VideoLink     = [] && link to a video for this tool

  Endwith

  Return m.lxParam1
Endif
If Pcount() = 0
  Do ToolCode
Else
  Do ToolCode With m.lxParam1
Endif

Return
*********************************************************************************
* Normal processing for this tool begins here.                  
Procedure ToolCode
  Lparameters tcCommand
  Local lcVCXFile

  tcCommand = Evl(m.tcCommand, []) && Blank means Sidekick Command Box with '?' as default.
  * Replace the value of tcCommand with whatever Sidekick command you want.
  lcVCXFile = Execscript(_Screen.cThorDispatcher, [Full Path=] + [thor_proc_sidekick.VCX])
  Execscript(_Screen.cThorDispatcher, [thor_tool_sidekick], [-] + m.tcCommand  )
Endproc