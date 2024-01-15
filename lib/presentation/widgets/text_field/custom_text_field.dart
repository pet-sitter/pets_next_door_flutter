import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/presentation/widgets/text_field/text_form_state.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.textFormState,
    this.controller,
    this.onChanged,
    this.error,
    this.hintText = '',
    this.validStateText = '사용가능',
    super.key,
  });

  final String? error;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String hintText;
  final String validStateText;
  final TextFormState textFormState;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerEnd,
      children: [
        SizedBox(
          height: 54,
          child: TextField(
            controller: controller,
            cursorColor: Colors.black,
            onChanged: onChanged,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffD9D9D9), width: 1.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 2.0),
              ),
              hintText: hintText,
              suffix: textFormState.when(
                empty: () => const SizedBox.shrink(),
                error: (text, error) => Text(
                  error,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 255, 106, 106),
                  ),
                ),
                valid: (text) => Text(
                  validStateText,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xff6A9DFF),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
