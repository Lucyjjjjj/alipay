import 'package:flutter/material.dart';
import 'childCpns/movieItems.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
          "消息(37)",
          style: TextStyle(color: Color.fromARGB(255, 252, 252, 252)),
        ),
          elevation: 0,
          leading: IconButton(
            //左侧按钮图标
            icon: const Icon(Icons.clear),
            onPressed: () {
              print("左侧的按钮图标");
            },
          ),
          backgroundColor: Color.fromARGB(255, 27, 130, 209),
          actions: [
            //右侧按钮图标
            IconButton(
              icon: const Icon(Icons.person_add),
              onPressed: () {
                print("添加图标");
              },
            ),
            IconButton(
              icon: const Icon(Icons.add_circle_outline),
              onPressed: () {
                print("添加图标");
              },
            )
            
          ],
        ),
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                        // Icon(Icons.search),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              fillColor: Color.fromARGB(
                                  255, 255, 255, 255), // 设置输入框背景色为灰色
                              filled: true, hintText: "搜索你的好友、最近转账联系人等",
                              border: InputBorder.none, isCollapsed: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: MovieIthems())
          ],
          // children: const [Expanded(MovieIthems: ffa())],
        )
    );
  }
}
