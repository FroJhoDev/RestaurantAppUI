import 'package:flutter/material.dart';
import 'package:restaurant_app_ui_2/styles/fonts_style.dart';

class DetailsPage extends StatelessWidget {
  final String title;

  const DetailsPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 12.0, bottom: 8.0, top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.grey[800],
                    iconSize: 30.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                    color: Colors.grey[800],
                    iconSize: 30.0,
                  )
                ],
              ),
            ),
            Stack(
              children: [
                SizedBox(
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
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.orange[100]!.withOpacity(0.3),
                            offset: const Offset(0.0, -10.0),
                            blurRadius: 8.0)
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 30.0, top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title,
                                    style: FontsStyle.primaryTextStyle.copyWith(
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 5.0),
                                  Text(
                                    'Acompanhamentos',
                                    style: FontsStyle.primaryTextStyle
                                        .copyWith(fontSize: 16.0),
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
                        const SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: const Image(
                                      width: 100.0,
                                      image:
                                          AssetImage('assets/images/rice.jpg'),
                                    ),
                                  ),
                                  const SizedBox(width: 25.0),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Arroz',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 10.0),
                                        Text(
                                          'Branco, Baiao ou A grega',
                                          style: FontsStyle.primaryTextStyle
                                              .copyWith(fontSize: 16.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 5.0),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: const Image(
                                      width: 100.0,
                                      image:
                                          AssetImage('assets/images/massa.jpg'),
                                    ),
                                  ),
                                  const SizedBox(width: 25.0),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Macarrao',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 10.0),
                                        Text(
                                          'Espaguete',
                                          style: FontsStyle.primaryTextStyle
                                              .copyWith(fontSize: 16.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 5.0),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: const Image(
                                      width: 100.0,
                                      image:
                                          AssetImage('assets/images/beans.jpg'),
                                    ),
                                  ),
                                  const SizedBox(width: 25.0),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Feijao',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 10.0),
                                        Text(
                                          'Preto ou Carioca',
                                          style: FontsStyle.primaryTextStyle
                                              .copyWith(fontSize: 16.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 5.0),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: const Image(
                                      width: 100.0,
                                      image:
                                          AssetImage('assets/images/salad.jpg'),
                                    ),
                                  ),
                                  const SizedBox(width: 25.0),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Salada',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 10.0),
                                        Text(
                                          'Crua ou Cozida',
                                          style: FontsStyle.primaryTextStyle
                                              .copyWith(fontSize: 16.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 5.0),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30.0, top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  'Pedir',
                                  style: FontsStyle.primaryTextStyle.copyWith(
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 15.0),
                                  child: Text(
                                    'Faca seu pedido',
                                    style: FontsStyle.primaryTextStyle.copyWith(
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
