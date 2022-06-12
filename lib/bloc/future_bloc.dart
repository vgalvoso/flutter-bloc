import 'package:bloc/bloc.dart';
import 'package:pos/functions/main_page_functions.dart';
import 'package:pos/model/items_model.dart';

part 'items_state.dart';

enum ItemCategory { all, fixins, drinks, sandwich }

class FutureBloc extends Bloc<ItemCategory, ItemsState> with MainPageFunctions {
  FutureBloc() : super(ItemsState());

  @override
  Stream<ItemsState> mapEventToState(ItemCategory event) async* {
    switch (event) {
      case ItemCategory.all:
        yield ItemsState(futureItems: fetchItems());
        break;
      case ItemCategory.fixins:
        yield ItemsState(futureItems: fetchItemsbyCategory("FIXINS"));
        break;
      case ItemCategory.drinks:
        yield ItemsState(futureItems: fetchItemsbyCategory("DRINKS"));
        break;
      case ItemCategory.sandwich:
        yield ItemsState(futureItems: fetchItemsbyCategory("SANDWICH"));
        break;
    }
  }
}
