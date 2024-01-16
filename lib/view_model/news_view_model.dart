
import 'package:news/models/news_channels_headlines_model.dart';
import 'package:news/repository/news_repository.dart';

class NewsViewModel {

  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewChannelHeadlinesAPi() async{

    final response = await _rep.fetchNewChannelHeadlinesAPi();
    return response;
  }
}