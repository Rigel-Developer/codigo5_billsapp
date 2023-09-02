import 'package:flutter/material.dart';

class ItemTypeWidget extends StatelessWidget {
  ItemTypeWidget({
    super.key,
    required this.data,
    required this.isSelected,
    required this.onTap,
  });
  Map<String, dynamic> data;
  bool isSelected;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xff4D2DB7).withOpacity(0.16)
              : const Color(0xff101321).withOpacity(0.05),
          borderRadius: BorderRadius.circular(16.0),
          // border: isSelected
          //     ? Border.all(
          //         color: const Color(0xff101321),
          //         width: 2.0,
          //       )
          //     : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              data["image"],
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 12.0,
            ),
            Text(data["name"]),
          ],
        ),
      ),
    );
  }
}
