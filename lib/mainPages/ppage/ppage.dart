import 'package:flutter/material.dart';

class ppage extends StatefulWidget {
  const ppage({super.key});

  @override
  State<ppage> createState() => _ppageState();
}

class _ppageState extends State<ppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 27, 130, 209),
          title: const Text("我的"),
          elevation: 0,
          actions: [
            //右侧按钮图标
            IconButton(
              icon: const Icon(Icons.phone_in_talk),
              onPressed: () {
                print("客服");
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                print("设置图标");
              },
            )
          ],
          // bottom: ,
        ),
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Color.fromARGB(255, 27, 130, 209)),
              child: Column(
                children: const [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.itying.com/images/flutter/3.png"),
                      // child: Image.network("https://www.itying.com/images/flutter/3.png",fit: BoxFit.cover),
                    ),
                    title: Text("张三"),
                  ),
                  ListTile(
                    title: Text("邮箱:xxxx@qq.com"),
                  )
                ],
              ),
            ),
            Expanded(child: Howl())
          ],
        ));
  }
}

class Howl extends StatefulWidget {
  const Howl({super.key});

  @override
  State<Howl> createState() => _HowlState();
}

class _HowlState extends State<Howl> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text(
            "请完善身份基本消息，体验更多服务",
            style: TextStyle(fontSize: 13),
          ),
          leading: Icon(Icons.circle, color: Colors.red,size: 22,),
        ),
        ListTile(
          leading: Icon(Icons.assignment, color: Colors.red,),
          title: Text("支付宝会员"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.payment, color: Colors.green),
          title: Text("账单"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.local_car_wash, color: Colors.orange),
          title: Text("余额"),
        ),
        ListTile(
          leading: Icon(Icons.favorite, color: Colors.lightGreen),
          title: Text("我的收藏"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.people, color: Colors.black54),
          title: Text("在线客服"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.assignment, color: Colors.red,),
          title: Text("支付宝会员"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.payment, color: Colors.green),
          title: Text("账单"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.local_car_wash, color: Colors.orange),
          title: Text("余额"),
        ),
        ListTile(
          leading: Icon(Icons.favorite, color: Colors.lightGreen),
          title: Text("我的收藏"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.people, color: Colors.black54),
          title: Text("在线客服"),
        ),
        Divider(),
      ],
    );
  }
}
