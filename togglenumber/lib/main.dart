import"package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main(){
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget{
  const CounterApp({super.key});
  @override
   State<CounterApp> createState() => _CounterApp();
}

class _CounterApp extends State<CounterApp>{
  int counter=0;
     
     @override
  Widget build(BuildContext context){
    return   MaterialApp(
      title: 'CounterApp()',
      home:Scaffold(
       appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
        backgroundColor: Colors.blue,

       ),
       body:Center(
        child:Text("$counter"),
        ),
        floatingActionButton:FloatingActionButton(
          onPressed:(){
           counter++;
           setState((){});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
