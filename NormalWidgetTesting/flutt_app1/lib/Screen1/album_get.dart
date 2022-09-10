import 'dart:convert';

import 'package:flut_app/Components/appbar_widget.dart';
import 'package:flut_app/Models/album_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

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

  TextEditingController titleController = TextEditingController();
  final apiUrl = 'https://jsonplaceholder.typicode.com/albums';

  Future<List<AlbumModel>> fetchAlbum() async {
    http.Response response = await http.get(Uri.parse(apiUrl));
    final parsed = await jsonDecode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<AlbumModel>((json) => AlbumModel.fromJson(json)).toList();
  }

  Future<AlbumModel> postAlbum(String title) async {
    http.Response response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );
    print(response.statusCode);
    if (response.statusCode == 201) {
      return AlbumModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create Album');
    }
  }

  Future<AlbumModel> updateAlbum(String title) async {
    http.Response response = await http.put(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      return AlbumModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to update Album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Album Fetch'),
      body: Column(
        children: [
          TextField(
            autofocus: true,
            controller: titleController,
            decoration: InputDecoration(hintText: 'Enter title'),
          ),
          Row(
            children: [
              ElevatedButton.icon(
                  onPressed: () async {
                    setState(() {
                      postAlbum(titleController.text.trim());
                    });
                  },
                  icon: Icon(Icons.upload),
                  label: Text('POST')),
              ElevatedButton.icon(
                  onPressed: () async {
                    setState(() {
                      fetchAlbum();
                    });
                  },
                  icon: Icon(Icons.download),
                  label: Text('DOWNLOAD')),
              ElevatedButton.icon(
                  onPressed: () async {
                    setState(() {
                      updateAlbum(titleController.text.trim());
                    });
                  },
                  icon: Icon(Icons.update),
                  label: Text('UPDATE')),
            ],
          ),
          SizedBox(height: 20),
          FutureBuilder<AlbumModel>(
              future: updateAlbum(titleController.text.trim()),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.title);
                } else if (snapshot.hasError) {
                  Text("${snapshot.error}");
                }

                return const Center(child: CircularProgressIndicator());
              }),
          FutureBuilder<List<AlbumModel>>(
              future: fetchAlbum(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Text("${snapshot.data![index].id}"),
                            title: Text(snapshot.data![index].title),
                            subtitle: Text("${snapshot.data![index].userId}"),
                          );
                        }),
                  );
                } else if (snapshot.hasError) {
                  Text("${snapshot.error}");
                }

                return const Center(child: CircularProgressIndicator());
              }),
        ],
      ),
    );
  }
}





  // Future<List<AlbumModel>> fetchAlbum() async {
  //   http.Response response = await http.get(Uri.parse(apiUrl));
  //   return compute(parseAlbums, response.body);

  // }
    // List<AlbumModel> parseAlbums(String responsebody) {
  //   final parsed = jsonDecode(responsebody).cast<Map<String, dynamic>>();

  //   return parsed.map<AlbumModel>((json) => AlbumModel.fromJson(json)).toList();
  // }