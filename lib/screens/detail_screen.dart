import 'package:ebookui/constants/constants.dart';
import 'package:ebookui/models/trending_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {

  TrendingModel trendingModel = TrendingModel();
  DetailScreen({this.trendingModel});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {


  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        backgroundColor: kBackground,
        title: Text("Details",style: TextStyle(color: kTextColor,fontWeight: FontWeight.bold,fontSize: 24),),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(icon:Icon( Icons.arrow_back_ios),color: kTextColor,onPressed: ()=>Navigator.pop(context),),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Column(
              children: [
                Text("Top E-Book Reading",style: TextStyle(color: kTextColor,fontSize: 24,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),

                Hero(tag: widget.trendingModel.image,child: Center(child: widget.trendingModel.image)),
              ],
            ),



            Container(

              width: width,
              decoration: BoxDecoration(
                  color: kPrimary,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text("\$${widget.trendingModel.price}0",style: TextStyle(color: Colors.yellow,fontSize: 18,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text("${widget.trendingModel.bookName}",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        Icon(Icons.bookmark,color: Colors.white,)
                      ],
                    ),
                    Text("${widget.trendingModel.author}",style: TextStyle(color:kTextColor,fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("Ratings",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Text("4.2",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold))
                                ],
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              Text("Number Of Pages",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                              Text("120 Pages",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold))


                            ],
                          ),
                          Column(
                            children: [
                              Text("Languages",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                              Text("English",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold))


                            ],
                          ),
                        ],
                      ),
                    ),

                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        style: TextStyle(color:Colors.white,fontSize: 20)),
                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("QTY",style: TextStyle(color: Colors.white,fontSize: 20),),
                            SizedBox(width: 20,),
                            Container(
                              width: 100,
                                height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        if (_counter > 1) _decrementCounter();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30.0),
                                                bottomLeft: Radius.circular(30.0))),
                                        child: Text(
                                          "-",
                                          style: TextStyle(fontSize: 35),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                            "$_counter",
                                            style: TextStyle(fontSize: 30),
                                          )),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        _incrementCounter();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30.0),
                                                bottomLeft: Radius.circular(30.0))),
                                        child: Text(
                                          "+",
                                          style: TextStyle(fontSize: 35),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              color: kTextColor,
                              borderRadius: BorderRadius.circular(10)),
                          child:Center(child: FittedBox(child: Text("Add to Cart",style: TextStyle(fontSize: 20,color: Colors.white),))),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),


            // Row(
            //   children: [
            //
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             Text("${widget.trendingModel.bookName}",style: TextStyle(color: kTextColor,fontSize: 20,fontWeight: FontWeight.bold),), Text("By ${widget.trendingModel.author}",style: TextStyle(color: kText2Color,fontSize: 20,fontWeight: FontWeight.bold),),
            //             Row(
            //               children: [
            //                 Icon(Icons.star,color: Colors.yellow,),
            //                 Icon(Icons.star,color: Colors.yellow,),
            //                 Icon(Icons.star,color: Colors.yellow,),
            //                 Icon(Icons.star,color: Colors.yellow,),
            //                 Icon(Icons.star,color: Colors.grey,),
            //
            //               ],
            //             ),
            //             Text("\$ ${widget.trendingModel.price}0",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            //
            //           ],
            //         ),
            //
            //         ElevatedButton(
            //             onPressed: (){},
            //             style: ElevatedButton.styleFrom(primary: Colors.red),
            //             child: Text("Details")),
            //         SizedBox(height: 30,),
            //       ],
            //     ),
            //
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
