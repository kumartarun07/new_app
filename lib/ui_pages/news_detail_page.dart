import 'package:dainik_bhashkar_app/ui_helper/app_cont.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget
{
int mindex;
String ntext;
var nImgurl;
NewsDetailPage({ this.mindex=-1,this.ntext="",this.nImgurl=""});
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

      body:mindex<=-1? Column(
        children: [
          Text(ntext),
          Image.asset(nImgurl)
        ],
      ):Column(
          children: [
            Text(AppCont.mdata[mindex]['Title']),
            Image.asset(AppCont.mdata[mindex]['Img']),
            Text(AppCont.mdata[mindex]['Title']),
          ],
        )
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
                listview3(mtext: "ख़बरें और भी हैं...",)*//*


],
);
} ),
),*/
