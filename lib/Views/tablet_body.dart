// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  var isReadonly = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
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
                              return tabletDailog();
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
            )
          ],
        ),
      ),
    );
  }

  tabletDailog() {
    log("Tabbbbbb ");
    return StatefulBuilder(builder: (context, setstatte) {
      return AlertDialog(
        shape: RoundedRectangleBorder(),
        contentPadding: EdgeInsets.all(0),
        titlePadding: EdgeInsets.all(0),
        insetPadding: EdgeInsets.all(0),
        content: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // first half of page
                (isDrawer)
                    ? Container()
                    : GestureDetector(
                        onTap: () {
                          log("ADSasf");
                          setstatte(() {
                            isDrawer = !isDrawer;
                          });
                        },
                        child:
                            ImageIcon(AssetImage("assets/images/drawer.png")),
                      ),
                (isDrawer == true)
                    ? draweeer(
                        context,
                        () {
                          log("ADSasf");
                          setstatte(() {
                            isDrawer = !isDrawer;
                          });
                        },
                      )
                    : Container(),

                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Untiled Document",
                              style: TextStyle(fontSize: 24),
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff145220),
                                  foregroundColor: Colors.white),
                              child: Text("Chat with BETA"),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),

                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 20,
                                  spreadRadius: 0.5),
                            ],
                          ),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(CupertinoIcons.chat_bubble),
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
                                readOnly: isReadonly,
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
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                ],
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Icon(CupertinoIcons.chat_bubble_2_fill),
                              ),
                              SizedBox(width: 20),
                              Align(
                                alignment: Alignment.topRight,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setstatte(() {
                                      isReadonly = !isReadonly;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff145220),
                                      foregroundColor: Colors.white),
                                  child: Text("Start Writing"),
                                ),
                              )
                              // Row(
                              //   children: [
                              //     Expanded(
                              //       child: Text(
                              //         "Hey! Academic dishonesty is turning my words in and claiming they are yours, that’s lame! Use me as a tool to help you improve your work, cite it properly, and expand on your ideas.",
                              //       ),
                              //     ),
                              //     SizedBox(width: 20),
                              //     Icon(CupertinoIcons.chat_bubble_2_fill),
                              //     SizedBox(width: 20),
                              //     ElevatedButton(
                              //       onPressed: () {
                              //         setstatte(() {
                              //           isReadonly = !isReadonly;
                              //         });
                              //       },
                              //       style: ElevatedButton.styleFrom(
                              //           backgroundColor: Color(0xff145220),
                              //           foregroundColor: Colors.white),
                              //       child: Text("Start Writing"),
                              //     ),
                              //   ],
                              // ),
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
  }
}
