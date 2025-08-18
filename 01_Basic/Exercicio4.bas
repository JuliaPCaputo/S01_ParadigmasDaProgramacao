10 INPUT "Informe a altura em metros: "; ALT
20 INPUT "Informe o peso em quilogramas: "; PESO

30 IMC = PESO / (ALT * ALT)
35 IMC = INT(IMC * 100 + 0.5) / 100

40 PRINT "O IMC é: " + IMC

50 END