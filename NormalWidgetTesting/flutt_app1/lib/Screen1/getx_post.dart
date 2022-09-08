import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GetxPostPage extends StatefulWidget {
  const GetxPostPage({Key? key}) : super(key: key);
  static const String id = '/getxPost';

  @override
  State<GetxPostPage> createState() => _GetxPostPageState();
}

class _GetxPostPageState extends State<GetxPostPage> {
  var titleController =

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Post'),
      ),
      body: Column(
        children: [
          Row(
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
          TextField(
            decoration: InputDecoration(hintText: 'Enter title'),
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Enter message'),
          ),
        ],
      ),
    );
  }
}
