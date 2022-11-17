import 'package:flutter/material.dart';
import 'package:fangalipay/mainPages/HomePage/SearchAppBar.dart';
import 'mchildcpns/mdata.dart';

class mmony extends StatefulWidget {
  const mmony({super.key});

  @override
  State<mmony> createState() => _mmonyState();
}

class _mmonyState extends State<mmony> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                //左侧按钮图标
                icon: const Icon(Icons.person),
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
                  icon: const Icon(Icons.card_giftcard),
                  onPressed: () {
                    print("搜索图标");
                  },
                )
              ],
            ),
            body: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // const Mmpage(),
                      // Text("搜索",textAlign: TextAlign.center,
                      //       style: TextStyle(fontSize: 16, color: Color(0xFF3D7DFF))),
                      Container(
                        height: 60,
                        margin: const EdgeInsets.only(bottom: 12),
                        // margin: EdgeInsets.only(top:2),
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 27, 130, 209),
                            borderRadius: BorderRadius.all(Radius.circular(1))),
                        child: Row(
                          children: const [
                            Card(
                              margin: EdgeInsets.all(10), //表示边界距离
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: LayoutDemo()),
                // Expanded(child: Mmpage())
              ],
              // children: const [Expanded(MovieIthems: ffa())],
            )));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return ListView(
      children: mdata.map((value) {
        return Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                // AspectRatio(
                //   aspectRatio: 16 / 9,
                //   child: Image.network(
                //     value["imagerUrl"],
                //     fit: BoxFit.fill,
                //   ),
                // ),
                ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(value["imagerUrl"]),
                    ),
                    title: Text(value["title"]),
                    subtitle: Text(value["author"])),
                const ListTile(
                  // leading: Icon(Icons.home),
                  title: Text("更新于: 2021-01-29 08:27"),
                  subtitle: Text("菜市场有位大妈给儿子送午饭，误将生鱼送去，熟鱼却落在家里"),
                  trailing: Icon(Icons.cancel),
                ),
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    value["imagerUrl"],
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ));
      }).toList(), //注意这里要转换成列表，因为listView只接受列表
    );
  }
}

class Mmpage extends StatelessWidget {
  const Mmpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black26,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.home, color: Colors.red),
          Icon(Icons.search, color: Colors.blue),
          Icon(Icons.send, color: Colors.orange),
          Icon(Icons.send, color: Colors.orange),
        ],
      ),
    );
  }
}

// class flicar extends StatefulWidget {
//   const flicar({super.key});

//   @override
//   State<flicar> createState() => _flicarState();
// }

// class _flicarState extends State<flicar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
