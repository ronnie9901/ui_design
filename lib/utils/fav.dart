import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design/main.dart';
import 'package:ui_design/utils/addcard.dart';
import 'package:ui_design/utils/addtobag.dart';
import 'package:ui_design/utils/color.dart';
import 'package:ui_design/utils/homescreen.dart';
import 'package:ui_design/utils/row.dart';
class favsreen extends StatefulWidget {
  const favsreen({super.key});
  @override
  State<favsreen> createState() => _favsreenState();
}
class _favsreenState extends State<favsreen> {
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
                Text('discover',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ],
            ),
            Column(
              children: [

                InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Addtocart()));
                },
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                ),
                Text('bag',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 30,
                ),
                Text('favoritirs',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.account_box_outlined,
                  color: Colors.white,
                ),
                Text('profile',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: uicolor,
        leading: InkWell(onTap: () {
            Navigator.of(context).pop();
        },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        height: 900,
        padding: EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                fav.length,
                (index) => Row1(
                  name: fav[index]['name'],
                  price: fav[index]['price'],
                  img: fav[index]['image'],
                  index: index,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget Row1(
      {required String name, required int price, required String img , required int index }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 10),
            margin:EdgeInsets.all(5) ,
            height: 200,
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      fav[index]['image'],
                  ),
                ),
                color: Colors.white12,
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(

              children: [
                Text(
                  'new colors  ',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                Column(
                  children: [],
                )
              ],
            ),
            Text(
               fav[index]['name'],
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'powerful Sound.Perfect Fit',
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Color : Transparent ',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
             fav[index]['price'].toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Container(
              width: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                           cardlist.add(product1[index]);
                           cardlist.add(product2[index]);
                      });
                    },
                    child: Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          CupertinoIcons.shopping_cart,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
