import '../../../core/core.dart';

class ProductModel {
  final String productName;
  final String productImageUrl;
  final String productType;
  final String category;
  final String brand;
  final double salesPrice;
  final double purchasePrice;
  final int stock;

  ProductModel({
    required this.productName,
    required this.productImageUrl,
    required this.productType,
    required this.category,
    required this.brand,
    required this.salesPrice,
    required this.purchasePrice,
    required this.stock,
  });

  String get salesPriceFormatted => salesPrice.currencyFormatRp;
  String get purchasePriceFormatted => purchasePrice.currencyFormatRp;
  String get stockFormatted => '$stock Unit';
}

final products = [
  ProductModel(
    productName: 'Vegan Shoes',
    productImageUrl:
        'https://www.greenqueen.com.hk/wp-content/uploads/2021/07/Would-You-Wear-Vegan-Sneakers-Made-From-Upcycled-Waste-Of-Grapes-Cacti-and-Apples.jpg',
    productType: 'Single',
    category: 'Shoe',
    brand: 'Adidas',
    salesPrice: 1700000,
    purchasePrice: 500000,
    stock: 160,
  ),
  ProductModel(
    productName: 'Vegan Shoes',
    productImageUrl:
        'https://www.greenqueen.com.hk/wp-content/uploads/2021/07/Would-You-Wear-Vegan-Sneakers-Made-From-Upcycled-Waste-Of-Grapes-Cacti-and-Apples.jpg',
    productType: 'Single',
    category: 'Shoe',
    brand: 'Adidas',
    salesPrice: 1700000,
    purchasePrice: 500000,
    stock: 160,
  ),
  ProductModel(
    productName: 'Vegan Shoes',
    productImageUrl:
        'https://www.greenqueen.com.hk/wp-content/uploads/2021/07/Would-You-Wear-Vegan-Sneakers-Made-From-Upcycled-Waste-Of-Grapes-Cacti-and-Apples.jpg',
    productType: 'Single',
    category: 'Shoe',
    brand: 'Adidas',
    salesPrice: 1700000,
    purchasePrice: 500000,
    stock: 160,
  ),
  ProductModel(
    productName: 'Vegan Shoes',
    productImageUrl:
        'https://www.greenqueen.com.hk/wp-content/uploads/2021/07/Would-You-Wear-Vegan-Sneakers-Made-From-Upcycled-Waste-Of-Grapes-Cacti-and-Apples.jpg',
    productType: 'Single',
    category: 'Shoe',
    brand: 'Adidas',
    salesPrice: 1700000,
    purchasePrice: 500000,
    stock: 160,
  ),
];
