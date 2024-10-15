import 'package:dainik_bhashkar_app/bloc/search/search_event.dart';
import 'package:dainik_bhashkar_app/bloc/search/search_state.dart';
import 'package:dainik_bhashkar_app/model/api_exception.dart';
import 'package:dainik_bhashkar_app/model/api_helper.dart';
import 'package:dainik_bhashkar_app/model/news_model.dart';
import 'package:dainik_bhashkar_app/urls.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBloc extends Bloc<SearchEvent,SearchState>
{
  ApiHelper apiHelper;
  SearchBloc({required this.apiHelper}):super(SearchInitialState()){
    on<GetSearchEvent>((event,emit)async{
      emit(SearchLoadingState());

      try{
        var res = await apiHelper.getApi(url:Urls.getSearchUrl(event.query));
        if(res!=null)
        {
          var mData=ArticalDataModel.fromJson(res);
          emit(SearchLoadedState(articalDataModel: mData));
        }else{
          emit(SearchErrorState(ErrorMsg: "No Data Here!!"));
        }
      }catch(e){
        emit(SearchErrorState(ErrorMsg: (e as ApiException).toError()));
      }
    });
  }
}