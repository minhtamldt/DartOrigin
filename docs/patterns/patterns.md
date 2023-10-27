# Patterns

1. Pattern có thể làm những gì ? 
   
   - Matching : So sánh giá trị với constant :
     
     ```dart
     switch (number) {
       // Constant pattern matches if 1 == number.
       case 1:
         print('one');
     }
     ```
     
     ```dart
     const a = 'a';
     const b = 'b';
     switch (obj) {
       // List pattern [a, b] matches obj first if obj is a list with two fields,
       // then if its fields match the constant subpatterns 'a' and 'b'.
       case [a, b]:
         print('$a, $b');
     }
     ```
   
   - Destructuring : 

TBD
