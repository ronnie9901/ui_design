import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/utils/row.dart';
import 'addcard.dart';
import 'addtobag.dart';
import 'color.dart';
import 'fav.dart';

class Homesreen extends StatefulWidget {
  const Homesreen({super.key});
  @override
  State<Homesreen> createState() => _HomesreenState();
}
class _HomesreenState extends State<Homesreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uicolor,
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: uicolor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(
                  Icons.discount,
                  color: Colors.white,
                ),
                Text(
                  'discover',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Addtocart()));
                  },
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'bag',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/fav');
                  },
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'favoritirs',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                InkWell(onTap: () {
                  setState(() {
                     Navigator.of(context).pushNamed('/profile');

                  });
                },
                  child: Icon(
                    Icons.account_box_outlined,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'profile',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: uicolor,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            height: 40,
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xfff1f1f1),
                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: "Search for item",
                contentPadding: EdgeInsets.only(top: 10),
                suffixIcon: Icon(Icons.mic),
                suffixIconColor: Colors.black,
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'asset/air.webp',
                  ),
                ),
                color: Colors.black12,
                borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: uicolor,
            ),
            child: Text(
              'Populaire now',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                  color: Colors.white),
            ),
          ),
          Row(children: [
            ...List.generate(
                product1.length,
                (index) => InkWell(
                    onTap: () {
                      setState(() {
                        indexSelect = index;
                        datasend = product2;
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => addsreen()));
                      });
                    },
                    child: row(
                      index: index,
                      name: product2[index]['name'],
                      price: product2[index]['price'],
                      image: product2[index]['image'],
                    ))),
          ]),
          SizedBox(
            height: 15,
          ),
          Row(
            children: List.generate(
                product1.length,
                (index) => InkWell(
                    onTap: () {
                      setState(() {
                        indexSelect = index;
                        datasend = product1;

                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => addsreen()));
                      });
                    },
                    child: row(
                      index: index,
                      name: product1[index]['name'],
                      price: product1[index]['price'],
                      image: product1[index]['image'],
                    ))),
          )
        ]),
      ),
    );
  }
  Widget row(
      {required String name,
      required int price,
      required String image,
      required int index}) {
    return Row(
      children: [
        Container(
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(left: 10),
            height: 210,
            width: 140,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  colors: [Colors.black12, Colors.white10]),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('New',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                  likeList[index] = !likeList[index];
                                  //  fav.add(product1[indexSelect]);
                                  // // fav.add(datasend[indexSelect]);



                              },
                            );
                          },
                          child: Icon(
                              (likeList[index])
                                  ? likeIcon = Icons.favorite_rounded
                                  : likeIcon = Icons.favorite_outline_rounded,
                              color: (likeList[index])
                                  ? likeColor = Colors.red
                                  : likeColor = Colors.white),
                        ),
                      ],
                    ),
                    Text('$name',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1,
                            color: Colors.white)),
                    Text('Rs.$price/-',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1,
                            color: Colors.white)),
                    SizedBox(
                        height: 120,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ))
                  ]),
            )),
      ],
    );
  }
}
var likeIcon = Icons.favorite_outline_rounded;
var likeColor = Colors.white;
 List likeList = List.generate(product1.length, (index) => false);

var indexSelect;
var datasend;
