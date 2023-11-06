import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SearchPage extends StatefulWidget {
   SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List list = [
    "Flutter",
    "React",
    "Ionic",
    "Xamarin",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search'),),
      body: GFSearchBar(
        searchList: list,
        searchQueryBuilder: (query, list) {
          return list
              .where((item) =>
              item.toLowerCase().contains(query.toLowerCase()))
              .toList();
        },
        overlaySearchListItemBuilder: (item) {
          return Container(
            padding: const EdgeInsets.all(8),
            child: Text(
              item,
              style: const TextStyle(fontSize: 18),
            ),
          );
        },
        onItemSelected: (item) {
          setState(() {
            print('$item');
          });
        },
      ),
    );
  }
}
