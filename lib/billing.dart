import 'package:billing_project/item_widget.dart';
import 'package:billing_project/model/catalog.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class Billing extends StatefulWidget {
  const Billing({Key? key}) : super(key: key);

  @override
  State<Billing> createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogjson = await rootBundle.loadString("assets/files/billing.json");
    var decodedData = jsonDecode(catalogjson);
    var productsData = decodedData["billing"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Column(
            children: [
              Text("Billed"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 19, 58, 231),
                      ),
                    ),
                    icon: Icon(Icons.store),
                    label: Text("Online Store"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 19, 58, 231),
                      ),
                    ),
                    icon: Icon(Icons.copy),
                    label: Text("Sale"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 19, 58, 231),
                      ),
                    ),
                    icon: Icon(Icons.shopping_cart),
                    label: Text("Inventory"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                labelText: "Search",
                hintStyle: TextStyle(fontSize: 10),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: (() {}),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                    ),
                    icon: Icon(
                      Icons.credit_card,
                      color: Colors.black,
                    ),
                    label: Text(
                      "Rs 1000.00",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: (() {}),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                    ),
                    icon: Icon(
                      Icons.money,
                      color: Colors.black,
                    ),
                    label: Text(
                      "Rs 25000.00",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: ((context, index) {
                  return ItemWidget(
                    item: CatalogModel.items[index],
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
