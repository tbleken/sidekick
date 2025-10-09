* Description: Sidekick *

Lparameters lxParam1

#Define ccVersion '1.37'

#Define ccXToolName        'Sidekick'
#Define ccSidekickHelp 'https://github.com/tbleken/Pandora'
* Standard prefix for all tools for Thor, allowing this tool to
*   tell Thor about itself.

If Pcount() = 1              ;
    And [O] = Vartype (m.lxParam1)  ;
    And [thorinfo] == Lower (m.lxParam1.Class)
  With m.lxParam1

    * Required
*!*      .Prompt       = [Pandora] && used in menus
    .Prompt       = ccXToolName
*!*      .AppID        = [Pandora]
    .AppID        = ccXToolName

    * Optional
    Text To .Description Noshow && a description for the tool
A tool with many features    
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
    .OptionTool    = 'Sidekick'
    .OptionClasses = 'clsSKDefaultCommand,clsSKFontSize,clsSKGridAuto,clsSKNewFirst,clsSKPathReturned,';
      + "clsSKDisplayCase,clsSKMRUTable, clsSKNextLength, clsSKBackupFolder, clsSKUnzipFolder, clsSKZipTarget, clsSKZipDelay,";
      + "clsSKProject, clsSKRun, clsSKMaxDescriptLine, clsSKHelpURL ,clsSKWaitTimeout"
    .OptionClasses = .OptionClasses + ', clsSKTestArea'
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
  m.tcCommand = Evl(m.tcCommand , '') 
  lcVcxFile = Execscript(_Screen.cThorDispatcher, [Full Path=] + [thor_proc_sidekick.VCX])
  Local loSidekick as sidekick of "tools\Procs\thor_proc_sidekick.vcx"
  loSidekick = NewObject('sidekick', m.lcVcxFile ,'',m.tcCommand )
EndProc

********************************************************************************

Define Class clsSKDefaultCommand as Custom 
  Tool      = 'SideKick'
  Key        = 'DefaultCommand'
  Value      = '?'
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
Enddefine

Define Class clsSKFontSize as Custom 
  Tool      = 'SideKick'
  Key        = 'Fontsize'
  Value      = 14
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
EndDefine

Define Class clsSKGridAuto as Custom 
  Tool      = 'SideKick'
  Key        = 'GridAuto'
  Value      = .T.
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
EndDefine

Define Class clsSKNewFirst as Custom 
  Tool      = 'SideKick'
  Key        = 'NewFirst'
  Value      = .T.
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
Enddefine

Define Class clsSKPathReturned as Custom 
  Tool      = 'SideKick'
  Key        = 'PathReturned'
  Value      = 1
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
Enddefine

Define Class clsSKDisplayCase as Custom 
  Tool      = 'SideKick'
  Key        = 'DisplayCase'
  Value      = 2
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
Enddefine

Define Class clsSKMRUTable as Custom 
  Tool      = 'SideKick'
  Key        = 'MRUTable'
  Value      = 'SKMRUList'
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
Enddefine

Define Class clsSKNextLength as Custom 
  Tool      = 'SideKick'
  Key        = 'NextLength'
  Value      = 4
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
EndDefine

Define Class clsSKBackupFolder as Custom 
  Tool      = 'SideKick'
  Key        = 'BackupFolder'
  Value      = 'Bu?'
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
Enddefine


Define Class clsSKUnzipFolder as Custom 
  Tool      = 'SideKick'
  Key        = 'UnzipFolder'
  Value      = 'SKUnzip'
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
EndDefine

Define Class clsSKZipTarget as Custom 
  Tool      = 'SideKick'
  Key        = 'ZipTarget'
  Value      = 'SKZip_'
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
EndDefine

Define Class clsSKZipDelay as Custom 
  Tool      = 'SideKick'
  Key        = 'ZipDelay'
  Value      = 100
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
EndDefine

Define Class clsSKProject as Custom 
  Tool      = 'SideKick'
  Key        = 'Project'
  Value      = 'Sidekick'
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
EndDefine

Define Class clsSKRun as Custom 
  Tool      = 'SideKick'
  Key        = 'RunCommand'
  Value      = 'exe'
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
Enddefine

Define Class clsSKMaxDescriptLine as Custom 
  Tool      = 'SideKick'
  Key        = 'MaxDescriptLine'
  Value      = 15
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
Enddefine

Define Class clsSKHelpURL as Custom 
  Tool      = 'SideKick'
  Key        = 'HelpUrl'
  Value      = 'https://github.com/tbleken/sidekick'
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
EndDefine

Define Class clsSKTestArea as Custom 
  Tool      = 'SideKick'
  Key        = 'TestArea'
  Value      = 'SKTest'
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
EndDefine

Define Class clsSKWaitTimeout as Custom 
  Tool      = 'SideKick'
  Key        = 'WaitTimeout'
  Value      = 3
  EditClassName = 'skoptions of Thor_Options_Sidekick.VCX'
Enddefine






