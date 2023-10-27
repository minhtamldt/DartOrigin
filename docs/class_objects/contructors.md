# Constructors

#### 1. Initializing formal parameters

- Dùng để khởi tạo biến non-variable hoặc final variable.
  
  ```dart
  ```dart
  class Point {
    double x = 0;
    double y = 0;
  
    Point(double x, double y) {
      // See initializing formal parameters for a better way
      // to initialize instance variables.
      this.x = x;
      this.y = y;
    }
  ```
  ```

##### 2. Default Constructors

- Nếu không khai báo contructor, mặc định là contructor không tham số. 

#### 3. Constructors aren’t inherited

- Contructor không có sự kế thừa.

##### 4. Name Constructors

- Dùng name contructor để tạo nhiều contructors
  
  ```dart
  const double xOrigin = 0;
  const double yOrigin = 0;
  
  class Point {
    final double x;
    final double y;
  
    Point(this.x, this.y);
  
    // Named constructor
    Point.origin()
        : x = xOrigin,
          y = yOrigin;
  }
  ```

#### 5. Invoking a non-default superclass constructor

- Mặc định, contructor của subclass gọi contructor không tham số của supperclass.

- Constructors của supper class bắt đầu được gọi tại body của constructor.
  
  - Initializer list
  
  - Superclass’s no-arg constructor
  
  - Main class’s no-arg constructor

- Trường hợp contructor của supperclass không phải là một contructor không tham số thì cần phải gọi nó thủ công
  
  - Chỉ định nó sau dấu :
  
  ```dart
  class Employee extends Person {
    // Person does not have a default constructor;
    // you must call super.fromJson().
    Employee.fromJson(super.data) : super.fromJson() {
      print('in Employee');
    }
  }
  ```

#### 6. Super parameters

- Để tránh truyền thủ công tham số cho contructor của supperclass.
  
  - Tại subclass tạo contructor, với các tham số có key `super.<field of supperclass>`
  
  ```dart
  class Vector2d {
    final double x;
    final double y;
  
    Vector2d(this.x, this.y);
  }
  
  class Vector3d extends Vector2d {
    final double z;
  
    // Forward the x and y parameters to the default super constructor like:
    // Vector3d(final double x, final double y, this.z) : super(x, y);
    Vector3d(super.x, super.y, this.z);
  }
  ```

#### 7. Initializer list

- Có thể khởi tạo các biến trước khi body của contructor chạy
  
  ```dart
  // Initializer list sets instance variables before
  // the constructor body runs.
  Point.fromJson(Map<String, double> json)
      : x = json['x']!,
        y = json['y']! {
    print('In Point.fromJson(): ($x, $y)');
  }
  ```

#### 8. Redirecting constructors

- Chuyển hướng contructor đến một contructors khác.
  
  ```dart
  class Point {
    double x, y;
  
    // The main constructor for this class.
    Point(this.x, this.y);
  
    // alongXAxis contructors, gọi main contructors.
    Point.alongXAxis(double x) : this(x, 0);
  }
  ```

##### 9. Constant constructors

- Nếu muốn tạo một object không thay đổi, dùng constant constructor.
  
  - Đảm bảo các variable đều là final variable.
  
  ```dart
  class ImmutablePoint {
    static const ImmutablePoint origin = ImmutablePoint(0, 0);
  
    final double x, y;
  
    const ImmutablePoint(this.x, this.y);
  }
  ```

##### 10. Factory constructors

- Contructors này không tạo ra instance mới.
  
  - Dùng để trả về instance đã cache trước đó.
  
  - Dùng nó để khởi tạo các final variable
  
  ```dart
  class Logger {
    final String name;
    bool mute = false;
  
    // _cache is library-private, thanks to
    // the _ in front of its name.
    static final Map<String, Logger> _cache = <String, Logger>{};
  
    factory Logger(String name) {
      return _cache.putIfAbsent(name, () => Logger._internal(name));
    }
  
    factory Logger.fromJson(Map<String, Object> json) {
      return Logger(json['name'].toString());
    }
  
    Logger._internal(this.name);
  
    void log(String msg) {
      if (!mute) print(msg);
    }
  }
  ```

- Gọi factory contructors cũng giống như các constructor khác. 
  
  ```dart
  var logger = Logger('UI');
  logger.log('Button clicked');
  
  var logMap = {'name': 'UI'};
  var loggerJson = Logger.fromJson(logMap);
  ```
