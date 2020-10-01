import 'package:flutter/material.dart';
import 'package:skype_clone/screens/notification.dart';
import 'package:skype_clone/widgets/appbar.dart';

class SkypeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final List<Widget> actions;

  const SkypeAppBar({
    Key key,
    @required this.title,
    @required this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leading: IconButton(
        icon: Icon(
          Icons.notifications,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NotificationScreen()));
        },
      ),
      title: (title is String)
          ? Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          : title,
      centerTitle: true,
      actions: actions,
    );
  }

  final Size preferredSize = const Size.fromHeight(kToolbarHeight + 10);
}
