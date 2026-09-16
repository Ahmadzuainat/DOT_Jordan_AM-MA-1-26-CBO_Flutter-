void main() {
  double mark = 20;

  switch (mark) {
    case > 80:
      print("A");
      break;

    case > 70:
      print("B");
      break;

    case > 60:
      print("C");
      break;

    case > 50:
      print("Pass");
      break;

    default:
      print("Failed");
  }

  // do while

  int i = 0;
  int sum = 0;

  do {
    sum += i;

    print('sum = ${sum - i} + $i = $sum');

    i++;
  } while (i < 5);
}

