# Collections

1. List 
   
   ```dart
   var list1 = [1, 2, 3];
   List<int> list2 = [1, 2, 3];
   //list1 ngầm định bạn đang khai báo List<int>
   ```
   
   - List không thể thay đổi giá trị
   
   ```dart
   var constantList = const [1, 2, 3];
   // constantList[1] = 1; // This line will cause an error.
   // Khi bạn set giá trị 'cosnt' thì không thể cập nhật giá trị cho phần tử trong List nữa. 
   ```

2. Sets
   
   - Danh sách không có thứ tự và tập hợp các phần tử khác nhau về giá trị. 
     
     ```dart
     //Khai báo Sets ngầm định : 
     var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
     ```
   
   - Khởi tạo Sets rỗng
     
     ```dart
     Set<String> names = {}; // This works, too.
     // var names = {}; // Creates a map, not a set.
     ```
   
   - `ađd`, `addAll`, `length`
     
     ```dart
     var elements = <String>{};
     elements.add('fluorine');
     elements.addAll(halogens);
     assert(elements.length == 5);
     ```

3. Maps
- Giống Dictionary trong C#, danh sách bao gồm các phần tử với item có key và value.
  
  ```dart
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  ```

- Cập giá trị cho phần từ trong Maps
  
  ```dart
  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  ```

- Thêm mới một phần tử :
  
  ```dart
  gifts['fourth'] = 'calling birds'; // Add a key-value pair
  // 'fourth' key này chưa có trong maps, nếu có lệnh trên sẽ update giá trị 
  ```
4. Operators
   
   - Mở rộng List (Spread operators) : 
     
     - Toán tử `...` : Thêm một list vào list khác.
       
       ```dart
       var list1 = [1, 2, 3];
       var list2 = [0, ...list1];
       ```
     
     - Để tránh `list1` có thể null và bị lỗi , bạn có thể khai báo như sau : 
       
       ```dart
       var list2 = [0, ...?list];
       ```
   
   - Control-flow operators
     
     - Khi khai báo collection, dart hỗ trợ các câu lệnh điều kiện : 
       
       ```dart
       var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
       ```
