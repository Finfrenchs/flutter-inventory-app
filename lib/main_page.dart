import 'package:flutter/material.dart';
import '../../../../../../core/core.dart';
import 'ui/inventory/pages/brand_page.dart';
import 'ui/inventory/pages/category_page.dart';
import 'ui/inventory/pages/product_page.dart';
import 'ui/inventory/pages/purchase_page.dart';
import 'ui/inventory/pages/stock_opname_page.dart';
import 'ui/inventory/pages/supplier_page.dart';
import 'ui/inventory/pages/unit_page.dart';
import 'ui/inventory/pages/warehouse_page.dart';
import 'ui/inventory/pages/warehouse_stock_page.dart';
import 'ui/inventory/widgets/nav_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    _pages = [
      const BrandPage(),
      const CategoryPage(),
      const UnitPage(),
      const ProductPage(),
      const StockOpnamePage(),
      const WarehousePage(),
      const SupplierPage(),
      const PurchasePage(),
      const WarehouseStockPage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    border: Border(
                      right: BorderSide(color: AppColors.stroke),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SpaceHeight(16.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Assets.images.logoPrimary.image(height: 70.0),
                      ),
                      const SpaceHeight(20.0),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 16.0),
                        child: Text(
                          'Inventory System',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      NavItem(
                        label: 'Brands',
                        iconPath: Assets.icons.nav.brands.path,
                        isActive: _selectedIndex == 0,
                        onTap: () => _onItemTapped(0),
                      ),
                      NavItem(
                        label: 'Categories',
                        iconPath: Assets.icons.nav.categories.path,
                        isActive: _selectedIndex == 1,
                        onTap: () => _onItemTapped(1),
                      ),
                      NavItem(
                        label: 'Units',
                        iconPath: Assets.icons.nav.variations.path,
                        isActive: _selectedIndex == 2,
                        onTap: () => _onItemTapped(2),
                      ),
                      NavItem(
                        label: 'Products',
                        iconPath: Assets.icons.nav.productsInventory.path,
                        isActive: _selectedIndex == 3,
                        onTap: () => _onItemTapped(3),
                      ),
                      NavItem(
                        label: 'Stock Opname',
                        iconPath: Assets.icons.nav.stockOpname.path,
                        isActive: _selectedIndex == 4,
                        onTap: () => _onItemTapped(4),
                      ),
                      NavItem(
                        label: 'Warehouse',
                        iconPath: Assets.icons.nav.variations.path,
                        isActive: _selectedIndex == 5,
                        onTap: () => _onItemTapped(5),
                      ),
                      NavItem(
                        label: 'Suppliers',
                        iconPath: Assets.icons.nav.suppliers.path,
                        isActive: _selectedIndex == 6,
                        onTap: () => _onItemTapped(6),
                      ),
                      NavItem(
                        label: 'Purchase',
                        iconPath: Assets.icons.nav.purchases.path,
                        isActive: _selectedIndex == 7,
                        onTap: () => _onItemTapped(7),
                      ),
                      NavItem(
                        label: 'Warehouse Stock',
                        iconPath: Assets.icons.nav.variations.path,
                        isActive: _selectedIndex == 8,
                        onTap: () => _onItemTapped(8),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: _pages[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }
}
