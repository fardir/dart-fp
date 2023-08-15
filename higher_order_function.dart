// todo: higher order function with NoSuchMethodError
void myHigherOrderFunction(String message, Function myFunction) {
  print(message);
  print(myFunction(3, 5));
  print(myFunction(4));   // ! Error karena param invalid
}

// todo: fix higher order function
void myFixHigherOrderFunction(String message, int Function(int num1, int num2) myFunction) {
  print(message);
  print(myFunction(3, 5));
}

void main() {
  // ? Opsi 1
  Function sum = (int num1, int num2) => num1 + num2;
  myHigherOrderFunction('Penjumlahan', sum);

  // ? Opsi 2
  myHigherOrderFunction('Tambah', (num1, num2) => num1 + num2);

  // todo: example higher order function in collection
  var fibonacci = [0, 1, 1, 2, 3, 5, 8, 13];
  fibonacci.forEach((item) {
    print(item);
  });
}

