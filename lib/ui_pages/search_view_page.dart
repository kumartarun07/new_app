import 'package:dainik_bhashkar_app/bloc/search/search_bloc.dart';
import 'package:dainik_bhashkar_app/bloc/search/search_event.dart';
import 'package:dainik_bhashkar_app/bloc/search/search_state.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SearchViewPage extends StatefulWidget
{

  String query;
  SearchViewPage({required this.query});

  @override
  State<SearchViewPage> createState() => _SearchViewPageState();
}

class _SearchViewPageState extends State<SearchViewPage>
{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<SearchBloc>().add(GetSearchEvent(query: widget.query));
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Search News",style: myTextStyle20(),),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
          child:  BlocBuilder<SearchBloc,SearchState>(builder: (_,state){
            if(state is SearchLoadingState){
              return Center(child: CircularProgressIndicator(),);
            }else if(state is SearchErrorState){
              return Center(child: Lottie.asset("assets/lottie/network.json"),);
            }else if(state is SearchLoadedState){
              var Data = state.articalDataModel.articles;
              return  ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Data!.length,
                  itemBuilder: (_,index){
                    var eachData = Data[index];
                    return Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 250,
                              child: Text("${eachData.title??Container()}",style: myTextStyle15(),),),
                            Container(
                              width: 100,height: 70,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: NetworkImage("${eachData.urlToImage??Container()}"))
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
                    );
                  });
            }
            return Container();
          }),
        ),
      ),
    );
  }
}
