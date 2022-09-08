import 'dart:convert';


import 'package:flutter/material.dart';


import 'package:http/http.dart' as http;

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Fetching'),),
      body: ,
    );
  }
}
