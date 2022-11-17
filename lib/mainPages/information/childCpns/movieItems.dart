import 'package:flutter/material.dart';
import './ListData.dart';

class MovieIthems extends StatefulWidget {
  const MovieIthems({super.key});

  @override
  State<MovieIthems> createState() => _MovieIthemsState();
}

class _MovieIthemsState extends State<MovieIthems> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:  LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return ListView(
      children: listData.map((value) {
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
                    subtitle: Text(value["author"]))
              ],
            ));
      }).toList(), 
    );
  }
}

// class MovieIthems extends StatelessWidget {
//   MovieIthems({super.key}) {
//     print(listData);
//   }

//   List<Widget> _initListData() {
//     List<Widget> tempList = [];

//     for (var i = 0; i < listData.length; i++) {
//       tempList.add(ListTile(
//         leading: Image.network("${listData[i]["imagerUrl"]}"),
//         title: Text("${listData[i]["title"]}"),
//         subtitle: Text("${listData[i]["author"]}"),
        
//       ),
//       // Divider(),
//       );
//     }
//     return tempList;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: _initListData(),
//     );
//   }
// }
