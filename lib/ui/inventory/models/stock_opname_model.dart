class StockOpnameModel {
  final String imageUrl;
  final String productName;
  final String sku;
  final String warehouse;
  final int initialQuantity;
  final int countedQuantity;
  final int difference;
  final String status;
  final String notes;

  StockOpnameModel({
    required this.imageUrl,
    required this.productName,
    required this.sku,
    required this.warehouse,
    required this.initialQuantity,
    required this.countedQuantity,
    required this.difference,
    required this.status,
    required this.notes,
  });
}

List<StockOpnameModel> stockOpnameList = [
  StockOpnameModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    productName: 'Product A',
    sku: 'SKU12345',
    warehouse: 'Warehouse 1',
    initialQuantity: 100,
    countedQuantity: 98,
    difference: 2,
    status: 'Completed',
    notes: 'Count verified by staff.',
  ),
  StockOpnameModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    productName: 'Product B',
    sku: 'SKU12346',
    warehouse: 'Warehouse 1',
    initialQuantity: 150,
    countedQuantity: 150,
    difference: 0,
    status: 'Completed',
    notes: 'No discrepancies.',
  ),
  StockOpnameModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    productName: 'Product C',
    sku: 'SKU12347',
    warehouse: 'Warehouse 2',
    initialQuantity: 200,
    countedQuantity: 198,
    difference: 2,
    status: 'Completed',
    notes: 'Minor differences found.',
  ),
  StockOpnameModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    productName: 'Product D',
    sku: 'SKU12348',
    warehouse: 'Warehouse 2',
    initialQuantity: 75,
    countedQuantity: 80,
    difference: -5,
    status: 'Completed',
    notes: 'Extra stock found.',
  ),
  StockOpnameModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    productName: 'Product E',
    sku: 'SKU12349',
    warehouse: 'Warehouse 3',
    initialQuantity: 120,
    countedQuantity: 115,
    difference: 5,
    status: 'Completed',
    notes: 'Missing items reported.',
  ),
  StockOpnameModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    productName: 'Product F',
    sku: 'SKU12350',
    warehouse: 'Warehouse 3',
    initialQuantity: 90,
    countedQuantity: 90,
    difference: 0,
    status: 'Completed',
    notes: 'All accounted for.',
  ),
  StockOpnameModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    productName: 'Product G',
    sku: 'SKU12351',
    warehouse: 'Warehouse 1',
    initialQuantity: 250,
    countedQuantity: 240,
    difference: 10,
    status: 'Completed',
    notes: 'Significant discrepancies noted.',
  ),
  StockOpnameModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    productName: 'Product H',
    sku: 'SKU12352',
    warehouse: 'Warehouse 2',
    initialQuantity: 60,
    countedQuantity: 60,
    difference: 0,
    status: 'Completed',
    notes: 'Accurate count.',
  ),
  StockOpnameModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    productName: 'Product I',
    sku: 'SKU12353',
    warehouse: 'Warehouse 3',
    initialQuantity: 30,
    countedQuantity: 25,
    difference: 5,
    status: 'Completed',
    notes: 'Investigate missing items.',
  ),
  StockOpnameModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    productName: 'Product J',
    sku: 'SKU12354',
    warehouse: 'Warehouse 1',
    initialQuantity: 80,
    countedQuantity: 78,
    difference: 2,
    status: 'Completed',
    notes: 'Count confirmed.',
  ),
];
