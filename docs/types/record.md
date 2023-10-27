# Records

- Kiểu dữ liệu tổng hợp, bất biến, vô danh. 

- Gôm nhiều đối tượng thành một đối tượng duy nhất. 

- Cố định kích thước. 

- Có thể dùng cho trường hợp function muốn trả về nhiều giá trị. 

##### 1. Record syntax

- Khởi tạo giá trị bằng cách truyền giá trị vào dấu ngoặc tròn
  
  - Mỗi kiểu dữ liệu ngăn cách bởi dấu phẩy
  
  - Có thể đặt tên hoặc không

- Khởi tạo biến bằng giấu ngoặc tròn
  
  - Mỗi kiểu dữ liệu ngăn cách bởi dấu phẩy

```dart
(String, int, bool, String) record = ('first', a: 2, b: true, 'last');
```

##### 2. Record fields

- Nếu field có đặt tên : truy cập giá trị bằng tên đã đặt

- Không đặt tên : truy cập theo thứ tự field đó trong record (bỏ qua field có đặt tên)
  
  `$<position>`

```dart
var record = ('first', a: 2, b: true, 'last');

print(record.$1); // Prints 'first'
print(record.a); // Prints 2
print(record.b); // Prints true
print(record.$2); // Prints 'last'
```

##### 3. Record types

- Record không có type cụ thể

- Nó là một cấu trúc tập hợp nhiều field. Mỗi field nó có type 

```dart
(num, Object) pair = (42, 'a');

var first = pair.$1; // Static type `num`, runtime type `int`.
var second = pair.$2; // Static type `Object`, runtime type `String`.
```

##### 4. Record equality

- 2 record bằng nhau khi :
  
  - Cấu trúc record bao gồm các field type giống nhau
  
  - Giá trị cũng phải giống nhau
  
  ```dart
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);
  
  print(point == color); // Prints 'true'.
  ```
  
  ```dart
  ({int x, int y, int z}) point = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color = (r: 1, g: 2, b: 3);
  
  print(point == color); // Prints 'false'. Lint: Equals on unrelated types.
  ```

##### 5. Multiple returns

- Record cho phép function trả về nhiều giá trị.

```dart
// Returns multiple values in a record:
(String, int) userInfo(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

final json = <String, dynamic>{
  'name': 'Dash',
  'age': 10,
  'color': 'blue',
};

// Destructures using a record pattern:
var (name, age) = userInfo(json);

/* Equivalent to:
  var info = userInfo(json);
  var name = info.$1;
  var age  = info.$2;
*/
```
