@echo off

call setenv.bat

:: sch�ma seul
%frictionless% validate --type schema ..\schema.json

:: exemple g�n�rique
%frictionless%  validate --schema ../schema.json ../exemple-valide.csv

:: exemples
%frictionless%  validate --schema ../schema.json ../examples\exemple-carros-valide.csv
%frictionless%  validate --schema ../schema.json ../examples\exemple-fuveau-valide.csv
%frictionless%  validate --schema ../schema.json ../examples\exemple-gignac-valide.csv
%frictionless%  validate --schema ../schema.json ../examples\exemple-le-rove-valide.csv
%frictionless%  validate --schema ../schema.json ../examples\exemple-st-victoret-valide.csv
%frictionless%  validate --schema ../schema.json ../examples\exemple-vence-valide.csv

pause