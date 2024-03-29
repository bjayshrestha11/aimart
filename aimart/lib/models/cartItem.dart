import 'databaseItem.dart';

class CartItem extends DatabaseItem {
  final String? id;
  final String name;
  final String imageUrl;
  final double price;
  final int quantity;
  final String userId;
  final String productId;
  

  CartItem({
    required this.name,
    this.id,
    required this.imageUrl,
    required this.userId,
    required this.price,
    required this.quantity,
    required this.productId,
    
  }) : super(id);

  CartItem.fromMap(this.id, Map<String, dynamic> data)
      : name = data['name'],
        userId = data['userId'],
        imageUrl = data['imageUrl'],
        quantity = data['quantity'],
        productId = data['productId'],
        
        price = data['price'],
        super(id);

  Map<String, dynamic> toMap() => {
        "name": name,
        "userId": userId,
        "imageUrl": imageUrl,
        "quantity": quantity,
        "productId": productId,
        
        "price": price,
      };
}
