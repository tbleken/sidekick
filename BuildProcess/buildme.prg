Local lcVersionFile, lcVersionText

lcVersionFile = 'InstalledFiles\Procs\sidekick.h'
Erase (m.lcVersionFile)

lcVersionText = Textmerge('#DEFINE VERSION_NUMBER "Sidekick V <<pcVersion>> : <<pcVersionDate>>"')
Strtofile(m.lcVersionText, m.lcVersionFile)

