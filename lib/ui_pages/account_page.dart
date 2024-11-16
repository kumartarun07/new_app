import 'package:dainik_bhashkar_app/provider_page.dart';
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: myTextStyle25(myWeight: FontWeight.bold),),),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          shrinkWrap: true,
          children:[ Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              myRow(mText: "908978654538", mIcon: Icon(Icons.edit_note,size: 30,)),
              Divider(thickness: 2),
              myRow(mText: "Dainik Bhaskar Premium", mIcon:Icon(Icons.workspace_premium,size: 30,)),
              Divider(thickness: 2),
              myRow(mText: "E-Paper", mIcon:Icon(Icons.newspaper,size: 30,)),
              Divider(thickness: 2),
              myRow(mText: "Select your state and city", mIcon: Icon(Icons.location_on_outlined,size: 30,)),
              Divider(thickness: 2),
              myRow(mText: "My favorite subject", mIcon: Icon(Icons.favorite_border_outlined,size: 30,)),
              Divider(thickness: 2),
              myRow(mText: "Save", mIcon:Icon(Icons.save,size: 30,)),
              Divider(thickness: 2),
              myRow(mText: "Notifications", mIcon: Icon(Icons.notifications,size: 30,)),
              Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,top: 15,bottom: 15,right: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Dark Mode",style: myTextStyle20(myWeight: FontWeight.bold)),
                   Switch.adaptive(value:context.watch<ProviderPage>().getThemeValue(),
                       onChanged:(value){
                     context.read<ProviderPage>().setThemeValue(value);
                   }),
                  ],
                ),
              ),
              Divider(thickness: 2),
              myRow(mText: "Article font size", mIcon: Icon(Icons.font_download_sharp,size: 30,),),
              Divider(thickness: 2),
              myRow(mText: "share app",mIcon: Icon(Icons.share,size: 30,),),
              Divider(thickness: 2),
              myRow(mText: "Rate the app",mIcon: Icon(Icons.star_outline,size: 30,)),
              Divider(thickness: 2),
              myRow(mText: "Give feedback",mIcon: Icon(Icons.feedback,size: 30,)),
              Divider(thickness: 2),
              myRow(mText: "Logout",mIcon: Icon(Icons.logout,size: 30,) ),
              Divider(thickness: 2),
            ],
          )],
        ),

      ),
    );
  }
}
