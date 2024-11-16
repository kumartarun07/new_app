import 'package:dainik_bhashkar_app/bloc/news_bloc.dart';
import 'package:dainik_bhashkar_app/bloc/news_state.dart';
import 'package:dainik_bhashkar_app/ui_pages/news_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class myButton extends StatelessWidget
{
  String btnName;
  Color bgColor;
  VoidCallback callback;
  double mheight;
  double mwidth;
  Icon? myIcon;
  myButton({required this.btnName,this.bgColor=Colors.blue,required this.callback,this.myIcon,this.mwidth=200,this.mheight=35});
  @override
  Widget build(BuildContext context) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: Size(mwidth,mheight ),
      ),
      onPressed: callback, child:myIcon!=null? Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      myIcon!,
      Text(btnName)
    ],
  ):Text(btnName));
  }

}
class myTextField extends StatelessWidget{
  TextEditingController? myController;
  double bRadius;
  String hintText;
  IconButton? iconButton;
  myTextField({required this.hintText,required this.myController,this.bRadius=11,this.iconButton});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:myController,
      decoration: InputDecoration(suffixIcon: iconButton,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(bRadius),
          borderSide: BorderSide(color: Colors.blue,width: 1)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(bRadius),
            borderSide: BorderSide(color: Colors.green,width: 1)
        ),
        hintText: hintText
      ),
    );
  }

}
class myCont1 extends StatelessWidget
{
  String mtext;
  var mimage;
  myCont1({required this.mtext,required this.mimage});
  @override
  Widget build(BuildContext context) {
    return  Container(width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(mtext,style: myTextStyle20(),),
            Container(width: double.infinity,height: 200,
              decoration: BoxDecoration(image: DecorationImage(image:NetworkImage(mimage),fit: BoxFit.fill),),),
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
            )
          ],
        ));
  }

}

class listview1 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<NewsBloc,NewsState>(builder: (_,state){
      if(state is NewsLoadingState)
        {
          return Center(child: CircularProgressIndicator(),);
        }
      else if(state is NewsLoadedState){
        var Data = state.articalDataModel;
        return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
      itemCount: Data.articles!.length,
      itemBuilder: (_,index){
          var eachData = Data.articles![index];
      return Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [
      InkWell(
      onTap: (){
      Navigator.push(context,MaterialPageRoute(builder: (context) => NewsDetailPage(mindex: index,isUpdate: true,),));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBox(width: 250,
      child: Text("${eachData.title}")),
      Container(
      width: 100,height: 70,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      image: DecorationImage(image: NetworkImage('${eachData.urlToImage??Container()}'))
      ),)
      ],),
      ),
      SizedBox(height: 10,),
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
      SizedBox(height: 10,),
      Divider(thickness: 1,color: Colors.white,)

      ],
      );
      });
      }
      return Container();
    });
}
}

class listview2 extends StatelessWidget
{
  String mtext;

  listview2({this.mtext=""});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(mtext,style: myTextStyle20(),),
            TextButton(
                style: ButtonStyle(shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
                onPressed: (){
                  //context.read<ProviderPage>().updatePage(5);
                }, child: Text("See all",style: myTextStyle20(),))
          ],
        ),
        BlocBuilder<NewsBloc,NewsState>(builder: (_,state){
          if(state is NewsLoadingState){
            return Center(child: CircularProgressIndicator(),);
          }else if(state is NewsErrorState){
            return Center(child: Text(state.errorMsg),);
          }else if(state is NewsLoadedState){
            var Data = state.articalDataModel;
            return  Container(width: double.infinity,height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Data.articles!.length,
                  itemBuilder: (_,index){
                    var eachData = Data.articles![index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsDetailPage(mindex: index,isUpdate: true,)));
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 100,width: 150,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,
                                image: DecorationImage(image: NetworkImage("${eachData.urlToImage??Container()}"),fit: BoxFit.fill)
                            ),
                          ),
                          SizedBox(width: 150,
                              child: Text("${eachData.title??Container()}",overflow: TextOverflow.ellipsis,))
                        ],
                      ),
                    );
                  }),
            );
          }
          return Container();
        })
      ],
    );
  }
}

class listview3 extends StatelessWidget
{
  String mtext;
  String mtext2;
  listview3({this.mtext="",this.mtext2=""});
  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(mtext,style: myTextStyle20(),),
            TextButton(
                style: ButtonStyle(shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
                onPressed: (){}, child: Text(mtext2,style: myTextStyle20(),))
          ],
        ),
       BlocBuilder<NewsBloc,NewsState>(builder: (_,state){
         if(state is NewsLoadingState){
           return Center(child: CircularProgressIndicator(),);
         }else if(state is NewsErrorState){
           return Center(child: Text(state.errorMsg),);
         }else if(state is NewsLoadedState){
           var Data = state.articalDataModel.articles;
           return  ListView.builder(
               shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
               itemCount: Data!.length,
               itemBuilder: (_,index){
                 var eachData = Data[index];
                 return InkWell(
                   onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsDetailPage(mindex: index)));
                   },
                   child: Column(
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
                   ),
                 );
               });
         }
         return Container();
       })
      ],
    );
  }
}


   myTextStyle25({FontWeight myWeight =FontWeight.normal})
   {
  return TextStyle(
    fontSize: 25,
    fontWeight: myWeight,
    // decoration: TextDecoration.underline,
  );
}
   myTextStyle20({FontWeight myWeight =FontWeight.normal})
   {
  return TextStyle(
    fontSize: 20,
    fontWeight: myWeight,
    // decoration: TextDecoration.underline,
  );
}

   myTextStyle15({FontWeight myWeight =FontWeight.normal})
   {
  return TextStyle(
    fontSize: 15,
    fontWeight: myWeight,
    // decoration: TextDecoration.underline,
  );
}


      myTextStyle12({FontWeight myWeight =FontWeight.normal})
          {
             return TextStyle(
             fontSize: 12,
              fontWeight: myWeight,
    // decoration: TextDecoration.underline,
                );
               }

      myTextStyle10({FontWeight myWeight =FontWeight.normal}) {
  return TextStyle(
    fontSize: 10,
    fontWeight: myWeight,
    // decoration: TextDecoration.underline,
  );
}

    myRow({required String mText,Icon? mIcon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(mText,style: myTextStyle20(myWeight: FontWeight.bold),),
          mIcon!
        ],),
    );
    }