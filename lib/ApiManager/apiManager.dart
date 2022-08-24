import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/Models/ArticlesResponse.dart';
import 'package:news_app/ui/widgets/CategoryItem.dart';

import '../Models/SourcesResponse.dart';

class apiManager {

  static Future<SourcesResponse> getSources(String categoryId) async{
    Uri uri=Uri.https('newsapi.org', '/v2/top-headlines/sources',{
      'apiKey' : 'c7718c559c314b7fb826c3147e7f52da',
      'category' : categoryId
    });
    var response = await http.get(uri);
    var sourceResponse = SourcesResponse.fromJson(jsonDecode(response.body));
    if(response.statusCode==200){
      return sourceResponse;
    }else{
      throw Exception(sourceResponse.message!=null?sourceResponse.message:'unable reach server');
    }

  }

  static Future<ArticlesResponse> getArticles(SourceId)async{
    Uri uri=Uri.https('newsapi.org', '/v2/everything',{
      'apiKey' : 'c7718c559c314b7fb826c3147e7f52da',
      'sources':SourceId
    });
    var response = await http.get(uri);
    var articlesResponse = ArticlesResponse.fromJson(jsonDecode(response.body));
    if(response.statusCode==200){
      return articlesResponse;
    }else{
      throw Exception(articlesResponse.message!=null?articlesResponse.message:'unable reach server');
    }

  }

}