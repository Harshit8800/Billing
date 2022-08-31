class CatalogModel {
  static List<Item> items = [
    Item(
        invoice: "Invoice No: 0",
        date: "2022-08-25",
        cust: "Customer",
        number: "+91 12345670",
        amount: "10,000",
        created: "Created By Self",
        payment: "Payment Mode: cash")
  ];
}

class Item {
  final String invoice;
  final String date;
  final String cust;
  final String number;
  final String amount;
  final String created;
  final String payment;

  Item(
      {required this.invoice,
      required this.date,
      required this.cust,
      required this.number,
      required this.amount,
      required this.created,
      required this.payment});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      invoice: map["invoice"],
      date: map["date"],
      cust: map["cust"],
      number: map["number"],
      amount: map["amount"],
      created: map["created"],
      payment: map["payment"],
    );
  }
  toMap() => {
        "invoice": invoice,
        "date": date,
        "cust": cust,
        "number": number,
        "amount": amount,
        "created": created,
        "payment": payment,
      };
}
