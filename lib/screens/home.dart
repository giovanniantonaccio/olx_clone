import 'package:flutter/material.dart';
import 'package:olx_clone/components/product_card.dart';
import 'package:olx_clone/components/tabs.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Buscar',
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            tooltip: 'Salvar busca',
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Tabs(),
            Expanded(
                child: InkWell(
              onTap: () {},
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 1,
                  );
                },
              ),
            )),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          'Anunciar agora',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
        ),
        icon: Icon(Icons.camera_alt),
        backgroundColor: Colors.orange[700],
      ),
    );
  }
}
