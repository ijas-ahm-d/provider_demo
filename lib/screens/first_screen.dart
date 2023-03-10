import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/provider_demo.dart';
import 'package:provider_demo/screens/second_screen.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Value"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const PageTwo();
                  },
                ));
              },
              icon:const Icon(Icons.chevron_right))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ProviderDemo>(
              builder: (context, value, child) {
                return Text(
                  Provider.of<ProviderDemo>(context).sample,
                );
              },
            ),
            TextButton.icon(
              onPressed: () {
                if (Provider.of<ProviderDemo>(context, listen: false).sample ==
                    "Sample Provider") {
                  Provider.of<ProviderDemo>(context, listen: false)
                      .changeValue("Provider Testing");
                } else {
                  Provider.of<ProviderDemo>(context, listen: false)
                      .changeValue("Sample Provider");
                }
              },
              icon: const Icon(Icons.emoji_emotions),
              label: const Text('change Value'),
            ),
          ],
        ),
      ),
    );
  }
}
