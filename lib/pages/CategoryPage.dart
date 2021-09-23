import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10,),
          Divider(),
          ListTile(
            leading: Icon(Icons.person, color: Color(0xFFD2202F),),
            title: Text("Just For You"),
          ),
          ListTile(
            leading: Icon(Icons.important_devices, color: Color(0xFFD2202F)),
            title: Text('Electronic Device'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.devices_other_outlined, color: Color(0xFFD2202F)),
            title: Text('Electronic Accessories'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.live_tv_rounded, color: Color(0xFFD2202F)),
            title: Text('TV & Home Appliances'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.plumbing_sharp, color: Color(0xFFD2202F)),
            title: Text('Health & Beauties'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.toys, color: Color(0xFFD2202F)),
            title: Text('Babies & Toys'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.local_grocery_store, color: Color(0xFFD2202F)),
            title: Text('Groceries & Pets'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.family_restroom_sharp, color: Color(0xFFD2202F)),
            title: Text('Home & Lifestyles'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.face_unlock_sharp, color: Color(0xFFD2202F),),
            title: Text("Women's Fashion"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.pregnant_woman_outlined, color: Color(0xFFD2202F),),
            title: Text("Men's Fashion"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.watch_outlined, color: Color(0xFFD2202F),),
            title: Text("Watches & Accessories"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.sports_cricket, color: Color(0xFFD2202F),),
            title: Text("Sports & Outdoors"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.car_rental, color: Color(0xFFD2202F),),
            title: Text("Automative & Motorbike"),
          ),
        ],
      ),

    );
  }
}
