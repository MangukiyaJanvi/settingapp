import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingapp/screens/home/provider/home_provider.dart';
import 'package:settingapp/screens/home/view/home_screen.dart';
import 'package:settingapp/screens/home/view/ios_view.dart';

void main()
{
  runApp(
      (Platform.isAndroid)?android():ios(),
  );
}

Widget ios()
{
  return ChangeNotifierProvider(
    create: (context) => HomeProvider(),
    child: CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => IosScreen(),
      },
    ),
  );
}

Widget android()
{
  return ChangeNotifierProvider(
    create: (context) => HomeProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen(),
      },
    ),
  );
}