import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/SourcesResponse.dart';

class tabItem extends StatelessWidget {
  Source sources;
  bool isSlected;
  tabItem(this.sources,this.isSlected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isSlected?Colors.green:Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.green),
      ),
      child: Text(sources.name!,
        style: TextStyle(
          color: isSlected?Colors.white:Colors.green,
        ),
      ),
    );
  }
}
