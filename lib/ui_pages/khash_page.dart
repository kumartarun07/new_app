import 'package:dainik_bhashkar_app/ui_helper/app_cont.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:dainik_bhashkar_app/ui_pages/news_detail_page.dart';
import 'package:flutter/material.dart';

class KhashPage extends StatelessWidget {
  const KhashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisSpacing: 10,
          childAspectRatio: 9/16,
          crossAxisSpacing: 10,
          mainAxisExtent:220,
      ),
          itemCount: AppCont.mdata.length,
          itemBuilder: (_,index){
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
                image: DecorationImage(image: AssetImage(AppCont.mdata[index]["Img"]),fit: BoxFit.cover)

                ),

              ),
                Text(AppCont.mdata[index]["Title"],style: myTextStyle15(),maxLines: null,overflow: TextOverflow.ellipsis),
                Text("SubTitile",style: myTextStyle12(),maxLines: null,overflow: TextOverflow.ellipsis,),
              ],
            ),
          ),
        );
          }),
    );
  }
}
