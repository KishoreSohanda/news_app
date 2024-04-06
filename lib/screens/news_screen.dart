import 'package:flutter/material.dart';

import '../models/news_model.dart';

class News extends StatelessWidget {
  static const routeName = '/';
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
          onPressed: () {
            NewsModel().getNews();
          },
          icon: const Icon(Icons.add)),
      appBar: AppBar(
        title: const Text('The News'),
      ),
      body: const Center(
        child: Text('This is the main news'),
      ),
    );
  }
}
