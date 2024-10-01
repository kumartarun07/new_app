import 'package:dainik_bhashkar_app/ui_helper/app_cont.dart';
import 'package:dainik_bhashkar_app/ui_pages/account_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/e_paper_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/khash_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/medium_news_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/news_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/notification_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/small_new_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return DefaultTabController(
      length: 23,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 120,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Image.asset("assets/img/db2.png",color: Theme.of(context).brightness==Brightness.dark?Colors.white:Colors.black,),
          ),
          actions: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EPaperPage()));
              },
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 2,)),
                height: 30,width: 80,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.newspaper),
                    Text("ई-पेपर")
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
            }, icon: Icon(Icons.notifications_outlined,size: 30,)),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountPage()));
            }, icon: Icon(Icons.account_circle,size: 30,))
          ],
          bottom:AppCont().mTabBar(),
        ),
        body: TabBarView(
            children: [
              NewsPage(),
              SmallNewPage(),
              KhashPage(),
              SmallNewPage(),
              SmallNewPage(),
              SmallNewPage(),
              MediumNewsPage(),
              NewsPage(),
              MediumNewsPage(),
              NewsPage(),
              NewsPage(),
              NewsPage(),
              NewsPage(),
              NewsPage(),
              NewsPage(),
              NewsPage(),
              NewsPage(),
              NewsPage(),
              NewsPage(),
              NewsPage(),
              NewsPage(),
              NewsPage(),
              NewsPage(),
            ]
        ),
      ),
    );
  }
}
