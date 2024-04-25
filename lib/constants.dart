// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

var defaultBackgroundColor = Colors.grey[300];
var appBarColor = Colors.grey[900];
var myAppBar = AppBar(
  // backgrounduColor: appBarColor,
  title: Text('Untitled Document'),
  centerTitle: false,
  actions: [
    ImageIcon(AssetImage("assets/images/1.png")),
    SizedBox(width: 20),
    ImageIcon(AssetImage("assets/images/read.png")),
    SizedBox(width: 20),
    ImageIcon(AssetImage("assets/images/read.png")),
    SizedBox(width: 20),
    ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff145220), foregroundColor: Colors.white),
      child: Text("Chat with BETA"),
    ),
    SizedBox(width: 20),
  ],
);
var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
bool isDrawer = false;

var tilePadding = const EdgeInsets.only(left: 00, right: 0, top: 0);
var isExpanded = false;
var myDrawer = Drawer(
  shape: RoundedRectangleBorder(),
  backgroundColor: Color(0xffF2F5F8),
  elevation: 0,
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)),
            ),
            SizedBox(width: 10),
            Text(
              "Full Name",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            ImageIcon(AssetImage("assets/images/drawer.png"))
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          height: 40,
          color: Colors.white,
          child: TextFormField(
            cursorHeight: 20,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                isDense: true,
                prefixIconConstraints: BoxConstraints(
                    maxHeight: 80, maxWidth: 80, minHeight: 25, minWidth: 25),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: ImageIcon(
                    AssetImage(
                      "assets/images/search.png",
                    ),
                    // size: 18,
                  ),
                ),
                border: OutlineInputBorder(),
                hintText: "Search BEBA Scribe"),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 13,
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.add,
                size: 14,
              ),
            ),
            SizedBox(width: 10),
            Text(
              "Create a New...",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 10, top: 30),
        child: Text(
          "All Your Work",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    ],
  ),
);

Widget button(context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        ElevatedButton.icon(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    var width = MediaQuery.of(context).size.width;

                    log("www $width");
                    return AlertDialog(
                      shape: RoundedRectangleBorder(),
                      contentPadding: EdgeInsets.all(0),
                      titlePadding: EdgeInsets.all(0),
                      insetPadding: EdgeInsets.all(0),
                      content: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // first half of page
                              GestureDetector(
                                onTap: () {},
                                child: ImageIcon(
                                    AssetImage("assets/images/drawer.png")),
                              ),
                              myDrawer,

                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Undzxcdtiled Document",
                                            style: TextStyle(fontSize: 24),
                                          ),
                                          Spacer(),
                                          ImageIcon(AssetImage(
                                              "assets/images/1.png")),
                                          SizedBox(width: 20),
                                          ImageIcon(AssetImage(
                                              "assets/images/read.png")),
                                          SizedBox(width: 20),
                                          ImageIcon(AssetImage(
                                              "assets/images/read.png")),
                                          SizedBox(width: 20),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xff145220),
                                                foregroundColor: Colors.white),
                                            child: Text("Chat with BETA"),
                                          ),
                                          SizedBox(width: 20),
                                        ],
                                      ),
                                      SizedBox(height: 20),

                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade200,
                                                blurRadius: 20,
                                                spreadRadius: 0.5),
                                          ],
                                        ),
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                    CupertinoIcons.chat_bubble),
                                                SizedBox(width: 10),
                                                Expanded(
                                                  child: Text(
                                                    "Hello! My name is BEBA, I’m a privacy first Integrated Intelligent System, I can help you with anything you’re writing, and rest assured you always have control over what I remember, and I never train on any of your work.",
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Icon(
                                                    Icons.cancel,
                                                    size: 30,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            TextFormField(
                                              maxLines: 5,
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:
                                                    "e.g. I’m writing a paper about environmental sciences",
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    "Hey! Academic dishonesty is turning my words in and claiming they are yours, that’s lame! Use me as a tool to help you improve your work, cite it properly, and expand on your ideas.",
                                                  ),
                                                ),
                                                SizedBox(width: 20),
                                                Icon(CupertinoIcons
                                                    .chat_bubble_2_fill),
                                                SizedBox(width: 20),
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Color(0xff145220),
                                                          foregroundColor:
                                                              Colors.white),
                                                  child: Text("Start Writing"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                      // list of previous days
                                    ],
                                  ),
                                ),
                              ),
                              // second half of page
                              // Expanded(
                              //   child: Column(
                              //     children: [
                              //       Padding(
                              //         padding: const EdgeInsets.all(8.0),
                              //         child: Container(
                              //           height: 400,
                              //           decoration: BoxDecoration(
                              //             borderRadius: BorderRadius.circular(8),
                              //             color: Colors.grey[400],
                              //           ),
                              //         ),
                              //       ),
                              //       // list of stuff
                              //       Expanded(
                              //         child: Padding(
                              //           padding: const EdgeInsets.all(8.0),
                              //           child: Container(
                              //             decoration: BoxDecoration(
                              //               borderRadius: BorderRadius.circular(8),
                              //               color: Colors.grey[200],
                              //             ),
                              //           ),
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xff64260B),
            ),
            icon: ImageIcon(AssetImage("assets/images/prompt.png")),
            label: Text("Start with a prompt")),
        SizedBox(width: 20),
        ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xff0B2364),
            ),
            icon: ImageIcon(AssetImage("assets/images/research.png")),
            label: Text("Start with Research")),
      ],
    ),
  );
}

