import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:flutter/material.dart';

class MediumNewsPage extends StatelessWidget {
  const MediumNewsPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              listview3(),
              listview2(mtext: "करियर स्वाइप",),
              listview3(),
            ],
          ),
        ),
      ),
    );
  }
}
