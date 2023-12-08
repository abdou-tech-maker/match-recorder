import 'package:fluent_ui/fluent_ui.dart';
import 'package:match_recorder/screens/history.dart';
import 'package:match_recorder/screens/home.dart';
import 'package:match_recorder/screens/settings.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
          automaticallyImplyLeading: false, title: Container()),
      pane: NavigationPane(
          selected: currentIndex,
          onChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          size: const NavigationPaneSize(openMaxWidth: 200, compactWidth: 70),
          displayMode: PaneDisplayMode.compact,
          items: [
            PaneItem(
                icon: const Icon(FluentIcons.home),
                title: const Text("Home"),
                body: const Home()),
            PaneItem(
                icon: const Icon(FluentIcons.history),
                title: const Text("History"),
                body: const History()),
            PaneItem(
                icon: const Icon(FluentIcons.settings),
                title: const Text("Settings"),
                body: const Settings())
          ]),
    );
  }
}
