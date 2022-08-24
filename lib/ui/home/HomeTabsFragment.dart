import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Models/SourcesResponse.dart';
import 'NewsDetails.dart';
import 'package:news_app/ApiManager/apiManager.dart';

import 'TabItem.dart';

class HomeTabsFragment extends StatefulWidget {
  String categoryId;

  HomeTabsFragment(this.categoryId);

  @override
  State<HomeTabsFragment> createState() => _HomeTabsFragmentState();
}

class _HomeTabsFragmentState extends State<HomeTabsFragment> {
  List<Source> sources = [];

  int selectedIndex = 0;

  void initState() {
    // TODO: implement initState
    super.initState();
    getSources();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: sources.length,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            child: TabBar(
              isScrollable: true,
              onTap: (selectedIndex) {
                this.selectedIndex = selectedIndex;
                setState(() {});
              },
              tabs: sources.map((source) {
                return tabItem(
                    source, sources.indexOf(source) == selectedIndex);
              }).toList(),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: sources.map((source) {
                return newsDetails(source);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  getSources() {
    apiManager.getSources(widget.categoryId).then((value) {
      sources = value.sources ?? [];
      setState(() {});
    }).onError((error, stackTrace) {
      print(error.toString());
    }).timeout(Duration(seconds: 3), onTimeout: () {});
  }
}
