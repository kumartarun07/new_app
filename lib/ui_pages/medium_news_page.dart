import 'package:dainik_bhashkar_app/bloc/search/search_event.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../bloc/search/search_bloc.dart';
import '../bloc/search/search_state.dart';
import 'news_detail_page.dart';

class MediumNewsPage extends StatelessWidget
{
  String query;
  MediumNewsPage({required this.query});
  @override
  Widget build(BuildContext context)
  {
    context.read<SearchBloc>().add(GetSearchEvent(query: query));
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              BlocBuilder<SearchBloc,SearchState>(builder: (_,state){
                if(state is SearchLoadingState){
                  return Center(child: CircularProgressIndicator(),);
                }else if(state is SearchErrorState){
                  return Center(child: Lottie.asset("assets/lottie/network.json"),);
                }else if(state is SearchLoadedState){
                  var mData = state.articalDataModel;
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: mData.articles!.length,
                      itemBuilder: (_,index){
                        var eachData = mData.articles![index];
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsDetailPage(mindex: index,)));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 250,
                                      child: Text("${eachData.title}",style: myTextStyle15(),),),
                                    Container(
                                      width: 100,height: 70,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(image:NetworkImage("${eachData.urlToImage}"))
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 30,width: 100,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                                          border: Border.all(width: 1,color: Colors.black)
                                      ),
                                      child: TextButton(onPressed: (){}, child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [Icon(Icons.earbuds,color: Colors.red,size: 15,),
                                          Text("Audio",style: myTextStyle12(),)
                                        ],
                                      )),
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.save),
                                            SizedBox(width: 10,),
                                            Text("Save",style: myTextStyle15(),)
                                          ],
                                        ),
                                        SizedBox(width: 20,),
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(Icons.share),
                                            SizedBox(width: 10,),
                                            Text("Share",style: myTextStyle15(),)
                                          ],
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                                Divider(thickness: 2,color: Colors.white,)

                              ],
                            ),
                          ),
                        );
                      });
                }
                return Container();
              }),
              listview3(),
              listview2(mtext: "Career Swipe",),
              listview3(),
            ],
          ),
        ),
      ),
    );
  }
}
