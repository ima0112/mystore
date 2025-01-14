import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:mystore/features/authentication/presentation/screens/login/login.dart';
import 'package:mystore/features/authentication/presentation/screens/onboarding/onboarding.dart';
import 'package:mystore/features/authentication/presentation/screens/password_configuration/forget_password.dart';
import 'package:mystore/features/authentication/presentation/screens/password_configuration/reset_password.dart';
import 'package:mystore/features/authentication/presentation/screens/signup/signup.dart';
import 'package:mystore/features/authentication/presentation/screens/signup/verify_email.dart';
import 'package:mystore/features/personalization/screens/address/address.dart';
import 'package:mystore/features/personalization/screens/address/widgets/add_new_address.dart';
import 'package:mystore/features/personalization/screens/profile/profile.dart';
import 'package:mystore/features/personalization/screens/settings/settings.dart';
import 'package:mystore/features/shop/screens/all_products/all_products.dart';
import 'package:mystore/features/shop/screens/brand/all_brand.dart';
import 'package:mystore/features/shop/screens/brand/brand_products.dart';
import 'package:mystore/features/shop/screens/cart/cart.dart';
import 'package:mystore/features/shop/screens/checkout/checkout.dart';
import 'package:mystore/features/shop/screens/home/home.dart';
import 'package:mystore/features/shop/screens/order/order.dart';
import 'package:mystore/features/shop/screens/product_details/product_detail.dart';
import 'package:mystore/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:mystore/features/shop/screens/store/store.dart';
import 'package:mystore/features/shop/screens/sub_category/sub_categories.dart';
import 'package:mystore/features/shop/screens/wishlist/wishlist.dart';
import 'package:mystore/core/injection/injection_container.dart';
import 'package:mystore/core/common_widgets/widgets/menu/navigation_menu.dart';

enum MyRoutes {
  onboarding,
  login,
  signup,
  verifyEmail,
  success,
  forgetPassword,
  resetPassword,
  home,
  store,
  wishlist,
  settings,
  profile,
  productDetail,
  productReviews,
  address,
  newAddress,
  cart,
  checkout,
  orders,
  subCategory,
  allProducts,
  allBrands,
  brandProducts,
}

class AppRoute {
  static GoRouter get routes => _routes;

  static BuildContext? get globalContext => _rootNavigatorKey.currentContext;

  static GlobalKey<NavigatorState> get rootNavigatorKey => _rootNavigatorKey;
  static GlobalKey<NavigatorState> get shellNavigatorKey => _shellNavigatorKey;

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static const String _onboarding = '/onboarding';
  static const String _login = '/login';
  static const String _signup = 'signup';
  static const String _verifyEmail = 'verify_email';
  static const String _success = 'success';
  static const String _forgetPassword = 'forget_password';
  static const String _resetPassword = 'reset_password';
  static const String _home = '/home';
  static const String _store = '/store';
  static const String _wishlist = '/wishlist';
  static const String _settings = '/settings';
  static const String _profile = 'profile';
  static const String _productDetail = 'product_detail';
  static const String _productReviews = 'product_reviews';
  static const String _address = 'address';
  static const String _newAddress = 'new_address';
  static const String _cart = 'cart';
  static const String _checkout = 'checkout';
  static const String _orders = 'orders';
  static const String _subCategory = 'sub_category';
  static const String _allProducts = 'all_products';
  static const String _allBrands = 'all_brands';
  static const String _brandProducts = 'brand_products';

  static final _routes = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: _onboarding,
    redirect: (context, state) {
      final onboardingService = getIt<OnboardingService>();
      final isOnboardingCompleted = onboardingService.isOnboardingCompleted;

      if (!isOnboardingCompleted && state.matchedLocation != _onboarding) {
        return _onboarding;
      }
      if (isOnboardingCompleted && state.matchedLocation == _onboarding) {
        return _login;
      }
      return null;
    },
    routes: [
      // Onboarding
      GoRoute(
        path: _onboarding,
        name: MyRoutes.onboarding.name,
        builder: (context, state) => const OnboardingScreen(),
      ),

      // Login
      GoRoute(
        path: _login,
        name: MyRoutes.login.name,
        builder: (context, state) => const LoginScreen(),
        routes: [
          // Signup
          GoRoute(
            path: _signup,
            name: MyRoutes.signup.name,
            builder: (context, state) => const SignupScreen(),
          ),
          GoRoute(
            path: _verifyEmail,
            name: MyRoutes.verifyEmail.name,
            builder: (context, state) => const VerifyEmailScreen(),
          ),

          // Forget Password
          GoRoute(
            path: _forgetPassword,
            name: MyRoutes.forgetPassword.name,
            builder: (context, state) => const ForgetPasswordScreen(),
          ),
          GoRoute(
            path: _resetPassword,
            name: MyRoutes.resetPassword.name,
            builder: (context, state) => const ResetPasswordScreen(),
          ),
        ],
      ),

      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return NavigationMenu(child: child);
        },
        routes: [
          GoRoute(
            path: _home,
            name: MyRoutes.home.name,
            builder: (context, state) => const HomeScreen(),
            routes: [
              GoRoute(
                path: _productDetail,
                name: MyRoutes.productDetail.name,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) => const ProductDetailScreen(),
                routes: [
                  GoRoute(
                    path: _productReviews,
                    name: MyRoutes.productReviews.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) => const ProductReviewsScreen(),
                  ),
                ],
              ),
              GoRoute(
                path: _allProducts,
                name: MyRoutes.allProducts.name,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) => const AllProducts(),
              ),
              GoRoute(
                path: _subCategory,
                name: MyRoutes.subCategory.name,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) => const SubCategoriesScreen(),
              ),
              GoRoute(
                path: _cart,
                name: MyRoutes.cart.name,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) => const CartScreen(),
                routes: [
                  GoRoute(
                    path: _checkout,
                    name: MyRoutes.checkout.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) => const CheckoutScreen(),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: _store,
            name: MyRoutes.store.name,
            builder: (context, state) => const StoreScreen(),
            routes: [
              GoRoute(
                path: _allBrands,
                name: MyRoutes.allBrands.name,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) => const AllBrandsScreen(),
                routes: [
                  GoRoute(
                    path: _brandProducts,
                    name: MyRoutes.brandProducts.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) => const BrandProductsScreen(),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: _wishlist,
            name: MyRoutes.wishlist.name,
            builder: (context, state) => const WishlistScreen(),
          ),
          GoRoute(
            path: _settings,
            name: MyRoutes.settings.name,
            builder: (context, state) => const SettingsScreen(),
            routes: [
              GoRoute(
                path: _profile,
                name: MyRoutes.profile.name,
                builder: (context, state) => const ProfileScreen(),
              ),
              GoRoute(
                path: _orders,
                name: MyRoutes.orders.name,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) => const OrderScreen(),
              ),
              GoRoute(
                path: _address,
                name: MyRoutes.address.name,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) => const UserAddressScreen(),
                routes: [
                  GoRoute(
                    path: _newAddress,
                    name: MyRoutes.newAddress.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) => const AddNewAddressScreen(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
