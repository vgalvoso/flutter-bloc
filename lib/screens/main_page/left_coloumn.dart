import 'package:flutter/material.dart';
import 'package:pos/widgets/tile.dart';

class LeftColumn extends StatelessWidget {
  const LeftColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, top: 0, right: 5, bottom: 0),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: const [
                Expanded(
                  child: CustomTile(
                    icon: Icons.list,
                  ),
                ),
                Expanded(
                  child: CustomTile(
                    icon: Icons.numbers,
                  ),
                ),
                Expanded(
                  child: CustomTile(
                    icon: Icons.delete,
                  ),
                ),
                Expanded(
                  child: CustomTile(
                    icon: Icons.safety_divider,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          color: Colors.grey[700],
                          child: const Text(
                            "ITEM",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          color: Colors.grey[700],
                          child: const Text(
                            "QTY",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          color: Colors.grey[700],
                          child: const Text(
                            "PRICE",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Column(
                          children: const [Text("Item 1")],
                        ),
                        Column(
                          children: const [Text("Item 2")],
                        ),
                        Column(
                          children: const [Text("Item 2")],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: ListTile(
                          tileColor: const Color.fromARGB(255, 68, 68, 68),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('TOTAL :',
                                  style: TextStyle(color: Colors.white)),
                              Text('107.00',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          onTap: null,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: ListTile(
                            tileColor: Colors.green[700],
                            leading:
                                const Icon(Icons.payments, color: Colors.white),
                            title: const Text('PAY',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center),
                            onTap: () => {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    margin: const EdgeInsets.only(
                        left: 0, top: 0, right: 0, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('Running txn time :',
                            style: TextStyle(color: Colors.white)),
                        Text('01:41:41', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
