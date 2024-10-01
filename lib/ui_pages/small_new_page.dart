import 'package:dainik_bhashkar_app/ui_helper/app_cont.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:dainik_bhashkar_app/ui_pages/news_detail_page.dart';
import 'package:flutter/material.dart';

class SmallNewPage extends StatelessWidget
{
  String mtext;
  String mtext2;
  SmallNewPage({this.mtext="",this.mtext2=""});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child:  Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(mtext,style: myTextStyle20(),),
                    TextButton(onPressed: (){}, child: Text(mtext2,style: myTextStyle20(),))
                  ],
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: AppCont.mdata.length,
                    itemBuilder: (_,index){
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
                                    child: Text("${AppCont.mdata[index]["Title"]}",style: myTextStyle15(),),),
                                  Container(
                                    width: 100,height: 70,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("${AppCont.mdata[index]["Img"]}"))
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
                                        Text("ऑडियो",style: myTextStyle12(),)
                                      ],
                                    )),
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.save),
                                          SizedBox(width: 10,),
                                          Text("सेव",style: myTextStyle15(),)
                                        ],
                                      ),
                                      SizedBox(width: 20,),
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.share),
                                          SizedBox(width: 10,),
                                          Text("शेयर",style: myTextStyle15(),)
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
                    }),
              ],
            )
          )
      ),
    );
  }
}
