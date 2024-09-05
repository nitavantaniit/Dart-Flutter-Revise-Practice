/*
Handling Errors:
You can handle errors in the dart async function by using try-catch. You can write try-catch code the same way you write synchronous code.
*/
main() {
  print("Start");
  getData();
  print("End");
}


void getData() async{
    try{
        String data = await middleFunction();
        print(data);
    }catch(err){
        print("Some error $err");
    }
 
}

Future<String> middleFunction(){
  return Future.delayed(Duration(seconds:5), ()=> "Hello");
}
/*
In the above example, try-catch handles the exception that could come after the program is executed. 
*/

/*
Important Terms:
1. 'async' The async keyword can be used before a function’s body to indicate that a function is asynchronous.
2. 'async function' Functions marked with the async keyword are known as async functions.
3. 'await' The completed output of an asynchronous expression can be retrieved with the await keyword. Only async functions can use the await keyword. 
*/