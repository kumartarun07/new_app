import 'package:dainik_bhashkar_app/ui_pages/home_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/search_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/video_page.dart';
import 'package:flutter/material.dart';

class NewsBottomPage extends StatefulWidget
{
  const NewsBottomPage({super.key});

  @override
  State<NewsBottomPage> createState() => _NewsBottomPageState();
}

class _NewsBottomPageState extends State<NewsBottomPage>
{
  int SelectedIndex = 0;
  List<Widget>pages =[
    HomePage(),
    VideoPage(),
    SearchPage()
  ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: pages[SelectedIndex],
      bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "होम",),
            NavigationDestination(icon: Icon(Icons.play_circle_outline), label: "वीडीओ"),
            NavigationDestination(icon: Icon(Icons.search), label: "सर्च"),
          ],
        onDestinationSelected: (Value){
            SelectedIndex=Value;
            setState(() {

            });
        },
      ),

    );
  }
}
