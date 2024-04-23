import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design/utils/color.dart';
import 'package:ui_design/utils/fav.dart';
import 'package:ui_design/utils/homescreen.dart';

class Addtocart extends StatefulWidget {
  const Addtocart({super.key});

  @override
  State<Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  @override
  void initState() {
    // TODO: implement initState
    for(int i=0; i<cardlist.length; i++)
      {
         total = (total+cardlist[i]['price']).toInt();

      }
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uicolor,

      appBar: AppBar(
        centerTitle: true,

        backgroundColor: uicolor,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
            total=0;
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text('Add Card',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 550,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                        cardlist.length,
                        (index) => addtoproduct(
                            img: cardlist[index]['image'],
                            name: cardlist[index]['name'],
                            price: cardlist[index]['price'],
                            index: index)),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(

                color: Colors.white54,
                borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),

              ),
               child: Text(' totol amount : Rs.$total/-',style: TextStyle(fontSize: 20),),
            ),

          ],
        ),
      ),
    );
  }

  Widget addtoproduct(
      {String? img, int? price, String? name, required int index}) {
    return Container(
      // height: ,
      // color: Colors.red,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
         margin: EdgeInsets.only(left: 30),
            height: 200,
            width: 130,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(cardlist[index]['image']),
                ),
                color: Colors.white12,
                borderRadius: BorderRadius.circular(10)),
          ),

          Container(
            height: 200,
            margin: EdgeInsets.only(left:15,top: 20),
            // color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'new colors  ',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => favsreen()));

                      },
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [],
                    )
                  ],
                ),
                Text(
                  cardlist[index]['name'],
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  ' powerful Sound.Perfect Fit',
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  ' Color : Transparent ',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  cardlist[index]['price'].toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    InkWell(onTap: () {
                      setState(() {
                        cardlist[index]['qty']++;
                        total = (total+cardlist[index]['price']).toInt();
                      });
                    },
                      child: Container(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.add,color: Colors.white,),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                       child: Text('${ cardlist[index]['qty']}',style: TextStyle(fontSize: 18),),
                    ),
                    SizedBox(width: 10,),
                    InkWell(onTap: () {
                        setState(() {
                          if(cardlist[index]['qty']>1) {
                            cardlist[index]['qty']--;
                            total = (total-cardlist[index]['price']).toInt();
                          }
                        });
                      },
                     child: Icon(Icons.remove,color: Colors.white,)),
                  ],

                ),

                Container(
                  width: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                total = (total-cardlist[index]['price']).toInt();
                                cardlist[index]['qty'] = 1;
                                cardlist.removeAt(index);
                              });
                            },
                            child: Icon(
                              CupertinoIcons.delete,
                              color: Colors.red,
                            ),
                          ))
                    ],

                  ),


                ),
              ],

            ),
          ),

        ],

      ),
    );
  }
}
int total=0;
int a=0;


