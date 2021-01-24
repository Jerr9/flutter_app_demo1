

class TestProd {
  int prodId;
  String prodName;
  TestProd({this.prodId, this.prodName});
  factory TestProd.fromJson(Map<String, dynamic> json) {
    return TestProd(
      prodId: json['productId'],
      prodName: json['productName'],
    );
  }
}