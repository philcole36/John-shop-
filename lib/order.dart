class Order {
  String _id;
  String _productName;
  String _productPrice;
  String _productQuantity;

  Order(this._id, this._productName, this._productPrice, this._productQuantity);

  Order.map(dynamic obj) {
    this._id = obj['id'];
    this._productName = obj['name'];
    this._productPrice = obj['price'];
    this._productQuantity = obj['quantity'];
  }

  String get id => _id;
  String get productName => _productName;
  String get productPrice => _productPrice;
  String get productQuantity => _productQuantity;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['name'] = _productName;
    map['price'] = _productPrice;
    map['quantity'] = _productQuantity;

    return map;
  }

  Order.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._productName = map['name'];
    this._productPrice = map['price'];
    this._productQuantity = map['quantity'];
  }
}
