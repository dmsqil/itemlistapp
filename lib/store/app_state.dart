import 'package:meta/meta.dart';

// Model untuk state aplikasi
@immutable
class AppState {
  final List<String> items;

  const AppState({required this.items});

  factory AppState.initial() {
    return const AppState(items: []);
  }
}
