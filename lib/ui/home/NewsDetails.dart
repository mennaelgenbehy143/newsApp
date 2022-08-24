import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/ApiManager/apiManager.dart';
import 'package:news_app/Models/ArticlesResponse.dart';
import 'package:news_app/Models/SourcesResponse.dart';
import 'package:news_app/ui/home/NewsItem.dart';

class newsDetails extends StatelessWidget {
  Source source;
  newsDetails(this.source);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<ArticlesResponse>(
        future: apiManager.getArticles(source.id),
        builder: (context , snapshot){
          if(snapshot.hasData){
            return ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(thickness: 4,);
              },
              itemCount: snapshot.data!.articles!.length,
                itemBuilder: (context, index) {
                  return NewsItem(snapshot.data!.articles![index]);
            });
          }else if(snapshot.hasError){
            return Center(
                child: Text(snapshot.error.toString()),
            );
          }
          return Center(
            child: CircularProgressIndicator());
        },
      ),
    );
  }

}
