import 'package:flutter/material.dart';
import 'package:my_porto/const/colors.dart';

class CustomRefreshPage extends StatefulWidget {
  final Widget? child;

  const CustomRefreshPage({Key? key, this.child}) : super(key: key);




  @override
  _CustomRefreshPageState createState() => _CustomRefreshPageState();
}

class _CustomRefreshPageState extends State<CustomRefreshPage> {

  Future<void> _refresh() {
    return Future.delayed(
        Duration(seconds: 1)
    );
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refresh,
      color: ColorsConsts.flamingo,
      child: widget.child!,
    );
  }
}
