import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingapp/screens/home/provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? htrue;
  HomeProvider? hfalse;
  @override
  Widget build(BuildContext context) {
    hfalse=Provider.of<HomeProvider>(context,listen: false);
    htrue=Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          backgroundColor: Color(0xffF64728),
          title: Text("Settings UI"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 15,),
              Text(
                'Common',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffF64728),
                ),
              ),
              SizedBox(height: 15,),
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Language'),
                subtitle: Text('English'),
              ),
              Container(height: 1,color: Colors.grey.shade200,),
              ListTile(
                leading: Icon(Icons.cloud_outlined),
                title: Text('Environment'),
                subtitle: Text('Production'),
              ),
              SizedBox(height: 15,),
              Text(
                'Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffF64728),
                ),
              ),
              SizedBox(height: 15,),
              ListTile(
                leading: Icon(Icons.call),
                title: Text('Phone number'),
              ),
              Container(height: 1,color: Colors.grey.shade200,),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
              ),
              Container(height: 1,color: Colors.grey.shade200,),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Phone number'),
              ),
              SizedBox(height: 15,),
              Text(
                'Security',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffF64728),
                ),
              ),
              SizedBox(height: 15,),
              ListTile(
                leading: Icon(Icons.phonelink_lock),
                title: Text('Lock app in background'),
                trailing: Switch(activeColor: Color(0xffF64728),onChanged: (value) {
                  htrue!.change1(value);
                },value: htrue!.s1),
              ),
              Container(height: 1,color: Colors.grey.shade200,),
              ListTile(
                leading: Icon(Icons.fingerprint),
                title: Text('Use fingerprint'),
                trailing: Switch(activeColor: Color(0xffF64728),onChanged: (value) {
                  htrue!.change2(value);
                },value: htrue!.s2),
              ),
              Container(height: 1,color: Colors.grey.shade200,),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text('Change password'),
                trailing: Switch(activeColor: Color(0xffF64728),onChanged: (value) {
                  htrue!.change3(value);
                },value: htrue!.s3),
              ),
              SizedBox(height: 15,),
              Text(
                'Misc',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffF64728),
                ),
              ),
              SizedBox(height: 15,),
              ListTile(
                leading: Icon(Icons.file_present),
                title: Text('Terms of Service'),
              ),
              Container(height: 1,color: Colors.grey.shade200,),
              ListTile(
                leading: Icon(Icons.collections_bookmark),
                title: Text('Open source licenses'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}