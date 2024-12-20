import '../../../core/core.dart';

class SupplierModel {
  final String imageUrl;
  final String warehouse;
  final String phoneNumber;
  final String name;
  final String email;
  final String status;
  final String taxNumber;
  final int openingBalance;
  final int creditPeriod;
  final int creditLimit;

  SupplierModel({
    required this.imageUrl,
    required this.warehouse,
    required this.phoneNumber,
    required this.name,
    required this.email,
    required this.status,
    required this.taxNumber,
    required this.openingBalance,
    required this.creditPeriod,
    required this.creditLimit,
  });

  String get openingBalanceFormatted => openingBalance.currencyFormatRp;
  String get creditLimitFormatted => creditLimit.currencyFormatRp;
}

List<SupplierModel> suppliers = [
  SupplierModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    warehouse: 'Warehouse A',
    phoneNumber: '123-456-7890',
    name: 'Supplier One',
    email: 'supplier1@example.com',
    status: 'Active',
    taxNumber: '123456789',
    openingBalance: 1000,
    creditPeriod: 30,
    creditLimit: 5000,
  ),
  SupplierModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    warehouse: 'Warehouse B',
    phoneNumber: '098-765-4321',
    name: 'Supplier Two',
    email: 'supplier2@example.com',
    status: 'Inactive',
    taxNumber: '987654321',
    openingBalance: 2000,
    creditPeriod: 45,
    creditLimit: 3000,
  ),
  SupplierModel(
    imageUrl: 'https://i.sstatic.net/y9DpT.jpg',
    warehouse: 'Warehouse C',
    phoneNumber: '555-555-5555',
    name: 'Supplier Three',
    email: 'supplier3@example.com',
    status: 'Active',
    taxNumber: '456789123',
    openingBalance: 1500,
    creditPeriod: 60,
    creditLimit: 7000,
  ),
];
