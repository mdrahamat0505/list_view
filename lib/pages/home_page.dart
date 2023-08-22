import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes/pages/favorite_items_page.dart';

import '../controllers/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController homeC = Get.find();

  @override
  void initState() {
    homeC.getUserList();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 40,
                child: Row(

                  children: const [
                    SizedBox(
                      child: Text('Hey, Welcome back'),
                    ),
                    Spacer(),
                    Icon(Icons.waving_hand_outlined, color: Colors.amber,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: 40,
                child: Row(
                  children: const [
                    SizedBox(
                      child: Text('Favorite Items'),
                    ),
                  ],
                ),
              ),
            ),
            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(15.0),
                  side: const BorderSide(
                    color: Colors.black12,
                  ),
                ),

                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[

                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration:   BoxDecoration(
                                    shape: BoxShape.circle,
                                    image:  DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.123rf.com%2Fphoto_15221647_imag-of-heart-in-the-blue-sky-against-a-background-of-white-clouds.html&psig=AOvVaw0rrtvlJk1BElUkd9j-hXt8&ust=1692796830740000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPj9_9-t8IADFQAAAAAdAAAAABAE")
                                    )
                                ),),
                              SizedBox(width: 10,),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Name: '),
                                      Text('----:'),
                                      SizedBox(width: 70,),

                                      //  Spacer(),
                                      IconButton(
                                        iconSize: 28,
                                        icon: const Icon(Icons.favorite_border),
                                        color:Colors.grey,
                                        onPressed: () {
                                          // ...
                                        },
                                      ),

                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Share Source: '),
                                    ],
                                  ),
                                  Text('un:'),

                                ],
                              )
                              // Container(
                              //   width: 115.0,
                              //   height: 133.0,
                              //   decoration: BoxDecoration(
                              //     borderRadius:
                              //     const BorderRadius.all(
                              //         Radius.circular(16)),
                              //     color: Colors.white,
                              //   ),
                              //   child: ClipRRect(
                              //     borderRadius:
                              //     BorderRadius.circular(
                              //         16.0),
                              //     child: SizedBox.fromSize(
                              //       size: const Size.fromRadius(
                              //           16),
                              //       child: SizedBox(height: 100,width: 100,),
                              //       // child: Image.network(
                              //       //   '${logic.moviesList.value[i].posterUrl}',
                              //       // )
                              //     ),
                              //   ),
                              // ),

                            ]
                        ),
                        SizedBox(height: 10,),
                        Text('Share Dascription:'),
                        SizedBox(height: 5,),
                        Text('Hello wourld'),
                        SizedBox(height: 10,),

                      ],

                    )


                )

            ),

            //No items to show now.
            //Please add favorite items to see here.




          ],
        ),
      ),
      bottomNavigationBar:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold)
              ),
              onPressed: () {


                Get.to(
                      () => const FavoriteItemsPage(),
                );
              },
              child: const Text('Add Favorite Items'),
            ),
          ),

        ],
      ),
    );
  }
}
