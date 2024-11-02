import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        hintText: "ابحث عن سيارتك",
        hintTextDirection: TextDirection.rtl,
        suffixIcon: Icon(Icons.search),
        // labelText: "ابحث عن سيارتك",
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(color: Colors.grey)),
      ),
    );
  }
}
