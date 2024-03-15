import 'package:api_integration_3_dec/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final providerObj = Provider.of<HomeScreenController>(context);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Provider.of<HomeScreenController>(context, listen: false)
                .fetchData();
          },
        ),
        body: ListView.builder(
          itemCount: providerObj.apiResMode.entries?.length ?? 0,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                providerObj.apiResMode.entries?[index].description ?? "null"),
          ),
        ));
  }
}
