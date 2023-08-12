import 'package:h_mart/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomTextField13 extends StatelessWidget {
  final String? title;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final AutovalidateMode? autoValidateMode;
  final int? maxLines;
  final int? minLines;
  final FocusNode? focusNode;
  final Color textColor;
  final bool? showCursor;
  final bool readOnly;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final Color fillColor;
  final List<TextInputFormatter> inputFormatter;
  static const Color fillColorDefaultValue = Color(0xffF0F0F0);
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool asterisk;

  const CustomTextField13(
      {super.key,
      this.onTap,
      this.validator,
      this.obscureText = false,
      this.autoValidateMode,
      this.title,
      this.controller,
      this.keyboardType,
      this.maxLines = 1,
      this.minLines,
      this.showCursor,
      this.readOnly = false,
      this.asterisk = false,
      this.hintText,
      this.fillColor = fillColorDefaultValue,
      this.prefixIcon,
      this.sufixIcon,
      this.textColor = Colors.black54,
      this.onChanged,
      this.focusNode,
      this.inputFormatter = const <TextInputFormatter>[]});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (title == null)
            ? Container()
            : Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: RichText(
                  text: TextSpan(
                    text: title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: redColor,
                    ),
                    children: [
                      (asterisk)
                          ? const TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 16.0,
                              ),
                            )
                          : const TextSpan(text: '')
                    ],
                  ),
                ),
              ),
        const SizedBox(height: 5),
        TextFormField(
          focusNode: focusNode,
          onChanged: onChanged,
          showCursor: showCursor,
          readOnly: readOnly,
          minLines: minLines,
          maxLines: maxLines,
          onTap: onTap,
          autovalidateMode: autoValidateMode,
          obscureText: obscureText,
          validator: validator,
          inputFormatters: inputFormatter,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            border: UnderlineInputBorder(
                borderSide: const BorderSide(
                  color: redColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8)),
            hintText: hintText,
            hintStyle: const TextStyle(
                color: Color(0xff999999),
                fontSize: 14,
                fontWeight: FontWeight.w400),
            isDense: true,
            fillColor: fillColor,
            filled: true,
            suffixIcon: sufixIcon,
            contentPadding: const EdgeInsets.only(top: 12, left: 10),
          ),
          controller: controller,
          keyboardType: keyboardType,
        ),
      ],
    );
  }
}

class CustomTextField2 extends StatelessWidget {
  final String? title;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int maxLines;
  final int? minLines;
  final GestureTapCallback? onTap;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final AutovalidateMode? autoValidateMode;
  final bool asterisk;
  final bool readOnly;
  final ValueChanged<String>? onChanged;
  final Color fillColor;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final double prefixIconSize;
  final double suffixIconSize;
  final EdgeInsetsGeometry contentPadding;

  const CustomTextField2({
    super.key,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 13,
    ),
    this.asterisk = false,
    this.validator,
    this.onChanged,
    this.obscureText = false,
    this.autoValidateMode,
    this.title,
    this.hint,
    this.controller,
    this.keyboardType,
    this.maxLines = 1,
    this.onTap,
    this.minLines,
    this.suffixIcon,
    this.prefixIconSize = 18,
    this.suffixIconSize = 18,
    this.fillColor = lightGrey,
    this.prefixIcon,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (title == null)
            ? Container()
            : Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: RichText(
                  text: TextSpan(
                    text: title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: redColor,
                    ),
                    children: [
                      (asterisk)
                          ? const TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 16.0,
                              ),
                            )
                          : const TextSpan(text: '')
                    ],
                  ),
                ),
              ),
        TextFormField(
          onChanged: onChanged,
          showCursor: !readOnly,
          readOnly: readOnly,
          autovalidateMode: autoValidateMode,
          obscureText: obscureText,
          validator: validator,
          onTap: onTap,
          style: const TextStyle(
            fontSize: 16,
            color: fontGrey,
          ),
          decoration: InputDecoration(
            contentPadding: contentPadding,
            fillColor: fillColor,
            filled: true,
            suffixIcon: suffixIcon,
            hintText: hint,
            isDense: true,
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.red),
            ),
            hintStyle: const TextStyle(color: Colors.black45),
            focusedErrorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: 2, color: redColor),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.blue),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: fontGrey,
              ),
            ),
          ),
          controller: controller,
          keyboardType: keyboardType,
          minLines: minLines,
          maxLines: maxLines,
        ),
      ],
    );
  }
}

