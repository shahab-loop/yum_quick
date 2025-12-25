// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Ellipse.png
  AssetGenImage get ellipse => const AssetGenImage('assets/images/Ellipse.png');

  /// File path: assets/images/biryani.png
  AssetGenImage get biryani => const AssetGenImage('assets/images/biryani.png');

  /// File path: assets/images/broast.png
  AssetGenImage get broast => const AssetGenImage('assets/images/broast.png');

  /// File path: assets/images/burger.png
  AssetGenImage get burger => const AssetGenImage('assets/images/burger.png');

  /// File path: assets/images/cheesious.png
  AssetGenImage get cheesious =>
      const AssetGenImage('assets/images/cheesious.png');

  /// File path: assets/images/chef.png
  AssetGenImage get chef => const AssetGenImage('assets/images/chef.png');

  /// File path: assets/images/chilli.png
  AssetGenImage get chilli => const AssetGenImage('assets/images/chilli.png');

  /// File path: assets/images/deal.png
  AssetGenImage get deal => const AssetGenImage('assets/images/deal.png');

  /// File path: assets/images/delicious.png
  AssetGenImage get delicious =>
      const AssetGenImage('assets/images/delicious.png');

  /// File path: assets/images/hotburger.png
  AssetGenImage get hotburger =>
      const AssetGenImage('assets/images/hotburger.png');

  /// File path: assets/images/kabab.png
  AssetGenImage get kabab => const AssetGenImage('assets/images/kabab.png');

  /// File path: assets/images/khaabd.png
  AssetGenImage get khaabd => const AssetGenImage('assets/images/khaabd.png');

  /// File path: assets/images/noprofile.png
  AssetGenImage get noprofile =>
      const AssetGenImage('assets/images/noprofile.png');

  /// File path: assets/images/notificationpic.png
  AssetGenImage get notificationpic =>
      const AssetGenImage('assets/images/notificationpic.png');

  /// File path: assets/images/offer.png
  AssetGenImage get offer => const AssetGenImage('assets/images/offer.png');

  /// File path: assets/images/onboarding.png
  AssetGenImage get onboarding =>
      const AssetGenImage('assets/images/onboarding.png');

  /// File path: assets/images/pasta.png
  AssetGenImage get pasta => const AssetGenImage('assets/images/pasta.png');

  /// File path: assets/images/pizza.png
  AssetGenImage get pizza => const AssetGenImage('assets/images/pizza.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/security-safe.png
  AssetGenImage get securitySafe =>
      const AssetGenImage('assets/images/security-safe.png');

  /// File path: assets/images/tea.png
  AssetGenImage get tea => const AssetGenImage('assets/images/tea.png');

  /// File path: assets/images/usersite.png
  AssetGenImage get usersite =>
      const AssetGenImage('assets/images/usersite.png');

  /// File path: assets/images/zinger.png
  AssetGenImage get zinger => const AssetGenImage('assets/images/zinger.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    ellipse,
    biryani,
    broast,
    burger,
    cheesious,
    chef,
    chilli,
    deal,
    delicious,
    hotburger,
    kabab,
    khaabd,
    noprofile,
    notificationpic,
    offer,
    onboarding,
    pasta,
    pizza,
    profile,
    securitySafe,
    tea,
    usersite,
    zinger,
  ];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/Filter.svg
  String get filter => 'assets/svgs/Filter.svg';

  /// File path: assets/svgs/Star.svg
  String get star => 'assets/svgs/Star.svg';

  /// File path: assets/svgs/arrow.svg
  String get arrow => 'assets/svgs/arrow.svg';

  /// File path: assets/svgs/bell.svg
  String get bell => 'assets/svgs/bell.svg';

  /// File path: assets/svgs/camera.svg
  String get camera => 'assets/svgs/camera.svg';

  /// File path: assets/svgs/cross.svg
  String get cross => 'assets/svgs/cross.svg';

  /// File path: assets/svgs/eye.svg
  String get eye => 'assets/svgs/eye.svg';

  /// File path: assets/svgs/hide.svg
  String get hide => 'assets/svgs/hide.svg';

  /// File path: assets/svgs/home.svg
  String get home => 'assets/svgs/home.svg';

  /// File path: assets/svgs/lock.svg
  String get lock => 'assets/svgs/lock.svg';

  /// File path: assets/svgs/scan.svg
  String get scan => 'assets/svgs/scan.svg';

  /// File path: assets/svgs/search.svg
  String get search => 'assets/svgs/search.svg';

  /// File path: assets/svgs/sms.svg
  String get sms => 'assets/svgs/sms.svg';

  /// File path: assets/svgs/user.svg
  String get user => 'assets/svgs/user.svg';

  /// List of all assets
  List<String> get values => [
    filter,
    star,
    arrow,
    bell,
    camera,
    cross,
    eye,
    hide,
    home,
    lock,
    scan,
    search,
    sms,
    user,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
