import 'app_state.dart';
import 'actions.dart';

// Reducer untuk mengelola state
AppState appReducer(AppState state, dynamic action) {
  if (action is AddItemAction) {
    return AppState(items: List.from(state.items)..add(action.item));
  } else if (action is RemoveItemAction) {
    return AppState(items: List.from(state.items)..remove(action.item));
  }
  return state;
}