// class CustomTextField extends StatelessWidget {
//   CustomTextField({
//     this.onChanged,
//     this.isEnabledBorder,
//     super.key,
//   });
//   final ValueChanged<String>? onChanged;
//   final bool? isEnabledBorder;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 52,
//       width: 48,
//       decoration: BoxDecoration(
//         color: ThemeColors.white,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: TextField(
//         onChanged: onChanged,
//         decoration: InputDecoration(
//           enabledBorder: isEnabledBorder == null
//               ? InputBorder.none
//               : isEnabledBorder!
//                   ? OutlineInputBorder(
//                       borderSide: BorderSide(
//                           color: ThemeColors.primaryColor, width: 1.5),
//                     )
//                   : InputBorder.none,
//           border: InputBorder.none,
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: ThemeColors.primaryColor, width: 2),
//           ),
//         ),
//         style: TextStyle(
//           fontSize: 20,
//           color: ThemeColors.primaryColor,
//         ),
//         textAlign: TextAlign.center,
//         keyboardType: TextInputType.number,
//         inputFormatters: [
//           LengthLimitingTextInputFormatter(1),
//           FilteringTextInputFormatter.digitsOnly,
//         ],
//       ),
//     );
//   }
// }

// class countryFlagTextField extends StatelessWidget {
//   final TextEditingController? controller;
//   final TextInputType? keyboardType;
//   final String? initialValue;
//   final FormFieldValidator<String>? validator;
//   final AutovalidateMode? autoValidateMode;
//   final ValueChanged<CountryCode>? onChanged;
//   final bool asterisk;
//   final String? title;

//   countryFlagTextField(
//       {this.validator,
//       this.autoValidateMode,
//       this.controller,
//       this.initialValue,
//       this.keyboardType,
//       this.onChanged,
//       this.title,
//       this.asterisk = false});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         (title == null)
//             ? Container()
//             : Padding(
//                 padding: const EdgeInsets.only(bottom: 5),
//                 child: RichText(
//                   text: TextSpan(
//                     text: title,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: ThemeColors.primaryColor,
//                     ),
//                     children: [
//                       (asterisk)
//                           ? const TextSpan(
//                               text: ' *',
//                               style: TextStyle(
//                                 color: Colors.red,
//                                 fontSize: 16.0,
//                               ),
//                             )
//                           : const TextSpan(text: '')
//                     ],
//                   ),
//                 ),
//               ),
//         // SizedBox(height: 5),
//         Container(
//           height: 48,
//           decoration: BoxDecoration(
//             borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(5.0),
//               topRight: Radius.circular(5.0),
//             ),
//             color: ThemeColors.white,
//           ),
//           child: CountryCodePicker(
//             onChanged: onChanged,
//             initialSelection: initialValue,
//             textStyle: const TextStyle(
//               color: Color(0xff828A89),
//               fontWeight: FontWeight.w400,
//               fontSize: 14,
//             ),
//             showCountryOnly: true,
//             showOnlyCountryWhenClosed: true,
//             alignLeft: true,
//             flagWidth: 32,
//             showDropDownButton: true,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class countryFlagNumberTextField extends StatelessWidget {
//   final TextEditingController? controller;
//   final TextInputType? keyboardType;
//   final String? initialvalue;
//   final FormFieldValidator<String>? validator;
//   final AutovalidateMode? autovalidateMode;
//   final ValueChanged<CountryCode>? onChanged;
//   final bool? showCursor;
//   final bool readOnly;
//   final bool enabled;
//   final bool asterisk;
//   final String? title;

//   countryFlagNumberTextField(
//       {this.validator,
//       this.autovalidateMode,
//       this.controller,
//       this.initialvalue,
//       this.keyboardType,
//       this.onChanged,
//       this.showCursor,
//       this.title,
//       this.asterisk = false,
//       this.readOnly = false,
//       this.enabled = true});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         (title == null)
//             ? Container()
//             : Padding(
//                 padding: const EdgeInsets.only(bottom: 5),
//                 child: RichText(
//                   text: TextSpan(
//                     text: title,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: ThemeColors.primaryColor,
//                     ),
//                     children: [
//                       (asterisk)
//                           ? const TextSpan(
//                               text: ' *',
//                               style: TextStyle(
//                                 color: Colors.red,
//                                 fontSize: 16.0,
//                               ),
//                             )
//                           : const TextSpan(text: '')
//                     ],
//                   ),
//                 ),
//               ),
//         // SizedBox(height: 5),
//         SizedBox(
//           height: 48,
//           child: TextFormField(
//             showCursor: showCursor,
//             readOnly: readOnly,
//             autovalidateMode: autovalidateMode,
//             validator: validator,
//             inputFormatters: [
//               FilteringTextInputFormatter.allow(RegExp(r'\d')),
//             ],
//             style: const TextStyle(
//                 fontFamily: 'Roboto',
//                 color: Color(0xff272727),
//                 fontSize: 16,
//                 fontWeight: FontWeight.w400),
//             decoration: InputDecoration(
//               fillColor: ThemeColors.white,
//               prefixIcon: Container(
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(10.0),
//                   ),
//                 ),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: ThemeColors.white,
//                     borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(5),
//                     ),
//                   ),
//                   child: CountryCodePicker(
//                     enabled: enabled,
//                     onChanged: onChanged,
//                     flagWidth: 25,
//                     initialSelection: initialvalue,
//                     showFlagDialog: true,
//                     showDropDownButton: true,
//                     showCountryOnly: false,
//                     showOnlyCountryWhenClosed: false,
//                     alignLeft: false,
//                   ),
//                 ),
//               ),
//               filled: true,
//               contentPadding: const EdgeInsets.fromLTRB(6.5, 0, 0, 0),
//               border: const OutlineInputBorder(
//                 borderSide: BorderSide(
//                   width: 0,
//                   style: BorderStyle.none,
//                 ),
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(5),
//                   topRight: Radius.circular(5),
//                 ),
//               ),
//             ),
//             controller: controller,
//             keyboardType: keyboardType,
//           ),
//         )
//       ],
//     );
//   }
// }

