import 'package:flutter/material.dart';
import './tabViewChild.dart';

class TabViewPage extends StatefulWidget {
  List tabList = []; // tab的名称数组
  TabViewPage({super.key,required this.tabList});
  @override
  State<TabViewPage> createState() => _TabViewPage();
}

class _TabViewPage extends State<TabViewPage> with SingleTickerProviderStateMixin {
  // 选项卡控制器
  late TabController _tabController;
  // 所有tab栏
  List tabsChildren = [
    {
      'id':'1',
      'name':["全部","突击型","侦察型","支援型","防御型"]
    },
    {
      'id':'2',
      'name':["全部","步枪","狙击枪","手枪","机枪","冲锋枪"]
    },
    {
      'id':'3',
      'name':["全部","地图1","地图2","地图3"]
    }
  ];
  // 初始tab栏
  List tabChildList = [
    {
      'id':'1',
      'name':["全部","突击型","侦察型","支援型","防御型"]
    },
  ];
  Map a = {
    0:[
      {
        'img':"assets/images/3.0x/img.png",
        'name':"亡灵",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"寻血犬",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
    ],
    1:[
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'3'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'4'
      }
    ],
    2:[
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'5'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'6'
      }
    ],
    3:[
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'7'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'8'
      }
    ],
    4:[
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'9'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'10'
      }
    ]
  };
  Map b = {
    0:[
      {
        'img':"assets/images/3.0x/img.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      }
    ],
    1:[
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      }
    ],
    2:[
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      }
    ],
    3:[
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      }
    ],
    4:[
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      }
    ],
    5:[
      {
        'img':"assets/images/3.0x/img.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      }
    ],
  };
  Map c = {
    0:[
      {
        'img':"assets/images/3.0x/img.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      }
    ],
    1:[
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      }
    ],
    2:[
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      }
    ],
    3:[
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      }
    ],
  };

  Map propsData = {
    0:[
      {
        'img':"assets/images/3.0x/img.png",
        'name':"亡灵",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"寻血犬",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'1'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'2'
      },
    ],
    1:[
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'3'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'4'
      }
    ],
    2:[
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'5'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'6'
      }
    ],
    3:[
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'7'
      },
      {
        'img':"assets/images/3.0x/img_1.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'8'
      }
    ],
    4:[
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'9'
      },
      {
        'img':"assets/images/3.0x/img_2.png",
        'name':"天际线",
        'context':"引力操纵器",
        'id':'10'
      }
    ]
  };

  //  初始化滑动器
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 48,right: 48),
                child: TabBar(
                  onTap: changeTab,
                  isScrollable: true,
                  labelPadding:const EdgeInsets.symmetric(horizontal: 32),
                  controller: _tabController,
                  // tabs: widget.tabList.asMap().keys.map(_buildTabItem).toList(),
                  tabs: widget.tabList.asMap().keys.map((e) => widget.tabList[e]['name']).toList().asMap().keys.map(_buildTabItem).toList(),
                  indicatorColor: Colors.black,
                  indicatorWeight: 3,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontSize: 16.0,
                  ),
                  unselectedLabelColor: Color(0x3C3C3C3c),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
              // if(!widget.view)
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
              Expanded(
                child: TapViewChildren(tabList: tabChildList[0]['name'],id:tabChildList[0]['id'],key: UniqueKey(),propsData:propsData),
              )
            ]
        )
    );
    // return Column(
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.only(left: 48,right: 48),
    //       child: TabBar(
    //         onTap: changeTab,
    //         isScrollable: true,
    //         labelPadding:const EdgeInsets.symmetric(horizontal: 32),
    //         controller: _tabController,
    //         // tabs: widget.tabList.asMap().keys.map(_buildTabItem).toList(),
    //         tabs: widget.tabList.asMap().keys.map((e) => widget.tabList[e]['name']).toList().asMap().keys.map(_buildTabItem).toList(),
    //         indicatorColor: Colors.black,
    //         indicatorWeight: 3,
    //         indicatorSize: TabBarIndicatorSize.label,
    //         labelColor: Colors.black,
    //         labelStyle: TextStyle(
    //           fontSize: 16.0,
    //         ),
    //         unselectedLabelColor: Color(0x3C3C3C3c),
    //         unselectedLabelStyle: TextStyle(
    //           fontSize: 14.0,
    //         ),
    //       ),
    //     ),
    //     // if(!widget.view)
    //     Container(
    //       child: Padding(
    //         padding: const EdgeInsets.only( top: 11,bottom: 15),
    //         child: Container(
    //           decoration: BoxDecoration(
    //             border: Border(
    //                 bottom:BorderSide(width: 1.0, color: Color(0x3C3C3C3c))
    //             ),
    //         ),
    //       ),
    //     ),
    //     ),
    //     Expanded(
    //         child: TapViewChildren(tabList: tabChildList,)
    //     )
    //   ]
    // );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget _buildTabItem(int index) {
    return Tab(
      text: "${widget.tabList[index]['name']}"
    );
  }

  void changeTab(int index) {
    setState(() {
      int id = widget.tabList[index]['id'];
      tabChildList = tabsChildren.asMap().values.map((e) {
        if(e['id'] == id.toString()) {
          return e;
        }
      }).toList();
      tabChildList.removeWhere((e) => e == null);
      if(index == 0) {
        propsData = a;
      } else if(index == 1) {
        propsData = b;
      } else if(index == 2) {
        propsData = c;
      }
    });
  }
}