import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nrideapp/features/wallet/controllers/wallet_controller.dart';
import 'package:nrideapp/features/wallet/widgets/payable_transaction_list_widget.dart';
import 'package:nrideapp/util/dimensions.dart';
import 'package:nrideapp/util/styles.dart';

class PayableHistoryWidget extends StatefulWidget {
  const PayableHistoryWidget({super.key});

  @override
  State<PayableHistoryWidget> createState() => _PayableHistoryWidgetState();
}

class _PayableHistoryWidgetState extends State<PayableHistoryWidget> {
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    Get.find<WalletController>().setSelectedHistoryIndex(3,false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<WalletController>(builder: (walletController){
      return Column(mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: Dimensions.paddingSizeSmall),

          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.keyboard_arrow_down),
          ),
          const SizedBox(height: Dimensions.paddingSizeSmall),

          Text('cash_collect_history'.tr ,style: textBold),
          const SizedBox(height: Dimensions.paddingSizeSmall),

          Expanded(
            child: SingleChildScrollView( controller: scrollController,
              child: PayableTransactionListWidget(
                walletController: walletController,
                scrollController: scrollController,
              ),
            ),
          ),
        ],
      );
    });
  }
}