Widget draweeer(context, Function() callBack) {
  return Drawer(
    shape: RoundedRectangleBorder(),
    backgroundColor: Color(0xffF2F5F8),
    elevation: 0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black)),
              ),
              SizedBox(width: 10),
              Text(
                "Full Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              GestureDetector(
                onTap: callBack,
                child: ImageIcon(AssetImage("assets/images/drawer.png")),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: 40,
            color: Colors.white,
            child: TextFormField(
              cursorHeight: 20,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  isDense: true,
                  prefixIconConstraints: BoxConstraints(
                      maxHeight: 80, maxWidth: 80, minHeight: 25, minWidth: 25),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: ImageIcon(
                      AssetImage(
                        "assets/images/search.png",
                      ),
                      // size: 18,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  hintText: "Search BEBA Scribe"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 13,
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.add,
                  size: 14,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Create a New...",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, top: 30),
          child: Text(
            "All Your Work",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ],
    ),
  );
}

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(),
      backgroundColor: Color(0xffF2F5F8),
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black)),
                ),
                SizedBox(width: 10),
                Text(
                  "Full Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isDrawer = !isDrawer;
                    });
                  },
                  child: ImageIcon(AssetImage("assets/images/drawer.png")),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 40,
              color: Colors.white,
              child: TextFormField(
                cursorHeight: 20,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    isDense: true,
                    prefixIconConstraints: BoxConstraints(
                        maxHeight: 80,
                        maxWidth: 80,
                        minHeight: 25,
                        minWidth: 25),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: ImageIcon(
                        AssetImage(
                          "assets/images/search.png",
                        ),
                        // size: 18,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Search BEBA Scribe"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 13,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.add,
                    size: 14,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Create a New...",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 30),
            child: Text(
              "All Your Work",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

// var detailsDrawer = Drawer(
//   shape: RoundedRectangleBorder(),
//   backgroundColor: Color(0xffF2F5F8),
//   elevation: 0,
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(20),
//         child: Row(
//           children: [
//             Container(
//               height: 40,
//               width: 40,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   shape: BoxShape.circle,
//                   border: Border.all(color: Colors.black)),
//             ),
//             SizedBox(width: 10),
//             Text(
//               "Full Name",
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             Spacer(),
//             ImageIcon(AssetImage("assets/images/drawer.png"))
//           ],
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10),
//         child: Container(
//           height: 40,
//           color: Colors.white,
//           child: TextFormField(
//             cursorHeight: 20,
//             decoration: InputDecoration(
//                 contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//                 isDense: true,
//                 prefixIconConstraints: BoxConstraints(
//                     maxHeight: 80, maxWidth: 80, minHeight: 25, minWidth: 25),
//                 prefixIcon: Padding(
//                   padding: const EdgeInsets.only(right: 10, left: 10),
//                   child: ImageIcon(
//                     AssetImage(
//                       "assets/images/search.png",
//                     ),
//                     // size: 18,
//                   ),
//                 ),
//                 border: OutlineInputBorder(),
//                 hintText: "Search BEBA Scribe"),
//           ),
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10),
//         child: Row(
//           children: [
//             CircleAvatar(
//               child: Icon(
//                 Icons.add,
//                 size: 14,
//               ),
//               radius: 13,
//               foregroundColor: Colors.white,
//               backgroundColor: Colors.black,
//             ),
//             SizedBox(width: 10),
//             Text(
//               "Create a New...",
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(left: 10, top: 30),
//         child: Text(
//           "All Your Work",
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(left: 10, top: 10),
//         child: Row(
//           children: [
//             Icon(Icons.folder_open),
//             SizedBox(width: 5),
//             Text(
//               "Open Folder Example",
//               style: TextStyle(fontSize: 15),
//             ),
//             Spacer(),
//             Icon(
//               Icons.arrow_drop_down_sharp,
//               size: 30,
//             ),
//           ],
//         ),
//       ),
//       ExpansionTile(
//         title: const Text('ExpansionTile 2'),
//         subtitle: const Text('Custom expansion arrow icon'),
//         trailing: Icon(
//           isExpanded ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
//         ),
//         children: const <Widget>[
//           ListTile(title: Text('This is tile number 2')),
//         ],
//         onExpansionChanged: (bool expanded) {
//           setState(() {
//             isExpanded = expanded;
//           });
//         },
//       ),
//     ],
//   ),
// );
