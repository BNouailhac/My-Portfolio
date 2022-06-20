import 'package:flutter/material.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/mobile.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/resume",
  ];

  static const List<String> socialLinks = [
    "https://linkedin.com/in/baptiste-nouailhac",
    "https://github.com/BNouailhac",
    "https://firebasestorage.googleapis.com/v0/b/my-portfolio-b4169.appspot.com/o/CV_Baptiste_Nouailhac.pdf?alt=media&token=9535b4b7-1b9f-43e7-bc5d-7dac0ccc01e3",
  ];

  static const List<String> ThecIcon = [
    "https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png",
    "https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/480px-Unofficial_JavaScript_logo_2.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/8/87/Sql_data_base_with_logo.png",
    "https://upload.wikimedia.org/wikipedia/commons/4/4f/Csharp_Logo.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Git-logo.svg/1280px-Git-logo.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/8/8a/Official_unity_logo.png",
  ];

  static const List<String> ThecIconLinks = [
    "https://flutter.dev/?gclid=CjwKCAjwtcCVBhA0EiwAT1fY7wwL7zEAOdpN5P3sGtZvI8oLH2GxUn7eQYvQ3cdJt91eOuVpQRNNpBoCtjEQAvD_BwE&gclsrc=aw.ds",
    "https://firebase.google.com/?gclid=CjwKCAjwtcCVBhA0EiwAT1fY7_RpUbHHLyEJql3NglqP2nR1aZFw0riGmRI502btMYjDFM4BhKMkdBoCeFsQAvD_BwE&gclsrc=aw.ds",
    "https://www.javascript.com",
    "https://en.wikipedia.org/wiki/SQL#:~:text=SQL%20(%2Fˌɛsˌ,stream%20management%20system%20(RDSMS).",
    "https://en.wikipedia.org/wiki/C_Sharp_(programming_language)",
    "https://git-scm.com",
    "https://unity.com/pages/unity-pro-buy-now?gclsrc=aw.ds&ds_rl=1295837&gclid=CjwKCAjwtcCVBhA0EiwAT1fY78d6CNxTiT9r4dSWvJn0a68Zmm0Ca0EV_TmpA4SgKcje5Ggh-aqZjxoCIwUQAvD_BwE",
  ];

  static const List<String> CompanyIcon = [
    "https://media-exp1.licdn.com/dms/image/C4D0BAQEN4-qAHY1-Ow/company-logo_200_200/0/1608375344753?e=1663804800&v=beta&t=NTrPcAvoFcs8DLS6_NCg9U93PjnIvDyn8hkD8a4R2OY",
    "https://media-exp1.licdn.com/dms/image/C4D0BAQHm7AaTtN1Sog/company-logo_200_200/0/1549015602290?e=1663804800&v=beta&t=dfDwfQiNw1hgVu8uwWt2uYEF4R8VxfX47V3cCC3xtfs",
  ];

  static const List<String> CompanyIconLinks = [
    "https://www.facebook.com/LunaCleanerFuture/",
    "https://www.syselio.com/fr",
  ];

  static const List<String> universityicon = [
    "https://upload.wikimedia.org/wikipedia/commons/2/2d/Epitech.png",
    "https://upload.wikimedia.org/wikipedia/en/9/98/Beijing_Jiaotong_University.png",
  ];

  static const List<String> universityiconlinks = [
    "https://www.epitech.eu/",
    "http://en.njtu.edu.cn/",
  ];

  static const String resume =
      'https://firebasestorage.googleapis.com/v0/b/my-portfolio-b4169.appspot.com/o/CV_Baptiste_Nouailhac.pdf?alt=media&token=9535b4b7-1b9f-43e7-bc5d-7dac0ccc01e3';

  static const String gitHub = 'https://github.com/BNouailhac';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
