// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import './SearchAppBar.dart';
import 'package:fangalipay/mainPages/data/itFont.dart';
// import './ffa.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            //左侧按钮图标
            icon: const Icon(Icons.arrow_drop_down_outlined),
            onPressed: () {
              print("左侧的按钮图标");
            },
          ),
          backgroundColor: Color.fromARGB(255, 27, 130, 209),
          title: const SearchAppBar(),
          // title: SearchAppBar(hintlabel: "asxa"),
          actions: [
            //右侧按钮图标
            IconButton(
              icon: const Icon(Icons.add_circle_outline),
              onPressed: () {
                print("搜索图标");
              },
            )
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              // color: Colors.red,
              height: 100,
              child: Expanded(child: mylist()),
            ),
            const SizedBox(
              height: 200,
              child: Expanded(child: neir()),
            ),
            const SizedBox(
              height: 200,
              child: Expanded(child: xinxiaox()),
            ),
            const SizedBox(
              height: 200,
              child: Expanded(child: jcai()),
            ),
            const SizedBox(
              // color: Colors.red,
              height: 200,
              child: Expanded(child: PageViewPage()),
            ),
            // Container(),
            // Container(),
            // const Expanded(child: neir()),
            // const Expanded(child: xinxiaox()),
            // const Expanded(child: jcai()),
            // const Expanded(child: PageViewPage()),

            // mylist()
          ],
        ));
  }
}

class mylist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 100,
          height: 20,
          alignment: Alignment.center,
          // child: Text('有背景图'),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 187, 244, 54),
            image: DecorationImage(
              image: AssetImage('images/sys.jpg'),
              fit: BoxFit.fill, // 完全填充
            ),
          ),
          // color: Colors.yellow,
        ),
        Container(
          height: 20,
          width: 100,
          alignment: Alignment.center,
          // child: Text('有背景图'),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 187, 244, 54),
            image: DecorationImage(
              image: AssetImage('images/sfk.jpg'),
              fit: BoxFit.fill, // 完全填充
            ),
          ),
        ),
        Container(
          height: 20, alignment: Alignment.center,
          // child: Text('有背景图'),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 187, 244, 54),
            image: DecorationImage(
              image: AssetImage('images/cx.jpg'),
              fit: BoxFit.fill, // 完全填充
            ),
          ),
          width: 100,
        ),
        Container(
          height: 20,
          width: 100,
          alignment: Alignment.center,
          // child: Text('有背景图'),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 187, 244, 54),
            image: DecorationImage(
              image: AssetImage('images/kabao.jpg'),
              fit: BoxFit.fill, // 完全填充
            ),
          ),
        ),
        Container(
          height: 20,
          width: 100,
          color: Colors.lightBlue,
        )
      ],
    );
  }
}

class csc extends StatefulWidget {
  const csc({super.key});

  @override
  State<csc> createState() => _cscState();
}

class _cscState extends State<csc> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const <Widget>[
          Icon(
            Icons.crop_square,
            color: Colors.blue,
            size: 52,
          ),
          // SizedBox(width: 60,),
          Icon(Icons.crop_square, color: Colors.blue, size: 52),
          Icon(Icons.crop_square, color: Colors.blue, size: 52),
          Icon(Icons.crop_square, color: Colors.blue, size: 52),
        ],
      ),
      // child: mylist(),
    );
  }
}

class neir extends StatelessWidget {
  const neir({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: new NeverScrollableScrollPhysics(),
      crossAxisCount: 5,
      childAspectRatio: 6 / 5,
      children: const [
        Icon(
          Icons.pedal_bike,
          color: Colors.red,
          size: 39,
        ),
        Icon(
          Icons.home,
          color: Colors.blue,
          size: 39,
        ),
        Icon(
          Icons.ac_unit,
          color: Color.fromARGB(255, 114, 226, 118),
          size: 39,
        ),
        Icon(
          Icons.search,
          color: Colors.blue,
          size: 39,
        ),
        Icon(
          Icons.airport_shuttle,
          color: Color.fromARGB(255, 67, 136, 193),
          size: 39,
        ),
        Icon(
          Icons.all_inclusive,
          color: Color.fromARGB(255, 86, 143, 190),
          size: 39,
        ),
        Icon(
          Icons.beach_access,
          color: Colors.blue,
          size: 39,
        ),
        Icon(
          Icons.cake,
          color: Color.fromARGB(255, 54, 244, 222),
          size: 39,
        ),
        Icon(
          Icons.circle_notifications,
          color: Colors.red,
          size: 39,
        ),
        Icon(
          Icons.cake,
          color: Color.fromARGB(255, 216, 81, 71),
          size: 39,
        ),
        Icon(
          Icons.ac_unit,
          color: Colors.red,
          size: 39,
        ),
        Icon(
          Icons.search,
          color: Color.fromARGB(255, 233, 156, 22),
          size: 39,
        ),
        Icon(
          Icons.airport_shuttle,
          color: Color.fromARGB(255, 248, 185, 13),
          size: 39,
        ),
        Icon(
          Icons.all_inclusive,
          color: Colors.red,
          size: 39,
        ),
        Icon(
          ItIcon.gennduo,
          color: Color.fromARGB(255, 95, 90, 90),
          size: 39,
        ),
      ],
    );
  }
}

