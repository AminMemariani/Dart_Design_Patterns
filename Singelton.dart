class Singleton {
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}

//------------------------------------------------

main() {
  var s1 = Singleton();
  var s2 = Singleton();
  print(identical(s1, s2));  // true
  print(s1 == s2);           // true
}
//ref: https://stackoverflow.com/questions/12649573/how-do-you-build-a-singleton-in-dart
