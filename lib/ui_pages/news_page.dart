import 'package:dainik_bhashkar_app/ui_helper/app_cont.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:dainik_bhashkar_app/ui_pages/news_detail_page.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget
{
  const NewsPage({super.key});
  @override
  Widget build(BuildContext context)
  {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(15.0),
       child: SingleChildScrollView(
         child:Column(
           children: [
             InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetailPage(nImgurl:AppCont.mdata[0]["Img"],ntext: AppCont.mdata[0]["Title"] ,),));
                 },
                 child: myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"])),
             SizedBox(height: 20,),
             listview1(),
             SizedBox(height: 20,),
             myCont1(mtext: AppCont.mdata[0]["Title"], mimage: AppCont.mdata[0]["Img"]),
             SizedBox(height: 20,),
             listview2(mtext: "भास्कर खास"),
             SizedBox(height: 20,),
             listview3(mtext: "बॉलीवुड",mtext2: "सभी देखें ",),
             SizedBox(height: 20,),
             listview2(mtext: "भास्कर खास"),
             SizedBox(height: 20,),
             listview3(mtext: "बॉलीवुड",mtext2: "सभी देखें ",)

           ],
         ),
       ),
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
