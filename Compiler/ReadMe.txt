1. Open a console terminal
2. Change directory to -> C:\Users\Renato Mejilla\OneDrive\Desktop\COBOL\GnuCOBOL Compiler
3. Run --> set_env
4. Compile COBOL program - cobc -x cobol-program.cbl
5. run cobol-program.exe
=============================================================================================================================================

Windows quick start, February 2020+1

The best option at this time is hosted at https://www.arnoldtrembley.com/GnuCOBOL.htm

Scroll down to GnuCOBOL Compiler install binaries and choose from a few configurations. Recommend

https://www.arnoldtrembley.com/GC312-BDB-rename-7z-to-exe.7z

https://www.arnoldtrembley.com/GC312-VBI-rename-7z-to-exe.7z

Those builds include Indexed IO, full decimal math support, screens, Report Writer, more. From the soon to be GnuCOBOL 3.1-dev release. G-BDB is built with Berkeley DB, and includes GNU Debugger symbols. VBI is VB-ISAM instead of BDB, without debug symbols in the compiler. Visit the site for the latest, and more configuration choices.

Rename the .7z to .exe, and click for an easy install. Open a console, run set_env.cmd in the extract directory, then freely create, compile, and run your COBOL programs.
