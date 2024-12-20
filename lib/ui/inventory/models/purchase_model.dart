import '../../../core/core.dart';
import 'product_model.dart';
import 'supplier_model.dart';

class PurchaseModel {
  final String invoiceNumber;
  final SupplierModel supplier;
  final DateTime purchaseDate;
  final List<ProductModel> products;
  final String termsAndConditions;
  final String notes;
  final String orderStatus;
  final int orderTax;
  final int discount;
  final String paymentMethod;
  final String paymentStatus;

  PurchaseModel({
    required this.invoiceNumber,
    required this.supplier,
    required this.purchaseDate,
    required this.products,
    required this.termsAndConditions,
    required this.notes,
    required this.orderStatus,
    required this.orderTax,
    required this.discount,
    required this.paymentMethod,
    required this.paymentStatus,
  });

  String get purchaseDateFormatted => purchaseDate.toFormattedDate();
  String get orderTaxFormatted => orderTax.currencyFormatRp;
  String get discountFormatted => discount.currencyFormatRp;
  String get totalAmountFormatted {
    int total = 0;
    for (var element in products) {
      total += element.purchasePrice.toInt();
    }
    return total.currencyFormatRp;
  }

  String get paidAmountFormatted => totalAmountFormatted;
}

final purchases = [
  PurchaseModel(
    invoiceNumber: 'JG-1234',
    supplier: suppliers.first,
    purchaseDate: DateTime.now(),
    products: products,
    termsAndConditions:
        '1. Goods once sold will not be taken back or exchanged\n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only',
    notes: 'lorem ipsum dulur',
    orderStatus: 'Received',
    orderTax: 1299,
    discount: 0,
    paymentMethod: 'Cash',
    paymentStatus: 'Belum dibayar',
  )
];
