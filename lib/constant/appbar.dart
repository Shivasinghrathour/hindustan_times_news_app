import 'package:flutter/material.dart';

// My appbar widget
AppBar mybar = AppBar(
  title: const Text("Hindustan"),
  actions: [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Text("E-Paper"),
      ),
    ),
    SizedBox(width: 10),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.search),
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.supervised_user_circle_sharp),
    ),
  ],
  bottom: TabBar(
    isScrollable: true,
    tabs: [
      Tab(
        text: "Top News",
      ),
      Tab(text: "Elections"),
      Tab(text: "Election Pincode"),
      Tab(text: "Photos"),
      Tab(text: "Latest News"),
      Tab(text: "Politics"),
      Tab(text: "Cities"),
      Tab(text: "For You"),
      Tab(text: "Pick of The Day "),
    ],
  ),
);
