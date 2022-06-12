import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/bloc/future_bloc.dart';
import 'package:pos/widgets/tile.dart';

class RightColumn extends StatelessWidget {
  const RightColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: TextTile(
            text: "BEST SELLER",
          ),
        ),
        Expanded(
          flex: 6,
          child: Column(
            children: [
              TextTile(
                text: "SANDWHICH",
                onTap: () => {
                  BlocProvider.of<FutureBloc>(context)
                      .add(ItemCategory.sandwich),
                },
              ),
              TextTile(
                text: "DRINKS",
                onTap: () => {
                  BlocProvider.of<FutureBloc>(context).add(ItemCategory.drinks),
                },
              ),
              TextTile(
                bgColor: const Color.fromARGB(255, 236, 122, 48),
                text: "FIXINS",
                onTap: () => {
                  BlocProvider.of<FutureBloc>(context).add(ItemCategory.fixins),
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
