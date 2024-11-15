import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_el.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('el'),
    Locale('en')
  ];

  /// A greeting message to welcome the user back to the app.
  ///
  /// In en, this message translates to:
  /// **'Welcome back,'**
  String get welcomeBack;

  /// Indicates the amount of money the user owes to others.
  ///
  /// In en, this message translates to:
  /// **'You owe'**
  String get youOwe;

  /// Indicates the amount of money the user is owed by others.
  ///
  /// In en, this message translates to:
  /// **'You receive'**
  String get youReceive;

  /// Displayed when there are no tabs to show.
  ///
  /// In en, this message translates to:
  /// **'Nothing to see here'**
  String get nothingToSeeHere;

  /// Button to join an existing tab.
  ///
  /// In en, this message translates to:
  /// **'Join'**
  String get join;

  /// Button to create a new tab.
  ///
  /// In en, this message translates to:
  /// **'Create tab'**
  String get createTab;

  /// Button to sign out of the app.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// Button to sign in to the app.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// What is shown before 'split the bill', in some languages.
  ///
  /// In en, this message translates to:
  /// **''**
  String get beforeSplit;

  /// Verb meaning to divide something into parts.
  ///
  /// In en, this message translates to:
  /// **'Split the bill'**
  String get sloganBadge1;

  /// In the manner of; similar to.
  ///
  /// In en, this message translates to:
  /// **'like'**
  String get sloganWord1;

  /// Indefinite article.
  ///
  /// In en, this message translates to:
  /// **'a'**
  String get sloganWord2;

  /// Short for professional, meaning skilled or expert.
  ///
  /// In en, this message translates to:
  /// **'pro'**
  String get sloganWord3;

  /// Connecting word used to indicate addition or connection.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get sloganWord4;

  /// To start to be.
  ///
  /// In en, this message translates to:
  /// **'become'**
  String get sloganWord5;

  /// Definite article.
  ///
  /// In en, this message translates to:
  /// **'the'**
  String get sloganWord6;

  /// A person admired for their courage, achievements, or qualities.
  ///
  /// In en, this message translates to:
  /// **'hero'**
  String get sloganBadge2;

  /// Expressing location or time.
  ///
  /// In en, this message translates to:
  /// **'at'**
  String get sloganWord7;

  /// Definite article.
  ///
  /// In en, this message translates to:
  /// **'the'**
  String get sloganWord8;

  /// A piece of furniture with a flat top and legs, used for eating meals, writing, etc.
  ///
  /// In en, this message translates to:
  /// **'table!'**
  String get sloganWord9;

  /// Button to start using the app.
  ///
  /// In en, this message translates to:
  /// **'Get started!'**
  String get getStarted;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['el', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'el': return AppLocalizationsEl();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
