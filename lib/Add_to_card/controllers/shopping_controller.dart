import 'package:get/get.dart';
import 'package:get_x_project/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[]
      .obs; // Use <Product>[] to initialize the list and .obs to make it observable

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage:
              'https://application-media.kofi.com.kh/assets/main/image/product/ebl3t2-85d6b94d-0c85-43f8-8385-63806bf4b5c3.png',
          productName: 'Arun Coffee Bean '),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage:
              'https://application-media.kofi.com.kh/assets/main/image/product/tabwys-f5fa11ea-fc75-481e-bddf-3d5f6d436828.png',
          productName: 'Kofi Sweeten Milk'),
      Product(
          id: 3,
          price: 11.90,
          productDescription: 'some description about product',
          productImage:
              'https://application-media.kofi.com.kh/assets/main/image/product/jofcj5-20528a43-7523-4948-a1e8-ff7399bec43c.png',
          productName: 'Kiri Coffee Bean'),
      Product(
          id: 4,
          price: 40,
          productDescription: 'some description about product',
          productImage:
              'https://application-media.kofi.com.kh/assets/main/image/product/4ldp2q-15a7ed64-00c4-44d3-84c9-5c14fdc34b6e.png',
          productName: 'Agave Nectar Syrup'),
      Product(
          id: 5,
          price: 12.5,
          productDescription: 'some description about product',
          productImage:
              'https://application-media.kofi.com.kh/assets/main/image/product/qledfv-34f60b44-3a86-42e5-90c8-ce3dec485984.png',
          productName: 'Eco Decale'),
      Product(
          id: 6,
          price: 4.90,
          productDescription: 'Delonghi Eco Decale 500ml',
          productImage:
              'https://application-media.kofi.com.kh/assets/main/image/product/b7h9nr-4666adef-d54c-4b19-a975-4a3d55b8d862.png',
          productName: 'Non Dairy Creamer'),
    ];

    products.value = productResult;
  }
}
