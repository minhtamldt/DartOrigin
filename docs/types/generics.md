# Generics

1. Why use generics?
   
   - Chỉ định một kiểu dữ liệu chung  để generate code
     
     - Giúp tăng khả năng tái sử dụng code 
   
   - Ex : Xây dựng một interface cache
     
     - Nếu muốn target đến kiểu object
       
       ```dart
       abstract class ObjectCache {
         Object getByKey(String key);
         void setByKey(String key, Object value);
       }
       ```
     
     - Nếu muốn target cho kiểu String
       
       ```dart
       abstract class StringCache {
         String getByKey(String key);
         void setByKey(String key, String value);
       }
       ```
     
     <mark>=> Cần phải tạo ra 2 interface gần giống nhau như vậy </mark>
     
     - Với Generic, chỉ cần tạo một interface như thế này : 
       
       ```dart
       abstract class Cache<T> {
         T getByKey(String key);
         void setByKey(String key, T value);
       }
       ```

2. Một số kiểu generics thường thấy : 
   
   - Collections :
     
     ```dart
     var nameSet = Set<String>.from(names);
     ```
   
   - Class : 
     
     ```dart
     class Foo<T extends Object> {
       // Any type provided to Foo for T must be non-nullable.
     }
     ```
   
   - Method :
     
     ```dart
     T first<T>(List<T> ts) {
       // Do some initial work or error checking, then...
       T tmp = ts[0];
       // Do some additional checking or processing...
       return tmp;
     }
     ```
     
     
