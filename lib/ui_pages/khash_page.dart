import 'package:dainik_bhashkar_app/bloc/search/search_bloc.dart';
import 'package:dainik_bhashkar_app/bloc/search/search_event.dart';
import 'package:dainik_bhashkar_app/bloc/search/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ui_helper/custom_widget.dart';
import 'news_detail_page.dart';

class KhashPage extends StatelessWidget
{
  String query;
   KhashPage({required this.query});

  @override
  Widget build(BuildContext context)
  {
    context.read<SearchBloc>().add(GetSearchEvent(query: query));
    return Scaffold(
      body: BlocBuilder<SearchBloc,SearchState>(builder: (_,state){
        if(state is SearchLoadingState){
          return Center(child: CircularProgressIndicator(),);
        }else if(state is SearchErrorState){
          return Center(child: Text(state.ErrorMsg),);
        }else if(state is SearchLoadedState){
            var Data = state.articalDataModel;
          return GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                mainAxisSpacing: 10,
                childAspectRatio: 9/16,
                crossAxisSpacing: 10,
                mainAxisExtent:220,
              ),
              itemCount: Data.articles!.length,
              itemBuilder: (_,index){
                var eachData = Data.articles![index];
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetailPage(mindex: index,),));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: NetworkImage("${eachData.urlToImage}"),fit: BoxFit.cover)
                          ),
                        ),
                        Text("${eachData.title}",style: myTextStyle15(),maxLines: null,overflow: TextOverflow.ellipsis),
                        Text("${eachData.description}",style: myTextStyle12(),maxLines: null,overflow: TextOverflow.ellipsis,),
                      ],
                    ),
                  ),
                );
              });
        }

        return Container();
      }),
    );
  }
}
