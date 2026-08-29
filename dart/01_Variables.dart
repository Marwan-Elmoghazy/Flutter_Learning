void main() {
  // calling the function to demonstrate variables and printing them
  variablesPrinting();

  // calling the function to demonstrate variables types
  variablesTypes();

  // calling the function to demonstrate variables conversion
  variablesConversion();
}

void variablesPrinting() {
  String name =
      "Marwan"; // this is a string and yes it should have a capital 'S' in the 'String' keyword, because it is a class in dart
  int height = 182; //this is an integer
  double weight = 75.5; // this is a double
  bool isMarried =
      false; // this is a boolean and it has only two values, true or false

  // we can also use the 'var' keyword to declare a variable, but we have to make sure that we assign a value to it, otherwise we will get an error (we cant declare a variable without assigning a value to it)
  var job = "Software Engineer"; // this is a string
  var age = 21; // this is an integer
  var bankAccount = 0.99; // this is a double
  var isStudent = true; // this is a boolean

  // we can also use the 'num' keyword to declare a number, which can be either an integer or a double, but we have to make sure that we assign a value to it, otherwise we will get an error (we cant declare a variable without assigning a value to it)
  num year = 2026;
  num gravityfeet = 32.2;

  // we can also use the 'const' keyword to declare a constant variable, which means that its value cannot be changed after it is assigned
  const String country = "Egypt";
  const int daysInWeek = 7;
  const double gravity = 9.81;
  const bool isRaining = false;

  // when we want to print a variable, we can use the '$' sign before the variable name iside a string to print its value
  print(
    "My name is $name, I am $age years old, I am $height cm tall and my bank account is $bankAccount cents. My weight is $weight kg. am i married? $isMarried. My job is $job and am i a student? $isStudent. I live in $country. gravity on earth is $gravity m/s^2 and on feet is $gravityfeet ft/s^2. There are $daysInWeek days in a week. Is it raining? $isRaining. The year is $year.",
  );

  // but when outside a string we just use the variable name to print its value
  print(job);

  // we can also use the '+' sign to concatenate strings and variables, but we have to make sure that the variable is a string, otherwise we will get an error (we cant use the '+' sign to concatenate a string and an integer)
  print("I live in, " + country);

  // we can also use the '${}' syntax to print the value of a variable inside a string, which is useful when we want to print the value of an expression or a variable that is not a string
  print('2 + 2 = ${2 + 2}');

  // we can separate the strings / texts in print statements by using the '+' sign to concatenate them, but we have to make sure that the variable is a string, otherwise we will get an error
  print("Trying to separate strings: " + "like" + " this.");

  // We can create a multi-line string using ''' ''' or """ """.
  String lines = '''
First line.
Second line.
Third line.
''';
  print(lines);

  //we can use the _ (underscore) character to make large numbers more readable, for example, 100000000 can be written as 100_000_000 and the output will be the same, but it will be more readable and it works for int and double.
  int currancy = 100_000_000;
  double pi = 3.14_15_92_65_35;
  print(currancy); // Output: 100000000
  print(pi); // Output: 3.1415926535
}

void variablesTypes() {
  // to get the runtime type of a variable, we can use the 'var.runtimeType' property, which will return the type of the variable as a string
  var name = "Marwan";
  var nameType = name.runtimeType;
  print(nameType); // Output: String

  // we can use the 'var' keyword to declare a variable, but we have to make sure that we assign a value to it, otherwise we will get an error (we cant declare a variable without assigning a value to it)
  var job = "Software Engineer"; // this is a string
  var age = 21; // this is an integer
  var bankAccount = 0.99; // this is a double
  var isStudent = true; // this is a boolean

  print(job.runtimeType); // Output: String
  print(age.runtimeType); // Output: int
  print(bankAccount.runtimeType); // Output: double
  print(isStudent.runtimeType); // Output: bool
}

void variablesConversion() {
  // to convert an integer to a string, we can use the 'var.toString()' method
  int age = 23;
  String stringAge = age.toString();
  var stringAgeType = age.toString().runtimeType;
  print(stringAge); // Output: 23
  print(stringAgeType); // Output: String

  // to convert a string to an integer, we can use the 'int.parse(var)' method
  // stringAge -> "23"
  int intAge = int.parse(stringAge);
  var intAgeType = int.parse(stringAge).runtimeType;
  print(intAge); // Output: 23
  print(intAgeType); // Output: int

  // to convert a string to a double, we can use the 'double.parse(var)' method
  String height = "182.4";
  double newHeight = double.parse(height);
  var newHeightType = double.parse(height).runtimeType;
  print(newHeight); // Output: 182.4
  print(newHeightType); // Output: double

  // this will throw an error because the string "182.4" cannot be converted to an integer
  //int newHeight2 = int.parse(height); ❌

  // to convert a double to an integer, we can use the 'var.toInt()' method
  double length = 12.5;
  int newLength = length.toInt();
  var newLengthType = length.toInt().runtimeType;
  print(newLength); // Output: 12
  print(newLengthType); // Output: int

  // to convert an integer to a double, we can use the 'var.toDouble()' method
  int length2 = 12;
  double newLength2 = length2.toDouble();
  var newLength2Type = length2.toDouble().runtimeType;
  print(newLength2); // Output: 12.0
  print(newLength2Type); // Output: double
}
