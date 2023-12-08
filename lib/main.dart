import 'package:fluent_ui/fluent_ui.dart';
import 'package:match_recorder/mainScreen.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const FluentApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: MainScreen());
  }
}
