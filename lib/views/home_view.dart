import 'package:flutter/material.dart';
import '../Widgets/News_list_view_bulder.dart';
import '../Widgets/cattegory_listView.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'APP',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(child: CattegoryListVew()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              NewsListViewBulider(category: 'general'),
            ],
          ),
        ));
  }
}
