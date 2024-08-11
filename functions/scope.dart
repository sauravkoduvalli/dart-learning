/*  --- Scope in dart --- */

/*
  - Scope is a concept that refers to where values can be accessed or referenced.
  - Dart uses curly braces {} to define blocks of code. Each block can have its own scope.

  Different types of scops:- 

  1) Method/Local/function Scope:
    - Variables declared inside a function or a block (like an if statement or a loop) are in the local scope.
    - These variables can only be accessed within that function or block.

  2) Global Scope:
    - Variables declared outside of any function or block are in the global scope.
    - These variables can be accessed from anywhere in the code after they are declared.
    - The variable named global is a Top-Level Variable.

  3) Nested Scope: 
    - Dart allows nested scopes, where an inner block can access variables from its outer block, but not vice versa.
    - This means that a function can access variables declared in its parent scopes.
  
  4) Lexical Scope:
    - Dart is a lexical scope language which means the variable's scope is decided at compile-time.
    - The variable behaves differently if they defined in the different curly braces.
  
  Closures: 
    - A lexical closure is referred to as a closure, is a function object that has access to variables in its lexical scope even when the function is used of its original scope.
    - It provides access to an outer function's scope from inner function.
*/

var globalVariable = "Gobal variable";

void main() {
  print(globalVariable); // accessed anywhere in the program.

  var localVariable = 'Local variable';

  void localFunction() {
    print(
        localVariable); // local variable accessed here inside another function.
    var blockVariable = "Block variable";

    void nestedFunction() {
      var nestedVariable = 'Nested variable';
      print(localVariable); // local variable accessed inside a nested function.
      print(blockVariable); // block variable accessed inside another inner function.
      print(nestedVariable);
    }

    // print(nestedVariable); // Error: nestedVariable is not accessible here
    nestedFunction();
  }
  // print(blockVariable); // Error: blockVariable is not accessible here

  localFunction();
}
