import 'package:dainik_bhashkar_app/model/news_model.dart';

abstract class SearchState {}
class SearchInitialState extends SearchState{}
class SearchLoadingState extends SearchState{}
class SearchLoadedState extends SearchState{
  ArticalDataModel articalDataModel;
  SearchLoadedState({required this.articalDataModel});
}
class SearchErrorState extends SearchState{
  String ErrorMsg;
  SearchErrorState({required this.ErrorMsg});
}