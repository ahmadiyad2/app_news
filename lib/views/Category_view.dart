import 'package:flutter/material.dart';

import '../Widgets/News_list_view_bulder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            snap: true,
            expandedHeight: 60.0,
            backgroundColor: Colors.green,
            title: Text(
              category,
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
          NewsListViewBulider(
            category: category,
          )
        ],
      )),
    );
  }
}
