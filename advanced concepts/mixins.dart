/* --- Dart Mixins --- */

/*
  - Mixins allow to reuse code across multiple class hierarchies without using traditional inheritance.
  - They provide a way to add additional functionality to a class without creating a deep inheritance chain.
  - Use the 'mixin' keyword to define a mixin. Unlike a class, a mixin cannot be instantiated and it cannot have a constructor.

  How Mixins Work
  ---------------
  - Declaration: A mixin is defined using the mixin keyword.
  - Usage: You can apply a mixin to a class using the with keyword.
  - Functionality: A mixin can contain methods, properties, and even its own superclass.

  Key Points
  -----------
  - Multiple Mixins: A class can apply multiple mixins. 
  - Order of Mixins: The order of mixins matters, as it determines the method resolution order.
  - No Constructor: Mixins cannot have constructors.   
  - No Inheritance: Mixins cannot inherit from other classes.

  Benefits of using mixins
  ------------------------
  - Code Reusability: Share code between multiple classes without creating complex inheritance hierarchies.   
  - Flexibility: Easily add new functionality to existing classes.
  - Avoids Diamond Problem: Mixins help prevent the diamond problem, a common issue in multiple inheritance
*/

abstract class Model {}

class User extends Model {}

mixin Shareable {
  void share(String content) {
    print('Share the $content');
  }
}

class Post extends Model with Shareable {}

class Comment extends Model with Shareable {}

class Video with Shareable {}

void main() {
  var post = Post();
  post.share('The first post.');

  var comment = Comment();
  comment.share('My first comment.');

  var video = Video();
  video.share('Share the video');
}
