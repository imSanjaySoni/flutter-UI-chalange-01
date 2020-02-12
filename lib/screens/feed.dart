import 'package:flutter/material.dart';
import 'package:wallpapers/constant.dart';
import 'package:wallpapers/screens/details.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: appBar(),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    tabCard(0, "All", "🔅"),
                    tabCard(1, "Food", "🍔"),
                    tabCard(2, "Sport", "💪"),
                    tabCard(3, "Music", "🎸"),
                    tabCard(4, "Art", "🎨"),
                  ],
                )),
            SizedBox(
              height: 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                subtitleBar("Popular Events", seeAll: false),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      card(context, "paris"),
                      card(context, "bollywood"),
                      card(context, "bike"),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget tabCard(int index, String title, String emoji) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: Container(
          height: 140,
          width: 80,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: currentIndex == index
                      ? [Color(0xFF5d59d8), Color(0xFF5d59d8)]
                      : [
                          Color(0xFF1a1c20),
                          Color(0xFF444444),
                        ]),
              borderRadius: BorderRadius.circular(40)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF000000).withOpacity(0.2)),
                  child: Center(
                    child: Text(
                      emoji,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Text(
                  title,
                  style: subTitle.copyWith(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget card(BuildContext context, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsScreen(imageUrl)),
          );
        },
        child: Column(
          children: <Widget>[
            Container(
              height:  390,
              child: Stack(children: <Widget>[
                Container(
                    height: 250,
                    width: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white70,
                      image: DecorationImage(
                          image: AssetImage('assets/icons/$imageUrl.jpg'),
                          fit: BoxFit.cover),
                    )),
                Positioned(
                  bottom: 117,
                  right: 20,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [
                              Color(0xFF1a1c20).withOpacity(0.9),
                              Color(0xFF444444).withOpacity(0.9),
                            ]),
                        shape: BoxShape.circle),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "FRI, DEC 19TH - MON, DEC 27TH",
                          style: TextStyle(
                              color: Color(0xFF5d59d8),
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Nocturnal and unusual \nvisit",
                            style:
                                subTitle.copyWith(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Text(
                          "Louvre",
                          style:
                              TextStyle(color: Color(0xFF888888), fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
