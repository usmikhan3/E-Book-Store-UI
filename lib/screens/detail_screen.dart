import 'package:ebookui/constants/constants.dart';
import 'package:ebookui/models/trending_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {

  TrendingModel trendingModel = TrendingModel();
  DetailScreen({this.trendingModel});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
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

          children: [

            Text("Top E-Book Reading",style: TextStyle(color: kTextColor,fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Row(
              children: [
                Hero(tag: widget.trendingModel.image,child: Center(child: widget.trendingModel.image)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("${widget.trendingModel.bookName}",style: TextStyle(color: kTextColor,fontSize: 20,fontWeight: FontWeight.bold),), Text("By ${widget.trendingModel.author}",style: TextStyle(color: kText2Color,fontSize: 20,fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.grey,),

                          ],
                        ),
                        Text("\$ ${widget.trendingModel.price}0",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

                      ],
                    ),

                    ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Text("Details")),
                    SizedBox(height: 30,),
                  ],
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
