// ? uncomment one to run the other

// ignore_for_file: unused_local_variable, dead_code

void main() {
  // todo: sync exec example
  // ! uncomment code block below to run
  // print('Creating the future');
  // print('main() done');

  // todo: future exec example
  // ! uncomment code block below to run
  // final myFuture = Future(() {
  //   print('Creating the future');
  //   return 12;
  // });   // ! Future is created but not executed yet, status uncompleted
  // print('main() done');

  // todo: uncompleted status
  // ! uncomment code block below to run
  // Future<String> getOrder() {
  //   return Future.delayed(Duration(seconds: 3), () {
  //     return 'Americano';
  //   });   // ? Future.delayed
  // }

  // todo: completed with data status
  // ! uncomment code block below to run
  // getOrder().then((value) {
  //   print('You order: $value');  // ? output in more than 3 seconds
  // });
  // print('Getting your order...');

  // todo: completed with error status
  // ! uncomment code block below to run
  // Future<String> getOrder() {
  //   return Future.delayed(Duration(seconds: 3), () {
  //     var isStockAvailable = false;
  //     if (isStockAvailable) {
  //       return 'Americano';
  //     } else {
  //       throw 'Out of stock';
  //     }
  //   });
  // }

  // getOrder().then((value) {
  //   print('You order: $value');
  // }).catchError((error) {
  //   print('Sorry. $error');
  // });
  // print('Getting your order...');
  

  // todo: whenComplete example
  // ! uncomment code block below to run
  Future<String> getOrder() {
    return Future.delayed(Duration(seconds: 3), () {
      var isStockAvailable = false;
      if (isStockAvailable) {
        return 'Americano';
      } else {
        throw 'Out of stock';
      }
    });
  }

  getOrder().then((value) {
    print('Anda memesan: $value');
  }).catchError((error) {
    print('Maaf. $error');
  }).whenComplete(() {
    print('Terima kasih');
  });
  print('Menerima pesanan Anda...');
}
