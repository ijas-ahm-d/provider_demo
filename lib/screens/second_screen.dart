import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/provider_demo.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Theme"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            provider.toggleTheme();
          },
          child: const Text("Change Theme"),
        ),
      ),
    );
  }
}
