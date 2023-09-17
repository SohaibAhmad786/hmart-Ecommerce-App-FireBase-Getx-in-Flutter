class ProfileModel {
  String? cartCount;
  String? image;
  String? wishlistCount;
  String? password;
  String? orderCount;
  String? name;
  String? id;
  String? email;

  ProfileModel(
      {this.cartCount,
      this.image,
      this.wishlistCount,
      this.password,
      this.orderCount,
      this.name,
      this.id,
      this.email});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    cartCount = json['cart_count'];
    image = json['image'];
    wishlistCount = json['wishlist_count'];
    password = json['password'];
    orderCount = json['order_count'];
    name = json['name'];
    id = json['id'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cart_count'] = cartCount;
    data['image'] = image;
    data['wishlist_count'] = wishlistCount;
    data['password'] = password;
    data['order_count'] = orderCount;
    data['name'] = name;
    data['id'] = id;
    data['email'] = email;
    return data;
  }
}