class zuijxiaox extends StatefulWidget {
  const zuijxiaox({super.key});

  @override
  State<zuijxiaox> createState() => _zuijxiaoxState();
}

class _zuijxiaoxState extends State<zuijxiaox> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});
  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  List<Widget> pageList = [];
  @override
  void initState() {
    List listData = [
      {
        "imageUrl":
            'https://gd-hbimg.huaban.com/77b82143f9fa682d053cce1dce4854888753d08618ea3c-vNILly_fw658',
      },
      {
        "imageUrl":
            'https://gd-hbimg.huaban.com/1aafc881e6abd416917e5752d2fbc273eccac5e0329ea-MeeHhL_fw658',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/3.png',
      }
    ];
    for (int i = 0; i < listData.length; ++i) {
      pageList.add(PicturePage(
        url: listData[i]["imageUrl"],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text("pageview演示"),
        // ),
        body: ListView(
      children: [Swiper(pageList: pageList)],
    ));
  }
}

//Swiper组件
class Swiper extends StatefulWidget {
  final double width;
  final double height;
  final List<Widget> pageList;
  const Swiper(
      {super.key,
      this.width = double.infinity,
      this.height = 200,
      required this.pageList});
  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  int _currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: PageView.builder(
              onPageChanged: (int index) {
                setState(() {
                  _currentPageIndex = index % (widget.pageList.length);
                });
              },
              itemCount: 10000,
              itemBuilder: (context, index) {
                return widget.pageList[index % (widget.pageList.length)];
              }),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.pageList.length, (i) {
              return Container(
                margin: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPageIndex == i ? Colors.blue : Colors.grey),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

//PicturePage 图片页面
class PicturePage extends StatefulWidget {
  final String url;
  final double width;
  final double height;
  const PicturePage(
      {super.key,
      required this.url,
      this.width = double.infinity,
      this.height = 200});
  @override
  State<PicturePage> createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  @override
  Widget build(BuildContext context) {
    print(widget.url);
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Image.network(widget.url, fit: BoxFit.cover),
    );
  }
}

class xinxiaox extends StatefulWidget {
  const xinxiaox({super.key});

  @override
  State<xinxiaox> createState() => _xinxiaoxState();
}

class _xinxiaoxState extends State<xinxiaox> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Card(
        margin: EdgeInsets.all(10), //表示边界距离
        child: Column(
          children: const <Widget>[
            // AspectRatio(
            //   aspectRatio: 16/9, //调整宽高比
            //   child:Image.network("http://img1.izaoxing.com/allimg/c190122/154Q51262OG0-c029.jpg",fit: BoxFit.cover,)//图像铺满
            // ),
            ListTile(
              title: Text(
                "最新消息",
                style: TextStyle(fontSize: 12),
              ),
              trailing: SizedBox(
                width: 110,
                child: Text(
                  "还有22条未读消息  >",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 79, 79, 79)),
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://gd-hbimg.huaban.com/7f2c402f79875cae577515c00a3cdcb191abdece7f7e-gKMPia_fw658")),
              title: Text('芭芭农场',
                  style: TextStyle(color: Colors.black),
                  textDirection: TextDirection.ltr),
              // subtitle: Text('工程师'),
              trailing: SizedBox(
                width: 50,
                child: Text(
                  "1小时前",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 8, color: Color.fromARGB(255, 79, 79, 79)),
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://gd-hbimg.huaban.com/7f2c402f79875cae577515c00a3cdcb191abdece7f7e-gKMPia_fw658")),
              title: Text('蚂蚁森林',
                  style: TextStyle(color: Colors.black),
                  textDirection: TextDirection.ltr),
              // subtitle: Text('工程师'),
              trailing: SizedBox(
                width: 50,
                child: Text(
                  "2小时前",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 8, color: Color.fromARGB(255, 79, 79, 79)),
                ),
              ),
            )
          ],
        ),
      ),
    ]); //
  }
}

class jcai extends StatefulWidget {
  const jcai({super.key});

  @override
  State<jcai> createState() => _jcaiState();
}

class _jcaiState extends State<jcai> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Card(
        margin: EdgeInsets.all(10), //表示边界距离
        child: Column(
          children: const <Widget>[
            // AspectRatio(
            //   aspectRatio: 16/9, //调整宽高比
            //   child:Image.network("http://img1.izaoxing.com/allimg/c190122/154Q51262OG0-c029.jpg",fit: BoxFit.cover,)//图像铺满
            // ),
            ListTile(
              title: Text(
                "发现精彩",
                style: TextStyle(fontSize: 12),
              ),
              trailing: SizedBox(
                width: 50,
                child: Text(
                  "***",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 79, 79, 79)),
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://gd-hbimg.huaban.com/7f2c402f79875cae577515c00a3cdcb191abdece7f7e-gKMPia_fw658")),
              title: Text('海苔肉松卷250g',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textDirection: TextDirection.ltr),
              subtitle: Text('0元付邮购'),
            ),
            ListTile(
              title: Text(
                "千丝品牌福利社",
                style: TextStyle(fontSize: 12),
              ),
              trailing: SizedBox(
                width: 100,
                child: Text(
                  "超一万人使用  >",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 79, 79, 79)),
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
