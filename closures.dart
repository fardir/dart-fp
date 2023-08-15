void main() {
  var closureEx = calculate(2);
  closureEx();
  closureEx();
}

Function calculate(base) {
  var count = 1;
  return () => print("Nilainya adalah ${base + count++}");
}