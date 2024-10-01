import 'package:dainik_bhashkar_app/ui_helper/app_cont.dart';
import 'package:dainik_bhashkar_app/ui_pages/search_view_page.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget
{
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: TextField(
        decoration: InputDecoration(
            hintText: "विषय, शहर और राज्य खोजें",
            focusedBorder: OutlineInputBorder(),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search,size: 25,),
          enabledBorder: OutlineInputBorder()
        ),
      ),),
      body: Container(
        //margin: EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: AppCont.search.length,
            itemBuilder: (_,index){
              return Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchViewPage(index: index,)));
                      },
                      child: Text("   ${AppCont.search[index]}",style: TextStyle(fontSize: 20),)),
                  Divider(thickness: 1,)
                ],
              );
            }),
      ),
    );
  }
}
