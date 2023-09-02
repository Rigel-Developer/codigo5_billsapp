import 'package:flutter/material.dart';

class ItemBillWidget extends StatelessWidget {
  const ItemBillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xff101321).withOpacity(0.05),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListTile(
        leading: Image.asset(
          "assets/images/banco.png",
          height: 40,
          width: 40,
        ),
        title: const Text(
          "Compras en el super",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            color: Color(0xff101321),
          ),
        ),
        subtitle: Text(
          "14/01/2023 23:21 PM",
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color: const Color(0xff101321).withOpacity(0.70),
          ),
        ),
        trailing: const Text(
          "S/ 400.00",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: Color(0xff101321),
          ),
        ),
      ),
    );
  }
}
