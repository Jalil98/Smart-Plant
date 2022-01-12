import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smart_plant/disease.dart';
import 'package:smart_plant/history.dart';

class PlantPage extends StatefulWidget {
  const PlantPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<PlantPage> createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
  final _picker = ImagePicker();
  @override
  void initState() {
    super.initState();

    getData();
  }

  void getData() async {
    var dio = Dio();
    final response =
        await dio.get('https://baconipsum.com/api/?type=meat-and-filler');
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(.02),
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Penyakit"),
              Tab(text: "Riwayat"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return SimpleDialog(
                  title: const Text("Pilih Deteksi"),
                  children: [
                    ListTile(
                      title: const Text("Deteksi dari Galeri"),
                      onTap: () async {
                        Navigator.pop(context);

                        final res = await _picker.pickImage(
                          source: ImageSource.gallery,
                        );

                        if (res == null) {
                          return;
                        }

                        final path = res.path;
                        final dio = Dio();
                        final formData = FormData.fromMap({
                          "file": await MultipartFile.fromFile(path),
                        });
                        final response = await dio.post(
                          "http://192.168.43.122:6543/detect",
                          data: formData,
                        );

                        print(
                            "~~~~~~~~~~~~~~~~~~~~~~~~ DETECTION BY GALERY~~~~~~~~~~~~~~~~~~~~~~~");
                        print(response.data);
                      },
                    ),
                    ListTile(
                      title: const Text("Deteksi dari kamera"),
                      onTap: () async {
                        final res = await _picker.pickImage(
                          source: ImageSource.camera,
                        );
                        if (res == null) return;

                        final path = res.path;
                        final dio = Dio();
                        final formData = FormData.fromMap({
                          "file": await MultipartFile.fromFile(path),
                        });
                        final response = await dio.post(
                          "http://192.168.43.122:6543/detect",
                          data: formData,
                        );
                        print(
                            "~~~~~~~~~~~~~~~~~~~~~~~~ DETECTION BY CAMERA~~~~~~~~~~~~~~~~~~~~~~~");
                        print(response.data);
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: const Icon(Icons.attach_file_outlined),
        ),
        body: const TabBarView(
          children: [
            DiseasePage(),
            HistoryPage(),
          ],
        ),
      ),
    );
  }
}
