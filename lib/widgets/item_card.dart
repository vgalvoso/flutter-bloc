import 'package:flutter/material.dart';
import './tile.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({this.text = "Item", super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: TextTile(
                bgColor: Colors.white,
                color: Colors.black,
                text: text,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: TextTile(
                      padd: EdgeInsets.only(bottom: 2),
                      text: "+",
                    ),
                  ),
                  Expanded(
                    child: TextTile(
                      padd: EdgeInsets.all(0),
                      text: "-",
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
