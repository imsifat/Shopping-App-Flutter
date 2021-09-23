import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login_page/pages/ProductPage.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  _HomePageContentState createState() => _HomePageContentState();
}
  final List<String> ImageList = ['images/banner/banner1.jpg',
                    'images/banner/banner2.jpg',
                    'images/banner/banner3.jpg',];
class _HomePageContentState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  //onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                items: ImageList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.amber
                          ),
                          child: Image.asset('$i', fit: BoxFit.cover,)
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Divider(),
            //SizedBox(height: 10),
            Padding(padding: EdgeInsets.only(left: 10),
              child: Text('Trending', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
            ),
            Container(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryProduct(context, 'images/shirt3.jpg', "Branded Shirt"),
                    CategoryProduct(context, 'images/shirt2.jpg', "Branded Shirt"),
                    CategoryProduct(context, 'images/shirt4.jpg', "Branded Shirt"),
                    CategoryProduct(context, 'images/headphone.jpg', "Sony Headphone"),
                    CategoryProduct(context, 'images/shirt4.jpg', "Branded Shirt"),
                  ],
                )
            ),
            Divider(),
            Padding(padding: EdgeInsets.only(left: 10),
              child: Text('Upcoming', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
            ),
            Container(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryProduct(context, 'images/shirt2.jpg', "Branded Shirt"),
                    CategoryProduct(context, 'images/shirt4.jpg', "Branded Shirt"),
                    CategoryProduct(context, 'images/shirt3.jpg', "Branded Shirt"),
                    CategoryProduct(context, 'images/headphone.jpg', "Sony Headphone"),
                    CategoryProduct(context, 'images/shirt4.jpg', "Branded Shirt"),
                  ],
                )
            ),

            Divider(),
            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text('For You', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Products('images/shirt4.jpg', 'Brand Shirt', '1200', '2200', '60', '55'),
                    Products('images/shirt2.jpg', 'Brand Shirt', '1200', '2200', '60', '45'),
                  ],
                ),
                Row(
                  children: [
                    Products('images/headphone.jpg', 'Sony Headphone', '600', '1200', '60', '85'),
                    Products('images/shirt2.jpg', 'Brand Shirt', '1200', '2200', '60', '45'),
                  ],
                ),
                Row(
                  children: [
                    Products('images/shirt3.jpg', 'Brand Shirt', '1200', '2200', '60', '89'),
                    Products('images/shirt4.jpg', 'Brand Shirt', '1200', '2200', '60', '25'),
                  ],
                ),
                Row(
                  children: [
                    Products('images/headphone.jpg', 'Sony Headphone', '600', '1200', '60', '67'),
                    Products('images/shirt2.jpg', 'Brand Shirt', '1200', '2200', '60', '33'),
                  ],
                ),
                Row(
                  children: [
                    Products('images/shirt4.jpg', 'Brand Shirt', '1200', '2200', '60', '55'),
                    Products('images/shirt2.jpg', 'Brand Shirt', '1200', '2200', '60', '45'),
                  ],
                ),


              ],
            )
          ],
        )
      ],
    ) ,);
  }
}

//this widge is for only for you categories
Widget Products(String ImgLocation, name, price, discountPrice, discountPercent, reviews){
  return Expanded(
    child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('$ImgLocation',fit: BoxFit.cover,width: 180,height: 180,),
            ),
            SizedBox(height: 5,),
            Text('$name'),
            Text('৳ $price', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
            Text.rich(TextSpan(
              children: <TextSpan>[
                new TextSpan(
                  text: '৳ $discountPrice',
                  style: new TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                new TextSpan(
                  text: ' -discountPercent%',
                ),
              ],
            ),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Color(0xFFFfebf50),),
                Icon(Icons.star, color: Color(0xFFFfebf50),),
                Icon(Icons.star, color: Color(0xFFFfebf50),),
                Icon(Icons.star, color: Color(0xFFFfebf50),),
                Icon(Icons.star, color: Color(0xFFFfee9c3),),
                SizedBox(width: 5,),
                Text('($reviews)')
              ],
            )

          ],
        )
    ),
  );
}

Widget CategoryProduct(BuildContext context, String ImgLocation, ProductName){
  return Padding(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: (){
          Route route = MaterialPageRoute(builder: (context) => ProductPage());
          Navigator.push(context, route);
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('$ImgLocation',fit: BoxFit.cover,width: 100,height: 100,),
            ),
            Text('$ProductName')
          ],
        ),
      )
  );
}

