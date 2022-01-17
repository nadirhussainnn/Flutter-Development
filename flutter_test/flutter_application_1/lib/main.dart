import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MyWidget(), //We simply provide widget here, builtin-> Text("") or our own widget->MyWidget
    );
  }
}

//Creating Stateless Widget

/*Steps: 1. Create class that extends StatelessWidget
         2. To create widget, buid widget that returns a Widget. so do as Widget build() 
         3. For android, return screen level widget called scaffold
         To create scaffold widget give some arguments
              a) Appbar         :required
              b) body           :required, accepts layout widget such as Center, Box, Row etc
              c) FloatingButton :optional  
*/

class MyWidget extends StatelessWidget{

    String title="My APP TITLE ";
    String text1="Text1 ";
    String text2="Text2 ";

    Widget build(BuildContext context){

      return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),

        body: Center(
            // child: Row(
            //   children: [
            //     Text(text1),
            //     Text(text2),

            //   ],
            // ),
            child: Column(
              children: [
                Text("Sahi"),
                Text("Ok"),
              ],
            ),
        ),
      );
    }
}