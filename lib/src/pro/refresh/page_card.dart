import 'package:flutter/material.dart';
import '../../utils/color/color_hex.dart';
import 'package:flutter/cupertino.dart';

///  Created by pgli on 2023/4/19. 基础模块
class PageCard extends StatelessWidget {
  /// 表头
  final Widget? title; // title
  final bool? isReload; // 是否支持下拉刷新

  /// 右侧自定义组件
  final Widget? body;

  PageCard({Key? key, this.title, this.body, this.isReload}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: hexToColor('#F4F7FA'),
        appBar: AppBar(
          backgroundColor: hexToColor('#F4F7FA'),
          title: title,
          elevation: 0,
          centerTitle: true,
        ),
        body: isReload == true
            ? body
            : SingleChildScrollView(
                padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: body,
              ));
  }
}
