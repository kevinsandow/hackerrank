@echo off & setlocal enabledelayedexpansion

for /R . %%f in (%1/*.in) do (
    echo %1/%%~nf.in
    cat %1/%%~nf.in | node %1/solution.js | tee %1/%%~nf.tmp
    diff -u %1/%%~nf.tmp %1/%%~nf.out
)