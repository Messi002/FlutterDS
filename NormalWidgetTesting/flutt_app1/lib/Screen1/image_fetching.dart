import 'dart:convert';


import 'package:flutter/material.dart';


import 'package:http/http.dart' as http;

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  List<String> _loadedPhotos = [];
  Future<void> loadPhotos() async{
      const apiUrl = 'https://jsonplaceholder.typicode.com/photos';
      final response = await http.get(Uri.parse(apiUrl));
      final data= await json.decode(response.body);

     
      try {
         if (response.statusCode == 200) {
        setState(() {
          _loadedPhotos = data;
        });
      }

      } catch (e) {
        print(e);
      }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Fetching'),),
      body: _loadedPhotos.isEmpty ? 
        ElevatedButton.icon(onPressed: () => loadPhotos(), icon: Icon(Icons.image), label: Text('image'))
      : Container(),
    );
  }
}
