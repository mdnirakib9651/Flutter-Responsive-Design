import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive/Statement%20Managment%20Provider/post_provider.dart';

import '../Post Provider/photo_provider.dart';

class ScreenDemo extends StatefulWidget {
  const ScreenDemo({Key? key}) : super(key: key);

  @override
  State<ScreenDemo> createState() => _ScreenDemoState();
}

class _ScreenDemoState extends State<ScreenDemo> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final postMUltiMdl = Provider.of<PhotoProvider>(context, listen: false);
    final photoMultiMdl = Provider.of<PhotoProvider>(context, listen: false);
    final commentMultiMdl = Provider.of<PhotoProvider>(context, listen: false);
    postMUltiMdl.getPostListData(context);
    photoMultiMdl.getPostListData(context);
    commentMultiMdl.getPostListData(context);
  }

  @override
  Widget build(BuildContext context) {
    final postMUltiMdl = Provider.of<PhotoProvider>(context);
    final photoMultiMdl = Provider.of<PhotoProvider>(context);
    final commentMultiMdl = Provider.of<PhotoProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        leading: Center(child: Text("Facebook", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12),)),
        elevation: 0,
      ),

    );
  }
}
