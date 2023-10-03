// 1. Biến "var": 
//- Kiểu dữ liệu của biến xác định khi biến được gán giá trị. 
var age = 30; // Dart tự động suy ra kiểu là int dựa vào giá trị 30
var name = "John"; // Dart tự động suy ra kiểu là String dựa vào chuỗi "John"

//2. Null safety : 
//- Thêm dấu ? sau kiểu dữ liệu để giá định nó là giá trị có thể null
String? address; // mặc định address là giá trị null. 
// - Không thể truy cập được properties, method của đối tượng null
// - NGOẠI LỆ : method hashCode(), toString()


//3. Default value
// - Biến gobal, mà không có nullable, bắt buộc set giá khi khai báo
int lineCount01 = 0;
// - Biến gobal, có nullable, thì không cần set giá trị khi khai báo.
int? lineCount02;

void testLocalVariable()
{
  int lineCount03; // biến local, không có nullable, không cần set giá trị khi khai báo
  lineCount03 = 10; // bắt buộc set giá trị trước khi dùng
  print(lineCount03);
}



