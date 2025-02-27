import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/values/values.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String title;
  final bool hasLeading;
  final bool hasTrailing;
  final Widget leading; // one icon
  final List<Widget> trailing;
  late GestureTapCallback onActionTap;
  late GestureTapCallback onLeadingTap;

  CustomAppBarWidget(
    this.title,
    this.leading,
    this.trailing,
    //this.onActionTap,
    //this.onLeadingTap,
    {
    this.hasLeading = true,
    this.hasTrailing = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: Sizes.ELEVATION_0,
      leading: hasLeading ? (leading ?? _defaultLeading()) : null,
      centerTitle: true,
      title: Text(title,
          style: TextStyle(
              color: AppColorsConst.headingText,
              fontWeight: FontWeight.w600,
              fontSize: Sizes.TEXT_SIZE_20)),
      actions: hasLeading ? (trailing ?? _defaultTrailing()) : null,
    );
  }

  // defaultLeading()
  Widget _defaultLeading() {
    return InkWell(
        onTap: () {},
        // child: Image.asset()
        child: Icon(FontAwesomeIcons.search, color: AppColorsConst.black));
  }

  // defaultTrailing()
  List<Widget> _defaultTrailing() {
    return <Widget>[
      InkWell(
          onTap: () {},
          // child: Image.asset()
          child:
              Icon(FontAwesomeIcons.shoppingBag, color: AppColorsConst.black))
    ];
  }
}
