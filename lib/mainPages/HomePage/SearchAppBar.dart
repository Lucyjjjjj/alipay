import 'package:flutter/material.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({
    super.key,
  });
  // final String hintLabel;
  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Row(
            children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      // suffixIcon: IconButton(
                      //   icon: Icon(Icons.close), onPressed: () {print("搜索");},
                      // ),
                      hintText: "花呗"),
                // style: TextStyle(fontSize: 12),
                ),
              ),
              Icon(Icons.search),
            ],
          )
        ],
      ),
    );
    // const TextField(
    //     // style: TextStyle(fontSize: 16, color: Color.fromARGB(221, 255, 255, 255)),
    //     decoration: InputDecoration(
    //         filled: true,
    //         fillColor: Colors.white, //背景颜色，必须结合filled: true,才有效
    //         icon: Icon(Icons.search, color: Color.fromARGB(255, 179, 178, 177)),
    //         hintText: "椅子办公椅",
    //         hintStyle: TextStyle(
    //             color: Color.fromARGB(255, 179, 178, 177), fontSize: 15),
    //         border: InputBorder.none,
    //         contentPadding:
    //             EdgeInsets.only(left: 100, top: 20, right: 100, bottom: 10),
    //         suffixIcon: Icon(Icons.camera_alt_outlined,
    //             color: Color.fromARGB(255, 179, 178, 177))));

    // SizedBox(
    // width: double.infinity,
    // height: 30,
    // child: Row(
    //   children: [
    //     Expanded(
    //       flex: 1,
    //       child: Container(
    //         height: double.infinity,
    //         margin: const EdgeInsets.only(left: 8),
    //         decoration: BoxDecoration(

    //             color: Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(6)),
    //         child: const
    //         Text("花呗",textAlign: TextAlign.center,style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 1, 1, 1))),
    //         // Icon(Icons.search,),
    //         // child: Row(
    //         //   crossAxisAlignment: CrossAxisAlignment.center,
    //       ),
    //     ),
    //     // ),
    //     GestureDetector(
    //       onTap: () {
    //         // _focusNode.unfocus();
    //       },
    //       child: Container(
    //         height: double.infinity,
    //         decoration: BoxDecoration(
    //             color: Colors.white, borderRadius: BorderRadius.circular(6)),
    //         padding: const EdgeInsets.only(left: 16, right: 16),
    //         child: const Text("搜索",textAlign: TextAlign.center,
    //             style: TextStyle(fontSize: 16, color: Color(0xFF3D7DFF))),
    //       ),
    //     ),
    //   ],
    // ),
    // );
  }
}
