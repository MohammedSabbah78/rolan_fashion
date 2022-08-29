import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key,
  required this.title,
  required this.icon,
  required this.navigator}) : super(key: key);

  final String title;
  final IconData icon;
  final String navigator;

  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      leading: Icon(widget.icon),
      onTap: () {
        Navigator.pushNamed(context,this.widget.navigator);
      },
    );
  }
}
