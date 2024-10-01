import 'package:dainik_bhashkar_app/ui_helper/app_cont.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:flutter/material.dart';

class SearchViewPage extends StatelessWidget
{
  int index;
  SearchViewPage({this.index=0});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text(AppCont.search[index],style: myTextStyle20(),),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: listview3(),
        ),
      ),
    );
  }
}
