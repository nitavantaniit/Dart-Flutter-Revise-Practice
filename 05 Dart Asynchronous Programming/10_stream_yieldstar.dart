// example of yield*

Stream<int> str(int n) async* {
 if (n > 0) {  
   await Future.delayed(Duration(seconds: 2));
   yield n;
   yield* str(n - 2);
 }
}

void main() {
 str(10).forEach(print);
}

/*
In the above example, you have printed only an even number from 10 to 2 using stream. It will print the number after 2 sec. 
*/