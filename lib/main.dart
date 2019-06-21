import 'package:flutter/material.dart';
import 'package:restaurante_ahquedelica/optionDetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurante Ah, Que Delica',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final TextStyle _textStyle =
    TextStyle(fontFamily: 'Rubik', fontSize: 16.0, color: Colors.grey[800]);

List<String> image = [
  "assets/images/recipe01.png",
  "assets/images/recipe02.png",
  "assets/images/recipe03.png",
];

List<String> title = [
  "Frango ao Molho",
  "Panelada",
  "Carne Assada",
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.grey[800],
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.grey[800],
            iconSize: 30.0,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications_none),
            color: Colors.grey[800],
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      width: 120.0,
                      image: AssetImage('assets/images/ahquedelicia_logo.jpg'),
                    ),
                  ),
                  SizedBox(width: 25.0),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Restaurante Ah, Que Delicia',
                          style: _textStyle.copyWith(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Aberto Agora',
                          style: _textStyle,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '392k',
                        style: _textStyle.copyWith(fontSize: 36.0),
                      ),
                      Text(
                        'Clientes',
                        style: _textStyle.copyWith(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '321',
                        style: _textStyle.copyWith(fontSize: 36.0),
                      ),
                      Text(
                        'Pedidos',
                        style: _textStyle.copyWith(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '40 min',
                        style: _textStyle.copyWith(fontSize: 36.0),
                      ),
                      Text(
                        'Prazo de Entrega',
                        style: _textStyle.copyWith(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.orange[100].withOpacity(0.3),
                        offset: Offset(0.0, -10.0),
                        blurRadius: 8.0)
                  ]),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Cardapio',
                          style: _textStyle.copyWith(
                              fontSize: 28.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '20',
                              style: _textStyle.copyWith(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 3.0),
                            Text(
                              '06',
                              style: _textStyle.copyWith(fontSize: 20.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  MenuList(),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30, top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Faca seu pedido',
                            style: _textStyle.copyWith(
                                fontSize: 28.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Material(
                          elevation: 15.0,
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.orange,
                          shadowColor: Colors.orange.withOpacity(0.6),
                          child: MaterialButton(
                            onPressed: () {},
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              'Pedir',
                              style: _textStyle.copyWith(
                                  fontSize: 22.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            width: 100.0,
                            image: AssetImage('assets/images/user_profile.png'),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Joao da Silva',
                                style: _textStyle.copyWith(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                      size: 32.0,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                      size: 32.0,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                      size: 32.0,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                      size: 32.0,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.star_border,
                                      color: Colors.black45,
                                      size: 32.0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(left: 30.0),
        child: Container(
          height: 260.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MenuOption(title: title[0], image: image[0]),
              MenuOption(title: title[1], image: image[1]),
              MenuOption(title: title[2], image: image[2]),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuOption extends StatefulWidget {
  final String title, image;
  MenuOption({this.title, this.image});

  @override
  _MenuOptionState createState() => _MenuOptionState();
}

class _MenuOptionState extends State<MenuOption> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => OptionDetail(title: widget.title))
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          child: Stack(
            children: <Widget>[
              Container(
                width: 160.0,
                height: 240.0,
                child: Image.asset(widget.image, fit: BoxFit.cover),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                width: 160.0,
                height: 240.0,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.3),
                      ])),
                ),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                width: 160.0,
                height: 240.0,
                child: Container(
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                    child: Text(
                      widget.title,
                      style: _textStyle.copyWith(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
