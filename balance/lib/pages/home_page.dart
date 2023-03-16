import 'package:balance/pages/balance_page.dart';
import 'package:balance/pages/charts_page.dart';
import 'package:balance/pages/settings_page.dart';
import 'package:balance/provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/home_pager_wt/custom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UIProvider>(context);
    final currentIndex = uiProvider.bnbIndex;
    switch (currentIndex) {
      case 0:
        return const BalancePage();
      case 1:
        return const ChartsPage();
      case 2:
        return const SettingsPage();
      default:
        return const BalancePage();
    }
  }
}
