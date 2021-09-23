import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:login_page/pages/ShoppingCartPage.dart';
class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

bool Heartactive = false;
Color HeartClr = Colors.white;
int CartNum = 0;
final List<String> imageList = ['images/shirt3.jpg','images/shirt3.jpg','images/shirt3.jpg','images/shirt3.jpg',];

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Product Details', style: TextStyle(fontSize: 20, color: Colors.white)),
      //   backgroundColor: Color(0xFFD2202F),
      // ),


      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 60,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
                            width: 40,
                            height: 40,
                            child: Icon(Icons.arrow_back, color: Colors.white,)
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Route route = MaterialPageRoute(builder: (context) => ShoppingCartPage());
                              Navigator.push(context, route);
                              },
                            child: Stack(
                              overflow: Overflow.visible,
                              children: [
                                Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
                                  width: 40,
                                  height: 40,
                                  child: Icon(Icons.shopping_cart, color: Colors.white,)
                              ),
                                Positioned(
                                    top: -7,
                                    right: -7,
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.5), color: Colors.redAccent, border: Border.all(color: Colors.white, width: 2.7)),
                                      child: Text('$CartNum', style: TextStyle(color: Colors.white, fontSize: 12),),
                                    ))
                              ]
                            ),
                          ),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                Heartactive = !Heartactive;
                                if(Heartactive == true){
                                  HeartClr = Colors.red;
                                }else{
                                  HeartClr = Colors.white;
                                }
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
                                width: 40,
                                height: 40,
                                child: Icon(Icons.favorite, color: HeartClr,)
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
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
                    autoPlay: false,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: imageList.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                //color: Colors.amber
                            ),
                            child: Image.asset('$i', fit: BoxFit.scaleDown,)
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('1200BDT', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                    SizedBox(height: 10),
                    Text.rich(TextSpan(
                      children: <TextSpan>[
                        new TextSpan(
                          text: '2200BDT',
                          style: new TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        new TextSpan(
                          text: ' -60%',
                        ),
                      ],
                    ),
                    ),
                    SizedBox(height: 5),
                    Text('Branded Shirt',style: TextStyle(fontFamily: 'EncodeSansExpanded', fontWeight: FontWeight.bold),),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.star, color: Color(0xFFFfebf50),),
                        Icon(Icons.star, color: Color(0xFFFfebf50),),
                        Icon(Icons.star, color: Color(0xFFFfebf50),),
                        Icon(Icons.star, color: Color(0xFFFfebf50),),
                        Icon(Icons.star, color: Color(0xFFFfee9c3),),
                        SizedBox(width: 10,),
                        Text('43 reviews')
                      ],
                    )
                  ],
                )

              ),

              Divider(),

              Padding(padding: EdgeInsets.only(left: 10),child: Text('Variation',style: TextStyle(color: Colors.grey),)),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
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
                                    child: Image.asset('images/shirt3.jpg',fit: BoxFit.fill,width: 50,height: 50,),
                                  ),
                                ],
                              ),
                            )
                        ),
                        Padding(
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
                                    child: Image.asset('images/shirt3.jpg',fit: BoxFit.fill,width: 50,height: 50,),
                                  ),
                                ],
                              ),
                            )
                        ),
                        Padding(
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
                                    child: Image.asset('images/shirt3.jpg',fit: BoxFit.fill,width: 50,height: 50,),
                                  ),
                                ],
                              ),
                            )
                        ),
                        Padding(
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
                                    child: Image.asset('images/shirt3.jpg',fit: BoxFit.fill,width: 50,height: 50,),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    )
                ),
              ),
              Divider(height: 5,),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text('Specification: ', style: TextStyle(color: Colors.grey),),
                    Text('Brand, Shirt, Mens')
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text('Delivery: ', style: TextStyle(color: Colors.grey),),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Wari, Dhaka', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                          Text('Home Delivery, 5-9 Days'),
                          Text('Enjoy free shipping ', style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text('Delivery: ', style: TextStyle(color: Colors.grey),),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('7 Days Return', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),

                          Text('Change of mind available ', style: TextStyle(color: Colors.grey),),
                          Text('Warranty not availale'),
                          Divider(),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                height: 100,
                child: ListView(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                        },
                        child: new Container(
                          //width: 100.0,
                          height: 50.0,
                          decoration: new BoxDecoration(
                            color: Colors.lightBlue,
                            border: new Border.all(color: Colors.white, width: 2.0),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: new Center(child: new Text('Buy Now', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            CartNum ++;
                            print(CartNum);
                          });

                        },
                        child: new Container(
                          //width: 100.0,
                          height: 50.0,
                          decoration: new BoxDecoration(
                            color: Colors.redAccent,
                            border: new Border.all(color: Colors.white, width: 2.0),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: new Center(child: new Text('Add to Cart', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


            ],
          )
        ],
      )
    );

  }
}
