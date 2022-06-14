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
              BlocBuilder<FutureBloc, ItemsState>(builder: (context, state) {
                return TextTile(
                  bgColor: state.sandwhichColor,
                  text: "SANDWHICH",
                  onTap: () => {
                    BlocProvider.of<FutureBloc>(context)
                        .add(ItemCategory.sandwich),
                  },
                );
              }),
              BlocBuilder<FutureBloc, ItemsState>(builder: (context, state) {
                return TextTile(
                  bgColor: state.drinksColor,
                  text: "DRINKS",
                  onTap: () => {
                    BlocProvider.of<FutureBloc>(context)
                        .add(ItemCategory.drinks),
                  },
                );
              }),
              BlocBuilder<FutureBloc, ItemsState>(builder: (context, state) {
                return TextTile(
                  bgColor: state.fixinsColor,
                  text: "FIXINS",
                  onTap: () => {
                    BlocProvider.of<FutureBloc>(context)
                        .add(ItemCategory.fixins),
                  },
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}
