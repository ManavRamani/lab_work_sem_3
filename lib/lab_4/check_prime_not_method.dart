// WAP to accept a number and check whether the number is prime or not. Use method name
// check (int n). The method returns 1, if the number is prime otherwise, it returns 0.

import 'dart:io';

int check(int n) {
  if (n <= 1) {
    return 0;
  } else {
    for (int i = 2; i <= n / 2; i++) {
      if (n % i == 0) {
        return 0;
      }
    }
    return 1;
  }
}

void main() {
  stdout.write("Enter number : ");
  int n = int.parse(stdin.readLineSync()!);
  int result = check(n);
  if (result == 1) {
    print("$n is a prime number");
  } else {
    print("$n is not a prime number");
  }
}
