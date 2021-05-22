import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revendagas/components/listprices.dart';
import 'package:revendagas/components/location.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(1440, 2560),
        orientation: Orientation.portrait);

    return Scaffold(
      appBar: AppBar(
        title: Text('Escolha uma Revenda'),
        actions: [
          Icon(Icons.swap_vert),
          Icon(Icons.info),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Location(),
              ],
            ),
            SizedBox(
              height: ScreenUtil().screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListPrices(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
