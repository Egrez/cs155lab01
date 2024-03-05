VAR i : INTEGER := 0

WHILE i < 5 DO i := i + 1

FOR j := 0 TO 4 DO WRITELN("i=", i, " j=", j)

FOR k := 4 DOWNTO 0 DO i := i + 1

IF i = 10 THEN WRITELN("i is equal to 10") ELSE WRITELN("i is not equal to 10")