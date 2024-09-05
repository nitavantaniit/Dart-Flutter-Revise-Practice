// In this example below, we are creating a function middleFunction() that returns a future. The function will return Future<String> after 5 seconds.

void main() {
  print("Start");
  getData();
  print("End");
}

void getData() async{
  String data = await middleFunction();
  print(data);
}

Future<String> middleFunction(){
  return Future.delayed(Duration(seconds:5), ()=> "Hello");
}