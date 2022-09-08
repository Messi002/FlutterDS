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
  bool showSpinner = false;
  List postLoaded = [];
  var titleController = TextEditingController();
  var messageController = TextEditingController();
  var _connect = GetConnect();
  final apiUrl = 'https://jsonplaceholder.typicode.com/posts';
  final SendapiUrl = 'https://jsonplaceholder.typicode.com/posts/';

  Future<void> sendGetRequest() async {
    try {
      final response = await _connect.get(SendapiUrl);

      if (response.statusCode == 200) {
        setState(() {
          postLoaded = response.body;
          showSpinner = false;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> sendPostRequest() async {
    try {
      final response = await _connect.post(apiUrl, {
        'title': titleController.text.trim(),
        'body': messageController.text.trim(),
        'userId': 100,
        'id': 100,
      });
      print(response.statusCode);

      if (response.statusCode == 201) {
        print(response.body);
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
          mainAxisSize: MainAxisSize.max,
          children: [
            TextField(
              autofocus: true,
              controller: titleController,
              decoration: InputDecoration(hintText: 'Enter title'),
            ),
            TextField(
              onChanged: (val) {
                print('You have been typing: $val');
              },
              controller: messageController,
              decoration: InputDecoration(hintText: 'Enter message'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                    onPressed: () async {
                      await sendPostRequest();
                      Get.snackbar('Done', "Successful",
                          snackPosition: SnackPosition.TOP);
                    },
                    icon: Icon(Icons.upload),
                    label: Text('POST')),
                ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        showSpinner = true;
                      });
                      sendGetRequest();
                    },
                    icon: Icon(Icons.download),
                    label: Text('GET'))
              ],
            ),
            Expanded(
              child: showSpinner
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: postLoaded.length,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          leading: Text(postLoaded[index]['id'].toString()),
                          title: Text(postLoaded[index]['title']),
                          subtitle: Text(postLoaded[index]['body']),
                        );
                      })),
            )
          ],
        ),
      ),
    );
  }
}
