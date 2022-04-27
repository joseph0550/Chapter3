import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;
  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: createMaterialColor(Colors.white),
      ),
      home: const MyHomePage(title: 'YouTube'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('YouTube'),
          leading: Image.network(
              "https://play-lh.googleusercontent.com/lMoItBgdPPVDJsNOVtP26EKHePkwBg-PkuY9NOrc-fumRtTFP4XhpUNk_22syN4Datc"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.airplay),
              onPressed: () {
                print('button is  clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.add_alert_outlined),
              onPressed: () {
                print('button is  clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search button is  clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () {
                print('search button is  clicked');
              },
            ),
          ],
        ),

        body:
        Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 701,
                  child: ListView(
                    children: <Widget>[
                      Column(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[



                          Container(
                            margin:
                            EdgeInsets.only(top: 10),

                            padding: EdgeInsets.only(bottom: 0),
                            color: Color(0xffffffff),
                            child: Image.network(
                                "https://i.ytimg.com/vi/IywbC7SGPjI/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBT3frVy1Uf6CZrjOckn0nPxMC36A"),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: CircleAvatar(
                                    backgroundImage: NetworkImage("https://yt3.ggpht.com/ytc/AKedOLSyzBHqYPTrIGH3MYq_YvdZ2hrFeeN6iR7nkFIY=s176-c-k-c0x00ffffff-no-rj"),
                                    radius: 25                    ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 10, left: 20),

                                    child: Text('솔직히 트레이영 진짜 잘생기지 않았냐?-NBA',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5, right: 45),
                                    child: Text('농구채널B 프라임 · 조회수 7.2만회 · 16시간 전',
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              IconButton(
                                icon: Icon(Icons.menu_outlined),
                                onPressed: () {
                                  print('search button is  clicked');
                                },
                              ),
                            ],
                          ),
                          Container(
                            margin:
                            EdgeInsets.only(top: 10),

                            padding: EdgeInsets.only(bottom: 0),
                            color: Color(0xffffffff),
                            child: Image.network(
                                "https://i.ytimg.com/vi/Tgg1DRu0kH4/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB012dGaqk_cP6uyuSKUqz41i9Ymw"),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: CircleAvatar(
                                    backgroundImage: NetworkImage("https://yt3.ggpht.com/ytc/AKedOLSaUiNLVQ58ZolxJq3E9O9xA6BUFlM0m_LylBwQ=s68-c-k-c0x00ffffff-no-rj"),
                                    radius: 25                    ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 10, left: 20),

                                    child: Text('상대팀 PTSD오게 만드는 원리어스의 라인업..',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5, right: 105),
                                    child: Text('B story · 조회수 10만회 · 1일 전',
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              IconButton(
                                icon: Icon(Icons.menu_outlined),
                                onPressed: () {
                                  print('search button is  clicked');
                                },
                              ),
                            ],
                          ),
                          Container(
                            margin:
                            EdgeInsets.only(top: 10),

                            padding: EdgeInsets.only(bottom: 0),
                            color: Color(0xffffffff),
                            child: Image.network(
                                "https://i.ytimg.com/vi/_ZwJb9pvNpE/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDLg0QYEqLbvsiCy3x8ZwoyBD8bdA"),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: CircleAvatar(
                                    backgroundImage: NetworkImage("https://yt3.ggpht.com/d7HZQJbMlDDb7sM4wrCq4aezZl-iil5vg52ZLhhVj4JHEHtXqZxd2oGohTASuo3sFHAqRAeQfrM=s68-c-k-c0x00ffffff-no-rj"),
                                    radius: 25                    ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 10, left: 20, right: 175),

                                    child: Text('가붕 나붕 다붕',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5, right: 95),
                                    child: Text('승상싱 · 조회수 158만회 · 4개월 전',
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              IconButton(
                                icon: Icon(Icons.menu_outlined),
                                onPressed: () {
                                  print('search button is  clicked');
                                },
                              ),
                            ],
                          ),
                          Container(
                            margin:
                            EdgeInsets.only(top: 10),

                            padding: EdgeInsets.only(bottom: 0),
                            color: Color(0xffffffff),
                            child: Image.network(
                                "https://i.ytimg.com/vi/6WH4ACswoMs/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLD-F2iQn4nrFvwHvUdNvd7-018F_g"),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: CircleAvatar(
                                    backgroundImage: NetworkImage("https://yt3.ggpht.com/S-A-XpaOpr7zauKZkZrVMRZyH3C92V9EyiYswyAoSIEpp0N8QK58YTGFqKdKg96kkWRajEj9xvE=s68-c-k-c0x00ffffff-no-rj"),
                                    radius: 25                    ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 10, left: 20, right: 185),

                                    child: Text('안전한 용병',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5, right: 15),
                                    child: Text('팔차선[8LJAYWALKING] · 조회수 5.1만회 · 6시간 전',
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              IconButton(
                                icon: Icon(Icons.menu_outlined),
                                onPressed: () {
                                  print('search button is  clicked');
                                },
                              ),
                            ],
                          ),
                          Row(

                            children: <Widget>[
                              Expanded(
                                child: Container(

                                          height: 335,

                                          child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: <Widget>[
                                            Container(

                                              margin: EdgeInsets.only(top: 10),

                                               padding: EdgeInsets.only(bottom: 0),
                                               color: Color(0xffffffff),
                                               height: 335,
                                                width: 165,
                                                 child: Image.network(
                                    "https://blogfiles.pstatic.net/MjAyMjA0MjVfMTYz/MDAxNjUwODE0ODExNTAx.u4Rk0WEBtyj0swiA0iNj3MK1YrwGFn0wre4GaHh6vHUg.1UEFQVyDz_uNm8PsuTYtmd4xeY9-PbPjGe5eMXYO-B8g.JPEG.moa0920/%ED%99%94%EB%A9%B4_%EC%BA%A1%EC%B2%98_2022-04-25_003747.jpg?type=w2"),
                                            ),
                              Container(
                                margin:
                                EdgeInsets.only(top: 10),

                                padding: EdgeInsets.only(bottom: 0),
                                color: Color(0xffffffff),
                                height: 345,
                                width: 165,
                                child: Image.network(
                                    "https://blogfiles.pstatic.net/MjAyMjA0MjVfMTU1/MDAxNjUwODE0ODExMTY4.kZZifUvlQsnEJFOaF7Lqj79-WrfmoOAyhhl4O8woGRog.dVspZvfIGcn5xej_WfYX-ZMVD4lHheDiNZsKgfWyFgsg.JPEG.moa0920/flutter1.jpg?type=w2"),
                              ),
                              Container(
                                margin:
                                EdgeInsets.only(top: 10),

                                padding: EdgeInsets.only(bottom: 0),
                                color: Color(0xffffffff),
                                height: 335,
                                width: 165,
                                child: Image.network(
                                    "https://blogfiles.pstatic.net/MjAyMjA0MjVfMTg0/MDAxNjUwODE0ODExODM4.SYLyVPtwhBVpeOkIe3Eg7eS9qMs8ZdKYjXuFqiXhoqMg.vOCzlLPTklYt3eoR8kvlEi86Yf2w075oV6ARaVTKFNAg.JPEG.moa0920/%ED%99%94%EB%A9%B4_%EC%BA%A1%EC%B2%98_2022-04-25_003825.jpg?type=w2"),
                              ),
                              Container(
                                margin:
                                EdgeInsets.only(top: 10),

                                padding: EdgeInsets.only(bottom: 0),
                                color: Color(0xffffffff),
                                height: 335,
                                width: 165,
                                child: Image.network(
                                    "https://blogfiles.pstatic.net/MjAyMjA0MjVfMTk0/MDAxNjUwODE0ODEyMTUz.pjF8CPjNPPfQn0plWMNKOvGkEwzROT2wYhGUg6VB-7Ag.0QR2JR2lCBaXwy5qMxRcWPYdy5fWLBi0j553LnZDmBcg.JPEG.moa0920/%ED%99%94%EB%A9%B4_%EC%BA%A1%EC%B2%98_2022-04-25_003805.jpg?type=w2"),
                              ),
          ],
        ),
                          ),
                              ),
                        ],
                      ),

                    ],
                  ),
                  ],
                ),
                ),
              ],
            )

        )
    );


  }
}