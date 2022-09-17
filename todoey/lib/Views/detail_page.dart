import 'package:flutter/material.dart';
import 'package:todoey/Views/detail_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, this.data});

  final int? data;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DetailWidget(data: widget.data!),
    );
  }
}
