/*
Asynchronous Programming:

Asynchronous Programming is a way of writing code that allows a program to do multiple tasks at the same time. Time consuming operations like fetching data from the internet, writing to a database, reading from a file, and downloading a file can be performed without blocking the main thread of execution.

In Asynchronous programming, program execution continues to the next line without waiting to complete other work. It simply means, Don’t wait. It represents the task that doesn’t need to solve before proceeding to the next one.
*/

void main() {
  print("First Operation");   
  Future.delayed(Duration(seconds:3),()=>print('Second Big Operation'));
  print("Third Operation"); 
  print("Last Operation"); 
}

/*
Here in this example, you can see that it will print Second Big Operation at last. It is taking 3 seconds to load and Third Operation and Last Operation don’t need to wait for 3 seconds. This is the problem solved by Asynchronous Programming. A Future represents a value that is not yet available, you will learn about Future in the next section.
*/

/*
Why We Need Asynchronous

1. To Fetch Data From Internet,
2. To Write Something to Database,
3. To execute a long-time consuming task,
4. To Read Data From File, and
5. To Download File etc. 

Important Terms

1. Synchronous operation blocks other operations from running until it completes.
1. Synchronous function only perform a synchronous operation.
2. Asynchronous operation allows other operations to run before it completes.
2. Asynchronous function performs at least one asynchronous operation and can also perform synchronous operations.
*/