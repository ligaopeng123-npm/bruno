import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './EasyRefreshHeader.dart';

///  Created by pgli on 2023/5/1. 下拉刷新
class PullDownRefresh extends StatelessWidget {
  // 刷新调用函数
  final Future Function()? onRefresh;

  /// 获取Widgets
  List<Widget> children;

  PullDownRefresh({Key? key, this.onRefresh, this.children: const <Widget>[]})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
        header: EasyRefreshClassicHeader,
        onRefresh: () async {
          onRefresh!();
        },
        child: ListView(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 32.h),
          children: children,
        ));
  }
}
