// Write a Program to check the given number is prime or not prime.

// 10 = 1, 2, 5, 10 = not prime
// 7 = 1, 7 = prime

import 'dart:io';
 
bool isPrime(N) {
  for (var i = 2; i <= N / i; ++i) {
    if (N % i == 0) {
      return false;
    }
  }
  return true;
}
 
void main() {
  print('Enter N');
  var N = int.parse(stdin.readLineSync()!);
  if (isPrime(N)) {
    print('$N is a prime number.');
  } else {
    print('$N is not a prime number.');
  }
}