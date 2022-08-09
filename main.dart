import 'dart:io';

void main() {
  print('Qual o número para o qual você quer saber a soma dos números divisíveis por 3 ou 5?');
  int? input = int.parse(stdin.readLineSync()!);
  // int input = 10;

  int sum = sumOfDivisibleBy3or5(input);

  print('soma = $sum');
}

int sumOfDivisibleBy3or5(int number) {
  int sum = 0;
  int biggestDivisibleBy3 = 0;
  int biggestDivisibleBy5 = 0;
  int biggestDivisibleBy15 = 0;

  for (int i = number - 1; i >= 3; i--) {
    if (i % 3 == 0 && biggestDivisibleBy3 == 0) {
      biggestDivisibleBy3 = i;
    }
    if (i % 5 == 0 && biggestDivisibleBy5 == 0) {
      biggestDivisibleBy5 = i;
    }
    if (biggestDivisibleBy3 != 0 && biggestDivisibleBy5 != 0) {
      break;
    }
  }

  int sumAPof3 = sumOfArithmeticProgression(3, biggestDivisibleBy3, biggestDivisibleBy3 ~/ 3);
  int sumAPof5 = sumOfArithmeticProgression(5, biggestDivisibleBy5, biggestDivisibleBy5 ~/ 5);

  // Since all number divisible by 15 are both divisible by 3 and 5, they will be counted twice, so we need to subtract their value once.
  biggestDivisibleBy15 = (number ~/ 15) * 15;
  int sumAPof15 = sumOfArithmeticProgression(15, biggestDivisibleBy15, biggestDivisibleBy15 ~/ 15);

  sum = sumAPof3 + sumAPof5 - sumAPof15;
  return sum;
}

int sumOfArithmeticProgression(int a1, int an, int n) {
  int sum = 0;
  sum = (a1 + an) * n ~/ 2;
  return sum;
}

int sumOfDivisibleBy3or5Dummy(int number) {
  int sum = 0;
  for (int i = 3; i < number; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }
  return sum;
}
