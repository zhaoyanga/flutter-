import 'dart:async';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  Carousel({super.key});

  @override
  State<Carousel> createState() => _Carousel();
}

class _Carousel extends State<Carousel> {
  List _images = [
    "assets/images/3.0x/img_3.png",
    "assets/images/3.0x/img_4.png",
    "assets/images/3.0x/img_5.png",
    "assets/images/3.0x/img_8.png",
  ];
  late PageController _pageController;
  late Timer _timer;
  int activePage = 1;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8,initialPage: 1);
    if (_images.length > 0) {
      _setTimer();
    }
  }
  //设置定时器
  _setTimer() {
    _timer = Timer.periodic(Duration(seconds: 4), (_) {
      _pageController.animateToPage(activePage + 1,
          duration: Duration(milliseconds: 400), curve: Curves.easeOut);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    List addedImages = [];
    if (_images.length > 0) {
      addedImages
        ..add(_images[_images.length - 1])
        ..addAll(_images)
        ..add(_images[0]);
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 240,
          child: PageView.builder(
            itemCount: addedImages.length,
            pageSnapping: true,
            controller: _pageController,
            itemBuilder: (BuildContext context,int index) {
              return Container(//所以就加了一个底层，，底层用透明度控制，给0.7透明度
                margin: EdgeInsets.all(10),
                child: Opacity(
                  opacity: index == activePage ? 1 : 0.5,
                  //给颜色
                  child: Image.asset(addedImages[index],fit: BoxFit.contain),
                ),
              );
            },
            onPageChanged:(int page) {
              int newIndex;
              if (page == addedImages.length - 1) {
                newIndex = 1;
                _pageController.jumpToPage(newIndex); // 到指定下标的位置
              } else if (page == 0) {
                newIndex = addedImages.length - 2;
                _pageController.jumpToPage(newIndex);
              } else {
                newIndex = page;
              }
              setState(() {
                activePage = newIndex;
              });
            },
          ),
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/3.0x/img_9.png"),
                          ),
                        ),
                        height: 66,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16,right: 16,bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "每日商店",
                                style: TextStyle(color: Colors.white,fontSize: 24),
                              ),
                              const Spacer(),
                              Text(
                                "全部 >",
                                style: TextStyle(color: Colors.white,fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 8,bottom: 24),
                          child: Row(
                              children: [
                                Stack(
                                  alignment:Alignment.bottomLeft,
                                  children: [
                                    Container(
                                      child: Image.asset("assets/images/3.0x/img_10.png",fit: BoxFit.cover,),
                                      height: 160,
                                      width: 250,
                                    ),
                                    Positioned(
                                      child: Container(
                                        child: Image.asset("assets/images/3.0x/img_12.png",fit: BoxFit.cover,),
                                        height: 160,
                                        width: 250,
                                      ),
                                    ),
                                    Positioned(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 8,bottom: 8),
                                          child: Text("收藏家",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                              )
                                          ),
                                        )
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom:  8),
                                      child: Stack(
                                        alignment:Alignment.bottomLeft,
                                        children: [
                                          Container(
                                            child: Image.asset("assets/images/3.0x/img_11.png",fit: BoxFit.cover,),
                                            height: 75,
                                            width: 110,
                                          ),
                                          Positioned(
                                            child: Container(
                                              child: Image.asset("assets/images/3.0x/img_12.png",fit: BoxFit.cover,),
                                              height: 75,
                                              width: 110,
                                            ),
                                          ),
                                          Positioned(
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 8,bottom: 8),
                                                child: Text("收藏家",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                    )
                                                ),
                                              )
                                          )
                                        ],
                                      ),
                                    ),
                                    Stack(
                                      alignment:Alignment.bottomLeft,
                                      children: [
                                        Container(
                                          child: Image.asset("assets/images/3.0x/img_11.png",fit: BoxFit.cover,),
                                          height: 75,
                                          width: 110,
                                        ),
                                        Positioned(
                                          child: Container(
                                            child: Image.asset("assets/images/3.0x/img_12.png",fit: BoxFit.cover,),
                                            height: 75,
                                            width: 110,
                                          ),
                                        ),
                                        Positioned(
                                            child: Padding(
                                              padding: EdgeInsets.only(left: 8,bottom: 8),
                                              child: Text("收藏家",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                  )
                                              ),
                                            )
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ]
                          )
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only( top: 11,bottom: 15),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom:BorderSide(width: 1.0, color: Color(0x3C3C3C3c))
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/3.0x/img_9.png"),
                          ),
                        ),
                        height: 66,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16,right: 16,bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "每日商店",
                                style: TextStyle(color: Colors.white,fontSize: 24),
                              ),
                              const Spacer(),
                              Text(
                                "全部 >",
                                style: TextStyle(color: Colors.white,fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 8,bottom: 24),
                          child: Row(
                              children: [
                                Stack(
                                  alignment:Alignment.bottomLeft,
                                  children: [
                                    Container(
                                      child: Image.asset("assets/images/3.0x/img_10.png",fit: BoxFit.cover,),
                                      height: 160,
                                      width: 250,
                                    ),
                                    Positioned(
                                      child: Container(
                                        child: Image.asset("assets/images/3.0x/img_12.png",fit: BoxFit.cover,),
                                        height: 160,
                                        width: 250,
                                      ),
                                    ),
                                    Positioned(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 8,bottom: 8),
                                          child: Text("收藏家",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                              )
                                          ),
                                        )
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom:  8),
                                      child: Stack(
                                        alignment:Alignment.bottomLeft,
                                        children: [
                                          Container(
                                            child: Image.asset("assets/images/3.0x/img_11.png",fit: BoxFit.cover,),
                                            height: 75,
                                            width: 110,
                                          ),
                                          Positioned(
                                            child: Container(
                                              child: Image.asset("assets/images/3.0x/img_12.png",fit: BoxFit.cover,),
                                              height: 75,
                                              width: 110,
                                            ),
                                          ),
                                          Positioned(
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 8,bottom: 8),
                                                child: Text("收藏家",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                    )
                                                ),
                                              )
                                          )
                                        ],
                                      ),
                                    ),
                                    Stack(
                                      alignment:Alignment.bottomLeft,
                                      children: [
                                        Container(
                                          child: Image.asset("assets/images/3.0x/img_11.png",fit: BoxFit.cover,),
                                          height: 75,
                                          width: 110,
                                        ),
                                        Positioned(
                                          child: Container(
                                            child: Image.asset("assets/images/3.0x/img_12.png",fit: BoxFit.cover,),
                                            height: 75,
                                            width: 110,
                                          ),
                                        ),
                                        Positioned(
                                            child: Padding(
                                              padding: EdgeInsets.only(left: 8,bottom: 8),
                                              child: Text("收藏家",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                  )
                                              ),
                                            )
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ]
                          )
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only( top: 11,bottom: 15),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom:BorderSide(width: 1.0, color: Color(0x3C3C3C3c))
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/3.0x/img_9.png"),
                          ),
                        ),
                        height: 66,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16,right: 16,bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "每日商店",
                                style: TextStyle(color: Colors.white,fontSize: 24),
                              ),
                              const Spacer(),
                              Text(
                                "全部 >",
                                style: TextStyle(color: Colors.white,fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 8,bottom: 24),
                          child: Row(
                              children: [
                                Stack(
                                  alignment:Alignment.bottomLeft,
                                  children: [
                                    Container(
                                      child: Image.asset("assets/images/3.0x/img_10.png",fit: BoxFit.cover,),
                                      height: 160,
                                      width: 250,
                                    ),
                                    Positioned(
                                      child: Container(
                                        child: Image.asset("assets/images/3.0x/img_12.png",fit: BoxFit.cover,),
                                        height: 160,
                                        width: 250,
                                      ),
                                    ),
                                    Positioned(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 8,bottom: 8),
                                          child: Text("收藏家",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                              )
                                          ),
                                        )
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom:  8),
                                      child: Stack(
                                        alignment:Alignment.bottomLeft,
                                        children: [
                                          Container(
                                            child: Image.asset("assets/images/3.0x/img_11.png",fit: BoxFit.cover,),
                                            height: 75,
                                            width: 110,
                                          ),
                                          Positioned(
                                            child: Container(
                                              child: Image.asset("assets/images/3.0x/img_12.png",fit: BoxFit.cover,),
                                              height: 75,
                                              width: 110,
                                            ),
                                          ),
                                          Positioned(
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 8,bottom: 8),
                                                child: Text("收藏家",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                    )
                                                ),
                                              )
                                          )
                                        ],
                                      ),
                                    ),
                                    Stack(
                                      alignment:Alignment.bottomLeft,
                                      children: [
                                        Container(
                                          child: Image.asset("assets/images/3.0x/img_11.png",fit: BoxFit.cover,),
                                          height: 75,
                                          width: 110,
                                        ),
                                        Positioned(
                                          child: Container(
                                            child: Image.asset("assets/images/3.0x/img_12.png",fit: BoxFit.cover,),
                                            height: 75,
                                            width: 110,
                                          ),
                                        ),
                                        Positioned(
                                            child: Padding(
                                              padding: EdgeInsets.only(left: 8,bottom: 8),
                                              child: Text("收藏家",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                  )
                                              ),
                                            )
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ]
                          )
                      ),
                    ],
                  )
                ],
              ),
            )
        )
      ],
    );
  }
}