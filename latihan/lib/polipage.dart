import 'package:flutter/material.dart';
// MengImport library Flutter untuk Material UI
import '../model/poli.dart';
// MengImport model Poli
import 'poli_detail.dart';
// mengimImport halaman Poli Detail
import 'poli_item.dart';
// MengImport komponen Poli Item
import 'poli_form.dart';
// MengImport halaman Poli Form

class PoliPage extends StatefulWidget {
  const PoliPage({Key? key}) : super(key: key);

  @override
  _PoliPageState createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Poli"),
        // Membuat Judul pada AppBar
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            // Ikon Tambah
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliForm()),
                // Navigasi ke halaman Poli Form
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          // Item Poli Anak
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          // Item Poli Kandungan
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          // Item Poli Gigi
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
          // Item Poli THT
        ],
      ),
    );
  }
}
