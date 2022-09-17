import 'package:flutter/material.dart';
import 'package:todoey/Views/detail_page.dart';
import 'package:todoey/Views/detail_widget.dart';

import 'list_widget.dart';

class MasterDetailPage extends StatefulWidget {
  const MasterDetailPage({super.key});

  @override
  State<MasterDetailPage> createState() => _MasterDetailPageState();
}

class _MasterDetailPageState extends State<MasterDetailPage> {
  var selectedValue = 0;
  var isLargeScreen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(builder: (context, orientation) {

        if (MediaQuery.of(context).size.width > 600) {
          isLargeScreen = true;
        } else {
          isLargeScreen = false;
        }

        return Row(
          children: [
            Expanded(
                child: ListWidget(count: 10, onItemSelected: (value) {
              if (isLargeScreen) {
                selectedValue = value;
                setState(() {});
              } else {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(data: value,);
                }));
              }
            }),
            ),
            isLargeScreen ?  Expanded(child: DetailWidget(selectedValue)) : Container(),
          ],
        );
      }),
    );
  }
}
