import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///  Created by wangxiangyu on 2023/6/2.
class CardExtend extends StatefulWidget {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  CardExtend(
      {Key? key,
      required this.minHeight,
      required this.maxHeight,
      required this.child})
      : super(key: key);

  @override
  _CardExtendState createState() => _CardExtendState();
}

class _CardExtendState extends State<CardExtend> {
  late double containerHeight = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      containerHeight = widget.minHeight;
    });
  }

  void toggleHeight() {
    setState(() {
      containerHeight = containerHeight == widget.maxHeight
          ? widget.minHeight
          : widget.maxHeight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: containerHeight,
            color: Colors.transparent,
            child: Container(
                child: ClipRect(
              child: widget.child,
            )),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 100, maxHeight: 16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 16),
                  backgroundColor: Colors.transparent, // 背景颜色
                  shadowColor: Colors.transparent),
              onPressed: toggleHeight,
              child: Icon(
                containerHeight != widget.minHeight
                    ? CupertinoIcons.chevron_up
                    : CupertinoIcons.chevron_down,
                size: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
