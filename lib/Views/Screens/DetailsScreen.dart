// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../constants.dart';
import 'DetailsTabletBody.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          log("mobileBody");
          return detailsMobileBody();
        } else if (constraints.maxWidth < 1100) {
          log("tabletBody");
          return DetailsTabletBody();
        } else {
          log("desktopBody");

          return DetailsDesktopScreen();
        }
      },
    );
  }

  Widget detailsMobileBody() {
    log("detailsMobileBody....");
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: myAppBar,
        drawer: Drawer(
          shape: RoundedRectangleBorder(),
          backgroundColor: Color(0xffF2F5F8),
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
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
              ExpansionTile(
                collapsedShape: OutlineInputBorder(borderSide: BorderSide.none),
                tilePadding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(),
                title: Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    children: [
                      Icon(Icons.folder_open),
                      SizedBox(width: 5),
                      Text(
                        "Open Folder Example",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                trailing: Icon(
                  isExpanded
                      ? Icons.arrow_drop_up_sharp
                      : Icons.arrow_drop_down,
                  size: 30,
                  color: Colors.green,
                ),
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/images/document.png"),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Document in Folder",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/images/document.png"),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Document in Folder",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/images/document.png"),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Document in Folder",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    isExpanded = expanded;
                  });
                },
              ),
              ExpansionTile(
                collapsedShape: OutlineInputBorder(borderSide: BorderSide.none),
                tilePadding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(),
                title: Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    children: [
                      Icon(Icons.folder_open),
                      SizedBox(width: 5),
                      Text(
                        "Close Folder Example",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                trailing: Icon(
                  isExpanded
                      ? Icons.arrow_drop_up_sharp
                      : Icons.arrow_drop_down,
                  size: 30,
                  color: Colors.green,
                ),
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/images/document.png"),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Document Outside of Folder",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    isExpanded = expanded;
                  });
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Column(
                children: [
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
                            Icon(
                              Icons.cancel,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 170,
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.grey.withOpacity(0.5))),
                          child: Text(
                            "e.g. I’m writing a paper about environmental sciences",
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Hey! Academic dishonesty is turning my words in and claiming they are yours, that’s lame! Use me as a tool to help you improve your work, cite it properly, and expand on your ideas.",
                                style: TextStyle(fontStyle: FontStyle.italic),
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
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff145220),
                                foregroundColor: Colors.white),
                            child: Text("Start Writing"),
                          ),
                        )
                      ],
                    ),
                  )
                  // list of previous days
                ],
              ),
            ),
          ),
        ));
  }
}

class DetailsDesktopScreen extends StatefulWidget {
  const DetailsDesktopScreen({Key? key}) : super(key: key);

  @override
  State<DetailsDesktopScreen> createState() => _DetailsDesktopScreenState();
}

class _DetailsDesktopScreenState extends State<DetailsDesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // open drawer
            Drawer(
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
                                maxHeight: 80,
                                maxWidth: 80,
                                minHeight: 25,
                                minWidth: 25),
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.all(0),
                    title: Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          Icon(Icons.folder_open),
                          SizedBox(width: 5),
                          Text(
                            "Open Folder Example",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    trailing: Icon(
                      isExpanded
                          ? Icons.arrow_drop_up_sharp
                          : Icons.arrow_drop_down,
                      size: 30,
                      color: Colors.green,
                    ),
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: [
                            ImageIcon(AssetImage("assets/images/document.png")),
                            SizedBox(width: 5),
                            Text(
                              "Document in Folder",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.first_page_outlined),
                            SizedBox(width: 5),
                            Text(
                              "Document in Folder",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.first_page_outlined),
                            SizedBox(width: 5),
                            Text(
                              "Document in Folder",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                    onExpansionChanged: (bool expanded) {
                      setState(() {
                        isExpanded = expanded;
                      });
                    },
                  ),
                ],
              ),
            ),

            // first half of page
            Expanded(
              // flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Untiled Document",
                          style: TextStyle(fontSize: 24),
                        ),
                        Spacer(),
                        ImageIcon(AssetImage("assets/images/1.png")),
                        SizedBox(width: 20),
                        ImageIcon(AssetImage("assets/images/read.png")),
                        SizedBox(width: 20),
                        ImageIcon(AssetImage("assets/images/read.png")),
                        SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff145220),
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
                              Icon(
                                Icons.cancel,
                                size: 30,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 170,
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: Colors.grey.withOpacity(0.5))),
                            child: Text(
                              "e.g. I’m writing a paper about environmental sciences",
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Hey! Academic dishonesty is turning my words in and claiming they are yours, that’s lame! Use me as a tool to help you improve your work, cite it properly, and expand on your ideas.",
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                              SizedBox(width: 20),
                              Icon(CupertinoIcons.chat_bubble_2_fill),
                              SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff145220),
                                    foregroundColor: Colors.white),
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
          ],
        ),
      ),
    );
  }
}
