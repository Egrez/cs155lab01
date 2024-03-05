PROCEDURE procedure1; 

VAR integer1, integer2, integer3 : INTEGER := - 1 * 2 / 3 DIV 4 MOD -5 AND 6 + 7 * 8 / 9 - (+ 10 * 11 - 12 / 13) OR 14  
real1, real2 : REAL := -5.01 + 5. + 0.1;
boolean1 : BOOLEAN := NOT 1 = 0 ;
boolean2 : BOOLEAN;
string1 : STRING := "hello world";

BEGIN 
  integer1 := 1;
  WRITELN (string1, "hi world", 4 + 5.2);
  BEGIN
    WHILE
      integer1 < 10
    DO
      integer1 := integer1 + 1 
  END
  ;
  FOR i := -1 TO 4 
  DO
    WRITELN("i incremented by 1")
  ;
  FOR i := + 1 * 2 - 2 / 1 + 10 / "0" >= "test" DOWNTO 4 + 1 <> 5 * 1 
  DO
    WRITELN("i decremented by 1")
  ;
  IF integer1 <= 10
  THEN 
    WRITELN("integer1 is equal to 10")
  ;
  IF boolean1 
  THEN 
    real1 := -1.00+2. 
  ELSE
    BEGIN 
      WHILE
        integer1 >= 0 
      DO
        integer1 := integer1 - 1 
    END
END