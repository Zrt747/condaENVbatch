rem prevents the prompt and contents of the batch file from being displayed, so that only the output is visible.
@echo OFF

rem Batch script to run activated conda enviroment in VScode

rem Step 1: Chnage the CONDAPATH variable to your conda folder
rem Step 2: Chnage the ENVNAME variable to your enviroment name
rem Step 3: Save this file as .bat file and run!


rem 	!~~~! CHANGE THIS TWO VARIABLES !~~~!
rem Define here the path to your conda installation
set CONDAPATH=C:\...\anaconda3\
rem Define here the name of the environment
set ENVNAME=your_enviroment_name



rem The following command activates the base environment.
if %ENVNAME%==base (set ENVPATH=%CONDAPATH%) else (set ENVPATH=%CONDAPATH%\envs\%ENVNAME%)

rem Calls anaconda in activated enviroment
call %CONDAPATH%\Scripts\activate.bat %ENVPATH%

rem call VScode
call code

rem Deactivate the environment
call conda deactivate

