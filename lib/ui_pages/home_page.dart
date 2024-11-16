import 'package:dainik_bhashkar_app/ui_helper/app_cont.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:dainik_bhashkar_app/ui_pages/account_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/e_paper_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/khash_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/medium_news_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/news_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/notification_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/small_new_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin
{
  @override
  Widget build(BuildContext context)
  {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 150,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
            child: Text("News App",style:myTextStyle20()),
          ),
          actions: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EPaperPage()));
              },
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 2,)),
                height: 30,width: 100,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.newspaper),
                    Text("E-Paper")
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
              SmallNewPage(query: "Rajasthan",),
              KhashPage(query: "Dainik-Bhaskar",),
              SmallNewPage(query: "Cricket",),
              SmallNewPage(query: "Magazine",),
              SmallNewPage(query: "Job-Education",),
              MediumNewsPage(query: "Sports",),
              MediumNewsPage(query: "Bollywood",),
              MediumNewsPage(query: "LifeStyle",),
              SmallNewPage(query: "Women",),
              KhashPage(query: "Country",),
              SmallNewPage(query: "Business",),

            ]
        ),
      ),
    );
  }
}
