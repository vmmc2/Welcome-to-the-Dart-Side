# About Show, Hide and As.
* When we are importing packages such as "dart:io", "dart:math" or "dart:convert" it is useful to know how to use certain keywords.
* These keywords are the following:
  * __show__
  * __hide__
  * __as__
* Below, you can find more info about how to use them properly:
```dart
import 'dart:html' as html ;  // After using the "as" keyword, whenever you use a function/class/method from this package you will need to use the prefix that you wrote. In this case, the prefix is: "html."
import 'dart:io' show Platform; //By using the "show" keyword, you are indicating that you don't want all classes/functions from the package but only those declared after the "show" keyword.
import 'dart:io' hide Platform; //This works in the opposite way. By using the "hide" keyword, you are indicating that you want to have access to all classes/functions/methods from the package with the exception of those declared after the "hide" keyword.
```
