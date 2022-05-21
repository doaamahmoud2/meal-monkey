import 'package:easy_localization/easy_localization.dart';
import 'package:meal_monkey2/generated/locale_keys.g.dart';

class OnBoardingController {
  var images = [
  "assets/images/splashone.png",
  "assets/images/splashtwo.png",
  "assets/images/splashthree.png"
  ];
  var titles = [LocaleKeys.findFoodYouLove.tr(),LocaleKeys.fastDelivery.tr(), LocaleKeys.liveTracking.tr()];
  var hints = [
  LocaleKeys.discoverTheBestFoodsFromOver1000RestaurantsAndFastDeliveryToYourDoorstep.tr(),
  LocaleKeys.fastFoodDeliveryToYourHomeOfficeWhereverYouAre.tr(),
  LocaleKeys.realTimeTrackingOfYourFoodOnTheAppOnceYouPlacedTheOrder.tr()
  ];

  int current = 0;
}