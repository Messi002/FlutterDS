import 'dart:convert';
import 'dart:io';

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
  List _loadedPhotos = [];
  Future<void> loadPhotos() async {
    const apiUrl = 'https://jsonplaceholder.typicode.com/photos';

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
                  onPressed: () {
                    setState(() {
                      showSpinner = true;
                    });
                    loadPhotos();
                    setState(() {
                      showSpinner = false;
                    });
                  },
                  icon: Icon(Icons.image),
                  label: Text('image')),
            )
          : _loadedPhotos.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: _loadedPhotos.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: Image.network(
                        _loadedPhotos[index]['thumbnailUrl'],
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      title: Text(_loadedPhotos[index]['title']),
                      trailing: Text(_loadedPhotos[index]['id'].toString()),
                    );
                  })),
    );
  }
}
