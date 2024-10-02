// ignore_for_file: camel_case_types

import"package:flutter/material.dart";

void main(){
  runApp(const toggleColor());
}

class toggleColor extends StatefulWidget{
  const toggleColor({super.key});
  @override
   State createState() => _toggleColorState();
}

class _toggleColorState extends State{
  bool Colorchange = true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text("ColorContainer"),
          centerTitle: true,
         backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height:200,
            width:200,
            color: (Colorchange) ? Colors.blue : Colors.amber,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
              if(Colorchange){
                 Colorchange = false;
              }else{
                Colorchange = true;
              }
               setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}