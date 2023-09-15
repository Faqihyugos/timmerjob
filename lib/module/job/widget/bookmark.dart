import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  @override
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFav ? Icons.bookmark : Icons.bookmark_border,
        color: Colors.blue[800],
        size: 30,
      ),
      onPressed: () {
        setState(() {
          isFav = !isFav;
        });
      },
    );
  }
}
