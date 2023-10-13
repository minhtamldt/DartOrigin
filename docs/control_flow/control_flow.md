# I. Loops

#### 1. For

- Duyệt với vòng lặp for.

```dart
var message = StringBuffer('Dart is fun');
for (var i = 0; i < 5; i++) {
  message.write('!');
}
```

#### 2. For ... in

- Trường hợp không cần biết index

```dart
for (final candidate in candidates) {
  candidate.interview();
}
```

#### 3. ForEach

- Iterable cung cấp `Foreach`

```dart
var collection = [1, 2, 3];
collection.forEach(print); // 1 2 3
```

#### 4. White, Do-While

```dart
while (!isDone()) {
  doSomething();
}
```

```dart
do {
  printLine();
} while (!atEndOfPage());
```

#### 5. Break and continue

- break dùng để thoát khỏi loop.

```dart
while (true) {
  if (shutDownRequested()) break;
  processIncomingRequests();
}
```

- Continue dùng để bỏ qua lần lặp này, tiếp tục lần lập tiếp theo

```dart
for (int i = 0; i < candidates.length; i++) {
  var candidate = candidates[i];
  if (candidate.yearsExperience < 5) {
    continue;
  }
  candidate.interview();
}
```

# II. Branches

#### 1. If

```dart
if (isRaining()) {
  you.bringRainCoat();
} else if (isSnowing()) {
  you.wearJacket();
} else {
  car.putTopDown();
}
```

#### 2. If-Case

- Hỗ trợ kiểm tra dựa trên patterns

- Hỗ trợ kiểm tra nhiều giá trị cùng một lúc.
  
  ```dart
    var pair = [10, 5];
    if (pair case [int x, int y]) // => true;
    {
       
    }
    
    if (pair case [double x, double y]) // => false;
    {
       
    }
  ```
  
  

#### 2. Switch

- Giống với C#, **switch** nhận giá trị so sánh với các **case** là các giá trị constant. 
  
  ```dart
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      executeClosed();
    case 'PENDING':
      executePending();
    case 'APPROVED':
      executeApproved();
    case 'DENIED':
      executeDenied();
    case 'OPEN':
      executeOpen();
    default:
      executeUnknown();
  }
  ```

- newCase : Trường hợp muốn thực hiện nhiều case trong mệnh đề switch.
  
  ```dart
  switch (command) {
    case 'OPEN':
      executeOpen();
      continue newCase; // Continues executing at the newCase label.
  
    case 'DENIED': // Empty case falls through.
    case 'CLOSED':
      executeClosed(); // Runs for both DENIED and CLOSED,
  
    newCase:
    case 'PENDING':
      executeNowClosed(); // Runs for both OPEN and PENDING.
  }
  ```

#### 3. Switch expressions

- Cú pháp ngắn gọn hơn. 
  
  ```dart
  token = switch (charCode) {
    slash || star || plus || minus => operator(charCode),
    comma || semicolon => punctuation(charCode),
    >= digit0 && <= digit9 => number(),
    _ => throw FormatException('Invalid')
  };
  ```

- Sự khác nhau giữa switch expressions và switch statement.
  
  - Không có `case` 
  
  - Body chỉ 1 một dòng lệnh, thay vì một chuỗi câu lệnh
  
  - Bắt buộc phải có body ở mỗi case.
  
  - `=>` thay thế `:`
  
  - `_` thay thế `default` 

#### 4. Guard clause

- Bổ trợ thêm logic cho switch case với `when`
  
  ```dart
  
  ```
  
  
