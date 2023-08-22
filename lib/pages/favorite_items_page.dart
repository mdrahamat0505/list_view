import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tes/models/user_data.dart';

import '../controllers/home_page_controller.dart';

class FavoriteItemsPage extends StatefulWidget {
  const FavoriteItemsPage({Key? key}) : super(key: key);

  @override
  State<FavoriteItemsPage> createState() => _FavoriteItemsPageState();
}

class _FavoriteItemsPageState extends State<FavoriteItemsPage> {
  HomePageController homeC = Get.find();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        toolbarOpacity: 0.0,
        toolbarHeight: 60,
        centerTitle: true,
        elevation: 1,
        // shadowColor: Colors.white,

        leading: IconButton(
          icon: Image.asset(
            'assets/image/back.png',
            height: 24,
            width: 24,
            fit: BoxFit.cover,
          ),
          iconSize: 24,
          onPressed: () {
            Get.back();
          },
          color: Colors.black54,
        ),

        // leading:  const BackButton(
        //   color: Colors.black, // <-- SEE HERE
        // ),
        title: Text(
          'Search',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 14,
            color: Colors.black,
            height: .2,
          ),
        ),

        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark,
          systemNavigationBarDividerColor: Colors.white,
          systemNavigationBarColor: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GetBuilder<HomePageController>(builder: (homeC) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: Container(
                    color: Colors.white,
                    child: Card(
                      child: ListTile(
                        //leading: new Icon(Icons.search),
                        title: TextField(
                          controller: controller,
                          decoration: const InputDecoration(
                              hintText: 'Search', border: InputBorder.none),
                          onChanged: onSearchTextChanged,
                        ),
                        trailing: Icon(Icons.search),
                        // trailing: new IconButton(icon: new Icon(Icons.cancel), onPressed: () {
                        //   controller.clear();
                        //   onSearchTextChanged('');
                        // },),
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: homeC.listElement.length,
                  itemBuilder: (BuildContext context, int index) {
                    return cardWidget(homeC.listElement[index]);
                  },
                ),
              )

              // if(homeC.listElement.isNotEmpty)
              //     for(int i =0; i < homeC.listElement.length; i++)
            ],
          );
        }),
      ),
      // bottomNavigationBar:  Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(bottom: 25.0),
      //       child: ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //             foregroundColor: Colors.white,
      //             backgroundColor: Colors.black,
      //             padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
      //             textStyle: const TextStyle(
      //                 fontSize: 14,
      //                 fontWeight: FontWeight.bold)
      //         ),
      //         onPressed: () {
      //
      //         },
      //         child: const Text('Add Favorite Items'),
      //       ),
      //     ),
      //
      //   ],
      // ),
    );
  }

  Widget cardWidget(ListElement listElement) {
    return Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.123rf.com%2Fphoto_15221647_imag-of-heart-in-the-blue-sky-against-a-background-of-white-clouds.html&psig=AOvVaw0rrtvlJk1BElUkd9j-hXt8&ust=1692796830740000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPj9_9-t8IADFQAAAAAdAAAAABAE"))),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text('Name: '),
                              Text(
                                '${listElement.owner!.name} ',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                width: 70,
                              ),

                              //  Spacer(),
                              IconButton(
                                iconSize: 28,
                                icon: const Icon(Icons.favorite_border),
                                color: Colors.grey,
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
                          Text(
                            '${listElement.share!.shareSource} ',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify,
                          ),
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
                    ]),
                SizedBox(
                  height: 10,
                ),
                Text('Share Dascription:'),
                SizedBox(
                  height: 5,
                ),
                Text('Hello wourld'),
                SizedBox(
                  height: 10,
                ),
              ],
            )));
  }

  onSearchTextChanged(String text) async {
    HomePageController homeC = Get.find();

    if (text.isEmpty) {
      return;
    }
    homeC.listElement.forEach((user) {
      if (user.owner!.name!.contains(text) ||
          user.owner!.name!.contains(text)) {
        homeC.listElement.clear();
        homeC.listElement.value.add(user);
      }
    });

    setState(() {});
  }
}
