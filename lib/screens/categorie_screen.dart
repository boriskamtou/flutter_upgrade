import 'package:flutter/material.dart';

import 'package:responsive_grid/responsive_grid.dart';

import '../widgets/image_menu_button.dart';
import '../widgets/icon_menu.dart';
import '../models/article.dart';

class CategoryScreen extends StatelessWidget {
  final List<Article> articles = [
    Article('Pant',
        'https://images.unsplash.com/photo-1566663615569-c8ed55d67513?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'),
    Article('Pant',
        'https://images.unsplash.com/photo-1566663615569-c8ed55d67513?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'),
    Article('Pant',
        'https://images.unsplash.com/photo-1566663615569-c8ed55d67513?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'),
    Article('Pant',
        'https://images.unsplash.com/photo-1566663615569-c8ed55d67513?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'),
    Article('Pant',
        'https://images.unsplash.com/photo-1566663615569-c8ed55d67513?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'),
    Article('Pant',
        'https://images.unsplash.com/photo-1566663615569-c8ed55d67513?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'),
    Article('Pant',
        'https://images.unsplash.com/photo-1566663615569-c8ed55d67513?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'),
    Article('Pant',
        'https://images.unsplash.com/photo-1566663615569-c8ed55d67513?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_left,
            size: 40,
            color: Colors.orange,
          ),
        ),
        title: Text(
          'All Categories',
          style: TextStyle(
            color: Color(0xFF474747),
          ),
        ),
        actions: <Widget>[
          IconMenu(Icons.search),
          IconMenu(Icons.notifications_none),
          IconMenu(Icons.more_vert),
        ],
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ResponsiveGridCol(
              xs: 3,
              md: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ImageMenuButton('assets/images/home.jpeg'),
                        ImageMenuButton('assets/images/man.jpeg'),
                        ImageMenuButton('assets/images/home.jpeg'),
                        ImageMenuButton('assets/images/kids.jpeg'),
                        ImageMenuButton('assets/images/man.jpeg'),
                        ImageMenuButton('assets/images/home.jpeg'),
                        ImageMenuButton('assets/images/kids.jpeg'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ResponsiveGridCol(
              xl: 9,
              child: Container(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  itemCount: articles.length,
                  itemBuilder: (ctx, i) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: GridTile(
                        child: Container(
                          child: Image.network(
                            articles[i].imageUrl,
                            fit: BoxFit.cover,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                        ),
                        footer: GridTileBar(
                          backgroundColor: Colors.black45,
                          title: Text(
                            articles[i].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
