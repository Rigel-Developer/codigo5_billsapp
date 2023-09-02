import 'package:codigo5_billsapp/pages/modals/register_modal.dart';

import 'package:codigo5_billsapp/widgets/item_bill_widget.dart';

import 'package:codigo5_billsapp/widgets/texfield_normal_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  showRegisterModal() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: const RegisterModal(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Boton de agregar
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Expanded(child: SizedBox()),
              InkWell(
                onTap: () {
                  showRegisterModal();
                },
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  color: const Color(0xff101321),
                  alignment: Alignment.center,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "Agregar",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 26.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(34),
                      bottomRight: Radius.circular(34),
                    ),
                  ),
                  child: SafeArea(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Resumen de gastos",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "Gestiona tus gastos de la mejor forma",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black45,
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            TextFieldNormalWidget(
                              hintText: "Buscar por título",
                              controller: _searchController,
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            const ItemBillWidget(),
                            const ItemBillWidget(),
                            const ItemBillWidget(),
                            const ItemBillWidget(),
                            const ItemBillWidget(),
                            const ItemBillWidget(),
                            const ItemBillWidget(),
                            const ItemBillWidget(),
                            const ItemBillWidget(),
                            const ItemBillWidget(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70.0,
              ),
            ],
          ),

          //Sección de listado general
        ],
      ),
    );
  }
}
