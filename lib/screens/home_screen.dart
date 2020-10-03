import 'package:flutter/material.dart';
import 'package:flutter_clock/screens/components/body.dart';
import 'package:flutter_clock/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/Settings.svg'),
        color: Theme.of(context).iconTheme.color,
        onPressed: () {},
      ),
      actions: <Widget>[buildAddButton(context)],
    );
  }

  buildAddButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionScreenWidth(10.0)),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: getProportionScreenWidth(32.0),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
