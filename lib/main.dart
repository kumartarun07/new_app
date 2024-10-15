import 'package:dainik_bhashkar_app/bloc/news_bloc.dart';
import 'package:dainik_bhashkar_app/bloc/search/search_bloc.dart';
import 'package:dainik_bhashkar_app/model/api_helper.dart';
import 'package:dainik_bhashkar_app/provider_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'ui_pages/newsBottom_page.dart';

void main()
{
  runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>ProviderPage()),
    BlocProvider(create: (context)=>NewsBloc(apiHelper: ApiHelper())),
    BlocProvider(create: (context)=>SearchBloc(apiHelper: ApiHelper()))
  ],child: MyApp(),),);
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