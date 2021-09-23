import 'package:flutter/material.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

int SliderNum = 0;

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  bool valueFirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My Cart', style: TextStyle(fontSize: 20, fontFamily: "EncodeSansExpanded"),),
      // ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),

        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text('Total:'),
                  SizedBox(width: 5,),
                  Text('৳ 0', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,)
                ],
              ),
            ),
            Expanded(
              child: RaisedButton(
                onPressed: (){

                },
                color: Colors.redAccent,
                child: Text('Check Out', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.right,),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Row(

            children: [
              SizedBox(width: 10,),
              Checkbox(
                  value: this.valueFirst,
                  onChanged: (bool? value){
                    setState(() {
                      this.valueFirst = value!;
                    });
                  },
                //checkColor: Colors.green,
                activeColor: Colors.red,
                shape: CircleBorder(),
              ),
              SizedBox(width: 10,),
              Image.asset('images/headphone.jpg', height: 100,width: 100,),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Sony B23754 Headphone ',style: TextStyle(fontFamily: 'EncodeSansExpanded', fontWeight: FontWeight.bold),),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('560BDT', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                              SizedBox(width: 50,),
                              incrementBtn(context)
                            ],
                          ),
                          SizedBox(height: 5),
                          Text.rich(TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                text: '1200BDT',
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

                        ],
                      )

                  ),
                ],
              ),

            ],
          ),
          Divider(),
          Row(

            children: [
              SizedBox(width: 10,),
              Checkbox(
                value: this.valueFirst,
                onChanged: (bool? value){
                  setState(() {
                    this.valueFirst = value!;
                  });
                },
                //checkColor: Colors.green,
                activeColor: Colors.red,
                shape: CircleBorder(),
              ),
              SizedBox(width: 10,),
              Image.asset('images/headphone.jpg', height: 100,width: 100,),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Sony B23754 Headphone ',style: TextStyle(fontFamily: 'EncodeSansExpanded', fontWeight: FontWeight.bold),),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('560BDT', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                              SizedBox(width: 50,),
                              incrementBtn(context)
                            ],
                          ),
                          SizedBox(height: 5),
                          Text.rich(TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                text: '1200BDT',
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

                        ],
                      )

                  ),
                ],
              ),

            ],
          ),
          Divider(),
          Row(

            children: [
              SizedBox(width: 10,),
              Checkbox(
                value: this.valueFirst,
                onChanged: (bool? value){
                  setState(() {
                    this.valueFirst = value!;
                  });
                },
                //checkColor: Colors.green,
                activeColor: Colors.red,
                shape: CircleBorder(),
              ),
              SizedBox(width: 10,),
              Image.asset('images/headphone.jpg', height: 100,width: 100,),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Sony B23754 Headphone ',style: TextStyle(fontFamily: 'EncodeSansExpanded', fontWeight: FontWeight.bold),),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('560BDT', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                              SizedBox(width: 50,),
                              incrementBtn(context)
                            ],
                          ),
                          SizedBox(height: 5),
                          Text.rich(TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                text: '1200BDT',
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

                        ],
                      )

                  ),
                ],
              ),

            ],
          ),
          Divider(),
          Row(

            children: [
              SizedBox(width: 10,),
              Checkbox(
                value: this.valueFirst,
                onChanged: (bool? value){
                  setState(() {
                    this.valueFirst = value!;
                  });
                },
                //checkColor: Colors.green,
                activeColor: Colors.red,
                shape: CircleBorder(),
              ),
              SizedBox(width: 10,),
              Image.asset('images/headphone.jpg', height: 100,width: 100,),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Sony B23754 Headphone ',style: TextStyle(fontFamily: 'EncodeSansExpanded', fontWeight: FontWeight.bold),),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('560BDT', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                              SizedBox(width: 50,),
                              incrementBtn(context)
                            ],
                          ),
                          SizedBox(height: 5),
                          Text.rich(TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                text: '1200BDT',
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

                        ],
                      )

                  ),
                ],
              ),

            ],
          ),
          Divider(),
          Row(

            children: [
              SizedBox(width: 10,),
              Checkbox(
                value: this.valueFirst,
                onChanged: (bool? value){
                  setState(() {
                    this.valueFirst = value!;
                  });
                },
                //checkColor: Colors.green,
                activeColor: Colors.red,
                shape: CircleBorder(),
              ),
              SizedBox(width: 10,),
              Image.asset('images/headphone.jpg', height: 100,width: 100,),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Sony B23754 Headphone ',style: TextStyle(fontFamily: 'EncodeSansExpanded', fontWeight: FontWeight.bold),),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('560BDT', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                              SizedBox(width: 50,),
                              incrementBtn(context)
                            ],
                          ),
                          SizedBox(height: 5),
                          Text.rich(TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                text: '1200BDT',
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

                        ],
                      )

                  ),
                ],
              ),

            ],
          ),
          Divider(),
          Row(

            children: [
              SizedBox(width: 10,),
              Checkbox(
                value: this.valueFirst,
                onChanged: (bool? value){
                  setState(() {
                    this.valueFirst = value!;
                  });
                },
                //checkColor: Colors.green,
                activeColor: Colors.red,
                shape: CircleBorder(),
              ),
              SizedBox(width: 10,),
              Image.asset('images/headphone.jpg', height: 100,width: 100,),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Sony B23754 Headphone ',style: TextStyle(fontFamily: 'EncodeSansExpanded', fontWeight: FontWeight.bold),),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('560BDT', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                              SizedBox(width: 50,),
                              incrementBtn(context)
                            ],
                          ),
                          SizedBox(height: 5),
                          Text.rich(TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                text: '1200BDT',
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

                        ],
                      )

                  ),
                ],
              ),

            ],
          ),
          Divider(),
          Row(

            children: [
              SizedBox(width: 10,),
              Checkbox(
                value: this.valueFirst,
                onChanged: (bool? value){
                  setState(() {
                    this.valueFirst = value!;
                  });
                },
                //checkColor: Colors.green,
                activeColor: Colors.red,
                shape: CircleBorder(),
              ),
              SizedBox(width: 10,),
              Image.asset('images/headphone.jpg', height: 100,width: 100,),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Sony B23754 Headphone ',style: TextStyle(fontFamily: 'EncodeSansExpanded', fontWeight: FontWeight.bold),),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('560BDT', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                              SizedBox(width: 50,),
                              incrementBtn(context)
                            ],
                          ),
                          SizedBox(height: 5),
                          Text.rich(TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                text: '1200BDT',
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

                        ],
                      )

                  ),
                ],
              ),

            ],
          ),
          Divider(),
          Row(

            children: [
              SizedBox(width: 10,),
              Checkbox(
                value: this.valueFirst,
                onChanged: (bool? value){
                  setState(() {
                    this.valueFirst = value!;
                  });
                },
                //checkColor: Colors.green,
                activeColor: Colors.red,
                shape: CircleBorder(),
              ),
              SizedBox(width: 10,),
              Image.asset('images/headphone.jpg', height: 100,width: 100,),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Sony B23754 Headphone ',style: TextStyle(fontFamily: 'EncodeSansExpanded', fontWeight: FontWeight.bold),),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('560BDT', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                              SizedBox(width: 50,),
                              incrementBtn(context)
                            ],
                          ),
                          SizedBox(height: 5),
                          Text.rich(TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                text: '1200BDT',
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

                        ],
                      )

                  ),
                ],
              ),

            ],
          ),
          Divider(),



        ],
      ),
    );
  }
}

Widget incrementBtn(BuildContext context){
  return Container(
    padding: EdgeInsets.all(3),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).accentColor),
    child: Row(
      children: [
        InkWell(
            onTap: () {},
            child: Icon(
              Icons.remove,
              color: Colors.white,
              size: 16,
            )),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          padding:
          EdgeInsets.symmetric(horizontal: 3, vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.white),
          child: Text(
            '$SliderNum',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        InkWell(
            onTap: () {
              SliderNum ++;
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 16,
            )),
      ],
    ),
  );
}
