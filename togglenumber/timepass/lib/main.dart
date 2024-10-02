import "package:flutter/material.dart";

void main(){
  runApp(const TimePass());
}

class TimePass extends StatefulWidget{
     const TimePass({super.key});
      @override
     State createState() => _TimePassState();
  }

  class _TimePassState extends State{
     int Counter=0;
    @override
      Widget build(BuildContext context){
        return MaterialApp(
          home:Scaffold(
            appBar: AppBar(
              title: const Text("TimePass"),
              backgroundColor: Colors.blue,
               centerTitle: true,
            ),
            body:Center(
              child: Text("$Counter"),
              ),
              floatingActionButton: FloatingActionButton(
               onPressed: (){
                Counter++;
                setState(() {  });   
               },
               child: const Icon(Icons.add),
              )
          ),
        );
      }

  }
