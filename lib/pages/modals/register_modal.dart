import 'package:codigo5_billsapp/util/data_general.dart';
import 'package:codigo5_billsapp/widgets/item_type_widget.dart';
import 'package:codigo5_billsapp/widgets/texfield_normal_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegisterModal extends StatefulWidget {
  const RegisterModal({super.key});

  @override
  State<RegisterModal> createState() => _RegisterModalState();
}

class _RegisterModalState extends State<RegisterModal> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  String _selectedType = "Alimentos";

  showDateTimePicker() async {
    DateTime? datePicker = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              dialogTheme: DialogTheme(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              colorScheme: const ColorScheme.light(
                primary: Color(0xff101321),
              ),
            ),
            child: child!,
          );
        });
    if (datePicker != null) {
      final DateFormat formatter = DateFormat('dd-MM-yyyy');
      final String formatted = formatter.format(datePicker);
      _dateController.text = formatted;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34.0),
          topRight: Radius.circular(34.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Registrar salida",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFieldNormalWidget(
            hintText: "Ingresa un título",
            controller: _titleController,
          ),
          const SizedBox(
            height: 12.0,
          ),
          TextFieldNormalWidget(
            hintText: "Ingresa el precio",
            isNumber: true,
            controller: _priceController,
          ),
          const SizedBox(
            height: 12.0,
          ),
          TextFieldNormalWidget(
            hintText: "Selecciona una fecha",
            isDatePicker: true,
            onMandarina: () {
              showDateTimePicker();
            },
            controller: _dateController,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Wrap(
            spacing: 12.0,
            runSpacing: 12.0,
            alignment: WrapAlignment.center,
            children: types
                .map(
                  (e) => ItemTypeWidget(
                    data: e,
                    isSelected: _selectedType == e["name"],
                    onTap: () {
                      _selectedType = e["name"];
                      setState(() {});
                    },
                  ),
                )
                .toList(),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff101321),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              child: const Text(
                "Agregar",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
