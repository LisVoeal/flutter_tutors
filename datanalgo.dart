const numbers = [1, 2, 5, 10, 72, 81, 100];
void main() {
  notNaiveSort(11, numbers);
}

void notNaiveSort(int value, List<int> numbers) {
  final int middleIndex = numbers.length ~/ 2;
  if (value > numbers[middleIndex]) {
    for (int i = middleIndex; i < numbers.length; i++) {
      if (numbers[i] == value) {
        int number = numbers[i];
        print("Value $number was found.");
      }
    }
  } else {
    for (int i = middleIndex; i >= 0; i--) {
      if (numbers[i] == value) {
        int number = numbers[i];
        print("Value $number was found.");
      }
    }
  }
}
