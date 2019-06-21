import 'package:flutter/material.dart';

class OptionDetail extends StatefulWidget {
  final String title;
  OptionDetail({this.title});
  @override
  _OptionDetailState createState() => _OptionDetailState();
}

final TextStyle _textStyle =
    TextStyle(fontFamily: 'Rubik', fontSize: 16.0, color: Colors.grey[800]);

class _OptionDetailState extends State<OptionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: 12.0, right: 12.0, bottom: 8.0, top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.grey[800],
                    iconSize: 30.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                    color: Colors.grey[800],
                    iconSize: 30.0,
                  )
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 300.0,
                  child: Image.asset(
                    'assets/images/recipe_inlustration.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 0.0,
                  top: 0.0,
                  width: MediaQuery.of(context).size.width,
                  height: 100.0,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.white.withOpacity(0),
                          Colors.white.withOpacity(1),
                        ])),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 220.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 40,
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
                          padding: EdgeInsets.only(
                              left: 30.0, right: 30.0, top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    widget.title,
                                    style: _textStyle.copyWith(
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    'Acompanhamentos',
                                    style: _textStyle.copyWith(fontSize: 16.0),
                                  )
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                  size: 38.0,
                                  color: Colors.grey[800],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Image(
                                      width: 100.0,
                                      image:
                                          AssetImage('assets/images/rice.jpg'),
                                    ),
                                  ),
                                  SizedBox(width: 25.0),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Arroz',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10.0),
                                        Text(
                                          'Branco, Baiao ou A grega',
                                          style: _textStyle.copyWith(
                                              fontSize: 16.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Image(
                                      width: 100.0,
                                      image:
                                          AssetImage('assets/images/massa.jpg'),
                                    ),
                                  ),
                                  SizedBox(width: 25.0),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Macarrao',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10.0),
                                        Text(
                                          'Espaguete',
                                          style: _textStyle.copyWith(
                                              fontSize: 16.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Image(
                                      width: 100.0,
                                      image:
                                          AssetImage('assets/images/beans.jpg'),
                                    ),
                                  ),
                                  SizedBox(width: 25.0),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Feijao',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10.0),
                                        Text(
                                          'Preto ou Carioca',
                                          style: _textStyle.copyWith(
                                              fontSize: 16.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Image(
                                      width: 100.0,
                                      image:
                                          AssetImage('assets/images/salad.jpg'),
                                    ),
                                  ),
                                  SizedBox(width: 25.0),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Salada',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10.0),
                                        Text(
                                          'Crua ou Cozida',
                                          style: _textStyle.copyWith(
                                              fontSize: 16.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 5.0),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 30.0, top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  'Pedir',
                                  style: _textStyle.copyWith(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Material(
                                elevation: 15.0,
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.orange,
                                shadowColor: Colors.orange.withOpacity(0.6),
                                child: MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 15.0),
                                  child: Text(
                                    'Faca seu pedido',
                                    style: _textStyle.copyWith(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
