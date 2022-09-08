import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);
  static const String id = '/imagePage';

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  bool showSpinner = false;
  List<dynamic> _loadedPhotos = [];
  Future<void> loadPhotos() async {
    const apiUrl = 'https://jsonplaceholder.typicode.com/photos';
    setState(() {
      showSpinner = true;
    });
    try {
      final response = await http.get(Uri.parse(apiUrl));
      final data = await json.decode(response.body);
      if (response.statusCode == 200) {
        setState(() {
          _loadedPhotos = data;
        });
      }

      print(_loadedPhotos);
    } catch (e) {
      print(e);
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }

    setState(() {
      showSpinner = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Fetching'),
      ),
      body: _loadedPhotos.isEmpty
          ? Center(
              child: ElevatedButton.icon(
                  onPressed: () => loadPhotos(),
                  icon: Icon(Icons.image),
                  label: Text('image')),
            )
          : showSpinner
              ? CircularProgressIndicator()
              : Container(),
    );
  }
}
