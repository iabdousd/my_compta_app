import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreationItemButton extends StatelessWidget {
  final String title;
  final Widget leadingIcon;
  final Widget nextPage;

  const CreationItemButton({
    Key key,
    @required this.title,
    @required this.leadingIcon,
    @required this.nextPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final creationItemButtonLabelStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
      color: Color(0x88000000),
    );

    return GestureDetector(
      onTap: tapEvent,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
        margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Color(0x20000000),
              blurRadius: 2,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x20000000),
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          children: [
            leadingIcon,
            SizedBox(
              width: 8.0,
            ),
            Text(
              title,
              style: creationItemButtonLabelStyle,
            ),
          ],
        ),
      ),
    );
  }

  void tapEvent() {
    Get.to(
      nextPage,
      transition: Transition.downToUp,
    );
  }
}
