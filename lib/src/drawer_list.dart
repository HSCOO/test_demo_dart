import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: const EdgeInsets.only(left: 20),
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: SizedBox(
                height: 60,
                child: Row(
                  children: const [
                    Icon(Icons.verified_user),
                    Text("你好"),
                  ],
                )),
          ),
          _DrawerListItem(icon: Icons.add,text: "常见问题",onTap: (){},),
          _DrawerListItem(icon: Icons.add,text: "关于我们",onTap: (){},),
          _DrawerListItem(icon: Icons.add,text: "登入",onTap: (){},),
        ],
      ),
    );
  }
}

class _DrawerListItem extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String text;
  final IconData icon;

  const _DrawerListItem({
    Key? key,
    this.onTap,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [Icon(icon), Text(text)],
      ),
      onTap: onTap,
    );
  }
}
