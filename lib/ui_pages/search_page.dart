import 'package:dainik_bhashkar_app/ui_helper/app_cont.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:dainik_bhashkar_app/ui_pages/search_view_page.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget
{
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
{
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: myTextField(
          iconButton: IconButton(onPressed: (){

            if(searchController.text.isNotEmpty)
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchViewPage(query: searchController.text.toString())));
              }
          }, icon: Icon(Icons.search,size: 30,color: Colors.black,)),
          hintText: "Search topic, city and state", myController: searchController,)),
        /*TextField(
        decoration: InputDecoration(
            hintText: "विषय, शहर और राज्य खोजें",
            focusedBorder: OutlineInputBorder(),
            border: InputBorder.none,
            prefixIcon: IconButton(onPressed: (){

            }, icon: Icon(Icons.search,size: 25,)),
          enabledBorder: OutlineInputBorder()
        ),
      ),),*/
      body: Container(
        margin: EdgeInsets.only(top: 10.00,left: 15.00,right: 15.00),
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: AppCont.search.length,
            itemBuilder: (_,index){
              return Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchViewPage(query: searchController.text.toString())));
                      },
                      child: Text("${AppCont.search[index]}",style: TextStyle(fontSize: 20),)),
                  Divider(thickness: 1,)
                ],
              );
            }),
      ),
    );
  }
}
