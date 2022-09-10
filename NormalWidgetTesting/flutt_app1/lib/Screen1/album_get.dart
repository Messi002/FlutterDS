import 'dart:convert';

import 'package:flut_app/Components/appbar_widget.dart';
import 'package:flut_app/Models/album_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


//  if (response.statusCode == 200) {
//       print(response.body);
//       return AlbumModel.fromJson(jsonDecode(response.body));
//     } else {
//       throw Exception('Failed to load album');
//     }

class AlbumPostPage extends StatefulWidget {
  const AlbumPostPage({Key? key}) : super(key: key);
  static const String id = '/albumpost';

  @override
  State<AlbumPostPage> createState() => _AlbumPostPageState();
}

class _AlbumPostPageState extends State<AlbumPostPage> {
  late Future<AlbumModel> futureAlbum;
  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  final apiUrl = 'https://jsonplaceholder.typicode.com/albums/10';
  Future<AlbumModel> fetchAlbum() async {
    http.Response response = await http.get(Uri.parse(apiUrl));
    return compute(parseAlbums, response.body);
  }

  List<AlbumModel> parseAlbums(String responsebody) {
    final parsed = jsonDecode(responsebody).cast<Map<String, dynamic>>();

    return parsed.map<AlbumModel>((json) => AlbumModel.fromJson(json)).toList();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Album Fetch'),
      body: FutureBuilder<AlbumModel>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListTile(
                leading: Text("${snapshot.data!.id}"),
                title: Text(snapshot.data!.title),
                subtitle: Text("${snapshot.data!.userId}"),
              );
            } else if (snapshot.hasError) {
              Text("${snapshot.error}");
            }

            return CircularProgressIndicator();
          }),
    );
  }
}
