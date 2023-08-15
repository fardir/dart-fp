// * anonymous/lambda function

void main() {
  // todo: contoh anonymous function
  var sum = (int num1, int num2) {
    return num1 + num2;
  };

  Function printLambda = () {
    print('Ini adalah lambda function');
  };

  printLambda();
  print(sum(2, 3));

  // todo: contoh arrow function (=>)
  var multiply = (int num1, int num2) => num1 * num2;
  Function printArrow = () => print('Ini adalah arrow function');

  printArrow();
  print(multiply(3, 4));
}