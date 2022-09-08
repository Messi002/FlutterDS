// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:io';
import 'dart:math' show Random;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GetxPostPage extends StatefulWidget {
  GetxPostPage({Key? key}) : super(key: key);
  static const String id = '/getxPost';

  @override
  State<GetxPostPage> createState() => _GetxPostPageState();
}

class _GetxPostPageState extends State<GetxPostPage> {
  var titleController = TextEditingController();
  var messageController = TextEditingController();
  var _connect = GetConnect();
  final apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<void> sendGetRequest() async {
    try {
    final response = await _connect.get("$apiUrl${5}");
      if (response.statusCode == 200) print(response.body);
    } catch (e) {
      print(e);
    }
  }

  Future<void> postGetRequest() async {


    try {
      
    } catch (e) {
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(hintText: 'Enter title'),
            ),
            TextField(
              controller: messageController,
              decoration: InputDecoration(hintText: 'Enter message'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                    onPressed: null,
                    icon: Icon(Icons.upload),
                    label: Text('POST')),
                ElevatedButton.icon(
                    onPressed: null,
                    icon: Icon(Icons.download),
                    label: Text('GET'))
              ],
            ),
            ListView.builder(itemBuilder: ((context, index) {
              return ListTile();
            }))
          ],
        ),
      ),
    );
  }
}
