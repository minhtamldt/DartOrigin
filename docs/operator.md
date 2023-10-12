### Operators

1. Một số toán tử thông dụng
   
   - unary postfix : `*expr*++`    `*expr*--`    `()`    `[]`    `?[]`    `.`    `?.`    `!`
     
     - `?[index]` :  Truy cập mảng an toàn, không tìm thấy sẽ trả về null. 
     
     - Object`?.`Property : Truy cập đối tượng an toàn, khi Object bị null cũng không bị ném exception/. 
   
   - unary prefix : `-*expr*`    `!*expr*`    `~*expr*`    `++*expr*`    `--*expr*`      `await *expr*`
     
     - `~*expr*`  : Toán tử lấy phần nguyên khi thực hiện phép chia
       
       - Ex : ```x ~/ y```
   
   - multiplicative : `*`    `/`    `%`  `~/`
   
   - additive : `+`    `-`
   
   - shift : `<<`    `>>`    `>>>`
   
   - bitwise AND : `&`
   
   - bitwise XOR : `|`
   
   - relational and type test : `>=`    `>`    `<=`    `<`    `as`    `is`    `is!`
   
   - equality : `==`    `!=`
   
   - logical AND : `   &&` 
   
   - logical OR : ||
   
   - if null : ??
   
   - conditional : *`expr1* ? *expr2* : *expr3*`
   
   - cascade : `..`    `?..`
     
     - `..` Gọi nhiều method của Object một cách liên tiếp
       
       - Ex : ` object..method1()..method2()..method3();`
   
   - assignment : `=`    `*=`    `/=`   `+=`   `-=`   `&=`   `^=`
