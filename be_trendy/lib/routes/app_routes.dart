
import 'package:be_trendy/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../OnBoarding/Onboarding_controller.dart';
import '../features/authentication/screens/login/login.dart';
import '../features/authentication/screens/password_configuration/forget_password.dart';
import '../features/authentication/screens/signup/signup.dart';
import '../features/authentication/screens/signup/widgets/verify_email.dart';
import '../features/personalization/screens/address/address.dart';
import '../features/personalization/screens/profile/profile.dart';
import '../features/personalization/screens/settings/settings.dart';
import '../features/shop/screens/cart/cart.dart';
import '../features/shop/screens/checkout/checkout.dart';
import '../features/shop/screens/home/home.dart';
import '../features/shop/screens/order/order.dart';
import '../features/shop/screens/product_reviews/product_reviews.dart';
import '../features/shop/screens/store/store.dart';
import '../features/shop/screens/wishlist/wishlist.dart';

class AppRoutes {
  static final pages = [

GetPage(name: BTRoutes.home, page: () => const HomeScreen()),
GetPage(name: BTRoutes.store, page: () => const StoreScreen()),
GetPage(name: BTRoutes.favourites, page: () => const FavouriteScreen()),
GetPage(name: BTRoutes.settings, page: () => const SettingsScreen()),
GetPage(name: BTRoutes.productReviews, page: () => const ProductReviewsScreen()),
  GetPage(name: BTRoutes.order, page: () => const OrderScreen()),
GetPage(name: BTRoutes.checkout, page: () => const CheckoutScreen()),
  GetPage(name: BTRoutes.cart, page: () => const CartScreen()),
GetPage(name: BTRoutes.userProfile, page: () => const ProfileScreen()),
  GetPage(name: BTRoutes.userAddress, page: () => const UserAddressScreen()),
  GetPage(name: BTRoutes.signup, page: () => const SignupScreen()),
  GetPage(name: BTRoutes.verifyEmail, page: () => const VerifyEmailScreen()),
  GetPage(name: BTRoutes.signIn, page: () => const LoginScreen()),
GetPage(name: BTRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: BTRoutes.onBoarding, page: () => const OnboardingScreen()), // Add more GetPage entries as needed


];
}

