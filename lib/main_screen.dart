import 'package:flutter/material.dart';
import 'package:rempah_app/detail_screen.dart';
import 'package:rempah_app/list_rempah.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rempah-Rempah'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return RempahGrid(grid: 2);
          } else if (constraints.maxWidth <= 1200) {
            return RempahGrid(grid: 4);
          } else {
            return RempahGrid(grid: 6);
          }
        },
      ),
    );
  }
}

class RempahGrid extends StatefulWidget {
  final int grid;
  const RempahGrid({Key? key, required this.grid}) : super(key: key);

  @override
  State<RempahGrid> createState() => _RempahGridState();
}

class _RempahGridState extends State<RempahGrid> {
  String? type;

  List<Rempah> filteredList = ListRempah;

  void filterRempah(String? selectedType) {
    setState(() {
      type = selectedType;
      if (type == null) {
        filteredList = ListRempah;
      } else if (type == 'Semua') {
        filteredList = ListRempah;
      } else {
        filteredList =
            ListRempah.where((rempah) => rempah.type == type).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cari Rempahmu',
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DropdownButton<String>(
                items: const <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                    value: 'Bunga',
                    child: Text('Bunga'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Biji',
                    child: Text('Biji'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Batang',
                    child: Text('Batang'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Akar',
                    child: Text('Akar'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Daun',
                    child: Text('Daun'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Semua',
                    child: Text('Semua'),
                  ),
                ],
                value: type,
                hint: const Text('Pilih Jenis'),
                onChanged: (String? selected_value) {
                  filterRempah(selected_value);
                },
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: widget.grid,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: List.generate(filteredList.length, (index) {
                final rempah = filteredList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(RempahItem: rempah);
                    }));
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Image.asset(
                              rempah.imageAsset,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              rempah.name,
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              rempah.scientificName,
                              style: const TextStyle(
                                fontSize: 10.0,
                                fontStyle: FontStyle.italic,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
