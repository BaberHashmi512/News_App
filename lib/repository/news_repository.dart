import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news/models/categories_news_model.dart';
import 'package:news/models/news_channels_headlines_model.dart';

class NewsRepository{

  Future<NewsChannelsHeadlinesModel> fetchNewChannelHeadlinesAPi(String channelName)async{

    String url = 'https://newsapi.org/v2/top-headlines?sources=$channelName&apiKey=c23823de60294c568d26b872dc46f090';

    final response = await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200){
      final body = jsonDecode(response.body);
          return NewsChannelsHeadlinesModel.fromJson(body);
    } throw Exception('Error');
  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category)async{

    String url = ' https://newsapi.org/v2/everything?q=${category}&apiKey=c23823de60294c568d26b872dc46f090';

    final response = await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200){
      final body = jsonDecode(response.body);
      return CategoriesNewsModel.fromJson(body);
    } throw Exception('Error');
  }
}