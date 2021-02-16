import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:splashscreen_app/sportsmodel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String url;
  List data = [];
  var response;
  bool isLoading = true;

  List<SportsModel> sportsModel = [];

  Future<List<SportsModel>> getUsers() async {
    url = "http://playonnuat-env.eba-ernpdw3w.ap-south-1.elasticbeanstalk.com/api/v1/establishment/test/list?offset=0&limit=10";
    response = await http.get(url);
    data = json.decode(response.body);

    setState(() {
      sportsModel = data.map((json) => SportsModel.fromJson(json)).toList();
      isLoading = false;
    });

    return sportsModel;
  }

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sports Model"),
      ),
      body: isLoading == true
          ? Center(
        child: CircularProgressIndicator(),
      )
          : Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: sportsModel.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(sportsModel[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(sportsModel[index].createOn),
                    Text(sportsModel[index].updatedOn),
                    Text(sportsModel[index].openTime),
                    Text(sportsModel[index].closeTime),

                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}