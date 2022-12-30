import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:responsive/Statement%20Managment%20Provider/post_provider.dart';

import 'Gridview/gridview.dart';
import 'Responsive 1/responsive.dart';
import 'Statement Managment Provider/Screen/post_demo.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<PostProvider>(create: (_) => PostProvider()),
    ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Responsive()));
              },
              child: Text("Responsive 1")),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => GriwViews()));
              },
              child: Text("Responsive 1")),

          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => GriwViews()));
              },
              child: Text("Responsive 1")),

          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PostDemoScreen()));
              },
              child: Text("Post Demo")),
        ],
      ),
    );
  }
}

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<PostProvider>(create: (_) => PostProvider()),
];