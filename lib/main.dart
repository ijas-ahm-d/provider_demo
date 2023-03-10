import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/provider_demo.dart';
import 'package:provider_demo/screens/first_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return ThemeProvider();
          },
      
        ),
        ChangeNotifierProvider(
          create: (context) {
            return ProviderDemo();
          },
        ),
      ],
      builder: (context, child) {
        final provider= Provider.of<ThemeProvider>(context);
        return MaterialApp(home:const PageOne(),
        debugShowCheckedModeBanner: false,
        theme: provider.theme,);
      },
    );

  }
}
