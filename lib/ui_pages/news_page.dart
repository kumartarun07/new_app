import 'dart:math';
import 'package:dainik_bhashkar_app/bloc/news_bloc.dart';
import 'package:dainik_bhashkar_app/bloc/news_event.dart';
import 'package:dainik_bhashkar_app/bloc/news_state.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:dainik_bhashkar_app/ui_pages/news_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class NewsPage extends StatefulWidget
{

  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage>
{
  @override
  void initState() {
    super.initState();
    context.read<NewsBloc>().add(GetNewsEvent());
  }

  int generateRandomIndex(int len){
    return Random().nextInt(len-1);
  }

  @override
  Widget build(BuildContext context)
  {

   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(15.0),
       child:BlocBuilder<NewsBloc,NewsState>(builder: (_,state){
         if(state is NewsLoadingState)
           {
             return Center(child: CircularProgressIndicator(),);
           }
        else if(state is NewsErrorState){
           return Center(child: state.errorMsg.isNotEmpty?Text(state.errorMsg):Lottie.asset("assets/lottie/network.json"),);
         }
        else if(state is NewsLoadedState)
           {
             var Data = state.articalDataModel;
             int index = generateRandomIndex(state.articalDataModel.articles!.length);
             return  SingleChildScrollView(
               child:Column(
                 children: [
                   InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetailPage(mindex: index,isUpdate: true,),));
                       },
                       child: myCont1(mtext: "${Data.articles![index].title}", mimage:Data.articles![index].urlToImage??Container() )),
                   SizedBox(height: 20,),
                   listview1(),
                   SizedBox(height: 20,),
                   myCont1(mtext:"${Data.articles![index].title}", mimage:Data.articles![index].urlToImage??Container()),
                   SizedBox(height: 20,),
                   listview2(mtext: "Bhaskar Khas"),
                   SizedBox(height: 20,),
                   listview3(mtext: "Bollywood",mtext2: "See all ",),
                   SizedBox(height: 20,),
                   listview2(mtext: "Bhaskar Khas"),
                   SizedBox(height: 20,),
                   listview3(mtext: "",mtext2: "See all",)

                 ],
               ),
             );
           }
           return Container();
       }),
     ),
   );
  }
}







/* Column(
         children: [
           myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           smallCont(mtext:  AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           smallCont(mtext:  AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           smallCont(mtext:  AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           smallCont(mtext:  AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           smallCont(mtext:  AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           smallCont(mtext:  AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           smallCont(mtext:  AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           smallCont(mtext:  AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           smallCont(mtext:  AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           smallCont(mtext:  AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           smallCont(mtext:  AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
           smallCont(mtext:  AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
         ],
       ),*/
