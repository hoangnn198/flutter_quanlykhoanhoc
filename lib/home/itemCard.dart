import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  ItemCard({Key? key}) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Card(
        margin: EdgeInsets.all(10),
        shadowColor: Colors.blueGrey,
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width * 0.7,
                    child: Text(
                      "Chia se ve trien khai OKR Chia se ve trien khai OKR",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.yellow,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Giảng viên: ",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text(
                    "Lê Thị Thanh Huyền",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.format_indent_decrease_rounded,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Cán bộ quản lý: ",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text(
                    "Nam Dương Ngọc Long",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.date_range,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Thời gian: ",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text(
                    "05/12/2021 - 06/12/2021",
                    style: TextStyle(
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.business,
                    color: Colors.lightBlue,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Tòa nhà: ",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text(
                    "Tân thuận 3",
                    style: TextStyle(
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.room,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Phòng: ",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text(
                    "Chương Dương",
                    style: TextStyle(
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
