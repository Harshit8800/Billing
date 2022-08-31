import 'package:billing_project/model/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            child: Card(
              child: Row(
                children: [
                  Container(
                    child: Text(
                      item.invoice,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Container(
                    child: Text(
                      item.date,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    item.cust,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    item.number,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Text(
                item.amount,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.created,
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    item.payment,
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
