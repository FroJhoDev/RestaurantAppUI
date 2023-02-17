import 'package:flutter/material.dart';

import '../styles/fonts_style.dart';
import '../widgets/menu_list_widget.dart';
import '../widgets/star_rating_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.grey[800],
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            color: Colors.grey[800],
            iconSize: 30.0,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none),
            color: Colors.grey[800],
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: const Image(
                      width: 120.0,
                      image: AssetImage('assets/images/ahquedelicia_logo.jpg'),
                    ),
                  ),
                  const SizedBox(width: 25.0),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Restaurante Ah, Que Delicia',
                          style: FontsStyle.primaryTextStyle.copyWith(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          'Aberto Agora',
                          style: FontsStyle.primaryTextStyle,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '392k',
                        style: FontsStyle.primaryTextStyle
                            .copyWith(fontSize: 36.0),
                      ),
                      Text(
                        'Clientes',
                        style: FontsStyle.primaryTextStyle.copyWith(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '321',
                        style: FontsStyle.primaryTextStyle
                            .copyWith(fontSize: 36.0),
                      ),
                      Text(
                        'Pedidos',
                        style: FontsStyle.primaryTextStyle.copyWith(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '40 min',
                        style: FontsStyle.primaryTextStyle
                            .copyWith(fontSize: 36.0),
                      ),
                      Text(
                        'Prazo de Entrega',
                        style: FontsStyle.primaryTextStyle.copyWith(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
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
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cardapio',
                          style: FontsStyle.primaryTextStyle.copyWith(
                              fontSize: 28.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              '20',
                              style: FontsStyle.primaryTextStyle.copyWith(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 3.0),
                            const SizedBox(width: 3.0),
                            Text(
                              '/',
                              style: FontsStyle.primaryTextStyle
                                  .copyWith(fontSize: 20.0),
                            ),
                            const SizedBox(width: 3.0),
                            Text(
                              '06',
                              style: FontsStyle.primaryTextStyle
                                  .copyWith(fontSize: 18.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  MenuListWidget(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30, top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Faca seu pedido',
                            style: FontsStyle.primaryTextStyle.copyWith(
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
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              'Pedir',
                              style: FontsStyle.primaryTextStyle.copyWith(
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 25.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: const Image(
                            width: 100.0,
                            image: AssetImage('assets/images/user_profile.png'),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Joao da Silva',
                                style: FontsStyle.primaryTextStyle.copyWith(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10.0),
                              Row(
                                children: [
                                  for (int x = 1; x <= 5; x++) ...[
                                    const StarRatingWidget()
                                  ],
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
