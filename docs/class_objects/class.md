# Classes

Nguồn : https://dart.dev/language/classes

##### 1. Using Class Member

```dart
var p = Point(2, 2);

// - Truy cập thuộc tính của object thông qua dấu .
assert(p.y == 2);

// - Invoke distanceTo() on p.
double distance = p.distanceTo(Point(4, 4));

// - Dùng ?. để tránh bị vẳng lỗi khi p bị null.
var a = p?.y;
```

##### 2. Using Contructors

```dart
// - 1. Tạo contructor với tên Class
var p1 = Point(2, 2);
// - 2. Tạo contructor ClassName.identifier, với identifier có thể đặt tuỳ ý 
// Thể hiện mục đích chức năng của contructors này. 
var p2 = Point.fromJson({'x': 1, 'y': 2});
```

```dart
// - Tạo const contructors
var a = const ImmutablePoint(1, 1);
var b = const ImmutablePoint(1, 1);

assert(identical(a, b)); // a và B GIỐNG NHAU

//----------------------------------
var a = const ImmutablePoint(1, 1); // Creates a constant
var b = ImmutablePoint(1, 1); // Does NOT create a constant

assert(!identical(a, b)); // // a và B KHÔNG GIỐNG NHAU
```

##### 3. Getting an object’s type

```dart
// - Truy cập type của một object với thuộc tính 'runtimeType'
print('The type of a is ${a.runtimeType}');
```



##### 4. Instance variables

- Variable không khởi tạo giá trị, thì mặc định là null.

- Variable ngầm định có getter method

- Non-final và late final variable ngầm định có setter method.

- Final variable, chỉ set giá trị được một lần (thường set ở contructors hoặc tại nơi khai báo variable)

- Nếu cần set giá trị muộn cho biến final, có thể dùng : 
  
  - Factory constructor
  
  - Dùng late final

##### 5. Implicit interfaces

- Class cũng có thể làm interface. 
  
  ```dart
  // - Nếu Person làm Interface.
  class Person {
    // In the interface, but visible only  this library.
    final String _name;
  
    // Không có trong interface
    Person(this._name);
  
    // Có trong interface
    String greet(String who) => 'Hello, $who. I am $_name.';
  }
  
  //----------------------------
  
  // Impostor thực thi interface Person
  class Impostor implements Person {
    // _name lúc này là một getter.
    String get _name => '';  
    // greet 
    String greet(String who) => 'Hi $who. Do you know who I am?';
  }
  
  
  ```

##### 6. Class variables and methods

- Static variable : Chỉ khởi tạo giá trị khi nó được dùng.

- Static method 
