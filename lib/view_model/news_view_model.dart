
import 'package:news/models/categories_news_model.dart';
import 'package:news/models/news_channels_headlines_model.dart';
import 'package:news/repository/news_repository.dart';

class NewsViewModel {

  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewChannelHeadlinesAPi(String name) async{

    final response = await _rep.fetchNewChannelHeadlinesAPi(name);
    return response;
  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async{

    final response = await _rep.fetchCategoriesNewsApi(category);
    return response;
  }
}