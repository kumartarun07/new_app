import 'package:dainik_bhashkar_app/ui_helper/app_cont.dart';
import 'package:dainik_bhashkar_app/ui_pages/settings_page.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget
{
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
          }, icon: Icon(Icons.settings))
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: AppCont.mdata.length,
            itemBuilder: (_,index){
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1),),),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,width: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.brown.shade300,
                        image: DecorationImage(image: AssetImage(AppCont.mdata[index]["Img"]),fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 300,
                              child: Text(AppCont.mdata[index]["Title"])),
                          Text("22/09/24"),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
