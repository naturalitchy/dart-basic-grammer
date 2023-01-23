import 'package:dart_first_project/dart_first_project.dart' as dart_first_project;

// void main(List<String> arguments) {
//   print('Hello world: ${dart_first_project.calculate()}!');
// }


enum Status {
  first,
  second,
  third,
}

void main() {
  Status status = Status.first;
  print(status);

  int? num1 = 10;
  num1 = null;
  int? num2 = 20;
  
  // if num2==null then, num2 = 30
  num2 ??= 30;

  print(addNumber(3, 3));
  print(addNumberNamed(b: 4, a: 1));
  print(addNumberDefault(a: 19));
  print(addNumberDefault2(1));

  Operation oper = subtract;
  oper(1,2);
  Operation oper2 = subtract;
  oper2(2,2);
  cal(2,3,subtract);
}



int addNumber(int a, int b) {
  return a + b;
}
int addNumberNamed({required int a, required int b}) {
  print("a = ${a}, b = ${b}");
  return a + b;
}
int addNumberDefault({required int a, int b=10}) {
  return a + b;
}
int addNumberDefault2(int a, [int b = 20]) {
  return a + b;
}


// typedef and function
typedef Operation = void Function(int x, int y);
void add(int x, int y) {
  print('execute add function!');
}
void subtract(int x, int y) {
  print('execute subtract function!');
}
void cal(int x, int y, Operation oper) {
  print(oper);
}