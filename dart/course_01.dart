void main() {


  //-------------------------------------------------------------------------------------

  // A string in dart is declared using the 'String' keyword with capital 'S'
  String age = "23";

  // when we want to print a variable, we can use the '$' sign before the variable name iside a string to print its value
  // but when outside a string we just use the variable name to print its value
  print("Hello, $age!");
  // we can also use the '+' sign to concatenate strings and variables, but we have to make sure that the variable is a string, otherwise we will get an error (we cant use the '+' sign to concatenate a string and an integer)
  print("Hello, " + age);

  // Get the runtime type of the variable -> var.runtimeType
  var type = age.runtimeType;
  print(type);

  // to convert a string to an integer, we can use the 'int.parse()' method
  var newType = int.parse(age).runtimeType;
  print(newType);

  // to convert a string to a double, we can use the 'double.parse()' method
  var newType2 = double.parse(age).runtimeType;
  print(newType2);

  // the age runtime type is still a string, because we haven't changed the value of the variable 'age'
  print(age.runtimeType);

  // now we have converted the string to an integer and a double, but we haven't changed the value of the variable 'age', so it is still a string
  int newAge = int.parse(age);
  print(newAge);

  double newAge2 = double.parse(age);
  print(newAge2);

  //-------------------------------------------------------------------------------------

  String height = "182.40";

  double newHeight = double.parse(height);
  var newHeightType = newHeight.runtimeType;
  print(newHeightType); // this will print the type of the variable newHeight, which is double
  print(newHeight); // this will print 182.40 as a double

  // this will throw an error because the string "182.40" cannot be converted to an integer
  //var newHeight2 = int.parse(height);

  //-------------------------------------------------------------------------------------

  // this will convert the double to an integer
  double length = 12.5;
  int newLength = length.toInt(); // this will convert the double to an integer by truncating the decimal part
  print(newLength); // this will print 12

  // this will convert the integer to a double
  int length2 = 12;
  double newLength2 = length2.toDouble();
  print(newLength2); // this will print 12.0

  // this will convert the double to a string
  double length3 = 12.0;
  String newLength3 = length3.toString();
  print(newLength3); // this will print "12.0"

  //-------------------------------------------------------------------------------------

  // if we want to declare a string that contains multiple lines, we can use triple quotes (""" or ''') to declare the string
  // because if we used single or double quotes, the string would end at the first new line and we would get an error
  String player = """marwan
  is a good 
  player""";
  print(player); // this will print the string as it is, with the new lines

  // we can also use the '\n' character to create a new line in a string to do the same thing
  player = "marwan \n is a good \n player";
  print(player);

  //-------------------------------------------------------------------------------------
}
