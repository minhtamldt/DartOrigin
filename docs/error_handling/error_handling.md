# Error handling

#### 1. Exceptions

- Dart cung cấp 2 type Exception và Error, code có thể ném và bắt exception.

#### 2. Throw

```dart
throw FormatException('Expected at least 1 section');
```

#### 3. Catch

- Dùng `on` nếu muốn bắt một exception cụ thể.

- Dùng `catch` thì k cần chỉ định

```dart
try {
  breedMoreLlamas();
} on OutOfLlamasException {
  buyMoreLlamas();
}
```

- Có thể bắt nhiều Exception

```dart
try {
  breedMoreLlamas();
} on OutOfLlamasException {
  // A specific exception
  buyMoreLlamas();
} on Exception catch (e) {
  // Anything else that is an exception
  print('Unknown exception: $e');
} catch (e) {
  // No specified type, handles all
  print('Something really unknown: $e');
}
```

- Dùng `rethrow` để cho caller lấy được Exception. 

```dart
void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}
```

#### 4. Finally

- Chi sau cùng sau `try` và `catch`
