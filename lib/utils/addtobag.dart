import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design/utils/addcard.dart';
import 'package:ui_design/utils/color.dart';
import 'package:ui_design/utils/homescreen.dart';



class addsreen extends StatefulWidget {
  const addsreen({super.key});

  @override
  State<addsreen> createState() => _addsreenState();
}
class _addsreenState extends State<addsreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uicolor,
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: uicolor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: AlignmentDirectional.topStart,
              height: 50,
              width: 100,
              child: Text(
                datasend[indexSelect]['price'].toString(),style: TextStyle(color: Colors.white,fontSize: 25),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {

                  // cardlist.add(datasend[indexSelect]);
                  bool st=false;
                  int index=0;
                  for(int i=0;i<cardlist.length;i++)
                    {
                      if(cardlist[i]['name']==datasend[indexSelect]['name'])
                        {
                           index=i;
                           st=true;
                        }
                    }
                  if(st)
                    {
                      cardlist[index]['qty']++;
                    }
                  else
                  {
                    cardlist.add(datasend[indexSelect]);
                  }

                });
                Navigator.of(context).pushNamed('/addtocart');
              },
              child: Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      'Add to Bag ',style: TextStyle(
                    fontWeight: FontWeight.w900
                    ),
                    ),
                    Icon(Icons.shopping_cart_rounded,size: 20,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(

        backgroundColor: uicolor,
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [

          Icon(
            Icons.ios_share,
            color: Colors.white,
          ),
          SizedBox(width: 10,),
          Container(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Addtocart()));
              },
              child: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Icon(

            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: AlignmentDirectional.topStart,
                      colors: [
                        Colors.black12,
                        Colors.white10,

                      ]
                  ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          datasend[indexSelect]['image']
                      ),
                    ),
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(

                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: uicolor,
                          image:DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage(

                                'asset/1-removebg-preview.png',
                              )
                          )
                      ),
                    ),

                    Container(

                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: uicolor,
                          image:DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage(
                                  'asset/3.png'
                              )
                          )
                      ),
                    ),

                    Container(

                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: uicolor,
                        image:DecorationImage(
                          image: AssetImage(
                            'asset/2-removebg-preview.png'
                          )
                        )
                      ),
                    ),

                    Container(

                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: uicolor,
                          image:DecorationImage(
                              image: AssetImage(
                                  'asset/1-removebg-preview.png'
                              )
                          )
                      ),
                    ),
                  ],

                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New',style: TextStyle(color: Colors.red,fontSize: 18),),
                    Text(datasend[indexSelect]['name'],style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text(datasend[indexSelect]['price'].toString(),style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w200),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('Color :',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w200),),
                        Text('  black ',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w100),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 7,),
                        InkWell(onTap: () {
                          setState(() {
                             Navigator.of(context).pushNamed('/asset/images-removebg-preview.png');
                          });
                        },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle
                            ),
                          ),
                        ),
                        SizedBox(width: 7,),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                           border: Border.all(color: Colors.white)


                          ),
                        ),
                        SizedBox(width: 7,),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                  ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.cube_box,color: Colors.white,),
                        SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('free shipping and return ',style: TextStyle(
                                color: Colors.white,fontSize: 17
                              ),),
                              Text('enjoy free 2-day delivery and\n 14-Day return',style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.bag,color: Colors.white,),
                        SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('In store pickup ',style: TextStyle(
                                  color: Colors.white,fontSize: 17
                              ),),
                              Text('enjoy free 2-day delivery and\n 14-Day return',style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}