import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  bool rightSided;
  Function onCategoryClicked;
  CategoryItem({required this.category,required this.rightSided,required this.onCategoryClicked});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         onCategoryClicked(category);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(24),topLeft: Radius.circular(24),
          bottomLeft: Radius.circular(rightSided?0:24),
          bottomRight: Radius.circular(rightSided?24:0),
          ),
          color: category.backgroundColor,
        ),

        child: Column(
          children: [
            Image.asset('assets/images/${category.imagePath}',height: 100,width: 100,),
            Spacer(),
            Text(category.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold
            ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
class Category{

  late String id;
  late String title;
  late String imagePath;
  late Color backgroundColor;

  Category({required this.id ,
    required this.title ,
    required this.imagePath ,
    required this.backgroundColor});
}
