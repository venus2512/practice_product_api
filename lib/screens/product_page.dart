// import 'package:demo_project/response_model.dart';
import 'package:flutter/material.dart';

import '../api_service.dart';
import '../response_model.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late List<UserModel>? _userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xffED4322),
        elevation: 0,
        centerTitle: true,
        title:  Text('PRODUCTS PAGE',style: TextStyle(color: Colors.black),),
      ),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemCount: _userModel!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                    children: [
                      Text("Name"),


                      Text(_userModel![index].username),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Email"),
                      Text(_userModel![index].email),

                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                    children: [
                      Text("Website"),


                      Text(_userModel![index].website),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}