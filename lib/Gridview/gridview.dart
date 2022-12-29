import 'package:flutter/material.dart';

class GriwViews extends StatefulWidget {
  const GriwViews({Key? key}) : super(key: key);

  @override
  State<GriwViews> createState() => _GriwViewsState();
}

class _GriwViewsState extends State<GriwViews> {
  @override
  Widget build(BuildContext context) {

    var arrColors = [
      Colors.orange,
      Colors.red,
      Colors.indigo,
      Colors.white,
      Colors.deepPurple,
      Colors.black,
      Colors.deepOrange,
    ];

    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [

          // GridView.builder(
          //     itemBuilder: (context, index){
          //       return Container(
          //         color: arrColors[index],
          //       );
          //     },
          //   itemCount: arrColors.length,
          //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //     maxCrossAxisExtent: 100
          //   ),
          // ),

          // Container(
          //   height: 200,
          //   child: GridView.count(
          //       crossAxisCount: 4,
          //     crossAxisSpacing: 5,
          //     mainAxisSpacing: 5,
          //     children: [
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),Container(
          //         color: Colors.orange,
          //       ),Container(
          //         color: Colors.orange,
          //       ),Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),
          //     ],
          //   ),
          // ),

          // Container(
          //   height: 200,
          //   child: GridView.extent(
          //       maxCrossAxisExtent: 100,
          //     crossAxisSpacing: 11,
          //     mainAxisSpacing: 11,
          //     children: [
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),
          //       Container(
          //         color: Colors.orange,
          //       ),Container(
          //         color: Colors.orange,
          //       ),Container(
          //         color: Colors.orange,
          //       ),
          //
          //
          //
          //
          //     ],
          //   ),
          // )

        ],
      ),
    );
  }
}
