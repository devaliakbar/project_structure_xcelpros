import 'package:flutter/material.dart';
import 'package:project_structure_xcelpros/modules/module1/presentation/screens/home_page.dart';
import 'package:project_structure_xcelpros/modules/module1/providers/home_provider.dart';
import 'package:provider/provider.dart';

import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => di.sl<HomeProvider>()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Xcelpros',
      home: HomePage(),
    );
  }
}
