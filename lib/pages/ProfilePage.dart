import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.white, child: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(color: Color(0xFFD2202F)),
              ),
              Positioned(
                  bottom: 50,
                  left: 30,
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Image.asset('images/profile.png'),
                  )
              ),
              Positioned(
                  bottom: 20,
                  left: 30,
                  child: Text('Md. Imran Hossain', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),)
              )
            ],
          ),
          SizedBox(height: 30,),
          Divider(),
          ListTile(
            leading: Icon(Icons.favorite_border, color: Color(0xFFD2202F)),
            title: Text('Favourite'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.receipt_long, color: Color(0xFFD2202F)),
            title: Text('Orders'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person, color: Color(0xFFD2202F)),
            title: Text('Profile'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.add_location, color: Color(0xFFD2202F)),
            title: Text('Adresses'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.receipt_outlined, color: Color(0xFFD2202F)),
            title: Text('Vouchers'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.help, color: Color(0xFFD2202F)),
            title: Text('Help Center'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.build, color: Color(0xFFD2202F)),
            title: Text('Settings'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: Color(0xFFD2202F),),
            title: Text('Log out'),
          ),
        ],
      ),),
    );
  }
}
