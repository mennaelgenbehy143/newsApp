import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  Function onCategoryRowClicked;
  MyDrawer({required this.onCategoryRowClicked});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*.2,
            color: Colors.green,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Center(
              child: Text('News App !',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            child: InkWell(
              onTap: (){
                onCategoryRowClicked();
              },
              child: Row(
                children: [
                  Icon(Icons.list,size: 40,),
                  SizedBox(width: 8,),
                  Text('Categories',
                    style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black),)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
