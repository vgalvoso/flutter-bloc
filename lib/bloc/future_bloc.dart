import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:pos/functions/main_page_functions.dart';
import 'package:pos/model/items_model.dart';

enum ItemCategory { all, fixins, drinks, sandwich }

class FutureBloc extends Bloc<ItemCategory, ItemsState> with MainPageFunctions {
  FutureBloc() : super(ItemsState());

  @override
  Stream<ItemsState> mapEventToState(ItemCategory event) async* {
    switch (event) {
      case ItemCategory.all:
        yield ItemsState(
            futureItems: fetchItems(),
            sandwhichColor: const Color.fromARGB(255, 68, 68, 68),
            drinksColor: const Color.fromARGB(255, 68, 68, 68),
            fixinsColor: const Color.fromARGB(255, 236, 122, 48));
        break;
      case ItemCategory.fixins:
        yield ItemsState(
            futureItems: fetchItemsbyCategory("FIXINS"),
            sandwhichColor: const Color.fromARGB(255, 68, 68, 68),
            drinksColor: const Color.fromARGB(255, 68, 68, 68),
            fixinsColor: const Color.fromARGB(255, 236, 122, 48));
        break;
      case ItemCategory.drinks:
        yield ItemsState(
            futureItems: fetchItemsbyCategory("DRINKS"),
            sandwhichColor: const Color.fromARGB(255, 68, 68, 68),
            drinksColor: const Color.fromARGB(255, 236, 122, 48),
            fixinsColor: const Color.fromARGB(255, 68, 68, 68));
        break;
      case ItemCategory.sandwich:
        yield ItemsState(
            futureItems: fetchItemsbyCategory("SANDWICH"),
            sandwhichColor: const Color.fromARGB(255, 236, 122, 48),
            drinksColor: const Color.fromARGB(255, 68, 68, 68),
            fixinsColor: const Color.fromARGB(255, 68, 68, 68));
        break;
    }
  }
}

class ItemsState {
  Future<List<Items>>? futureItems;
  Color sandwhichColor, drinksColor, fixinsColor;

  ItemsState({
    this.futureItems,
    this.sandwhichColor = const Color.fromARGB(255, 68, 68, 68),
    this.drinksColor = const Color.fromARGB(255, 68, 68, 68),
    this.fixinsColor = const Color.fromARGB(255, 68, 68, 68),
  });
}
