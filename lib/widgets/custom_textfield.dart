import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:yumquick/core/res/theme_manager/theme_manager.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final bool obscure;
  final bool isPasswordField;

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;

  // SVGs
  final String? prefixSvg;
  final String? suffixSvg;

  // Icons fallback
  final IconData? prefixIconData;
  final IconData? suffixIconData;

  final Color? prefixColor;
  final Color? suffixColor;

  final Color TextColor;
  final double? width;
  final double radius;
  final Color? hintColor;
  final Color borderColor;
  final Color focusedBorderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? contentPadding;
  final int maxLines;
  final int? minLines;
  final bool useUnderlineBorder;

  final ValueNotifier<bool> _obscureNotifier;

  CustomTextFormFieldWidget({
    super.key,
    required this.hintText,
    required this.backgroundColor,
    this.obscure = false,
    this.isPasswordField = false,
    this.controller,
    this.validator,
    this.onChanged,

    // SVGs
    this.prefixSvg,
    this.suffixSvg,

    // Icons
    this.prefixIconData,
    this.suffixIconData,

    this.prefixColor,
    this.suffixColor,
    this.width,
    this.hintColor,
    Color? borderColor,
    Color? focusedBorderColor,
    this.contentPadding,
    this.maxLines = 1,
    this.minLines,
    this.useUnderlineBorder = false,
    required this.TextColor,
    required this.radius,
  })  : borderColor = borderColor ?? ThemeManager.primaryColor,
        focusedBorderColor = focusedBorderColor ?? ThemeManager.primaryColor,
        _obscureNotifier = ValueNotifier<bool>(obscure);

  @override
  Widget build(BuildContext context) {
    final InputBorder border = useUnderlineBorder
        ? UnderlineInputBorder(
      borderSide: BorderSide(color: borderColor),
    )
        : OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(color: borderColor),
    );

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 45.px,
        maxWidth: width ?? 322.px,
      ),
      child: ValueListenableBuilder<bool>(
        valueListenable: _obscureNotifier,
        builder: (_, obscureValue, __) {
          return TextFormField(
            controller: controller,
            obscureText: isPasswordField ? obscureValue : false,
            validator: validator,
            onChanged: onChanged,
            maxLines: maxLines,
            minLines: minLines,
            style: TextStyle(
              color: TextColor,
              fontSize: 20.px,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: backgroundColor,
              hintText: hintText,
              hintStyle: TextStyle(
                color: hintColor ?? Colors.grey,
                fontSize: 12.px,
              ),
              contentPadding: contentPadding ??
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              border: border,
              enabledBorder: border,
              focusedBorder: border.copyWith(
                borderSide: BorderSide(color: focusedBorderColor),
              ),
              errorBorder: border.copyWith(
                borderSide: const BorderSide(color: Colors.red),
              ),
              errorStyle: const TextStyle(
                fontSize: 11,
                height: 1.2,
              ),

              prefixIcon: prefixSvg != null
                  ? Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  prefixSvg!,
                  colorFilter: ColorFilter.mode(
                    prefixColor ?? ThemeManager.black2!,
                    BlendMode.srcIn,
                  ),
                  width: 20,
                  height: 20,
                ),
              )
                  : prefixIconData != null
                  ? Icon(
                prefixIconData,
                color: prefixColor ?? ThemeManager.black2,
                size: 22,
              )
                  : null,

              suffixIcon: isPasswordField
                  ? InkWell(
                onTap: () {
                  _obscureNotifier.value = !obscureValue;
                },
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: suffixSvg != null
                      ? SvgPicture.asset(
                    suffixSvg!,
                    colorFilter: ColorFilter.mode(
                      suffixColor ?? ThemeManager.black2!,
                      BlendMode.srcIn,
                    ),
                    width: 20,
                    height: 20,
                  )
                      : suffixIconData != null
                      ? Icon(
                    suffixIconData,
                    color:
                    suffixColor ?? ThemeManager.black2,
                    size: 22,
                  )
                      : null,
                ),
              )
                  : null,
            ),
          );
        },
      ),
    );
  }
}
