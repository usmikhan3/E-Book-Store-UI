import 'package:ebookui/constants/constants.dart';
import 'package:ebookui/models/category_model.dart';
import 'package:ebookui/models/trending_model.dart';
import 'package:ebookui/screens/detail_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool isSelect = false;
    Color categoryContainerColor = Color(0xFFCBE5F3);
    Color categoryTextColor =  Color(0xFF305F72);
    List<CategoryModel> categories =[
      CategoryModel(text: "Comics",ContainerColor: categoryContainerColor,textColor: categoryTextColor),
      CategoryModel(text: "Recipe",ContainerColor: categoryContainerColor,textColor: categoryTextColor),
      CategoryModel(text: "Novel",ContainerColor: categoryContainerColor,textColor: categoryTextColor),
      CategoryModel(text: "Biography",ContainerColor: categoryContainerColor,textColor: categoryTextColor),
      CategoryModel(text: "Romance",ContainerColor: categoryContainerColor,textColor: categoryTextColor),
      CategoryModel(text: "History",ContainerColor: categoryContainerColor,textColor: categoryTextColor),

    ];

    List<TrendingModel> trendings = [
      TrendingModel(
        image: Image.asset("assets/images/book1.png",),
        author: "Edward Humes",
        bookName: "Door to Door",
        price: 18.00
      ),
      TrendingModel(
        image: Image.asset("assets/images/book2.png"),
          author: "LORTZ, SARAH",
          bookName: "Day Four",
          price: 20.00
      ),
      TrendingModel(
        image: Image.asset("assets/images/book3.png"),
          author: "Jake Arnott",
          bookName: "The fatal Tree",
          price: 25.00
      ),
      TrendingModel(
        image: Image.asset("assets/images/book4.png"),
          author: "Edward Humes",
          bookName: "Star Trek",
          price: 19.50
      ),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: kBackground,
      body:SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             // Positioned(child: Image.asset("assets/images/blob1.png",height: 250,),right: 250,top: -100,),
             // Positioned(child: Image.asset("assets/images/blob2.png",height: 250),left: 250,top: -100,),
            SizedBox(height: 10,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Image.asset("assets/images/profileIcon.png")
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width:width ,
              height: 40,
              padding: EdgeInsets.only(top: 12,right: 12,left: 12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search Books Here...",
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Categories",style: TextStyle(color: kTextColor,fontWeight: FontWeight.bold,fontSize: 30),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: height/20,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: categories.length,
                  itemBuilder: (_,index){
                    return Ink(
                      child: InkWell(
                        onTap: (){
                          print("pressed");
                          setState(() {

                            categories[index].ContainerColor = kTextColor;
                            categories[index].textColor = Colors.white;

                          });

                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          width: 100,
                          decoration: BoxDecoration(
                              color:categories[index].ContainerColor,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child:FittedBox(fit: BoxFit.contain,child: Text(categories[index].text,style: TextStyle(color:categories[index].textColor),)),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            //
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("Trending Books",style: TextStyle(color: kTextColor,fontWeight: FontWeight.bold,fontSize: 30),),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                primary: false,
                scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: trendings.length,
                  itemBuilder: (_,index){
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DetailScreen(trendingModel: trendings[index],)));

                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(tag: trendings[index].image,child: trendings[index].image),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 8),
                            child: Text(trendings[index].author,style: TextStyle(color: kText2Color,fontSize: 16),),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 8),
                            child: Text(trendings[index].bookName,style: TextStyle(color: kTextColor,fontSize: 18 ,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              height: height * 0.3,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Most Recomended",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        Icon(Icons.more_horiz,color: Colors.white,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: Image.asset("assets/images/book2.png"),
                        title: Text("Day Four",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: kTextColor),),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("By Jake Arnott",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: kText2Color)),
                            Row(
                              children: [
                                Icon(Icons.stars,color: Colors.yellow,),
                                Icon(Icons.stars,color: Colors.yellow,),
                                Icon(Icons.stars,color: Colors.yellow,),
                                Icon(Icons.stars,color: Colors.yellow,),
                                Icon(Icons.stars,color: Colors.grey,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )



          ],
        ),
      ) ,
    );
  }
}
