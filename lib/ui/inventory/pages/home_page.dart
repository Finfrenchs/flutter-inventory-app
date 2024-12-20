import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../models/stock_alert_model.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/bar_chart_sample.dart';
import '../widgets/card_custom.dart';
import '../widgets/pie_chart_sample.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool pendingApprovalEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarWidget(title: 'Dashboard'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Row(
            children: [
              CardCustom(
                title: 'Total Sales',
                subtitle: 'Rp. 12.650.000',
                color: AppColors.yellow,
              ),
              SpaceWidth(30.0),
              CardCustom(
                title: 'Payment Received',
                subtitle: 'Rp. 650.000',
                color: AppColors.green,
              ),
              SpaceWidth(30.0),
              CardCustom(
                title: 'Payment Sent',
                subtitle: 'Rp. 120.000',
                color: AppColors.red,
              ),
              SpaceWidth(30.0),
              CardCustom(
                title: 'Total Expenses',
                subtitle: 'Rp. 2.650.000',
                color: AppColors.blue,
              ),
            ],
          ),
          const SpaceHeight(30.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Card(
                  color: AppColors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Sales  & Purchases',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 170.0,
                              child: CustomDropdown(
                                value: monthNames.first,
                                items: monthNames,
                                label: 'Month',
                                onChanged: (value) {
                                  setState(() {});
                                },
                                showLabel: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const BarChartSample(),
                    ],
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: Card(
                  color: AppColors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Top Selling Product',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      PieChartSample(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SpaceHeight(30.0),
          Card(
            color: AppColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Stock Alert',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                        height: 40.0,
                        child: Button.outlined(
                          padding: const EdgeInsets.all(0),
                          onPressed: () {},
                          label: 'View All',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                if (pendingApprovalEmpty) ...[
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: EmptyPlaceholder(),
                  ),
                ] else ...[
                  DataTable(
                    dataRowMinHeight: 30.0,
                    dataRowMaxHeight: 60.0,
                    columns: const [
                      DataColumn(label: Text('Product')),
                      DataColumn(label: Text('Quantity')),
                      DataColumn(label: Text('Quantity Alert')),
                    ],
                    rows: stockAlerts
                        .map(
                          (item) => DataRow(cells: [
                            DataCell(Text(
                              item.productName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataCell(Text('${item.quantity} Unit')),
                            DataCell(Text('${item.quantityAlert} Unit')),
                          ]),
                        )
                        .toList(),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
