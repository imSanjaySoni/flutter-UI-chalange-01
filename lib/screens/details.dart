import 'package:flutter/material.dart';

import '../constant.dart';

class DetailsScreen extends StatefulWidget {
  final String imgUrl;
  DetailsScreen(this.imgUrl);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/${widget.imgUrl}.jpg"),
                fit: BoxFit.cover
              )
            ),
            alignment: Alignment.topCenter,

          ),

          Positioned(
            top: 40,
            left: 16,
            child: InkWell(
              onTap:(){
                Navigator.of(context).pop();
              } ,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white24,
                ),
                child: Icon(Icons.arrow_back_ios, color: Colors.white,),
              ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color:Color(0xFF1a1c20),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),

              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/icons/girl.jpg"),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),

                        SizedBox(width: 16,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Izabel Peattie",style: subTitle,),
                            Text("Organizer",style: subTitle.copyWith(fontSize: 14, color: Colors.white70),),
                          ],
                        ),

                      ],
                    ),



                    Container(
                      child: RaisedButton(
                        color: Color(0xFF333333),
                        onPressed:(){},
                        child: Text("Follow", style: subTitle.copyWith(fontSize: 14),),
                      ),
                    )
                  ],
                ),
              )

            ),
          ),

          Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFF1e202a),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "FRI, DEC 19TH - MON, DEC 27TH",
                              style: TextStyle(
                                  color: Color(0xFF5d59d8),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Nocturnal and \nunusual \nvisit",
                                style:
                                appBarTitle.copyWith(fontSize: 26,wordSpacing: 2, letterSpacing: 1.2),
                              ),
                            ),
                            Text(
                              "Louvre",
                              style:
                              TextStyle(color: Color(0xFFDDDDDD), fontSize: 18),
                            )
                          ],
                        ),

                        Container(
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
                              color: Colors.redAccent,
                              size: 35,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      width: double.infinity,
                      height: 45,
                      child: RaisedButton(
                        color: Color(0xFF5d59d8),
                        onPressed: (){},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Text("Get Ticket",style: subTitle.copyWith(fontSize: 18, fontWeight: FontWeight.w600),),
                      ),
                    )
                  ],
                ),
              ),
            ),

          ),




        ],
      ),
    );
  }
}
