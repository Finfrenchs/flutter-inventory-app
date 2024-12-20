class StockAlertModel {
  final String productName;
  final int quantity;
  final int quantityAlert;

  StockAlertModel({
    required this.productName,
    required this.quantity,
    required this.quantityAlert,
  });
}

final stockAlerts = [
  StockAlertModel(
    productName:
        'Smart TV LED 4K Ultra HD dengan Teknologi HDR dan Fitur Smart Hub',
    quantity: 15,
    quantityAlert: 25,
  ),
  StockAlertModel(
    productName:
        'Laptop Gaming dengan Prosesor Intel Core i7, RAM 16GB, dan Kartu Grafis NVIDIA',
    quantity: 455,
    quantityAlert: 555,
  ),
];
