// Program explaining the datatypes

void main()
{
  //Numbers
  int integerNumber = 10;
  double doubleNumber = 3.14;

  //Strings
  String text = "Hello, Dart";
  String multilineText = '''
    This is a
    Multiline string
    in Dart
    ''';

  //Booleans
  bool isTrue = true;
  bool isFalse = false;

  //Lists
  List<int>numberList = [1, 2, 3, 4, 5];
  List<String>stringList = ['apple', 'banana', 'orange'];

  //Maps
  Map<String, dynamic> person = {
    'name' : 'John Doe',
    'age' : 30,
    'isEmployed' : true
  };

  //Runes (Representing Unicode Characters)
  Runes runes = Runes('\u{1f60A}');

  //Symbols
  Symbol symbol = #mySymbol;

  //Displaying values

  // Displaying Numbers
  print("Integer Number: $integerNumber" );
  print("Double Number: $doubleNumber" );

  //Displaying Strings
  print("Text: $text");
  print("Multiline Text: $multilineText");

  //Displaying Boolean
  print("Boolean (True): $isTrue" );
  print("Boolean (False): $isFalse");

  //Displaying List
  print("Numbers List: $numberList"); 
  print("String List: $stringList"); 

  //Displaying Map
  print("Person Map: $person");

  //Displaying Runes
  print("Emoji (Smiling Face): ${String.fromCharCodes(runes)}");

  //Displaying Symbol
  print("Symbol: $symbol");

}