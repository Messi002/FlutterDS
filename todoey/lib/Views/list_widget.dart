import 'package:flutter/material.dart';

typedef ItemSelectedCallback = Null Function(int value);
// typedef Null ItemSelectedCallback(int value)

class ListWidget extends StatefulWidget {
  final int count;
  final ItemSelectedCallback onItemSelected;
  ListWidget({super.key, required this.count, required this.onItemSelected});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.count,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: InkWell(
                onTap: () {
                  widget.onItemSelected(index);
                },
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.all(16.0),
                    child: Text(index.toString(), style: TextStyle(fontSize: 22.0),),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
