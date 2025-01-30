@echo off
Title Comando RoboCopy
@echo off
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo ::::::::                                                ::::::::
@echo :::::::: Comando para copiar informacion con RoboCopy   ::::::::
@echo ::::::::                                                ::::::::
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo ::                                                            ::
@echo ::                   Apasionado de las TICs                   ::
@echo ::  comando basico para respaldar informacion cuando los      ::
@echo ::  nombres son muy largos o tienes caracteres no validos     ::
@echo ::             $author Ing._Cesar_Paulino.dll                 ::
@echo ::                                                            ::
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
@pause
@echo off
:: Configuración de las rutas
set "source=%USERPROFILE%\Desktop\Respaldo_2025"  
:: Ruta de la carpeta en el escritorio
set "destination=E:\Respaldo_SubInfo_2025"              
:: Ruta de la carpeta en el disco externo (E: como ejemplo)

:: Crear la carpeta de destino si no existe
if not exist "%destination%" mkdir "%destination%"

:: Comando robocopy para copiar archivos
robocopy "%source%" "%destination%" /E /COPY:DAT /R:3 /W:5

:: Verificar si hubo errores
if %errorlevel% gtr 1 (
    echo Hubo un error al copiar los archivos. Código de error: %errorlevel%
    pause
) else (
    echo Archivos copiados con éxito.
    pause
)
