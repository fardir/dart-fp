# Effective Dart

* **DO**. Ketika aturan diawali dengan DO maka praktik tersebut harus selalu diikuti.
* **DON’T**. Sebaliknya, aturan yang diawali dengan DON’T bukan merupakan hal yang baik untuk diterapkan.
* **PREFER**. Ini adalah praktik yang harus diikuti. Namun, mungkin ada keadaan di mana lebih masuk akal untuk melakukan sebaliknya. Pastikan Anda memahami konsekuensi ketika Anda mengabaikan aturan ini.
* **AVOID**. Ini adalah kebalikan dari PREFER. Panduan ini menjelaskan hal-hal yang tidak boleh dilakukan, namun kemungkinan ada alasan bagus untuk melakukannya pada beberapa kejadian.
* **CONSIDER**. Panduan ini adalah praktik yang bisa Anda ikuti atau tidak Anda ikuti, tergantung pada keadaan dan preferensi Anda sendiri.

---

📌 <strong>DO</strong> name types using UpperCamelCase

<p>Class, enum, typedef, dan type parameter harus menggunakan huruf kapital pada huruf pertama setiap kata termasuk kata pertama</p>

```dart
abstract class Animal {}
abstract class Mammal extends Animal {}
mixin Flyable {}
class Cat extends Mammal with Walkable {}
```

</br>

📌 <strong>DON'T</strong> use prefix letters

<p>Karena <code>Dart</code> dapat memberitahu Anda tipe, cakupan, dan properti lain pada sebuah deklarasi, maka tidak ada alasan untuk menambahkan prefix pada sebuah identifier</p>

```dart
var instance; // good
var mInstance; // bad
```

</br>

📌 <strong>PREFER</strong> starting a function or method comments with third-person verbs

<p>Sebuah komentar dokumentasi harus fokus menjelaskan apa yang dilakukan kode tsb.</br>Menambahkan kata kerja dari sudut pandang orang ketiga di awal komentar adalah salah satu cara melakukannya.</p>

```dart
// Returns `true` if [username] and [password] inputs are valid.
bool isValid(String username, String password) { }
```

</br>

📌 <strong>PREFER</strong> a noun phrase for a non-boolean property or variable

<p>Seorang developer yg membaca kode kita akan fokus pada apa yang ada pada <i>property</i>. Jika mereka lebih peduli ttg <emp>bagaimana</emp> suatu property ditentukan, maka lebih baik dibuat menjadi method dengan nama menggunakan kata kerja.</p>

```dart
// Good
cat.furColor;
calculator.firstNumber;
list.length;

// Bad
list.deleteItems;
```

<p>Sementara u/ variabel atau property booleans <emp>PREFER</emp> gunakan kata kerja non-imperative, seperti:</p>

```dart
list.isEmpty;
dialog.isOpen;
```

</br>

📌 <strong>DO</strong> use `??` to convert null to a boolean value

<p>Aturan ini berlaku ketika sebuah expression dpt mengevaluasi nilai `true`, `false`, atau `null` dan perlu meneruskan hasilnya ke sesuatu yg tidak menerima nilai null</p>

```dart
if(stock?.isEnough) {
    print('Making you a cup of coffee...');
}
```

<p>Kode di atas akan menghasilkan exception ketika stock null. Untuk mengatasinya perlu diberikan nilai default ketika nilai awalnya null. Shg kodenya akan menjadi seperti berikut:</p>

```dart
stock?.isEnough ?? false;
```

</br>

📌 <strong>AVOID</strong> using curly braces in interpolation when not needed

<p>Dart dilengkapi dgn fitur <i>string interpolation</i> u/ menggabungkan nilai string dengan nilai lain agar lebih mudah.</p>

```dart
print('Hi, ${name}, You are ${thisYear - birthYear} years old.');
```

<p>Namun jika menginterpolasi identifier sederhana, maka curly braces ({}) tidak perlu ditulis.</p>

```dart
print('Hi, $name, You are ${thisYear - birthYear} years old.');
```

</br>

📌 <strong>PREFER</strong> async/await over using raw futures

<p>Kode <i>asynchronous</i> bisa jadi sangat sulit u/ dibaca dan di-<i>debug</i>, bahkan ketika menggunakan abstraksi yg bagus seperti Future. Sintaks async-await memungkinkan penulisan kode <i>asynchronous</i> dengan gaya <i>synchronous</i> shg memudahkan membaca kode.</p>

```dart
// raw future
void main() {
    getOrder().then((value) {
        print('You order: $value');
    }).catchError((error) {
        print('Sorry. $error');
    });
    print('Getting your order...');
}

// async-await
void main() async {
    print('Getting your order...');
    try {
        var order = await getOrder();
        print('You order: $order');
    } catch (error) {
        print('Sorry. $error');
    }
}
```

</br>

📌 <strong>CONSIDER</strong> making the code read like a sentence

<p>Penamaan dlm kode baik itu nama variabel, fungsi, maupun lainnya adalah hal yg sangat penting namun juga tidak mudah. Sbg solusi, ubah dlm kalimat.</p>

```dart
// "If store is open ..."
if (store.isOpen)

// "hey garfield, eat!"
garfield.eat();

// Bad example
// Ambigu apakah memerintahkan toko u/ tutup atau mendapatkan status dari toko
if (store.close)
```

</br>

📌 <strong>CONSIDER</strong> using function type syntax for parameters

<p>Dart memiliki sintaks khusus u/ mendefinisikan parameter yg tipenya adalah fungsi. Caranya dgn menuliskan tipe kembalian sebelum nama parameter kemudian parameter dari fungsi setelahnya.</p>

```dart
List filter(bool predicate(item)) { }
```

<p>Sejak Dart versi 2, notasi umum u/ tipe fungsi shg bisa digunakan u/ parameter berupa fungsi.</p>

```dart
List filter(Function predicate) { } // function type syntax
```

</br>

For more details: [https://dart.dev/guides/language/effective-dart](https://dart.dev/guides/language/effective-dart "dokumentasi efective dart")
