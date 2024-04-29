//baris ini mengimpor paket flutter/matterial.dart
import 'package:flutter/material.dart';

//ini adalah deklarasi kelas polipage yang mewarisi dari StatefulWidged
class PoliPage extends StatefulWidget {   
  //ini adalah konstruktor untuk kelas polipage
  const PoliPage({super.key}); 

//ini adalah anotasi yang menendakan bahwa metode berikutnya (dalam hal ini, buid()) akan menimpakan metode yang sudah ada dalam superclass
@override
//ini adalah deklarasi kelas _PoliPageState yang mewarisi dari statr dan terkait dengan widged
  State<PoliPage> createState() => _PoliPageState();
}

//melakukan override pada metode createStage untuk mengembalikan sebuag instansi dari _PoliPageStage
 class _PoliPageState extends State<PoliPage> {   
  @override   
  Widget build(BuildContext context) {   
    return Scaffold(   
      appBar: AppBar(title: const Text("Data Poli")),   
      body: ListView(   
        children: const [   
          Card(   
            child: ListTile(   
              title: const Text("Poli Anak"),   
              ),  
            ),   
            Card(   
              child: ListTile(   
                title: const Text("Poli Kandungan"),   \
                ),   
              ),   
              Card(   
                child: ListTile(   
                  title: const Text("Poli Gigi"),   
                  ),   
                ),   
                Card(   
                  child: ListTile(   
                    title: const Text("Poli THT"),   
                    ),   
                  )   
                ], 
              ),   
            );   
          }   
        }   