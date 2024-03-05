# cs155lab01
## Name
Serge Alec Rivera
## Student Number
201921356
## Compilation Notes
To compile: `flex le1-201921356.flex && gcc lex.yy.c -o le1-lexer.out`  
To execute: `./le1-lexer.out test/testfile.ec`
## Token types and values
### Reserved keywords
| Token type | Token value |
| --- | --- |
| PROCEDURE | PROCEDURE |
| WRITELINE | WRITELINE |
| IF | IF |
| THEN | THEN |
| ELSE | ELSE |
| WHILE | WHILE |
| DO | DO |
| FOR | FOR |
| TO | TO |
| DOWNTO | DOWNTO |
| BEGIN | BEGIN |

### Data types
| Token type | Token value |
| --- | --- |
| INTEGER | INTEGER |
| REAL | REAL |
| BOOLEAN | BOOLEAN |
| STRING | STRING |

### Relation operators
| Token type | Token value |
| --- | --- |
| = | = |
| <> | <> |
| < | < |
| <= | <= |
| > | > |
| >= | >= |

### Addition operators
| Token type | Token value |
| --- | --- |
| + | + |
| - | - |
| < | < |

### Multiplication operators
| Token type | Token value |
| --- | --- |
| * | * |
| / | / |
| DIV | DIV |
| MOD | MOD |
| AND | AND |

### Assignment operator
| Token type | Token value |
| --- | --- |
| := | := |

### Literals
| Token type | Token value (examples) |
| --- | --- |
| INTEGER_NUMBER | 1234 |
| REAL_NUMBER | 1.234 |
| STRING_TEXT | "hello world" |

### Special characters
| Token type | Token value |
| --- | --- |
| : | : |
| , | , |
| ; | ; |
| . | . |
| ( | ( |
| ) | ) |
| " | " |

### Special characters
| Token type | Token value (examples) |
| --- | --- |
| IDENTIFIER | x |
| IDENTIFIER | x1 |
| IDENTIFIER | xyz123 |
