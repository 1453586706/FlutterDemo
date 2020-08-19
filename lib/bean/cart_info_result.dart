class CartInfoResult {
  String goodsName;
  String images;
  int count;
  int price;
  int goodsId;
  bool isCheck;

  CartInfoResult(
      {this.goodsName,
      this.images,
      this.count,
      this.price,
      this.goodsId,
      this.isCheck});

  CartInfoResult.fromJson(Map<String, dynamic> json) {
    this.goodsName = json['goodsName'];
    this.images = json['images'];
    this.count = json['count'];
    this.price = json['price'];
    this.goodsId = json['goodsId'];
    this.isCheck = json['isCheck'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['goodsName'] = this.goodsName;
    data['images'] = this.images;
    data['count'] = this.count;
    data['price'] = this.price;
    data['goodsId'] = this.goodsId;
    data['isCheck'] = this.isCheck;
    return data;
  }
}
