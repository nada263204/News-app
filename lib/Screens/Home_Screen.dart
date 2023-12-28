import 'package:flutter/material.dart';
import 'package:news_app/Widgets/CategoriesListView.dart';
import 'package:news_app/Widgets/news_list_view.dart';
import 'package:news_app/Widgets/news_tiles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title:
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black,
              fontFamily: 'Rubik Scribble',
            ),),
            Text('App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.orange,
              fontFamily: 'Rubik Scribble',
            ),),
          ],
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView() ,),
            SliverToBoxAdapter(child: SizedBox(height: 20.0,) ,),
            NewsListView(),
          ],
        ),



        // Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 20.0,
        //     ),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}



