/// Recursive implementation

void main(List<String> args) {
  fizzBuzzRecursive(1, 100);
}

void fizzBuzzRecursive(int start, int end,
    {bool isDebug = false, List<String> answers = const <String>[]}) {
  if (start % 15 == 0) {
    if (isDebug) {
      answers.add('FizzBuzz');
    } else {
      print('FizzBuzz');
    }
  } else if (start % 5 == 0) {
    if (isDebug) {
      answers.add('Buzz');
    } else {
      print('Buzz');
    }
  } else if (start % 3 == 0) {
    if (isDebug) {
      answers.add('Fizz');
    } else {
      print('Fizz');
    }
  }
  if (start < end) {
    fizzBuzzRecursive(
      start + 1,
      end,
      isDebug: isDebug,
      answers: answers,
    );
  }
}

/// Simple implementation
String? fizzBuzzSimple(int n) {
  if (n % 15 == 0) {
    return 'FizzBuzz';
  } else if (n % 5 == 0) {
    return 'Buzz';
  } else if (n % 3 == 0) {
    return 'Fizz';
  }
}
