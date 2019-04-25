
import 'dart:core';

import 'package:DartApp1/DartApp1.dart' as DartApp1;
import 'package:DartApp1/Calculator.dart';    //Importing another Dart file (must be in "lib")
import 'dart:math' as math;  //using libraries of Dart SDK

main(List<String> arguments) {

  //Different ways of using print statement

  print("Hello Word");  //normal print statement
   var i=0; //declaring a variable
  print("Variable $i"); //printing a variable
  print("Variable ${i++}"); //Writing expression in a print statement
  print("Variable$i\Var");  //Printing expression without space
  print("Variable" + i.toString() + "Variable");   //Another way to print

  //Methods

  //Can be declared anywhere i.e in/out of class or or inside another function
  thisIsMethod(){  //Does not need to specify return type
    print("Hi hi");
  }
  thisIsAnotherMethod(){  //No return type required
    return 0;
  }
  thisIsThirdMethod(num i){  //Parameterized method
    print("Number is: $i");
  }
  thisIsFourthMethod() => print("Small function");  //function with single operation(normally written as 'return print("Small function");')
  thisIsFifthMethod(var a, [var b]){    //Method with optional parameter
    if(b!=null) print("$a $b");
    else print("$a");
  }

  //Calling Functions
  thisIsMethod();
  thisIsAnotherMethod();
  thisIsThirdMethod(4);
  thisIsFourthMethod();
  thisIsFifthMethod("Hi");
  thisIsFifthMethod("Hi", "Hello");

  //Importing a package and calling its method
  print('Hello world: ${DartApp1.calculate()}!');

  //Classes and Objects

  //Initializing Objects
  var studentOne = new Student("Gagandeep", 19);  //Method one
  Student studentTwo = new Student("Andy", 24);   //Method two
  Student studentThree = new Student.name("Gaga");//Method three
  Student studentFour = new Student.age(9);       //Method four
  Student studentFive = new Student.nameAndAge("Elf", 19);  //Method Five

  //Printing object
  print(studentOne.name + " " + studentOne.age.toString());

  //Lists
  var list = new List();              //this list can hold all data types
  List listTwo = new List<String>();  //this list can hold only sting
  list.add("Lol");     //adding an item to list
  list.add(1);
  print(list);         //Printing whole list

  Map map = {   //consists of Key value pairs
    "Gagandeep":"Computer",
    "Silver":"Electronics",
    "Elfy":"IT",
    1:3,
    2:"Two",
    "Three":3
  };

  //Maps(Key value pair)
  print(map); //Printing whole map at once
  map.forEach((key, value) => print("Key: $key, Value: $value")); //printing map using inbuilt function
  var keys = map.keys;  //creating list of keys
  var values = map.values;  //creating list of values
  print(keys);
  print(values);
  print(map.runtimeType); // .runtimeType used to print data type


  //Importing class from different dart file
  //Does not require "as [Object name]" while importing

  Calculator calculator = new Calculator();
  calculator.add(4, 2);
  calculator.sub(4, 2);
  calculator.multiply(4, 2);
  calculator.div(4, 2);

  //using a function from object of a dart library
  print(math.max(99, -99));
}

//Creating Classes

//Can have only one default constructor
//Can have multiple named constructors
//Can implement multiple abstract classes but extend only one class
//Multiple Inheritance not possible
//NO Interfaces in Dart. Mindset is that abstract class and interface have almost similar functionality
class Student{
  String name;
  int age;
  Student(this.name, this.age); //Constructor
  Student.name(this.name);  //Named Constructor
  Student.age(this.age);  //Named Constructor
  Student.nameAndAge(this.name, this.age);  //Named Constructor
  get getName => name;  //getter
  set setName(String name) => this.name = name; //setter
}

//Abstract classes

//These classes tell what to do
//These classes cannot have an object
//Implemented by other classes
abstract class Person{
  getName();
  getAge();
  getNationality();
  definedFunction() => print("Defined Function");
}

//Class Implementing Abstract class
class Child implements Person{
  @override
  definedFunction() {
    // TODO: implement definedFunction
    return null;
  }

  @override
  getAge() {
    // TODO: implement getAge
    return null;
  }

  @override
  getName() {
    // TODO: implement getName
    return null;
  }

  @override
  getNationality() {
    // TODO: implement getNationality
    return null;
  }
}

