import 'package:dainik_bhashkar_app/provider_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/khash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ui_pages/newsBottom_page.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(create: (context)=>ProviderPage(),child: MyApp(),)
  );
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    context.read<ProviderPage>().getTheme();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsBottomPage(),
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: context.watch<ProviderPage>().getThemeValue()?ThemeMode.dark:ThemeMode.light,
    );
  }

}