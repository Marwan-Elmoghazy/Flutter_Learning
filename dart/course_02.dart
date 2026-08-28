void main() {
  // hovering over the function name will show the documentation comment
  printHello();

  // calling the function to demonstrate arithmetic operations
  arithmeticOperations();

  // calling the function to demonstrate increment and decrement operations
  incrementDecrementOperations();

  // calling the function to demonstrate assignment operations
  assignmentsOperations();

  // calling the function to demonstrate relational operations
  relationalOperations();

  // calling the function to demonstrate logical operations.
  logicalOperations();
}

//------------------------------------------------------------------------------
// we have 3 types of comments in Dart:
// 1. Single line comment just like this one

// 2. Multi-line comment
/*  just like 
that one*/

// 3. Documentation comment which is used to document libraries, classes, and their members. It uses triple slashes (///) or a multi-line comment starting with /** and ending with */.

/// This function prints "Hello" to the console.
void printHello() {
  print("Hello!");
}

//------------------------------------------------------------------------------

void arithmeticOperations() {
  /*
  Dart supports the following arithmetic operators:
  + (addition)
  - (subtraction)
  * (multiplication)
  / (division)
  % (modulus)
  - -num (unary minus) which is like سالب في سالب بموجب
  ~/ (integer division) which returns the integer part of the division result (e.g., 7 ~/ 2 = 3)
  */

  int a = 20;
  int b = 10;

  // Dart supports both integer and double division. The result of the division operator (/) is always a double, even if both operands are integers.
  double c = 10 / 5;

  // if you want to perform integer division, you can use the ~/ operator and feel free to declare the variable as an int.
  int d = 12 ~/ 5;

  print(a + b); // addition
  print(a - b); // subtraction
  print(a * b); // multiplication
  print(a / b); // division
  print(d); // integer division
  // In Dart, the modulus operator (%) works on both int and double (ركز لان السي بتشتغل دبل بس)
  print(a % b); // modulus (remainder)
  print(a - -b); // unary minus
  print(c); // prints 2.0
}

//------------------------------------------------------------------------------

void incrementDecrementOperations() {
  int a = 0;

  // Dart supports both prefix and postfix increment and decrement operators.
  // the prefix operator (++a or --a) increments or decrements the value of the variable before it is used in an expression.
  // the postfix operator (a++ or a--) increments or decrements the value of the variable after it is used in an expression.

  print(a); // prints 0
  print(
    ++a,
  ); // prints 1 because the value of a is incremented before it is used in the expression
  print(a); // prints 1
  print(
    a++,
  ); // prints 1 because the value of a is used in the expression before it is incremented
  print(
    a,
  ); // prints 2 because the value of a is incremented after it is used in the expression

  //same goes for the decrement operator
  a = 0;
  int b = 0;
  print(
    ++a + b--,
  ); // prints 1 because the value of a is incremented before it is used in the expression and the value of b is decremented after it is used in the expression

  print(a); // prints 1
  print(b); // prints -1
}

//------------------------------------------------------------------------------

void assignmentsOperations() {
  // Dart supports the following assignment operators:
  // = (assignment)
  // += (addition assignment)
  // -= (subtraction assignment)
  // *= (multiplication assignment)
  // /= (division assignment)
  // %= (modulus assignment)
  // ~/= (integer division assignment)

  double a = 10;
  double b = 5;

  int c = 10;
  int d = 5;

  a += b; // equivalent to a = a + b
  print(a); // prints 15

  a -= b; // equivalent to a = a - b
  print(a); // prints 10

  a *= b; // equivalent to a = a * b
  print(a); // prints 50

  a /= b; // equivalent to a = a / b
  print(a); // prints 10

  c ~/= d; // equivalent to c = c ~/ d
  print(c); // prints 2
}

//------------------------------------------------------------------------------

void relationalOperations() {
  int num1 = 20;
  int num2 = 10;

  // Dart supports the following relational operators:
  // == (equal to)
  // != (not equal to)
  // > (greater than)
  // < (less than)
  // >= (greater than or equal to)
  // <= (less than or equal to)
  // it supports both int and double types for relational operations.

  print(num1 == num2); // prints false
  print(num1 != num2); // prints true
  print(num1 > num2); // prints true
  print(num1 < num2); // prints false
  print(num1 >= num2); // prints true
  print(num1 <= num2); // prints false
}

//------------------------------------------------------------------------------

void logicalOperations() {
  // Dart supports the following logical operators:
  // && (logical AND)
  // || (logical OR)
  // ! (logical NOT)

  bool a = true;
  bool b = false;

  print(a && b); // prints false
  print(a || b); // prints true
  print(!a); // prints false

  //can be done with relational operators as well

  int num1 = 20;
  int num2 = 10;

  print(num1 > num2 && num1 != num2); // prints true
  print(num1 < num2 || num1 == num2); // prints false
  print(!(num1 < num2)); // prints true
}

//------------------------------------------------------------------------------
