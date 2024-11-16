import 'package:dainik_bhashkar_app/bloc/news_bloc.dart';
import 'package:dainik_bhashkar_app/bloc/news_state.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:dainik_bhashkar_app/ui_pages/news_detail_page.dart';
import 'package:dainik_bhashkar_app/ui_pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: BlocBuilder<NewsBloc, NewsState>(builder: (_, state) {
        if (state is NewsLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is NewsErrorState) {
          return Center(
            child: state.errorMsg.isNotEmpty
                ? Text(state.errorMsg)
                : Lottie.asset("assets/lottie/network.json"),
          );
        }
        if (state is NewsLoadedState) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: state.articalDataModel.articles!.length,
                itemBuilder: (_, index) {
                  var eachData = state.articalDataModel.articles![index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewsDetailPage(
                                    mindex: index,
                                    isUpdate: true,
                                  )));
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.brown.shade300,
                                image: eachData.urlToImage != null
                                    ? DecorationImage(
                                        image:
                                            NetworkImage(eachData.urlToImage!),
                                        fit: BoxFit.fill)
                                    : DecorationImage(
                                        image: AssetImage("assets/img/2.webp")),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: 300,
                                    child: Text(
                                      eachData.title!,
                                      style: myTextStyle15(),
                                    )),
                                Text(
                                  eachData.publishedAt!,
                                  style: myTextStyle15(),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          );
        }
        return Container();
      }),
    );
  }
}
