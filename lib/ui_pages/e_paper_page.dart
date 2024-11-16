import 'package:dainik_bhashkar_app/ui_pages/khash_page.dart';
import 'package:flutter/material.dart';

class EPaperPage extends StatelessWidget
{
  const EPaperPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("E-Paper Page"),),
      body: KhashPage(query: "E-Paper",),
    );
  }
}
