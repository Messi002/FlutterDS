import 'dart:convert';

import 'package:flut_app/Components/appbar_widget.dart';
import 'package:flut_app/Models/album_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AlbumPostPage extends StatefulWidget {
  const AlbumPostPage({Key? key}) : super(key: key);
  static const String id = '/albumpost';

  @override
  State<AlbumPostPage> createState() => _AlbumPostPageState();
}

class _AlbumPostPageState extends State<AlbumPostPage> {
  final apiUrl = 'https://jsonplaceholder.typicode.com/albums/1';
  Future<AlbumModel> fetchAlbum() async {
    try {
      http.Response response =
          await http.get(Uri.parse(apiUrl)) as http.Response;
      if (response.statusCode == 200) {
        return AlbumModel.fromJson(jsonDecode(response.body));
      } else {}
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Album Fetch'),
      body: Container(),
    );
  }
}
