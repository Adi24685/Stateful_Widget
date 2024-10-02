import"package:flutter/material.dart";

void main(){
  runApp(const AppColor());
}

class AppColor extends StatefulWidget{
  const AppColor({super.key});
  @override
    State createState() => _AppColorState();
  }

  class _AppColorState extends State{
    bool colorChange = true;
    @override
      Widget build(BuildContext context){
        return MaterialApp(
          home:Scaffold(
            appBar:AppBar(
              title:const Text( "Incubators"),
              backgroundColor: colorChange? Colors.blue: Colors.green,
              centerTitle: true,
            ),
            body: Center(
              child: Container(
                height: 150,
                width:150,
                color: colorChange? Colors.pink: Colors.purple,
              ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed:(){
                   if(colorChange){
                       colorChange = false;
                   }else{
                     colorChange = true;
                   }
                   setState(() {});
                },
                  child: const Icon(Icons.arrow_back)
              ),
          ),
        );
      }
  }
