import 'package:flutter/material.dart';
import 'package:login_page/pages/CategoryPage.dart';
import 'package:login_page/pages/HomePageContent.dart';

import 'package:login_page/pages/ProductPage.dart';
import 'package:login_page/pages/ProfilePage.dart';
import 'package:login_page/pages/ShoppingCartPage.dart';



class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

Color appBarColor = Colors.white;
int _currentIndex = 0;

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bengal Software', style: TextStyle(color: Colors.black, fontSize: 20)),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.grey),
        ),

       drawer: _CustomDrawer(),

       bottomNavigationBar: BottomNavigationBar(
         backgroundColor: appBarColor,
         currentIndex: _currentIndex,

         items: [

           BottomNavigationBarItem(
             icon: Icon(Icons.home, color: Colors.grey,),
             title: Text('Home',style: TextStyle(color: Colors.grey),),
             backgroundColor: appBarColor
           ),BottomNavigationBarItem(
             icon: Icon(Icons.list_alt, color: Colors.grey),
             title: Text('Categories',style: TextStyle(color: Colors.grey)),
             backgroundColor: appBarColor
           ),BottomNavigationBarItem(
             icon: Icon(Icons.shopping_cart, color: Colors.grey),
             title: Text('Cart',style: TextStyle(color: Colors.grey)),
             backgroundColor: appBarColor
           ),BottomNavigationBarItem(
             icon: Icon(Icons.person, color: Colors.grey),
             title: Text('Profile',style: TextStyle(color: Colors.grey)),
             backgroundColor: appBarColor
           ),
        ],

        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },

       ),
       // drawer: _foodDrawer(),
        body: BodyFunction(context)

    );
  }
}

Widget BodyFunction(BuildContext context){
  switch(_currentIndex){
    case 0:
      return HomePageContent();
      break;
    case 1:
      return CategoryPage();
      break;
    case 2:
      return ShoppingCartPage();
      break;
    case 3:
      return ProfilePage();
      break;

    default:
      return Container(color: Colors.black,);
      break;
  }

}

Widget _foodCard(){
  return Card(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('images/pizza.jpg'),
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chicken pizza with extra spicy sauce', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text('1200BDT', style: TextStyle(color: Colors.grey),),
              SizedBox(height: 5,),
              Text('Sold: 163 Times', style: TextStyle(color: Colors.grey),)
            ],
          ),
        )
      ],
    ),
  );
}

Widget _CustomDrawer(){
  return Drawer(
    child: ListView(
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

Widget _CustomAppBar(){
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: IconButton(
            icon: Icon(Icons.drag_handle_outlined),
            onPressed: null,
          ),
        ),
        Container(
          child: Text(
            'Bengle Soft',
            style: TextStyle(color: Colors.grey),
          )
        ),
        Container(
          child: IconButton(
            icon: Icon(Icons.mic),
            onPressed: null,
          ),
        ),
      ],
    ),
  );
}