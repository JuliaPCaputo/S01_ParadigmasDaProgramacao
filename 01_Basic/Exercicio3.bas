10 INPUT "Informe a temperatura em graus Celsius: "; C
11 C = VAL(C)
12 F = VAL(F)
13 K = VAL(K)

20 F = ((C * 9) / 5) + 32
30 K = C + 273

40 PRINT "Temperatura em Celsius: " + C + " C"
50 PRINT "Temperatura em Kelvin: " + K + " K"
60 PRINT "Temperatura em Fahrenheit: " + F + " F"

70 END