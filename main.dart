import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        "name": "John Doe",
        "imageUrl":
            "https://c.pxhere.com/photos/44/dc/smiling_boy_man_professional_happy_people_young_portrait-865531.jpg!d",
        "Jabatan": "Direksi"
      },
      {
        "name": "Jane Smith",
        "imageUrl":
            "https://www.openbookmarks.co/presentation/wp-content/uploads/2020/02/testimonial03.jpg",
        "Jabatan": "Direksi"
      },
      {
        "name": "Charles Leclerc",
        "imageUrl":
            "https://biografieonline.it/img/bio/gallery/c/Charles_Leclerc_2.jpg",
        "Jabatan": "Direktur Utama"
      },
      {
        "name": "Lewis Hamilton",
        "imageUrl":
            "https://www.formula1points.com/images/driver/lewis-hamilton.jpg",
        "Jabatan": "Manajer"
      },
      {
        "name": "Lando Norris",
        "imageUrl":
            "https://open-wheels.com/wp-content/uploads/2020/04/Lando-Norris.jpg",
        "Jabatan": "Manajer Pemasaran"
      },
      {
        "name": "Sainz Carlos",
        "imageUrl":
            "https://d3cm515ijfiu6w.cloudfront.net/wp-content/uploads/2020/05/20115711/Carlos-Sainz-PA-1024x768.jpg",
        "Jabatan": "Manajer Pabrik"
      },
      {
        "name": "Valtteri Bottas",
        "imageUrl":
            "https://th.bing.com/th/id/R.e7f3d2565af196e630d13620855397d9?rik=BVPf4%2f1zMHDFxA&riu=http%3a%2f%2fwww.riviera24.it%2fphotogallery_new%2fimages%2f2019%2f04%2friviera24-valtteri-bottas-460392.jpg&ehk=b5mQOkiwc%2fFCsASMXNpRx%2bL2FJhhW0uWtIouwI3beP0%3d&risl=&pid=ImgRaw&r=0",
        "Jabatan": "Staff"
      },
    ];
    return MaterialApp(
      title: 'Praktikum',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffe5e5e5),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Project Uji Coba'),
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {}, // add onPressed callback
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: ListTile(
                leading: ClipOval(
                  child: Image.network(
                    item["imageUrl"] ?? "",
                    width: 50,
                    height: 50,
                  ),
                ),
                title: Text(
                  item["name"] ?? "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  item["Jabatan"] ?? "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
