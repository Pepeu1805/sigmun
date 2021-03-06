import 'package:sigmun/resources/pages/login_page.dart';
import 'package:sigmun/resources/pages/home/home_page.dart';
import '../resources/pages/forgot_password_page.dart';
import '../resources/pages/register_page.dart';
import '../resources/pages/profile/profile_page.dart';
import '../resources/pages/profile/edit_profile/edit_profile_page.dart';
import '../resources/pages/profile/contactus_profile/contactus_profile_page.dart';
import '../resources/pages/profile/help_profile/help_profile_page.dart';
import '../resources/pages/profile/notifications_profile/notifications_profile_page.dart';
import '../resources/pages/profile/security_profile/security_profile_page.dart';
import '../resources/pages/profile/about_profile/about_profile_page.dart';
import '../resources/pages/profile/security_profile/security_profile_tabs/security_senha_page.dart';
import '../resources/pages/profile/security_profile/security_profile_tabs/security_nova_senha_page.dart';
import 'package:sigmun/resources/pages/profile/edit_profile/edit_profile_tabs/phone_profile_page.dart';
import 'package:sigmun/resources/pages/profile/edit_profile/edit_profile_tabs/name_profile_page.dart';
import 'package:sigmun/resources/pages/profile/edit_profile/edit_profile_tabs/email_profile_page.dart';
import 'package:sigmun/resources/pages/profile/edit_profile/edit_profile_tabs/address_profile_page.dart';
import 'package:sigmun/resources/pages/inactive_page.dart';

import 'package:nylo_framework/nylo_framework.dart';
import 'package:page_transition/page_transition.dart';

/*
|--------------------------------------------------------------------------
| App Router
|
| * [Tip] Create pages faster 🚀
| Run the below in the terminal to create new a page.
| "flutter pub run nylo_framework:main make:page my_page"
| Learn more https://nylo.dev/docs/3.x/router
|--------------------------------------------------------------------------
*/

appRouter() => nyRoutes((router) {
      router.route("/", (context) => LoginPage(title: ""),
          transition: PageTransitionType.fade);

      // Add your routes here

      router.route("/home_page", (context) => HomePage(),
          transition: PageTransitionType.fade);

      router.route("/register_page", (context) => RegisterPage(),
          transition: PageTransitionType.fade);

      router.route("/forgot_password_page", (context) => ForgotPasswordPage(),
          transition: PageTransitionType.fade);

//ROTAS DE PERFIL---------------------------------------------------------------------------------------------------------------------

      router.route("/profile_page", (context) => ProfilePage(),
          transition: PageTransitionType.bottomToTop);

      router.route("/edit_profile_page", (context) => EditProfilePage(),
          transition: PageTransitionType.rightToLeft);

      router.route("/notifications_profile_page",
          (context) => NotificationsProfilePage(),
          transition: PageTransitionType.rightToLeft);

      router.route("/security_profile_page", (context) => SecurityProfilePage(),
          transition: PageTransitionType.rightToLeft);

      router.route("/help_profile_page", (context) => HelpProfilePage(),
          transition: PageTransitionType.bottomToTop);

      router.route(
          "/contactus_profile_page", (context) => ContactUsProfilePage(),
          transition: PageTransitionType.rightToLeft);

      router.route("/about_profile_page", (context) => AboutProfilePage(),
          transition: PageTransitionType.rightToLeft);

      router.route("/security_senha_page", (context) => SecuritySenhaPage(),
          transition: PageTransitionType.rightToLeft);

      router.route(
          "/security_nova_senha_page", (context) => SecurityNovaSenhaPage(),
          transition: PageTransitionType.rightToLeft);

      router.route("/address_profile_page", (context) => AddressProfilePage(),
          transition: PageTransitionType.bottomToTop);

      router.route("/email_profile_page", (context) => EmailProfilePage(),
          transition: PageTransitionType.bottomToTop);

      router.route("/name_profile_page", (context) => NameProfilePage(),
          transition: PageTransitionType.bottomToTop);

      router.route("/phone_profile_page", (context) => PhoneProfilePage(),
          transition: PageTransitionType.bottomToTop);
//---------------------------------------------------------------------------------------------------------------------

      router.route("/inactive_page", (context) => InactivePage(),
          transition: PageTransitionType.bottomToTop);

      // router.route("/new-page", (context) => NewPage(), transition: PageTransitionType.fade);
    });
