

import 'package:flutter/cupertino.dart';
import 'package:imc/ui/ios/pages/home_page.dart';

class MyCupertinoApp extends StatelessWidget {

  const MyCupertinoApp({ super.key });

   @override
   Widget build(BuildContext context) {
       return const CupertinoApp(
         title: 'IMC',
         debugShowCheckedModeBanner: false,
         theme: CupertinoThemeData(
           primaryColor: Color(0xFF795548),
         ),
         home: HomePage(),
       );
  }
}