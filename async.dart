// https://gist.github.com/yyu/8d3ad4d2baa029019bedf2a412e8a482
// https://dartpad.dev/8d3ad4d2baa029019bedf2a412e8a482

// $ dart async.dart
// foo() starts
// hiAsync() starts
// hello 1
// hello 2
// hello 3
// hello 4
// hello 5
// hiAsync() ends
// I'm from future.
// foo() ends

import 'dart:io';

void main() {
  foo();

  for (int i = 0; i < 5; i++) {
    sleep(Duration(milliseconds: 500));

    print('hello ${i + 1}');
  }
}

void foo() async {
  print('foo() starts');

  String s = await hiAsync();

  print(s);

  print('foo() ends');
}

Future<String> hiAsync() async {
  print('hiAsync() starts');

  await Future.delayed(Duration(seconds: 0));

  print('hiAsync() ends');

  return "I'm from future.";
}
