import 'package:flutter/material.dart';

class AppCont
{
  static final List<String>tab=[
    "Top News",
    "Job-Education",
    "Sports",
    "Country",
    "Foreign",
    "Meagzin",
    "Life-Science",
    "Bhashkar Khas",
    "Hariyana Election",
    "Cricket",
    "DB Original",
    "Bollywood",
    "LifeStyle",
    "Life Mantra",
    "Women",
    "Business",
    "Rashiphal",
    "Tack-Auto",
    "Fake News Expose",
    "Opinion",
    "Madhurima",
    "Utility",
  ];

  mTabBar()
  {
    return  TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        tabs: [
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher,color: Colors.orange,),
              SizedBox(width: 5,),
              Text("टॉप न्यूज़")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.location_on,color: Colors.red,),
              SizedBox(width: 5,),
              Text("राज्य-शहर")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.star,color: Colors.orangeAccent,),
              SizedBox(width: 5,),
              Text("भास्कर खास")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.event,color: Colors.orangeAccent,),
              SizedBox(width: 5,),
              Text("हरियाणा चुनाव")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.sports_cricket,color: Colors.blue,),
              SizedBox(width: 5,),
              Text("क्रिकेट")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher,color: Colors.orangeAccent,),
              SizedBox(width: 5,),
              Text("DB ओरिजिनल")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.cast_for_education_outlined,color: Colors.black,),
              SizedBox(width: 5,),
              Text("जॉब - एजुकेशन")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.sports,color: Colors.blue,),
              SizedBox(width: 5,),
              Text("स्पोर्ट्स")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.movie,color: Colors.black,),
              SizedBox(width: 5,),
              Text("बॉलीवुड")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.living,color: Colors.orangeAccent,),
              SizedBox(width: 5,),
              Text("लाइफस्टाइल")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher),
              SizedBox(width: 5,),
              Text("जीवन मंत्र")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.woman,color: Colors.black,),
              SizedBox(width: 5,),
              Text("वुमन")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher),
              SizedBox(width: 5,),
              Text("देश")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher),
              SizedBox(width: 5,),
              Text("विदेश")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher),
              SizedBox(width: 5,),
              Text("बिजनेस")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher),
              SizedBox(width: 5,),
              Text("राशिफल")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher),
              SizedBox(width: 5,),
              Text("टेक - ऑटो")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher),
              SizedBox(width: 5,),
              Text("फेक न्यूज एक्सपोज़")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher),
              SizedBox(width: 5,),
              Text("ओपिनियन")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher),
              SizedBox(width: 5,),
              Text("मधुरिमा")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher),
              SizedBox(width: 5,),
              Text("मैगजीन")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher),
              SizedBox(width: 5,),
              Text("लाइफ - साइंस")
            ],
          ),),
          Tab(child: Row(
            children: [
              Icon(Icons.fire_extinguisher),
              SizedBox(width: 5,),
              Text("यूटिलिटी")
            ],
          ),),

        ]
    );
  }


  static final List<String>search=[
    "राज्य-शहर",
    "जॉब - एजुकेशन",
    "DB ओरिजिनल",
    "स्पोर्ट्स",
    "बॉलीवुड",
    "लाइफस्टाइल",
    "जीवन मंत्र",
    "वुमन",
    "देश",
    "विदेश",
    "बिजनेस",
    "राशिफल",
    "टेक - ऑटो",
    "फेक न्यूज एक्सपोज़",
    "ओपिनियन",
    "मधुरिमा",
    "मैगजीन",
    "लाइफ - साइंस",
    "यूटिलिटी",
    "Rashiphal",
    "Tack-Auto",
    "Opinion",
    "Madhurima",
    "Rajasthan",
    "MadhyaPradesh",
    "UttarPradesh",
    "Bihar",
    "Haryana",
    "New-Delhi",
    "Punjab",
    "Gujarat",
    "Jaipur",
    "Jodhpur",
    "Utility",
  ];


  static final List<Map<String,dynamic>> mdata= [
    {
      "Title":"मैं हरियाणा का CM कपड़े की दुकान चलाते थे खट्टर:बंसीलाल की सरकार गिराने के लिए दाढ़ी बढ़ाई, मोदी से दोस्ती; पहले ही चुनाव में CM बने",
      "Img":"assets/img/1.webp"
    },
    {
      "Title":"भारत ने नागरिकों को तुरंत लेबनान छोड़ने को कहा:इजराइली सेना घुसपैठ की तैयारी में, अमेरिका-फ्रांस ने जंग रोकने की मांग की",
      "Img":"assets/img/2.webp"
    },
    {
      "Title":"कानपुर में बारिश से टीम इंडिया की प्रैक्टिस रुकी:पिच को कवर किया; कल मैच के दौरान भी बारिश का अलर्ट",
      "Img":"assets/img/3.webp"
    },
    {
      "Title":"इम्पैक्ट फीचर:नीरज मेहरा ने ICICI प्रूडेंशियल वैल्यू डिस्कवरी फंड में निवेश की सलाह दी",
      "Img":"assets/img/4.webp"
    },
    {
      "Title":"देश का मानसून ट्रैकर:गुजरात के वडोदरा में तूफान, 4 मौतें; मुंबई में भी 4 की जान गई; पुरी के कोणार्क टेंपल में पानी भरा",
      "Img":"assets/img/5.webp"
    },
    {
      "Title":"हरियाणा चुनाव, राहुल बोले- भाजपा ने एथलीट्स खत्म किए:महिला पहलवानों से सेक्शुअल हैरेसमेंट करने वालों को बचाया; हुड्डा-सैलजा को साथ मंच पर लाए",
      "Img":"assets/img/6.webp"
    },
    {
      "Title":"अक्षय के एनकाउंटर पर इंस्पेक्टर शिंदे- वो हमें मार देता:छीनाझपटी में अनलॉक हुई रिवॉल्वर, कोर्ट ने पूछा- गोलियां चलीं, गईं कहां",
      "Img":"assets/img/7.webp"
    },
    {
      "Title":"भारत का शुक्रयान 2028 में लॉन्च होगा:4 साल का मिशन; यह पृथ्वी का जुड़वां ग्रह, इसका एक दिन पृथ्वी के 243 दिनों के बराबर",
      "Img":"assets/img/9.webp"
    },
    {
      "Title":"₹75,406 के ऑल टाइम हाई पर सोना:इस हफ्ते अब तक ₹1,313 महंगा हो चुका है, चांदी ₹90,817 प्रति किलो पर पहुंची",
      "Img":"assets/img/10.webp"
    },
    {
      "Title":"टॉप इश्यूज:हरियाणा चुनाव में किसान आंदोलन फिर जिंदा हुआ:कंगना रनोट के बयानों से नाराजगी; यूनियन-खापें बोलीं- BJP को लोकसभा जैसा सबक सिखाएंगे",
      "Img":"assets/img/11.webp"
    },
    {
      "Title":"सरकारी नौकरी:एमपी हाईकोर्ट में ट्रांसलेटर के पदों पर निकली भर्ती, ग्रेजुएट्स को मौका, रिजर्व कैटेगरी को फीस में छूट",
      "Img":"assets/img/12.webp"
    },
    {
      "Title":"मैं हरियाणा का CM कपड़े की दुकान चलाते थे खट्टर:बंसीलाल की सरकार गिराने के लिए दाढ़ी बढ़ाई, मोदी से दोस्ती; पहले ही चुनाव में CM बने",
      "Img":"assets/img/1.webp"
    },
    {
      "Title":"मैं हरियाणा का CM कपड़े की दुकान चलाते थे खट्टर:बंसीलाल की सरकार गिराने के लिए दाढ़ी बढ़ाई, मोदी से दोस्ती; पहले ही चुनाव में CM बने",
      "Img":"assets/img/6.webp"
    },
    {
      "Title":"मैं हरियाणा का CM कपड़े की दुकान चलाते थे खट्टर:बंसीलाल की सरकार गिराने के लिए दाढ़ी बढ़ाई, मोदी से दोस्ती; पहले ही चुनाव में CM बने",
      "Img":"assets/img/1.webp"
    },
    {
      "Title":"भारत का शुक्रयान 2028 में लॉन्च होगा:4 साल का मिशन; यह पृथ्वी का जुड़वां ग्रह, इसका एक दिन पृथ्वी के 243 दिनों के बराबर",
      "Img":"assets/img/9.webp"
    },
    {
      "Title":"देश का मानसून ट्रैकर:गुजरात के वडोदरा में तूफान, 4 मौतें; मुंबई में भी 4 की जान गई; पुरी के कोणार्क टेंपल में पानी भरा",
      "Img":"assets/img/5.webp"
    },

  ];
}