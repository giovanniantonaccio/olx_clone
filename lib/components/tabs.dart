import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  _button(BuildContext context, String text) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          height: 60,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: Colors.grey, width: 0.5),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Row(
        children: <Widget>[
          _button(context, 'DDD 92...'),
          _button(context, 'Categoria'),
          _button(context, 'Filtros'),
        ],
      ),
    );
  }
}
