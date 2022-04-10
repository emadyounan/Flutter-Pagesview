import 'package:flutter/material.dart';
import 'package:pageview/Module/Pages.dart';

class pagesViews extends StatefulWidget {
  final Pages page_list;
  const pagesViews({Key? key, required this.page_list}) : super(key: key);

  @override
  State<pagesViews> createState() => _pagesViewsState();
}

class _pagesViewsState extends State<pagesViews> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          Image.asset(widget.page_list.image, fit: BoxFit.cover, height: 300),
          const SizedBox(height: 8.0),
          Text(widget.page_list.title,style: const TextStyle(fontWeight: FontWeight.w500)),
          const SizedBox(height: 8.0),
          Text(widget.page_list.description,),
        ],
      ),
    );
  }
}
