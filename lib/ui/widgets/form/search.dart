import 'package:app/ui/share/colors.dart';
import 'package:app/ui/share/styles.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      //false
      autofocus: false,
      // style: ,
      decoration: InputDecoration(
        prefixIcon: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Icon(Icons.search, color: Colors.black),
        ),
        prefixIconConstraints:
            const BoxConstraints(maxHeight: 20, maxWidth: 35),
        hintText: "Contacts",
        // hintStyle: textFieldPlaceholderTextStyle(context),
        isDense: true,
        filled: true,
        fillColor: AppColors.gray,
        focusedBorder: AppStyles.transparentBorder,
        disabledBorder: AppStyles.transparentBorder,
        enabledBorder: AppStyles.transparentBorder,
        errorBorder: AppStyles.transparentBorder,
        focusedErrorBorder: AppStyles.transparentBorder,
        errorStyle: TextStyle(
            fontSize: 10,
            color: Theme.of(context).colorScheme.error,
            fontWeight: FontWeight.w500,
            height: 1.4),
      ),
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.text,
      onSaved: (val) {},
      onEditingComplete: () {},
      onChanged: (val) {},
      // validator: (val) {},
      onTap: () {},
    );
  }
}
