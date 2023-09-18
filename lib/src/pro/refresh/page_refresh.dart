import 'package:flutter/material.dart';
import './pull_down_refresh.dart';
import 'page_card.dart';

///  Created by wangxiangyu on 2023/5/1.
class PageRefresh extends StatelessWidget {
  /// title
  final Widget? title;

  // 获取数据 List<Map<String, dynamic>>
  final Future Function()? onRefresh;

  List<Widget> children;

  PageRefresh(
      {Key? key, this.title, this.onRefresh, this.children: const <Widget>[]})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageCard(
        title: title,
        isReload: true,
        body: PullDownRefresh(
          onRefresh: onRefresh,
          children: children,
        ));
  }
}
