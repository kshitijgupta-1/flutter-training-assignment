import 'dart:math';

void main() {
  int num = 12345;
  int r = 2;
  int count = 0;
  int copy = num;

  while (num != 0) {
    num = num ~/ 10;
    count++;
  }
  print("count $count");
  int rightPart = copy % pow(10, r).toInt();
  // Step-3 Compute Left part
  int leftPart = copy ~/ pow(10, r).toInt();
  int p = count - r;
  int result = rightPart * pow(10, p).toInt() + leftPart;
  print(result);
}
