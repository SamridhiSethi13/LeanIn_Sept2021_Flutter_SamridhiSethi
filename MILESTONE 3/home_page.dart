import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants/constant.dart';
import 'package:shopping_app/widgets/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody()
  {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              width: size.width,
              height: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(homeImg),
                  fit: BoxFit.cover)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.favorite,
                    size: 32,
                    color: Colors.white,
                  ),
                  SizedBox(width: 15,),
                  Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "WINTER COLLECTION", 
                      style: TextStyle(
                        fontSize: 25, 
                        color: Colors.white, 
                        fontWeight: FontWeight.bold),
                      ),
                    const SizedBox(height: 10,),
                    Row(
                      children: const [
                        Text(
                          "DISCOVER", 
                          style: TextStyle(
                            fontSize: 16, 
                            color: Colors.white, 
                            fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5,),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 19,
                        )
                      ],
                    )
                  ],
                ),
              )
            ),
          ],
        ),
        const SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Categories", 
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Text(
                    "All", 
                    style: TextStyle( 
                      fontSize: 16,
                      color: Colors.grey, 
                    ),
                  ),
                  SizedBox(width: 5,),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18,
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {                  
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    // ignore: sized_box_for_whitespace
                    child: Container(
                        height: 220,
                        width: 180,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(categories[index]['imgUrl']),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            Positioned(
                              bottom: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  categories[index]['title'],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                    ),
                  );
              }
              )
          )
        ),
        const SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recommended For You", 
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Text(
                    "All", 
                    style: TextStyle( 
                      fontSize: 16,
                      color: Colors.grey, 
                    ),
                  ),
                  SizedBox(width: 5,),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18,
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(recommends.length, (index) {                  
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(recommends[index]['imgUrl']),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ), 
                        const SizedBox(height: 5,),
                        // ignore: sized_box_for_whitespace
                        Container(
                          width: 140,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recommends[index]['title'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    height: 1.5),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "\$ " +  recommends[index]['price'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    height: 1.5),
                              ),
                            ],
                          ),
                        )        
                      ],
                    ),                  
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 40,),
        const CustomeCarouselHomePage(
          items: slider,
        ),
        const SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recently Viewed", 
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Text(
                    "All", 
                    style: TextStyle( 
                      fontSize: 16,
                      color: Colors.grey, 
                    ),
                  ),
                  SizedBox(width: 5,),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18,
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(recently.length, (index) {                  
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(recently[index]['imgUrl']),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ), 
                        const SizedBox(height: 5,),
                        // ignore: sized_box_for_whitespace
                        Container(
                          width: 140,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recently[index]['title'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    height: 1.5),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "\$ " +  recently[index]['price'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    height: 1.5),
                              ),
                            ],
                          ),
                        )        
                      ],
                    ),                  
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 30,),
      ],
    );
  }
}