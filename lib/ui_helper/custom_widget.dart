import 'package:dainik_bhashkar_app/ui_helper/app_cont.dart';
import 'package:dainik_bhashkar_app/ui_pages/news_detail_page.dart';
import 'package:flutter/material.dart';

class myButton extends StatelessWidget
{
  String btnName;
  Color bgColor;
  VoidCallback callback;
  double mheight;
  double mwidth;
  Icon? myicon;
  myButton({required this.btnName,this.bgColor=Colors.blue,required this.callback,this.myicon,this.mwidth=200,this.mheight=35});
  @override
  Widget build(BuildContext context) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: Size(mwidth,mheight ),

      ),
      onPressed: callback, child:myicon!=null? Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      myicon!,
      Text(btnName)
    ],
  ):Text(btnName));
  }

}
class myTextField extends StatelessWidget{
  TextEditingController? myController;
  double bRadius;
  String hintText;
  myTextField({required this.hintText,required this.myController,this.bRadius=11});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:myController,
      decoration: InputDecoration(
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
              decoration: BoxDecoration(image: DecorationImage(image:AssetImage(mimage),fit: BoxFit.fill),),),
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
            )
          ],
        ));
  }

}

class listview1 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: AppCont.mdata.length,
        itemBuilder: (_,index){
          return Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => NewsDetailPage(mindex: index,),));
                },
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 250,
                        child: Text(AppCont.mdata[index]["Title"])),
                    Container(
                      width: 100,height: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(AppCont.mdata[index]["Img"]))
                      ),
                    )
                  ],
                ),
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
              SizedBox(height: 10,),
              Divider(thickness: 1,color: Colors.white,)

            ],
          );
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
            TextButton(onPressed: (){}, child: Text("सभी देखें",style: myTextStyle20(),))
          ],
        ),
        Container(width: double.infinity,height: 150,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_,index){
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 100,width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,
                          image: DecorationImage(image: AssetImage("${AppCont.mdata[index]["Img"]}"),fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(width: 150,
                        child: Text("${AppCont.mdata[index]["Title"]}",overflow: TextOverflow.ellipsis,))
                  ],
                );
              }),
        )
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
            TextButton(onPressed: (){}, child: Text(mtext2,style: myTextStyle20(),))
          ],
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: AppCont.mdata.length,
            itemBuilder: (_,index){
              return Container(
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
              );
            }),
      ],
    );
  }
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
