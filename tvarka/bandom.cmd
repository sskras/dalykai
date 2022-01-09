: 2022-01-09 saukrs: imported and adjusted the original,
: https://stackoverflow.com/questions/17510688/single-script-to-run-in-both-windows-batch-and-linux-bash/17510832#17510832
:
:<<BATCH
    : --- Windows ---

    @echo off
    echo %PATH%
    echo.
    : exit /b

    goto ------Fin------
BATCH

: --- *nix OS ---

echo $PATH
echo
# exit

: ------Fin------
echo Darbas baigtas
