import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingapp/screens/home/provider/home_provider.dart';

class IosScreen extends StatefulWidget {
  const IosScreen({Key? key}) : super(key: key);

  @override
  State<IosScreen> createState() => _IosScreenState();
}

class _IosScreenState extends State<IosScreen> {
  HomeProvider? htrue;
  HomeProvider? hfalse;
  @override
  Widget build(BuildContext context) {
    hfalse=Provider.of<HomeProvider>(context,listen: false);
    htrue=Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            'Settings UI'
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 44,),
            Container(
              color: CupertinoColors.lightBackgroundGray,
              height: 50,
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Common',
                  style: TextStyle(color: CupertinoColors.inactiveGray),
                ),
              ),
            ),
            CupertinoListTile(
              leading: Icon(
                CupertinoIcons.globe,
                color: CupertinoColors.inactiveGray,
              ),
              title: Text('Language'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'English',
                    style: TextStyle(color: CupertinoColors.inactiveGray),
                  ),
                  Icon(
                    CupertinoIcons.forward,
                    color: CupertinoColors.inactiveGray,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Container(
                height: 1.5,
                color: CupertinoColors.lightBackgroundGray,
              ),
            ),
            CupertinoListTile(
              leading: Icon(
                CupertinoIcons.cloud,
                color: CupertinoColors.inactiveGray,
              ),
              title: Text('Environment'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Production',
                    style: TextStyle(color: CupertinoColors.inactiveGray),
                  ),
                  Icon(
                    CupertinoIcons.forward,
                    color: CupertinoColors.inactiveGray,
                  ),
                ],
              ),
            ),
            Container(
              color: CupertinoColors.lightBackgroundGray,
              height: 50,
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Account',
                  style: TextStyle(color: CupertinoColors.inactiveGray),
                ),
              ),
            ),
            CupertinoListTile(
              leading: Icon(
                CupertinoIcons.phone_fill,
                color: CupertinoColors.inactiveGray,
              ),
              title: Text('Phone number'),
              trailing: Icon(
                CupertinoIcons.forward,
                color: CupertinoColors.inactiveGray,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Container(
                height: 1.5,
                color: CupertinoColors.lightBackgroundGray,
              ),
            ),
            CupertinoListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: CupertinoColors.inactiveGray,
              ),
              title: Text('Email'),
              trailing: Icon(
                CupertinoIcons.forward,
                color: CupertinoColors.inactiveGray,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Container(
                height: 1.5,
                color: CupertinoColors.lightBackgroundGray,
              ),
            ),
            CupertinoListTile(
              leading: Icon(
                CupertinoIcons.square_arrow_right,
                color: CupertinoColors.inactiveGray,
              ),
              title: Text('Sign out'),
              trailing: Icon(
                CupertinoIcons.forward,
                color: CupertinoColors.inactiveGray,
              ),
            ),
            Container(
              color: CupertinoColors.lightBackgroundGray,
              height: 50,
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Security',
                  style: TextStyle(color: CupertinoColors.inactiveGray),
                ),
              ),
            ),
            CupertinoListTile(
              leading: Icon(
                Icons.phonelink_lock,
                color: CupertinoColors.inactiveGray,
              ),
              title: Text('Lock app in background'),
              trailing: CupertinoSwitch(onChanged: (value) {
                hfalse!.change1(value);
              },value: htrue!.s1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Container(
                height: 1.5,
                color: CupertinoColors.lightBackgroundGray,
              ),
            ),
            CupertinoListTile(
              leading: Icon(
                Icons.fingerprint,
                color: CupertinoColors.inactiveGray,
              ),
              title: Text('Use fingerprint'),
              trailing: CupertinoSwitch(onChanged: (value) {
                hfalse!.change2(value);
              },value: htrue!.s2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Container(
                height: 1.5,
                color: CupertinoColors.lightBackgroundGray,
              ),
            ),
            CupertinoListTile(
              leading: Icon(
                Icons.lock,
                color: CupertinoColors.inactiveGray,
              ),
              title: Text('Change Password'),
              trailing: CupertinoSwitch(onChanged: (value) {
                hfalse!.change3(value);
              },value: htrue!.s3
              ),
            ),
            Container(
              color: CupertinoColors.lightBackgroundGray,
              height: 50,
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Misc',
                  style: TextStyle(color: CupertinoColors.inactiveGray),
                ),
              ),
            ),
            CupertinoListTile(
              leading: Icon(
                CupertinoIcons.doc_fill,
                color: CupertinoColors.inactiveGray,
              ),
              title: Text('Terms of Service'),
              trailing: Icon(
                CupertinoIcons.forward,
                color: CupertinoColors.inactiveGray,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Container(
                height: 1.5,
                color: CupertinoColors.lightBackgroundGray,
              ),
            ),
            CupertinoListTile(
              leading: Icon(
                Icons.collections_bookmark,
                color: CupertinoColors.inactiveGray,
              ),
              title: Text('Open source licenses'),
              trailing: Icon(
                CupertinoIcons.forward,
                color: CupertinoColors.inactiveGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
