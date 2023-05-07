import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:duck_cart/creator.dart';
import 'package:duck_cart/util.dart';

class AllCreatorsScreen extends StatelessWidget {
  const AllCreatorsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final creatorsProvider = Get.put(CreatorsProvider());
    final creators = creatorsProvider.creators;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(Icons.menu),
            SizedBox(
              width: 50,
            ),
            Text("TIOBU"),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Recommended Youtubers",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: creators.length,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    // If the index is even, create a new row
                    int nextIndex = index + 1;
                    if (nextIndex >= creators.length) {
                      // If the last element of the list is an odd index, return a single tile
                      return Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Profile(name: creators[index].name, profession: creators[index].profession,tagline: creators[index].tagline,profileImageUrl: creators[index].profileImageUrl,),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]);
                    } else {
                      // If the next index is within the list bounds, create two tiles side by side
                      return Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Profile(name: creators[index].name, profession: creators[index].profession, tagline: creators[index].tagline,profileImageUrl: creators[index].profileImageUrl,),
                            Profile(name: creators[index+1].name, profession: creators[index+1].profession, tagline: creators[index+1].tagline,profileImageUrl: creators[index].profileImageUrl,),
                            
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]);
                    }
                  } else {
                    // If the index is odd, it was already included in a previous row
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
