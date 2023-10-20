import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/src/features/user/domain/user_nickname_form_state.dart';

class PNDCustomTextFormField extends StatelessWidget {
  const PNDCustomTextFormField({
    required this.controller,
    required this.textFormState,
    this.onChanged,
    this.error,
    this.hintText = '',
    this.validStateText = '사용가능',
    super.key,
  });

  final String? error;
  final void Function(String)? onChanged;
  final TextEditingController controller;
  final String hintText;
  final String validStateText;
  final TextFormState textFormState;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerEnd,
      children: [
        TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            suffix: textFormState.when(
              empty: (text) => const SizedBox.shrink(),
              error: (text, error) => Text(error),
              valid: (text) => Text(
                validStateText,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
