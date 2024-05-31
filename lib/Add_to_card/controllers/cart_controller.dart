import 'package:get/get.dart';
import 'package:get_x_project/models/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[]
      .obs; // Use <Product>[] to initialize the list and .obs to make it observable

  int get count => cartItems.length;

  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  void addToCart(Product product) {
    cartItems.add(product);
  }
}
