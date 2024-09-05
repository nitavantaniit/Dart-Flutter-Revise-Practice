Stream<int> str(int n) async* {
 for (var i = 1; i <= n; i++) {
   await Future.delayed(Duration(seconds: 1));
   yield i;
 }
}

void main() {
 str(10).forEach(print);
}

// In the above example, you must print the number from 1 to 5 using stream. It will print the number after 1 sec.