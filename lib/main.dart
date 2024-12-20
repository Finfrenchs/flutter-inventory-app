import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/colors.dart';
import 'data/data_source/auth_remote_data_source.dart';
import 'data/data_source/company_remote_data_source.dart';
import 'data/data_source/inventory/brand_remote_datasource.dart';
import 'data/data_source/inventory/category_remote_datasource.dart';
import 'data/data_source/inventory/product_remote_datasource.dart';
import 'data/data_source/inventory/purchase_remote_data_source.dart';
import 'data/data_source/inventory/stock_opname_remote_data_source.dart';
import 'data/data_source/inventory/supplier_remote_datasource.dart';
import 'data/data_source/inventory/unit_remote_datasource.dart';
import 'data/data_source/inventory/warehouse_remote_datasource.dart';
import 'data/data_source/inventory/warehouse_stock_remote_data_source.dart';
import 'ui/auth/blocs/login/login_bloc.dart';
import 'ui/auth/blocs/logout/logout_bloc.dart';
import 'ui/auth/pages/splash_page.dart';
import 'ui/inventory/bloc/brand/brand_bloc.dart';
import 'ui/inventory/bloc/category/category_bloc.dart';
import 'ui/inventory/bloc/company/get_company/get_company_bloc.dart';
import 'ui/inventory/bloc/product/product_bloc.dart';
import 'ui/inventory/bloc/purchase/purchase_bloc.dart';
import 'ui/inventory/bloc/so/add_so/add_so_bloc.dart';
import 'ui/inventory/bloc/so/delete_so/delete_so_bloc.dart';
import 'ui/inventory/bloc/so/edit_so/edit_so_bloc.dart';
import 'ui/inventory/bloc/so/get_so/get_so_bloc.dart';
import 'ui/inventory/bloc/supplier/supplier_bloc.dart';
import 'ui/inventory/bloc/unit/unit_bloc.dart';
import 'ui/inventory/bloc/warehouse/warehouse_bloc.dart';
import 'ui/inventory/bloc/warehouse_stock/warehouse_stock_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDataSource()),
        ),

        BlocProvider(
          create: (context) => GetCompanyBloc(CompanyRemoteDataSource()),
        ),

        BlocProvider(
          create: (context) => BrandBloc(BrandRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CategoryBloc(CategoryRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => UnitBloc(UnitRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => WarehouseBloc(WarehouseRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => ProductBloc(ProductRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => SupplierBloc(SupplierRemoteDatasource()),
        ),
        // BlocProvider(
        //   create: (context) => ProductByCategoryBloc(ProductRemoteDatasource()),
        // ),
        BlocProvider(
          create: (context) => GetSoBloc(StockOpnameRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => AddSoBloc(StockOpnameRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => EditSoBloc(StockOpnameRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => DeleteSoBloc(StockOpnameRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => PurchaseBloc(PurchaseRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) =>
              WarehouseStockBloc(WarehouseStockRemoteDataSource()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Intensive Club batch 20',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          scaffoldBackgroundColor: AppColors.background,
          dialogBackgroundColor: AppColors.white,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.white,
          ),
          bottomSheetTheme:
              const BottomSheetThemeData(backgroundColor: AppColors.white),
          dividerTheme: const DividerThemeData(color: AppColors.stroke),
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            color: AppColors.white,
            elevation: 0,
            titleTextStyle: GoogleFonts.inter(
              color: AppColors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
            iconTheme: const IconThemeData(
              color: AppColors.black,
            ),
            centerTitle: true,
          ),
          listTileTheme: const ListTileThemeData(
            titleTextStyle: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
        ),
        home: const SplashPage(),
      ),
    );
  }
}
