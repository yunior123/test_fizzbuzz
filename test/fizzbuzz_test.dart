import 'package:fizzbuzz_recursive/fizzbuzz.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Fizz Buzz',
    () {
      test(
        'calculate simple fizzbuzz',
        () {
          expect(
            fizzBuzzSimple(15),
            'FizzBuzz',
          );
        },
      );
      test(
        'calculate recursive fizzbuzz',
        () {
          var answers = <String>[];
          fizzBuzzRecursive(
            1,
            5,
            isDebug: true,
            answers: answers,
          );
          expect(
            answers,
            equals(['Fizz', 'Buzz']),
          );
        },
      );
    },
  );
}
