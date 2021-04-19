import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product/manager/user_manager.dart';
import 'product/theme/theme_manager.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider.value(value: UserManager()),
      ChangeNotifierProvider(create: (_) => ThemeManager()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: context.watch<ThemeManager>().currentTheme,
      home: Scaffold(),
    );
  }
}
