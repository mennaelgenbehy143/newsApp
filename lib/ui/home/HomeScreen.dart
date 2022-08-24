import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/ApiManager/apiManager.dart';

import 'package:news_app/Models/SourcesResponse.dart';
import 'package:news_app/ui/home/CategoryFragment.dart';
import 'package:news_app/ui/home/HomeTabsFragment.dart';
import 'package:news_app/ui/home/NewsDetails.dart';
import 'package:news_app/ui/home/TabItem.dart';
import 'package:news_app/ui/widgets/CategoryItem.dart';
import 'package:news_app/ui/widgets/MyDrawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
  static String ROUTE_NAME = 'Home Tabs';
}

class _HomeScreenState extends State<HomeScreen> {

  List<Source> sources =[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 1.0), //(x,y)
          blurRadius: 6.0,
        ),
      ],
        image: DecorationImage(
          image: AssetImage('assets/images/back.jpeg'),fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        drawer: MyDrawer(onCategoryRowClicked: onCategoryDrawerClicked,),
        appBar: AppBar(
          title: Text(
            'News',
            style: TextStyle(
              fontWeight: FontWeight.bold
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        body:selectedCategory!= null ?HomeTabsFragment(selectedCategory!.id):CategoryFragment(onCategoryPressed),
      ),
    );
  }
  Category? selectedCategory;
  void onCategoryDrawerClicked(){
    selectedCategory=null;
    Navigator.pop(context);
    setState(() {

    });
  }
  void onCategoryPressed(Category newSelectedCategory){
    selectedCategory = newSelectedCategory;
    setState(() {

    });
  }

}
