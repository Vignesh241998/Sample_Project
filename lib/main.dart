import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/DetailScreen.dart';
import 'package:sample_project/Modal%20Class%20File/PostScreen.dart';
import 'package:sample_project/Provider%20Example/TaskScreen.dart';

import 'Modal Class File/pdrmdl.dart';
import 'Provider Example/modal.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => TaskList()),
      ChangeNotifierProvider(create: (_) => PostProvider()),


    ],child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  List details=[
    {
      "id": "1",
      "name": "Vignesh",
      "mobile": "9677403640",
      "mail" : "vignesh@gmail.com",
      "addr" : "4,Thirumurugan Nagar , Kajamalai"

    },
    {
      "id": "1",
      "name": "Vivek",
      "mobile": "9677403640",
      "mail" : "vignesh@gmail.com",
      "addr" : "4,Thirumurugan Nagar , Kajamalai"

    },
    {
      "id": "1",
      "name": "Vijay",
      "mobile": "9677403640",
      "mail" : "vignesh@gmail.com",
      "addr" : "4,Thirumurugan Nagar , Kajamalai"

    },
    {
      "id": "1",
      "name": "John",
      "mobile": "9677403640",
      "mail" : "vignesh@gmail.com",
      "addr" : "4,Thirumurugan Nagar , Kajamalai"

    },
    {
      "id": "1",
      "name": "Ajith",
      "mobile": "9677403640",
      "mail" : "vignesh@gmail.com",
      "addr" : "4,Thirumurugan Nagar , Kajamalai"

    },
    {
      "id": "1",
      "name": "Kumar",
      "mobile": "9677403640",
      "mail" : "vignesh@gmail.com",
      "addr" : "4,Thirumurugan Nagar , Kajamalai"

    },
    {
      "id": "1",
      "name": "Praveen",
      "mobile": "9677403640",
      "mail" : "vignesh@gmail.com",
      "addr" : "4,Thirumurugan Nagar , Kajamalai"

    },

  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>PostsScreen()));
          }, icon: Icon(Icons.chevron_right))
        ],
      ),
      body: Column(

        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        //
        // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
        // action in the IDE, or press "p" in the console), to see the
        // wireframe for each widget.
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,physics: ScrollPhysics(),
            itemCount: details.length,
            itemBuilder: (BuildContext context , int index){
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailScreen(dList: [details[index]],)));
                  },
                  child: ListTile(
                    title: Text(details[index]['name']),
                    trailing: Icon(Icons.chevron_right),
                  ),
                )
              );
            },
          ),
          // InkWell(
          //   onTap: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailScreen()));
          //   },
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(7),
          //       color: Colors.blueAccent,
          //
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text("Contact Name"),
          //     ),
          //   ),
          // ),

        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
