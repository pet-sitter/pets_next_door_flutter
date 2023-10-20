import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_nickname_form_state.freezed.dart';

@freezed
sealed class TextFormState with _$TextFormState {
  const factory TextFormState.empty(String text) = TextFormStateEmpty;

  const factory TextFormState.error(String text, String error) =
      TextFormStateError;

  const factory TextFormState.valid(String text) = TextFormStateValid;
}
