import 'package:flutter/material.dart';
import 'package:news_app/Widgets/news_tiles.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: NewsTile(),
              );
            }));
  }
}