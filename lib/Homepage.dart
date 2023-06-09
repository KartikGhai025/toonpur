import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'custom_card.dart';
import 'data.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
      CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: appBgColor,
            pinned: true,
            snap: false,
            floating: true,
            title: getHeader(),
          ),
          SliverToBoxAdapter(
              child: getBody()
          )
        ],
      );
  }

  getHeader(){
    return
      Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Welcome!",
                    style: TextStyle(color: darker, fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text("My Toon App",
                    style: TextStyle(color: Colors.black87, fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
  }

  getBody(){
    return
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Expanded(
                      child: CustomTextBox(hint: "Search", prefix: const Icon(Icons.search, color: Colors.grey), )
                  ),

                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 0),
              child: listCategories(),
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Popular", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  Text("See all", style: TextStyle(fontSize: 14, color: darker),),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            listPopulars(),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Anime", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  Text("See all", style: TextStyle(fontSize: 14, color: darker),),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            listRecommended(),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Recent", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  Text("See all", style: TextStyle(fontSize: 14, color: darker),),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            listRecent(),
            const SizedBox(height: 100,),
          ],
        ),
      );
  }

  int selectedCategory = 0;
  listCategories(){
    List<Widget> lists = List.generate(categories.length,
            (index) => CategoryItem(data: categories[index], selected: index == selectedCategory,
          onTap: (){
            setState(() {
              selectedCategory =  index;
            });
          },
        )
    );
    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(bottom: 5, left: 15),
        child: Row(
            children: lists
        ),
      );
  }

  listPopulars(){
    return
      CarouselSlider(
          options: CarouselOptions(
            height: 240,
            enlargeCenterPage: true,
            disableCenter: true,
            viewportFraction: .8,
          ),
          items: List.generate(populars.length, (index) => PropertyItem(data: populars[index]))
      );
  }

  listRecommended(){
    List<Widget> lists = List.generate(recommended.length,
            (index) => RecommendItem(data: recommended[index])
    );

    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(bottom: 5, left: 15),
        child: Row(
            children: lists
        ),
      );
  }

  listRecent(){
    List<Widget> lists = List.generate(recents.length,
            (index) => RecentItem(data: recents[index])
    );

    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(bottom: 5, left: 15),
        child: Row(
            children: lists
        ),
      );
  }

}