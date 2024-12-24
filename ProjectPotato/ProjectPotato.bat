@echo off
title ProjectPotato - Free Record-Keeping Software
:start
call :ref
echo 1. New sale
echo 2. Veiw sales
echo 3. Inventory
echo 4. Veiw inventory
echo 5. Advanced
echo 6. Quit
:G4sdh446
set /p o="/"
if %o% == 1 goto :nsale
if %o% == 2 goto :vsale
if %o% == 3 goto :inven
if %o% == 4 goto :vinve
if %o% == 5 goto :advme
if %o% == 6 exit /b
echo General error. Please try again.
goto :G4sdh446
:ref
cls
type potatodata                                                                                    
echo:
goto :eof
:nsale
call :ref
set /p sku="Item name/sku: "
set /p amm="Ammount: "
set /p pai="Profit: "
echo Writing data...
echo %date% | %sku% | Amm. %amm% | %pai% >%userprofile%/documents/sales.log
echo Done!
pause
goto :start
:vsale
call :ref
echo SALES
echo -----
echo:
type %userprofile%/documents/sales.log
pause
goto :start
:inven
call :ref
set /p sku="Item name/sku: "
set /p amm="Current ammount in stock: "
echo Writing data...
echo %date% | There is %amm% %sku% in stock >%userprofile%/documents/inventory.log
echo Done!
pause
goto :start
:vinve
call :ref
echo Inventory
echo ---------
echo:
type %userprofile%/documents/inventory.log
pause
goto :start
:advme
call :ref
echo 1. Reset sale log
echo 2. Reset inventory log
echo 3. Back
set /p o="/"
if %o% == 1 goto :aysrsl
if %o% == 2 goto :aysril
if %o% == 3 goto :start
:aysrsl
echo:
echo Are you sure? There is no undoing this.
set /p o="[Y/N] "
if /I %o% == y del %userprofile%/documents/sales.log
goto :advme
:aysril
echo:
echo Are you sure? There is no undoing this.
set /p o="[Y/N] "
if /I %o% == y del %userprofile%/documents/inventory.log
goto :advme