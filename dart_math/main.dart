import 'dart:math';

import "delimiters.dart";
import "binary.dart";
import "points.dart";
import "sqrt.dart";
import 'string_extraction.dart';
import 'user.dart';

void main() {
  print("Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.");
  print(Delimiters().gcd(5670000234234234292, 7642134324234765127));
  print(Delimiters().lcm(42, 624));
  
  print("\nРеализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.");
  print(Binary().toBinary(1020123123));
  print(Binary().toDecimal(101101));

  print("Реализуйте метод, который принимает строку слов, разделённых пробелами. Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.");
  print(extractNumbersFromString("When I walked to the shore I picked up 13 rocks. 2 weeks I spent drunk, deppressed & alone"));

  print("\nЕсть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.");
  print(countWords("When I walked to the shore I picked up 13 rocks. 2 weeks I spent drunk, deppressed & alone. So muddy around. Hate mud, the rain, faces of war. How much have we lost? My family lost everything, each other. My father and brother have died, I'm sitting ducks in trenches. My fellows eating bread with artificial looking jam."));

  print("\nЕсть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого. Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке. Однако цифры встречаются в виде английских слов от zero до nine. Например, в результате строки ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0]. Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.");
  print(countNumberedWords("one, two, zero, three, cat, dog, elephant, six, six, eight, zero, programming, sixteen"));

  print("\nРеализуйте класс Point, который описывает точку в трёхмерном пространстве. У данного класса реализуйте метод distanceTo(Point another), который возвращает расстояние от данной точки до точки в параметре. По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника, который образуют данные точки. Реализуйте factory-конструкторы для данного класса, возвращающие начало координат, и ещё несколько на своё усмотрение (например, конструктор, возвращающий точку с координатами [1,1,1], которая определяет единичный вектор).");
  
  final p1 = Point(10, 21, 41);
  final p2 = Point(-100, 24, 20);
  final p3 = Point(-42, 11, 3);

  print(p1.distanceTo(p2));
  print("Area: ${AreaOfTriangle(p1, p2, p3)}");

  print("\nРеализуйте метод, который вычисляет корень любой заданной степени из числа. Реализуйте данный метод как extension-метод для num. Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени». Запрещается использовать методы math. В случае когда значение вернуть невозможно, необходимо бросать исключение с описанием ошибки.");
  print("my root: ${(91).myGRT(4)}; lib sqrt: ${sqrt(91)}");

  print("\nСоздайте класс User, у которого есть поле email. Реализуйте два наследника данного класса AdminUser и GeneralUser. Реализуйте mixin над классом User, у которого будет метод getMailSystem, который возвращает значение из email, которое находится после @. Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser. Далее реализуйте класс UserManager<T extends User>, у которого будет храниться список пользователей и будут методы добавления или удаления их. Также в UserManager реализуйте метод, который выведет почту всех пользователей, однако если пользователь admin, будет выведено значение после @. Проверьте реализованные методы на практике.");
  
  final u1 = AdminUser("admin1@ukr.net");
  final u2 = GeneralUser("user1@mail.ru");
  final u3 = GeneralUser("user2@gmail.com");

  final manager = UserManager();

  manager.addUsers([u1,u2,u3]);
  print("Manager sees emails: ${manager.managedUsersEmails.join(", ")}");

  manager.removeUsers([u1,u2]);
  print("Manager sees emails after removal: ${manager.managedUsersEmails.join(", ")}");

}