// todo: async-await example
// ! uncomment code block below to run

// ignore_for_file: unused_element, dead_code

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = true;
    if (isStockAvailable) {
      return 'Americano';
    } else {
      throw 'Out of stock';
    }
  });
}

// ? using sync style
// void main() {
//   print('Getting your order...');
//   var order = getOrder();
//   print('You order: $order');
//   /**
//    * output:
//    * Getting your order...
//    * You order: Instance of 'Future<String>'
//    */
// }

// ? using async-await style
// void main() async {
//   print('Getting your order...');
//   var order = await getOrder();
//   print('You order: $order');
//   /**
//    * output:
//    * Getting your order...
//    * You order: Americano
//    */
// }

// todo: async-await error handling
void main() async {
  print('Getting your order...');
  try {
    var order = await getOrder();   // ? uncompleted
    print('You order: $order');   // ? completed with data
  } catch (error) {
    print('Sorry. $error');   // ? completed with error
  } finally {
    print('Thank you');   // ? when completed
  }
}
