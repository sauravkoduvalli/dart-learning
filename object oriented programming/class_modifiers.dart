/* Class modifiers control how a class or mixin can be used, both from within its own library, and from outside the library where it's defined.
 Modifier keywords come before a class or mixin declaration. For example, writing abstract class defines an abstract class. 
 The full set of modifiers that can appear before a class declaration include: abstract, base, final, interface, sealed, mixin.


 No modifier :
  - If no modifier is used, the class is accessible to all other classes in the same library.
  - Construct new instances of a class.
  - Extend a class to create a new subtype.
  - Implement a class or mixin's interface.
  - Mix in a mixin or mixin class.


  Abstract :  
  - They serve as blueprints for other classes to inherit from and used 'abstract' keyword to define an abstract class.
  - Abstract Classes cannot be used to create objects directly. 
  - Abstract classes can have abstract methods (methods without a body) or concrete methods (methods with a body).
  - If a class (which is not abstract) extends an abstract class it needs to implement the provided interface of the abstract class.
  - Abstract Methods:
    - special methods found only in abstract classes. 
    - They lack a method body and serve as placeholders. 
    - When a class extends an abstract class, it must provide implementations for all the abstract methods in that class.

  Interface :
  - A normal class acts as an interface and it can be instantiated.
  - Interfaces are implemented by classes and require the implementation of all their methods and variables.
  - To define an interface, use the 'interface' modifier.
  - A class can implement multiple interfaces, but it can only extend one abstract class.
  - Prevents users from extending your class, but allows them to construct it

  Base : 
  - To enforce inheritance of a class or mixin's implementation, use the 'base' modifier. 
  - A base class disallows implementation outside of its own library.
  - The base class constructor is called whenever an instance of a subtype of the class is created.
  - All implemented private members exist in subtypes.
  - A new implemented member in a base class does not break subtypes, since all subtypes inherit the new member. This is true unless the subtype already declares a member with the same name and an incompatible signature.
  - You must mark any class which implements or extends a base class as 'base', 'final', or 'sealed'.

  Sealed :
  - To prevent other classes from extending a class, use the 'sealed' modifier.
  - Sealed classes are abstract, so they cannot be instantiated.
  - A sealed class serves as a parent class for a group of related subclasses.
  - A sealed class can only be extended within the same file where it is defined.
  - Sealed classes are useful when you need to define a hierarchy of classes that share a common interface, but with distinct implementations
  - 

  Mixin :
  - Mixins are a way to reuse code in multiple class hierarchies.
  - Mixins are a special type of class that provides methods to other classes.
  - Mixins are used to add functionality to a class without inheriting from it.
  - To define a mixin, use the 'mixin' modifier. 
  - Multiple inheritance is not allowed in Dart, but you can use mixins to achieve similar functionality.
  - Mixins cannot be instantiated, but they can be used to provide functionality to other classes.


  Final :
  - Prevents anyone outside of your library from creating any kind of subtype of your class.
  - Final classes are sealed, which means they cannot be extended.
  - Final classes are abstract, so they cannot be instantiated.

  Enum :
  - Enumerated types are a special kind of class used to represent a fixed number of constant values.
  - Enumerated types are defined using the 'enum' keyword.
  - Useful for represending state or status of an object.
  

 */