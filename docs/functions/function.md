# Functions

#### 1. Parameters

- Function sẽ có kì số lượng tham số. 

- **Name Paramters** : 
  
  - Nó là optional, trừ khi paramters nó là `required`
  
  - Nếu paramters không required, và không set giá trị default thì nó phải là nullable.
    
    ```dart
    /// Sets the [bold] and [hidden] flags ...
    void enableFlags({bool? bold, bool? hidden}) {...
    ```
  
  - Khi gọi function, có thể chỉ định name cho paramters
    
    - <mark>Lưu ý : khi parameters là require thì chỉ định name paramter là bắt buộc</mark>
    
    ```dart
    enableFlags(bold: true, hidden: false);
    ```
  
  - Setting giá trị mặc định cho paramters
    
    ```dart
    void enableFlags({bool bold = false, bool hidden = false}) {...}
    ```

- **Optional Positional Paramters**
  
  - Wrap paramters vào dấu ngoặc vuông để chỉ định paramter đó là optional.
    
    ```dart
    String say(String from, String msg, [String? device]) {
      var result = '$from says $msg';
      if (device != null) {
        result = '$result with a $device';
      }
      return result;
    }
    ```

#### 2. The main() function

- Đây là funtion được gọi đầu tiên ở chương trình. 
  
  ```dart
  // Run the app like this: dart args.dart 1 test
  void main(List<String> arguments) {
    print(arguments);
  
    assert(arguments.length == 2);
    assert(int.parse(arguments[0]) == 1);
    assert(arguments[1] == 'test');
  }
  ```

#### 3. Functions as first-class objects

- Có thể truyền function như một paramters.

```dart
void printElement(int element) {
  print(element);
}

var list = [1, 2, 3];

// Pass printElement as a parameter.
list.forEach(printElement);
```

#### 4. Anonymous Functions

- Là funtion không có tên. 
  
  ```dart
  ([[Type] param1[, …]]) {
    codeBlock;
  };
  ```

#### 5. Lexical scope

- Bên trong function có thể có một function
  
  ```dart
  bool topLevel = true; //gobal varibale, bất cứ function nào trong class đều có thể truy cập
  
  void main() {
    var insideMain = true; //local variable, các method nằm bên trong main có thể truy cập 
  
    void myFunction() {
      //local variable của myFunction, main() KHÔNG thể truy cập, nestedFunction() có thể truy cạp
      var insideFunction = true; 
  
      void nestedFunction() {
        var insideNestedFunction = true;
  
        assert(topLevel);
        assert(insideMain);
        assert(insideFunction);
        assert(insideNestedFunction);
      }
    }
  }
  ```

#### 6. Lexical closures

- Là một type Function, 

- Nó có thể gán cho một Variable , lúc này variable như là một function
  
  ```dart
  /// Returns a function that adds [addBy] to the
  /// function's argument.
  Function makeAdder(int addBy) {
    return (int i) => addBy + i;
  }
  
  void main() {
    // Create a function that adds 2.
    var add2 = makeAdder(2);
  
    // Create a function that adds 4.
    var add4 = makeAdder(4);
  
    assert(add2(3) == 5);
    assert(add4(3) == 7);
  }
  ```

#### 7. Return values

- Tất cả function trong dart đều trả về giá trị

- Nếu body không return giá trị, function đó sẽ trả về null.
  
  ```dart
  foo() {}
  assert(foo() == null);
  ```

#### 8. Generators

- Khi cần tạo các giá trị liên tục một cách lazy, có thể dùng generator.
  
  - **Synchronous** : Trả về một **Iterable**
    
    ```dart
    Iterable<int> naturalsTo(int n) sync* {
      int k = 0;
      while (k < n) yield k++;
    }
    ```
  
  - **Asynchronous** : Trả về một Stream 
    
    ```dart
    Stream<int> asynchronousNaturalsTo(int n) async* {
      int k = 0;
      while (k < n) yield k++;
    }
    ```
  
  - Nếu cần đệ quy, cải thiện performance với yield*
    
    ```dart
    Iterable<int> naturalsDownFrom(int n) sync* {
      if (n > 0) {
        yield n;
        yield* naturalsDownFrom(n - 1);
      }
    }
    ```
    
    
1. 
