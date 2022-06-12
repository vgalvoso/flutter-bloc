import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/bloc/future_bloc.dart';
import 'package:pos/functions/main_page_functions.dart';
import 'package:pos/model/items_model.dart';
import 'package:pos/screens/second_page/second_route.dart';
import 'package:pos/widgets/tile.dart';
import 'package:pos/widgets/item_card.dart';

class MidColumn extends StatefulWidget {
  const MidColumn({super.key});

  @override
  MidColumnState createState() => MidColumnState();
}

class MidColumnState extends State<MidColumn> with MainPageFunctions {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<FutureBloc>(context).add(ItemCategory.all);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, top: 0, right: 5, bottom: 0),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Expanded(
                  flex: 5,
                  child: TextTile(
                    padd: EdgeInsets.only(top: 0, left: 5, bottom: 0, right: 0),
                    bgColor: Colors.blueAccent,
                    color: Colors.white,
                    text: "DINE IN",
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CustomTile(
                    padd: EdgeInsets.only(top: 0, left: 0, bottom: 0, right: 5),
                    bgColor: Colors.blueGrey,
                    icon: Icons.lock,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: CustomTile(
                    icon: Icons.message_sharp,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    "SPICY GANGNAM ZINGER CBO",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: BlocBuilder<FutureBloc, ItemsState>(
                        builder: (context, state) {
                      return FutureBuilder<List<Items>>(
                        future: state.futureItems,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                childAspectRatio: 1.0,
                              ),
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                return ItemCard(
                                  text: snapshot.data![index].itemName,
                                );
                              },
                            );
                          } else if (snapshot.hasError) {
                            return Text("${snapshot.error}");
                          }

                          return const CircularProgressIndicator();
                        },
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    child: TextTile(
                      bgColor: Colors.green,
                      text: "DONE",
                      onTap: toPage(context, const SecondRoute()),
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
