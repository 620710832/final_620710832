import 'package:final_620710832/pages/animal_data.dart';
import 'package:flutter/material.dart';

class animalpagedetail extends StatefulWidget {
  final int animalindex;
  const animalpagedetail({Key? required, required this.animalindex}) : super(key: key);

  @override
  State<animalpagedetail> createState() => _animalpagedetailState();
}

class _animalpagedetailState extends State<animalpagedetail> {
  late int _animalindex;

  @override
  void initState() {
    super.initState();
    _animalindex = widget.animalindex;
  }

  @override
  Widget build(BuildContext context) {
    var animalItem = animaldata.list[_animalindex];

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.network(
                animalItem.image,
                fit: BoxFit.cover,
              ),
              ElevatedButton(onPressed: , child: Text(''),)
            ],
          )
        ],
      ),
    );
  }
  void _handleClickButton(int value) {
    final newIndex = _animalindex + value;
    if (newIndex < 0 || newIndex > animaldata.list.length - 1)
      return;
    setState(() {
      _animalindex += value;
    });
  }
}
