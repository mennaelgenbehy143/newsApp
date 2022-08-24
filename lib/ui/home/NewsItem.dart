import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/ArticlesResponse.dart';



class NewsItem extends StatefulWidget {


  Articles articles;
 NewsItem(this.articles);


  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(widget.articles.urlToImage??''),
          Container(
              margin: EdgeInsets.all(4),
              child: Text(widget.articles.source!.name!,textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold
                ),
              ),
          ),
          Container(
              margin: EdgeInsets.all(4),
              child: Text(widget.articles.title!,textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
          ),
          Container(
              margin: EdgeInsets.all(4),
              child: Text(widget.articles.publishedAt!,textAlign: TextAlign.end,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                ),
              ),
          ),
        ],
      ),
    );
  }


}
