import 'package:final_620710832/Model/animal_detail.dart';
import 'package:final_620710832/Model/api_result.dart';
import 'package:final_620710832/pages/animal_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String _string = '';
  var _isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: animaldata.list.length,
            itemBuilder: (context, index) => _buildListItem(context, index),
          ),
        ],
      ),
    );
  }

  void _handleClickButton() async {
    setState(() {
      _isloading = true;
    });
    final url = Uri.parse('https://cpsu-test-api.herokuapp.com/quizzes');
    var response = await http.get(url, headers: {'id': '620710832'});
    setState(() {
      _isloading = false;
    });
    var json = jsonDecode(response.body);
    var apiResult = ApiResult.fromJson(json);
    setState(() {
      animaldata.list = apiResult.data
          .map<animaldetail>((item) => animaldetail.fromJson(item))
          .toList();
    });
  }

  Widget _buildListItem(BuildContext context, int index) {
    var animalitem = animaldata.list[index];
    return Card(

    );
  }
}
