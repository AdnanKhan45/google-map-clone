import 'package:flutter/material.dart';
import 'package:google_map_clone/features/app/theme/style.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusScopeNode? focusNode;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final void Function(PointerDownEvent)? onTapOutSide;
  final VoidCallback? onCancelTap;
  final String Function(String?)? validate;
  final bool? isOutlined;
  final bool? isOnSearchPage;
  final bool? readOnly;
  final bool? autoFocus;
  final bool? loading;
  final bool? isShowCancel;
  const SearchWidget({
    super.key,
    this.onCancelTap,
    required this.controller,
    this.isOutlined,
    this.focusNode,
    this.onTap,
    this.onChanged,
    this.validate,
    this.onSubmitted,
    this.onTapOutSide,
    this.isOnSearchPage,
    this.readOnly,
    this.autoFocus,
    this.loading,
    this.isShowCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 60),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(30),
            border: isOutlined == true
                ? Border.all(width: 1, color: greyColor)
                : Border.all(width: 1, color: Colors.transparent),
            boxShadow: isOutlined == true
                ? []
                : [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.4),
                      blurRadius: 5.0,
                      spreadRadius: 0.5,
                      offset: const Offset(
                        0.0,
                        0.0,
                      ),
                    ),
                  ]),
        child: TextFormField(
          autofocus: autoFocus ?? false,
          readOnly: readOnly ?? false,
          focusNode: focusNode,
          controller: controller,
          onChanged: onChanged,
          validator: validate,
          onTap: onTap,
          onTapOutside: onTapOutSide,
          onFieldSubmitted: onSubmitted,
          cursorColor: primaryColorLight,
          keyboardAppearance: Brightness.dark,
          keyboardType: TextInputType.text,
          style: const TextStyle(fontSize: 16),
          decoration: InputDecoration(
              hintText: "Search here",
              hintStyle: const TextStyle(color: greyColor, fontSize: 18, fontWeight: FontWeight.w400),
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
              border: InputBorder.none,
              prefixIcon: isOnSearchPage == true
                  ? GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 25,
                      ))
                  : Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Wrap(
                        children: [
                          SizedBox(
                              width: 35,
                              height: 35,
                              child: Image.asset(
                                "assets/images/app_logo.png",
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    ),
              suffixIcon: Padding(
                padding: EdgeInsets.zero,
                child: isShowCancel == true ? GestureDetector(onTap: onCancelTap,child: const Icon(Icons.close, size: 30,))  :  const Icon(
                  Icons.keyboard_voice,
                  size: 30,
                )
              )),
        ),
      ),
    );
  }
}
