import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sidebarx/sidebarx.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1498429089284-41f8cf3ffd39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1555400038-63f5ba517a47?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1570789210967-2cac24afeb00?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1598135753163-6167c1a1ad65?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
    'https://images.unsplash.com/photo-1517309230475-6736d926b979?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1547471080-7cc2caa01a7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'
  ];

  final List<String> imgText = [
    'Yosemite and its beauty',
    'Diving in precious place',
    'Summer in Bahamas',
    'Yokohama in swipe',
    'Bali and Waves',
    'Raja ampat and Queen'
  ];

  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: _key,
        drawer: SidebarX(
          controller: SidebarXController(
            selectedIndex: 0,
          ),
          items: const [
            SidebarXItem(icon: Icons.home, label: 'Home'),
            SidebarXItem(icon: Icons.search, label: 'Search'),
          ],
        ),
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            _key.currentState?.openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Color.fromRGBO(108, 74, 182, 1),
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                        ),
                        Image.asset(
                          'assets/image/logo2.png',
                          scale: 7.5,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/image/image.jfif',
                            width: 35,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: imgList
                          .map((item) => Container(
                                child: Center(
                                    child: Image.network(
                                  item,
                                  fit: BoxFit.cover,
                                  width: 1000,
                                )),
                              ))
                          .toList(),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Recommended',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'LatoBold',
                              fontWeight: FontWeight.w800,
                              color: Color.fromRGBO(67, 67, 67, 1)),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            color: Color.fromRGBO(108, 74, 182, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Card(
                            elevation: 2.0,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/slider/1.png',
                                            width: 150,
                                            height: 100,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          right:
                                              10, //give the values according to your requirement
                                          child: Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Bedugul, Bali',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'LatoBlack',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.pin_drop,
                                          color:
                                              Color.fromRGBO(108, 74, 182, 1),
                                          size: 15,
                                        ),
                                        Text(
                                          'Indonesia',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'LatoBold',
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ]),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Card(
                            elevation: 2.0,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/slider/2.png',
                                            width: 150,
                                            height: 100,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          right:
                                              10, //give the values according to your requirement
                                          child: Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Yosemite',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'LatoBlack',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.pin_drop,
                                          color:
                                              Color.fromRGBO(108, 74, 182, 1),
                                          size: 15,
                                        ),
                                        Text(
                                          'United States',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'LatoBold',
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ]),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Activities Near You',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'LatoBold',
                              fontWeight: FontWeight.w800,
                              color: Color.fromRGBO(67, 67, 67, 1)),
                        ),
                        Text(
                          'Expand',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            color: Color.fromRGBO(108, 74, 182, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        height: 250.0,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: PhotoView(
                                imageProvider: const AssetImage(
                                    "assets/image/mapsbali.png"),
                                maxScale: PhotoViewComputedScale.covered * 2.0,
                                minScale:
                                    PhotoViewComputedScale.contained * 0.8,
                                initialScale: PhotoViewComputedScale.covered,
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right:
                                    10, //give the values according to your requirement
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  height: 40,
                                  width: 40,
                                  child: Icon(
                                    Icons.open_in_full_rounded,
                                    color: Color.fromRGBO(108, 74, 182, 1),
                                    size: 24,
                                  ),
                                )),
                          ],
                        ))
                  ])),
        ));
  }
}
