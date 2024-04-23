import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'addcard.dart';
import 'color.dart';

class profilesreen extends StatefulWidget {
  const profilesreen({super.key});

  @override
  State<profilesreen> createState() => _profilesreenState();
}

class _profilesreenState extends State<profilesreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.black12,
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
                  setState(() {
                    Navigator.of(context).pushNamed('/addtocart');
                  });
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
                InkWell(onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('/fav');
                  });
                },
                  child:Icon(
                  Icons.favorite_border,
                  color: Colors.white,

                ),
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
                  size: 30,
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
        backgroundColor: Colors.black26,
        leading: InkWell(onTap: () {
          Navigator.of(context).pop();
        },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),

      ),
      body:  SingleChildScrollView(
        child: Column(


          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              width: double.infinity,

              decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(10)

              ),



              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(

                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                            image: AssetImage(
                                'asset/67557-3840x2160-desktop-4k-zayn-malik-background.jpg'
                            )
                        ),
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(10)

                    ),
                  ),

                  Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('  Zayn Malik ',style: TextStyle(color:  Colors.white ,fontSize: 18),),
                      Text('  show profile ',style: TextStyle(color:  Colors.blue ),),
                    ],
                  ),
                  SizedBox(width: 120,),
                  Icon(Icons.arrow_back_ios,color: Colors.white,)



                ],

              ),
            ),
            Column(

              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Settings ',style: TextStyle(
                            color: Colors.white,fontSize: 20
                        ),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Padding(padding: EdgeInsets.only(left: 10)),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [ Icon(CupertinoIcons.profile_circled,color: Colors.white,),
                                        Text('  personal details ',style: TextStyle( fontSize: 15,color: Colors.white),),],
                                    ),
                                    Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,)
                                  ],
                                ),
                              )
                          ),
                        )
                      ],
                    ),

                  ),


                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

