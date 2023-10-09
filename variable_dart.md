1. **Khai báo biến**
   
   - Khai báo kiểu ngầm định với "var" :
     
     - Kiểu dữ liệu được xác định khi giá trị được gán.
       
       ```dart
       var name = 'Bob';
       ```
       
       Ex : biến "name" có kiểu string
     
     - Kiểu dữ liệu xác định ngay từ lúc khai báo.
       
       ```dart
       String name = 'Bob';
       ```

2. **Null safety, biến có thể null**
   
   - Chỉ cần thêm "?" sau kiểu dữ liệu
     
     ```dart
     String? name  // Nullable type. Can be `null` or string.
     String name   // Non-nullable type. Cannot be `null` but can be string.
     ```

3. **Giá trị mặc định (Default Value)**
   
   - Gobal Non-nullable : Cần khởi tạo giá trị khi khai báo biến
     
     ```dart
     int lineCount = 0;
     ```
   
   - Local Non-nullable : Chỉ cần có giá trị khi dùng biến được dùng
     
     ```dart
     int lineCount;
     
     if (weLikeToCount) {
       lineCount = countLines();
     } else {
       lineCount = 0;
     }
     
     print(lineCount);
     ```

4. **Biến "Late"**
   
   - Với từ khoá "late", biến Gobal Non-nullable, không còn bắt buộc phải khởi tạo giá trị khi khai báo
   
   - Trường hợp bạn set giá trị cho biến có dùng "late" khi khai báo.
     
     ```dart
     late String temperature = readThermometer(); // Lazily initialized.
     // readThermometer() sẽ được gọi khi temperature được dùng
     ```

5. **Final and Cost.**
   
   - Biến không thể thay đổi giá trị. 


