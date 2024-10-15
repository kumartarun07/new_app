import 'package:dainik_bhashkar_app/bloc/news_event.dart';
import 'package:dainik_bhashkar_app/bloc/news_state.dart';
import 'package:dainik_bhashkar_app/model/api_exception.dart';
import 'package:dainik_bhashkar_app/model/api_helper.dart';
import 'package:dainik_bhashkar_app/model/news_model.dart';
import 'package:dainik_bhashkar_app/urls.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsBloc extends Bloc<NewsEvent,NewsState>
{
  ApiHelper apiHelper;
  NewsBloc({required this.apiHelper}):super(NewsInitialState()){
    on<GetNewsEvent>((event,emit)async{
      emit(NewsLoadingState());
      try{
        var res = await apiHelper.getApi(url: Urls.getIndiaNewsUrls);
        if(res!=null)
          {
            var mData = ArticalDataModel.fromJson(res);
            emit(NewsLoadedState(articalDataModel: mData));
          }else{
          emit(NewsErrorState(errorMsg: "No Data Found"));
        }
      }catch(e){
        emit(NewsErrorState(errorMsg: (e as ApiException).toError()));
      }

    });
  }
}