/* --- Dart Programming language --- */
/*
  - Dart is an open-source, object oriented, programming language developed by google in 2021.
  - It supports application development on both the client and server side. But, widely used for the development of Android apps, iOS apps, IoT(Internet of Things), and web applications using the Flutter Framework.
  - Dart is a compiled language, which means cannot directly execute the code, the code will be compiled to machine code for the execution.
  - Dart is a strongly typed programming language, meaning each data value in the code should have a type and must be known when the code is compiled.
*/


/* --- Advantages of Dart --- */
/*
  1) Performance: Dart compiles to native code for speedy performance, ideal for mobile apps. Optimized for fast UI rendering and efficient execution
  2) Easy to learn: Similar to familiar languages like Java or Javascript, making it approachable for new developers.
  3) Flutter Integration : Seamless integration with Flutter for cross-platform mobile development.
  4) One codebase, Many places: Develop for mobile, web, and even desktop with a single codebase (primarily with Flutter).
  5) Stringly typed and flexibility: Offers strong typing for better error detection while maintaining some flexibility.
*/


/* --- Limitations of Dart --- */
/*
  1) Limited Adoption and Community Support: Smaller community compared to more established languages like JavaScript. Fewer libraries, frameworks, and resources available.
  2) Browser Support: Requires transpilation to JavaScript for web applications, adding complexity. Native Dart support in browsers is minimal.
  3) Relatively Young Ecosystem: Less mature ecosystem. Limited third-party tools and integrations.
*/


/* --- Dart Compilators --- */
/*
  1) Just-In-Time (JIT): 
    - JIT compilation is used during the development phase. It allows developers to see the changes in the code immediately.
    - JIT compiles the code into machine code at runtime, which makes the debugging process easier.
  2) Ahead-Of-Time (AOT): 
    - AOT compilation is used when the application is deploying.
    - AOT produces native specific code based on the requirements.
    - AOT compilation is used to improve the performance of the application.
  3) Dart2js: 
    - Dart2js is a Dart-to-JavaScript compiler that allows Dart code to run in web browsers.
    - Web apps in flutter uses Dart development-time compiler, which will transform dart code into javascript code. 
    - For final release or deployment, instead of ‘devc’, flutter uses Dart2js compiler, which will convert the code into optimised javascript code for the web browsers.

*/
