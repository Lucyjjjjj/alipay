import 'package:flutter/material.dart';

import 'mainPages/HomePage/HomePage.dart';
import 'mainPages/mmony/mmony.dart';
import 'mainPages/live/live.dart';
import 'mainPages/information/information.dart';
import 'mainPages/ppage/ppage.dart';
import 'mainPages/data/itFont.dart';
// import 'mainPages/neir.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//         appBar: AppBar(
//           title: const Text("你好支付宝"),
          
//           ), body: Column(
//           children: const [
//             MyApp(),
//             loaclImage(),
//             MyHomePage()
//           ],
//         )
//         ),
//   ));
// }
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '你好',
      // theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        body:  HomeNavigationPage(0),
        
      ),
    );
  }
}

class HomeNavigationPage extends StatefulWidget {
  HomeNavigationPage(this.currentIndex);
  int currentIndex;

  @override
  State<HomeNavigationPage> createState() => _HomeNavigationPageState();
}

class _HomeNavigationPageState extends State<HomeNavigationPage> {
  final screens = const [
    HomePage(),
    mmony(),
    live(),
    Information(),
    ppage(),
    // Neir()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: widget.currentIndex,
          children: screens,
        ),
        
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black87,
          selectedItemColor: Color.fromARGB(255, 53, 56, 229),
          currentIndex: widget.currentIndex,
          onTap: (index) => setState(() {
            widget.currentIndex = index;
          }),
          items: const [
            BottomNavigationBarItem(icon: Icon(ItIcon.zhifubao), label: "首页"),
            BottomNavigationBarItem(
                icon: Icon(ItIcon.licai), label: "理财"),
            BottomNavigationBarItem(icon: Icon(ItIcon.shenghuo), label: "生活"),
            BottomNavigationBarItem(
                icon: Icon(ItIcon.xiaoxi), label: "消息"),
            BottomNavigationBarItem(icon: Icon(ItIcon.sousuo), label: "我的"),
          ],
        ));
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//         appBar: AppBar(
//           title: const Text("你好支付宝"),
          
//           ), body: Column(
//           children: const [
//             MyApp(),
//             loaclImage(),
//             MyHomePage()
//           ],
//         )
//         ),
//   ));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 120,
//         height: 120,
//         alignment: Alignment.center,
//         decoration: const BoxDecoration(color: Colors.red),
//         child: const Text(
//           "欢迎使用flutter",
//           style: TextStyle(fontSize: 12, color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
// //加载本地图片
// // ignore: camel_case_types
// class loaclImage extends StatelessWidget {
//   const loaclImage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 150,
//       width: 150,
//       child: Image.asset("images/01.jpg"),
//     );
//   }
// }
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: const[
//         Icon(Icons.home),
//         Icon(Icons.settings),//设置
//         Icon(Icons.search)
//       ],
//     );
//   }
// }
