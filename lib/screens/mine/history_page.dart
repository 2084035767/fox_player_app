import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fox_player/widget/error_page.dart';
import 'package:fox_player/widget/media_card.dart';

class HistoryPage extends HookWidget {
  static List<Media> historyVideos = [];

  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('观看历史'), centerTitle: true),
      body: historyVideos.isEmpty
          ? const ErrorPage()
          : RefreshIndicator(onRefresh: () async {}, child: Text("")),
    );
  }
}
