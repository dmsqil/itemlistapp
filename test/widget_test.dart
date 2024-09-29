import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';
import 'package:itemlistapp/main.dart'; // Sesuaikan jalur impor berdasarkan direktori proyek
import 'package:itemlistapp/store/app_state.dart'; // Sesuaikan dengan struktur direktori 
import 'package:itemlistapp/store/reducers.dart';

void main() {
  testWidgets('MyApp test', (WidgetTester tester) async {
    // Buat instance Store dengan state awal
    final store = Store<AppState>(appReducer, initialState: AppState.initial());

    // Build aplikasi menggunakan Store yang telah dibuat
    await tester.pumpWidget(MyApp(store: store));

    // Tambahkan pengujian sesuai dengan skenario Anda
    expect(find.text('Flutter Redux Example'), findsOneWidget);
  });
}
