import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive/Statement%20Managment%20Provider/post_provider.dart';

class PostDemoScreen extends StatefulWidget {
  @override
  _PostDemoScreenState createState() => _PostDemoScreenState();
}

class _PostDemoScreenState extends State<PostDemoScreen> {
  @override
  void initState() {
    super.initState();
    final postMdl = Provider.of<PostProvider>(context, listen: false);
    final postMultiMdl = Provider.of<PostProvider>(context, listen: false);
    postMdl.getPostData(context);
    postMultiMdl.getPostListData(context);
  }

  @override
  Widget build(BuildContext context) {
    final postMdl = Provider.of<PostProvider>(context);
    final postMultiMdl = Provider.of<PostProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Demo"),
      ),
      body: Column(
        children: [

          // One API data
          Container(
            padding: EdgeInsets.all(20),
            child: postMdl==null
                ? Container(
              child: CircularProgressIndicator(),) : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 20),
                  child: Text(
                    "${postMdl.post!.title}" ?? "",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  child: Text("${postMdl.post!.body}" ?? ""),
                )
              ],
            )
            ,
          ),

          //Multi API data
          SizedBox(height: 20,),
          SizedBox(height: 25,
            child: Text("Post List", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),),

          postMultiMdl.postList!=null ? SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            child: ListView.builder(
                itemCount: postMultiMdl.postList!.length,
                padding: EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 40, bottom: 20),
                          child: Text(
                            "${postMultiMdl.postList![index].title}" ?? "",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Container(
                          child: Text("${postMultiMdl.postList![index].body}" ?? ""),
                        )
                      ],
                    ),
                  );
                }),
          ) : Center(child: CircularProgressIndicator(),)
        ],
      ),
    );
  }
}