import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nrideapp/features/splash/controllers/splash_controller.dart';
import 'package:nrideapp/features/trip/screens/review_this_customer_screen.dart';
import 'package:nrideapp/helper/price_converter.dart';
import 'package:nrideapp/util/dimensions.dart';
import 'package:nrideapp/util/images.dart';
import 'package:nrideapp/util/styles.dart';

class SubTotalHeaderTitle extends StatelessWidget {
  final String title;
  final double? width;
  final Color? color;
  final double? amount;
  final String? tripId;
  final bool? isReviewed;
  final String? paymentStatus;
  final String? type;
  const SubTotalHeaderTitle({super.key, required this.title, this.width, this.color, this.amount, this.tripId, this.isReviewed,this.paymentStatus,this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
      child: Container(width: width ?? Get.width,
        transform: Matrix4.translationValues(0, -30, 0),
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(Dimensions.paddingSizeDefault),
            border: Border.all(width: .5, color: Theme.of(context).primaryColor)
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment:amount != null ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal : Dimensions.paddingSizeDefault, vertical: Dimensions.paddingSizeDefault),
                child: Text(title, style: textBold.copyWith(
                  color: color ?? Theme.of(context).hintColor,
                  fontSize: Dimensions.fontSizeLarge,
                )),
              ),

              if(amount != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal : Dimensions.paddingSizeDefault, vertical: Dimensions.paddingSizeDefault),
                  child: Text(PriceConverter.convertPrice(context, amount!), style: textBold.copyWith(
                    color: color ?? Theme.of(context).hintColor, fontSize: Dimensions.fontSizeLarge,
                  )),
                ),
            ],
          ),

          ( isReviewed != null &&  !isReviewed! &&
              Get.find<SplashController>().config!.reviewStatus! &&
              paymentStatus == 'paid' && type != 'parcel') ?
          InkWell(
            onTap: (){
              Get.to(() => ReviewThisCustomerScreen(tripId:tripId!));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: Dimensions.paddingSizeDefault),
              padding: const EdgeInsets.symmetric(
                vertical: Dimensions.paddingSizeSmall,
                horizontal: Dimensions.paddingSizeDefault,
              ),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                Image.asset(Images.reviewIcon,height: 16,width: 16),
                const SizedBox(width: 8),

                Text('give_review'.tr,style: textRegular.copyWith(color: Theme.of(context).cardColor))
              ]),
            ),
          ) :
          const SizedBox()

        ]),
      ),
    );
  }
}
