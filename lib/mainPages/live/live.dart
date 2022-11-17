import 'package:flutter/material.dart';
import 'LchildCpns/ldata.dart';

class live extends StatefulWidget {
  const live({super.key});

  @override
  State<live> createState() => _liveState();
}

class _liveState extends State<live> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "生活",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: IconButton(
          //左侧按钮图标
          icon: const Icon(
            Icons.water_drop,
            color: Color.fromARGB(255, 244, 241, 50),
          ),
          onPressed: () {
            print("左侧的按钮图标");
          },
        ),
        actions: [
          //右侧按钮图标
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              print("客服");
            },
          ),
          IconButton(
            icon: const Icon(Icons.person,
                color: Color.fromARGB(255, 98, 94, 94)),
            onPressed: () {
              print("设置图标");
            },
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(child: Text("关注", style: TextStyle(color: Colors.black))),
            Tab(child: Text("发现", style: TextStyle(color: Colors.black))),
            Tab(child: Text("直播", style: TextStyle(color: Colors.black)))
          ],
        ),
        // bottom: ,
      ),
      body:  const Wpage(),
    )
    );
  }
}

class Wpage extends StatelessWidget {
  const Wpage({Key? key}) : super(key: key);
  List<Widget> _getListData() {
    var tempList = ldata.map((value) {
      return Container(

        decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
        child: Column(
          children: <Widget>[
            Image.network(value["imagerUrl"]),
            const SizedBox(height: 12),
            Text(
              value['author'],
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 10),
            ),
            Text(
              value['title'],
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 7),
            )
          ],
        ),
      );
    });
// ('xxx','xxx')
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10.0, //水平子 Widget 之间间距
      mainAxisSpacing: 10.0, //垂直子 Widget 之间间距
      padding: const EdgeInsets.all(10),
      crossAxisCount: 2, //一行的 Widget 数量
// childAspectRatio:0.7, //宽度和高度的比例
      children: _getListData(),
    );
  }
}
// class LayoutDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //TODO: implement build
//     return ListView(
//       children: ldata.map((value) {
//         return Card(
//             margin: EdgeInsets.all(10),
//             child: Column(
//               children: <Widget>[
//                 AspectRatio(
//                   aspectRatio: 16 / 9,
//                   child: Image.network(
//                     value["imagerUrl"],
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 ListTile(
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(value["imagerUrl"]),
//                     ),
//                     title: Text(value["title"]),
//                     subtitle: Text(value["author"]))
//               ],
//             ));
//       }).toList(), 
//     );
//   }
// }

