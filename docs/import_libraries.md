# Libraries & imports

- `import` : từ khoá này giúp thêm thư viện cần dùng cho file code. 
  
  ```dart
  import 'dart:html';
  ```

- `as` : Từ khoá này giúp đặt tên riêng cho thư viện bạn dùng trong code. 
  
  ```dart
  import 'package:lib1/lib1.dart';
  import 'package:lib2/lib2.dart' as lib2;
  
  // Uses Element from lib1.
  Element element1 = Element();
  
  // Uses Element from lib2.
  lib2.Element element2 = lib2.Element();
  ```

- `show` và `hide` : Từ khoá này dùng khí bạn muốn ẩn hiện thư viện đã khai báo.
  
  ```dart
  // Import only foo.
  import 'package:lib1/lib1.dart' show foo;
  
  // Import all names EXCEPT foo.
  import 'package:lib2/lib2.dart' hide foo;
  ```

- #### Lazily loading a library
  
  - `deferred as` : Từ khoá này hỗ trợ lazy load thư viện, thư viện thật sự load khi code bạn có dùng
    
    ```dart
    //When you need the library, invoke loadLibrary() using the library’s identifier.
    Future<void> greet() async {
      await hello.loadLibrary();
      hello.printGreeting();
    }
    ```
