import 'package:dainik_bhashkar_app/model/news_model.dart';

abstract class NewsState{}
class NewsInitialState extends NewsState{}
class NewsLoadingState extends NewsState{}
class NewsLoadedState extends NewsState{
  ArticalDataModel articalDataModel;
  NewsLoadedState({required this.articalDataModel});
}
class NewsErrorState extends NewsState{
  String errorMsg;
  NewsErrorState({required this.errorMsg});
}
