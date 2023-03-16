import 'dart:math';

import 'package:balance/widgets/balance_page_wt/back_sheet.dart';
import 'package:balance/widgets/balance_page_wt/front_sheet.dart';
import 'package:flutter/material.dart';

class BalancePage extends StatefulWidget {
  const BalancePage({super.key});

  @override
  State<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  final _scrollController = ScrollController();
  double _desplazamiento = 0;

  void _escucha() {
    setState(() {
      _desplazamiento = _scrollController.offset / 100;
      print(_max);
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_escucha);
    _scrollController.dispose();
    super.dispose();
  }

  double get _max => max(90 - _desplazamiento * 90, 0.0);

  @override
  void initState() {
    _scrollController.addListener(_escucha);
    _max;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          elevation: 0.0,
          expandedHeight: 125,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '\$ 2,100,274.50',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent),
                ),
                Text('Balance', style: TextStyle(fontSize: 20))
              ],
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Stack(
            children: [
              const BackSheet(),
              Padding(
                padding: EdgeInsets.only(top: _max),
                child: FrontSheet(),
              ),
            ],
          )
        ])),
      ],
    );
  }
}
