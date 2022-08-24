import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/MyThemeData.dart';
import 'package:news_app/ui/widgets/CategoryItem.dart';

class CategoryFragment extends StatelessWidget {
  Function onCategoryCliCked;
  CategoryFragment(this.onCategoryCliCked);
  List<Category> categories =[
    Category(id: 'sports',
        title: 'Sports',
        imagePath: 'sports.png',
        backgroundColor: MyThemeData.red,),
    Category(id: 'technology',
        title: 'Technology',
        imagePath: 'politics.png',
        backgroundColor: MyThemeData.blue,),
    Category(id: 'health',
        title: 'Health',
        imagePath: 'health.png',
        backgroundColor: MyThemeData.pink,),
    Category(id: 'business',
        title: 'Business',
        imagePath: 'business.png',
        backgroundColor: MyThemeData.orange,),
    Category(id: 'general',
        title: 'General',
        imagePath: 'environment.png',
        backgroundColor: MyThemeData.lightBlue,),
    Category(id: 'science',
        title: 'Science',
        imagePath: 'science.png',
        backgroundColor: MyThemeData.yellow,),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: EdgeInsets.all(8),
              child: Text('Pick your Category \nof interest !',
                 style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black),
              ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ), itemBuilder: (context , index){
                return CategoryItem(category : categories[index],
                rightSided: index%2==0?false:true,
                  onCategoryClicked: onCategoryCliCked,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
