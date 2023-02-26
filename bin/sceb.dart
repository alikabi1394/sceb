import 'dart:io';

main() {
  gameTitle();
  levelOneTitle();
  endGame();
}

makeSpace(int spaces) {
  for (int index = 0; index < spaces; index++) {
    print(" ");
  }
}

gameTitle() {
  makeSpace(2);
  print("Multiplication table");
  makeSpace(2);
}

levelOneTitle() {
  print("level 1");
  printToday();
  print("Calculate the following numbers,");

  levelOne();
}

levelOne() {
  print("6*6 a#(36), b#(26), c#(40):");
  String option1 = stdin.readLineSync()!;
  switch (option1) {
      case "a":
    escapeT();//اجابةصحية
    levelTwoTitel();
      break;
      case "b":
    fightT();//انا لا احب العراك
    win();
    lose();
      break;
      case "c":
      makeSpace(2);
      levelOne();
      break;
  }

  makeSpace(2);
}

levelTwoTitel() {
  print("level 2");
  String option1 = stdin.readLineSync()!;
  makeSpace(2);
}

levelTwo() {
  print("...........1#,");
  String option1 = stdin.readLineSync()!;
  makeSpace(2);
}

levelThree() {
  print("level 3");
  String option1 = stdin.readLineSync()!;
  makeSpace(2);
}

endGame() {
  makeSpace(2);
  print("######### The End #########");
  makeSpace(2);
}

printToday() {
  print(
      "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}");
}
escapeT()//انتضر حتبى ياتي
{
  makeSpace(1);
  print("ok");
  makeSpace(1);
}
fightT()//اجابةغطاء
{
  print("no");
}

lose() {
  makeSpace(1);
  print("🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️");
  makeSpace(1);
  endGame();
}
win() {
  makeSpace(1);
  print("🎉🎉🎉🎉🎉🎉🎉🎉");
  makeSpace(1);
}