// class CustomTextField10 extends StatelessWidget {
//   final String? title;
//   final TextEditingController? controller;
//   final TextInputType? keyboardType;
//   final FormFieldValidator<String>? validator;
//   final bool obscureText;
//   final AutovalidateMode? autoValidateMode;
//   final int? maxLines;
//   final int? minLines;
//   final FocusNode? focusNode;
//   final Color textColor;
//   final bool? showCursor;
//   final bool readOnly;
//   final String? hintText;
//   final Widget? prefixIcon;
//   final Widget? sufixIcon;
//   final Color fillColor;
//   final List<TextInputFormatter> inputFormatter;
//   static const Color fillColorDefaultValue = Color(0xffF0F0F0);
//   final ValueChanged<String>? onChanged;
//   final VoidCallback? onTap;
//   final bool asterisk;

//   const CustomTextField10(
//       {super.key,
//       this.onTap,
//       this.validator,
//       this.obscureText = false,
//       this.autoValidateMode,
//       this.title,
//       this.controller,
//       this.keyboardType,
//       this.maxLines = 1,
//       this.minLines,
//       this.showCursor,
//       this.readOnly = false,
//       this.asterisk = false,
//       this.hintText,
//       this.fillColor = fillColorDefaultValue,
//       this.prefixIcon,
//       this.sufixIcon,
//       this.textColor = Colors.black54,
//       this.onChanged,
//       this.focusNode,
//       this.inputFormatter = const <TextInputFormatter>[]});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         (title == null)
//             ? Container()
//             : Padding(
//                 padding: const EdgeInsets.only(bottom: 5),
//                 child: RichText(
//                   text: TextSpan(
//                     text: title,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: ThemeColors.primaryColor,
//                     ),
//                     children: [
//                       (asterisk)
//                           ? const TextSpan(
//                               text: ' *',
//                               style: TextStyle(
//                                 color: Colors.red,
//                                 fontSize: 16.0,
//                               ),
//                             )
//                           : const TextSpan(text: '')
//                     ],
//                   ),
//                 ),
//               ),
//         const SizedBox(height: 5),
//         TextFormField(
//           focusNode: focusNode,
//           onChanged: onChanged,
//           showCursor: showCursor,
//           readOnly: readOnly,
//           minLines: minLines,
//           maxLines: maxLines,
//           onTap: onTap,
//           autovalidateMode: autoValidateMode,
//           obscureText: obscureText,
//           validator: validator,
//           inputFormatters: inputFormatter,
//           style: TextStyle(
//             color: textColor,
//             fontWeight: FontWeight.w400,
//             fontSize: 25,
//             fontFamily: 'Snell Rounded',
//           ),
//           decoration: InputDecoration(
//             prefixIcon: prefixIcon,
//             border: UnderlineInputBorder(
//                 borderSide: BorderSide(
//                   color: ThemeColors.grey2,
//                   width: 2,
//                 ),
//                 borderRadius: BorderRadius.circular(8)),
//             hintText: hintText,
//             hintStyle: const TextStyle(
//                 color: Color(0xff999999),
//                 fontSize: 20,
//                 fontFamily: 'Snell Rounded',
//                 fontWeight: FontWeight.w400),
//             isDense: true,
//             fillColor: fillColor,
//             filled: true,
//             suffixIcon: sufixIcon,
//             contentPadding: const EdgeInsets.only(top: 12, left: 10),
//           ),
//           controller: controller,
//           keyboardType: keyboardType,
//         ),
//       ],
//     );
//   }
// }
