import"package:flutter/material.dart";

void main(){
  runApp(const Movielist());
}

class Movielist extends StatefulWidget{
  const Movielist({super.key});

  @override
  State createState() => _MovielistState();
}

class _MovielistState extends State{
  int _counter =0;

  List<String> MovieList =[
      'https://upload.wikimedia.org/wikipedia/en/3/39/Jawan_film_poster.jpg',
      'https://upload.wikimedia.org/wikipedia/en/a/a1/Stree_2.jpg',
      'https://upload.wikimedia.org/wikipedia/en/7/7e/Karthikeya_2_Poster.jpeg',
      'https://upload.wikimedia.org/wikipedia/en/3/39/Munjya_2024.jpg',
  ];
  @override
   Widget build(BuildContext context){
    return  MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text("MovieList"),
          centerTitle:true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(MovieList [_counter],
                 height:300,   
              ),
            ],
            ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if(_counter< MovieList.length-1){
              _counter++;
            }else{
                 _counter=0;
            }
            setState(() {});
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
          ),
      ),
    );
   }
}
