// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:convert';
import 'dart:math' show Random;

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GetxPostPage extends StatefulWidget {
  const GetxPostPage({Key? key}) : super(key: key);
  static const String id = '/getxPost';

  @override
  State<GetxPostPage> createState() => _GetxPostPageState();
}

class _GetxPostPageState extends State<GetxPostPage> {
  late List _postLoaded = [];
  var titleController = TextEditingController();
  var messageController = TextEditingController();
  var _connect = GetConnect();
  final apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<void> sendGetRequest() async {
    try {
      final response = await _connect.get(apiUrl);
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        setState(() {
          _postLoaded = data;
        });
        print(response.body);
        }
    } catch (e) {
      print(e);
    }
  }

  Future<void> sendPostRequest() async {
    try {
      final response = await _connect.post(apiUrl, {
        'title': titleController,
        'body': messageController,
        'userId': Random().nextInt(10)
      });

      if (response.statusCode == 200) {
        print(response.statusText);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Post'),
      ),
      body: SizedBox(
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
                    onPressed: sendPostRequest,
                    icon: Icon(Icons.upload),
                    label: Text('POST')),
                ElevatedButton.icon(
                    onPressed: sendGetRequest,
                    icon: Icon(Icons.download),
                    label: Text('GET'))
              ],
            ),
            ListView.builder(
              itemCount: _postLoaded.length,
              itemBuilder: ((context, index) {
              return ListTile(
                leading: Text(_postLoaded[index]['userId']),
                title: ,
                trailing: ,
              );
            }))
          ],
        ),
      ),
    );
  }
}
