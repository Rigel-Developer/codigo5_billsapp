import 'package:codigo5_billsapp/models/bill_model.dart';
import 'package:flutter/material.dart';

class ItemBillWidget extends StatelessWidget {
  ItemBillWidget({super.key, required this.bill});
  BillModel bill;

  @override
  Widget build(BuildContext context) {
    print(bill);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xff101321).withOpacity(0.05),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListTile(
        leading: Image.asset(
          "assets/images/${bill.type}.png",
          height: 40,
          width: 40,
        ),
        title: Text(
          bill.title,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            color: Color(0xff101321),
          ),
        ),
        subtitle: Text(
          bill.datetime,
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color: const Color(0xff101321).withOpacity(0.70),
          ),
        ),
        trailing: Text(
          bill.price.toString(),
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: Color(0xff101321),
          ),
        ),
      ),
    );
  }
}
