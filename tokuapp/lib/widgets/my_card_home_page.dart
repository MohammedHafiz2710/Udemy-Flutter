import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  final String? title;
  final VoidCallback? onTap;
  const Mycard({super.key, this.color, this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: color,
        child: ListTile(
          contentPadding: const EdgeInsets.all(7),
          leading: Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
          title: Text(
            "$title",
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
