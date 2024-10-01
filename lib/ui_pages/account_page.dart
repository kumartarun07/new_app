import 'package:dainik_bhashkar_app/provider_page.dart';
import 'package:dainik_bhashkar_app/ui_helper/app_cont.dart';
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
      appBar: AppBar(title: Text("प्रोफ़ाइल"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                maxRadius: 35,
                backgroundImage: AssetImage(AppCont.mdata[0]["Img"]),),
              title: Text("Tarun Malviya",style: myTextStyle20(),),
              subtitle: Text("+919058339922"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit_note,size: 35,)),
            ),
            Divider(thickness: 2),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("दैनिक भास्कर प्रीमियम",style: myTextStyle15(myWeight: FontWeight.bold),),
                      Icon(Icons.workspace_premium)
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ई पेपर",style: myTextStyle15(myWeight: FontWeight.bold)),
                      Icon(Icons.newspaper)
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("अपना राज्य और शहर चुनें",style: myTextStyle15(myWeight: FontWeight.bold)),
                      Icon(Icons.location_on_outlined)
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("मेरा पसंदीदा विषय",style: myTextStyle15(myWeight: FontWeight.bold)),
                      Icon(Icons.favorite_border_outlined)
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("सेव",style: myTextStyle15(myWeight: FontWeight.bold)),
                      Icon(Icons.save)
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("नोटीफेकैसन्स",style: myTextStyle15(myWeight: FontWeight.bold)),
                      Icon(Icons.notifications)
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("डार्क मोड",style: myTextStyle15(myWeight: FontWeight.bold)),
                     Switch.adaptive(value:context.watch<ProviderPage>().getThemeValue(),
                         onChanged:(value){
                       context.read<ProviderPage>().setThemeValue(value);
                     }),
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("आलेख फ़ॉन्ट आकार",style: myTextStyle15(myWeight: FontWeight.bold)),
                      Icon(Icons.font_download_sharp)
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ऐप साझा करें",style: myTextStyle15(myWeight: FontWeight.bold)),
                      Icon(Icons.share)
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ऐप को रेटिंग दें",style: myTextStyle15(myWeight: FontWeight.bold)),
                      Icon(Icons.star_outline)
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("प्रतिक्रिया दें",style: myTextStyle15(myWeight: FontWeight.bold)),
                      Icon(Icons.feedback)
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("लॉग आउट",style: myTextStyle15(myWeight: FontWeight.bold)),
                      Icon(Icons.logout)
                    ],
                  ),
                  Divider(thickness: 2),
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
