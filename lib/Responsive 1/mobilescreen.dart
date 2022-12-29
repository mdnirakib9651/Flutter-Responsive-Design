import 'package:flutter/material.dart';

import '../image.dart';
import 'webscreen.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context){
            return Padding(
                padding: EdgeInsets.all(8),
              child: InkWell(
                onTap: (){
                  Scaffold.of(context).openDrawer();
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.network("https://cdn-icons-png.flaticon.com/128/6995/6995971.png"),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      drawer: CustomDrawer(),

      body: ListView(
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Row(
                    children: [
                      Image.network("https://cdn-icons-png.flaticon.com/128/6518/6518503.png"),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("CREATIVE", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 20),),
                    Text("IT INSTITUTE", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network("https://t4.ftcdn.net/jpg/02/51/67/37/240_F_251673794_QqTrSsfglVqVZ0wsKgcatpuLs9ZMuA9B.jpg"),
                Text("দেশ সেরা আইটি ট্রেনিং ইন্সিটিউট", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ক্যারিয়ার শুরু হোক", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("দক্ষতার আত্নবিশ্বাসে", style: TextStyle(color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("অভিজ্ঞ মেন্টর আর আপডেটেড কারিকুলাম নিয়ে ক্রিয়েটিভ আইটি ইনস্টিটিউট প্রস্তুত আপনার ক্যারিয়ার গড়ার অগ্রযাত্রায়। আমাদের ৩০টিরও বেশি ট্রেন্ডি কোর্স থেকে আজই বেছে নিন আপনার পছন্দের কোর্স।", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          SizedBox(height: 40,),

          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: MaterialButton(
                hoverColor: Colors.grey.withOpacity(0.2),
                onPressed: (){

                },
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: Image.network("https://cdn-icons-png.flaticon.com/512/828/828370.png", color: Colors.white,),
                          ),
                          SizedBox(width: 10,),
                          Text("ব্রাউজ কোর্স", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70),
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Row(
                  children: [
                    Container(
                      height: 50,
                        width: 50,
                        child: Image.network("https://t3.ftcdn.net/jpg/01/57/64/08/240_F_157640867_LOVYhAQBT2QlApaFllDvmylJuyXWpZg0.jpg")),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("দেশের অন্যতম ISO সার্টিফাইড আইটি", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),),
                          Text("দট্রেনিং ইনস্টিটিউট", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.indigo[500],
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/image/flutter.jpg", fit: BoxFit.cover,)),
            ),
          ),

          //............... GridView Row Scroller..............
          Row(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: GridView.count(
                  scrollDirection: Axis.horizontal,
                    crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [


                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                              width: 40,
                              child: Image.network("https://cdn-icons-png.flaticon.com/128/1185/1185316.png", color: Colors.red,)),
                          SizedBox(height: 10,),
                          Text("ডিজাইন এন্ড মাল্টিমিডিয়া", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),),
                        ],
                      ),
                    ),

                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.network("https://cdn-icons-png.flaticon.com/128/9251/9251770.png", color: Colors.red,)),
                          SizedBox(height: 5,),
                          Text("ওয়েব এন্ড সফটওয়্যার", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),),
                        ],
                      ),
                    ),

                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.network("https://cdn-icons-png.flaticon.com/128/6163/6163831.png", color: Colors.red,)),
                          SizedBox(height: 10,),
                          Text("ডডিজিটাল মার্কেটিং", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),),
                        ],
                      ),
                    ),

                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.network("https://cdn-icons-png.flaticon.com/128/4427/4427916.png", color: Colors.red,)),
                          SizedBox(height: 10,),
                          Text("3D অ্যানিমেশন", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),),
                        ],
                      ),
                    ),

                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.network("https://cdn-icons-png.flaticon.com/128/1239/1239608.png", color: Colors.red,)),
                          SizedBox(height: 10,),
                          Text("নেটওয়ার্ক টেকনোলোজি", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),),
                        ],
                      ),
                    ),

                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              child: Image.network("https://cdn-icons-png.flaticon.com/128/1179/1179120.png", color: Colors.red,)),
                          SizedBox(height: 10,),
                          Text("ফিল্ম এন্ড মিডিয়া", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 30,),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("জনপ্রিয় কোর্সসমূহ", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("দেশ ও দেশের বাইরে বর্তমানে যে স্কিলগুলোর চাহিদা সবচেয়ে বেশি, সেসব দিয়েই সাজানো হয়েছে আমাদের কোর্স লিস্ট। এখান থেকে আপনার সুবিধামত অনলাইন বা অফলাইন কোর্সে এনরোল করতে পারবেন যেকোনো সময়।", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
        ],
      ),


      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){

        },
        backgroundColor: Colors.red,
        label: Text("Chat"),
        icon: Container(
          height: 30,
            width: 30,
            child: Image.network("https://cdn-icons-png.flaticon.com/128/3128/3128274.png", color: Colors.white,)),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            ),
            child: Center(
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: Row(
                        children: [
                          Image.network("https://cdn-icons-png.flaticon.com/128/6518/6518503.png"),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("CREATIVE", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 20),),
                        Text("IT INSTITUTE", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: (){},
              child: Text("হোম", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),)),
          SizedBox(height: 20,),
          TextButton(
              onPressed: (){},
              child: Text("আমদের সম্পর্কে", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),)),
          SizedBox(height: 20,),
          TextButton(
              onPressed: (){},
              child: Text("সফল্যের গল্প", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),)),
          SizedBox(height: 20,),
          TextButton(
              onPressed: (){},
              child: Text("ফ্রিল্যান্সিং", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),)),
          SizedBox(height: 20,),
          TextButton(
              onPressed: (){

              },
              child: Text("যোগাযোগ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),)),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red
              ),
              child: InkWell(
                onTap: (){

                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                          width: 35,
                          child: Image.network("https://cdn-icons-png.flaticon.com/512/828/828370.png", color: Colors.white,),
                          ),
                      SizedBox(width: 10,),
                      Text("ব্রাউজ কোর্স", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                    ],
                  )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Choice{
  final String title;
  final Image image;

  const Choice(this.image, this.title);
}

List choices = [
  Choice(Image.network("https://cdn-icons-png.flaticon.com/128/5063/5063917.png"), "ওয়েব এন্ড সফটওয়্যার"),
  Choice(Image.network("https://cdn-icons-png.flaticon.com/128/6163/6163831.png"), "ডিজিটাল মার্কেটিং"),
  Choice(Image.network("https://cdn-icons-png.flaticon.com/128/4427/4427916.png"), "3D অ্যানিমেশন এন্ড ডিজুয়ালাইজেশন"),
];

class SelectedCard extends StatelessWidget {

  final Choice choice;

  const SelectedCard({Key? key, required this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey
        ),
      ),
    );
  }
}
