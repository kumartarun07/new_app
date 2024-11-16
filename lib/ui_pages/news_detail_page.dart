import 'package:dainik_bhashkar_app/bloc/news_bloc.dart';
import 'package:dainik_bhashkar_app/bloc/news_state.dart';
import 'package:dainik_bhashkar_app/bloc/search/search_bloc.dart';
import 'package:dainik_bhashkar_app/bloc/search/search_state.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsDetailPage extends StatelessWidget
{
  int mindex;
  bool isUpdate;
  NewsDetailPage({ required this.mindex,this.isUpdate=false});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.save,size: 30,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.share,size: 30,color: Colors.green,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.font_download_sharp,size: 30)),
        ],
      ),

      body:isUpdate?BlocBuilder<NewsBloc,NewsState>(builder: (_,state){
        if(state is NewsLoadingState){
          return Center(child: CircularProgressIndicator(),);
        }
        else if(state is NewsErrorState){
          return Center(child: Text(state.errorMsg),);
        }
        else if(state is NewsLoadedState)
        {
          var Data = state.articalDataModel.articles![mindex];

          return SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.all(15.0),

              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(Data.title??"No data Found"),
                  SizedBox(height: 10,),
                  Text(Data.publishedAt??"No data Found"),
                  SizedBox(height: 10,),
                  Image.network("${Data.urlToImage??Container()}"),
                  SizedBox(height: 10,),
                  FittedBox(
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Text("${Data.content??"No Data Found"}")),
                  ),
                ],
              ),
            ),
          );
        }
        return Container();
      }):
      BlocBuilder<SearchBloc,SearchState>(builder: (_,state){
        if(state is SearchLoadingState){
          return Center(child: CircularProgressIndicator(),);
        }
        else if(state is SearchErrorState){
          return Center(child: Text(state.ErrorMsg),);
        }
        else if(state is SearchLoadedState)
        {
          var Data = state.articalDataModel.articles![mindex];

          return SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.all(15.0),

              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(Data.title??"No data Found",style: myTextStyle20(myWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text(Data.publishedAt??"No data Found",style: myTextStyle15(),),
                  SizedBox(height: 10,),
                  Image.network("${Data.urlToImage??Container()}"),
                  SizedBox(height: 10,),
                  FittedBox(
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Text("${Data.content??"No Data Found"}",style: myTextStyle20(),maxLines: null,overflow: TextOverflow.ellipsis,)),
                  ),
                ],
              ),
            ),
          );
        }
        return Container();
      }),
    );
  }
}


























/*
SingleChildScrollView(
child: ListView.builder(
itemCount: AppCont.mdata.length,
itemBuilder:(_,index) {
return
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(ntext, style: myTextStyle20(),
maxLines: null,
textAlign: TextAlign.justify,),
SizedBox(height: 10,),
Container(
height: 300,
width: MediaQuery
    .of(context)
    .size
    .width,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
image: DecorationImage(
image: AssetImage(nImgurl)),
),
child: Center(
child: Row(
children: [
Icon(Icons.share),
Text("शेयर"),
],
),
),
),
*/
/*SizedBox(height: 10,),
                Text(AppCont.mdata[index]["Title"], style: myTextStyle15(),
                  maxLines: null,
                  textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                Container(
                  height: 300,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(AppCont.mdata[index]["Img"])),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.share),
                      Text("शेयर"),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(AppCont.mdata[index]["Title"], style: myTextStyle15(),
                  maxLines: null,
                  textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                Container(
                  height: 300,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(AppCont.mdata[index]["Img"])),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.share),
                      Text("शेयर"),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(AppCont.mdata[index]["Title"], style: myTextStyle15(),
                  maxLines: null,
                  textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                listview3(mtext: "ख़बरें और भी हैं...",)*/