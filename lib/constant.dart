import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle appBarTitle = TextStyle(
    color: Color(0xFFFBFBFB), fontSize: 30, fontFamily: "Poppins-SemiBold");

TextStyle subTitle = TextStyle(
    color: Color(0xFFFBFBFB), fontSize: 20, fontFamily: "Poppins-Regular");

TextStyle cardTitle = TextStyle(
    color: Color(0xFFFBFBFB),
    fontSize: 40,
    fontWeight: FontWeight.w400,
    fontFamily: "Poppins-Bold");

Widget subtitleBar(String title, {bool seeAll = true}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 4.0),
    child: Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "$title",
            style: subTitle,
          ),
          seeAll
              ? Text(
                  "see more",
                  style: subTitle.copyWith(fontSize: 15),
                )
              : Container(),
        ],
      ),
    ),
  );
}

Widget appBar() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Paris",
              style: appBarTitle,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xFFFFBFBFB),
              size: 30,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF333333).withOpacity(1),
                      offset: const Offset(0.0, 0.0),
                    ),
                    BoxShadow(
                      color: Color(0xFF333333).withOpacity(0.8),
                      offset: const Offset(0.0, 0.0),
                      spreadRadius: -12.0,
                      blurRadius: 12.0,
                    ),
                  ],
                  color: Color(0xFF333333).withOpacity(0.8)),
              child: Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF333333).withOpacity(1),
                      offset: const Offset(0.0, 0.0),
                    ),
                    BoxShadow(
                      color: Color(0xFF333333).withOpacity(0.8),
                      offset: const Offset(0.0, 0.0),
                      spreadRadius: -12.0,
                      blurRadius: 12.0,
                    ),
                  ],
                  color: Color(0xFF333333).withOpacity(0.8)),
              child: Icon(
                Icons.settings,
                color: Color(0xFFBABABA),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
