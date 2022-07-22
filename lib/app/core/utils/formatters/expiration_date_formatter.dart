import 'package:flutter/services.dart';

/// Formata o valor do campo com a mascara de CEP `XX.XXX-XXX`
class ExpirationDateFormatter extends TextInputFormatter {
  /// Define o tamanho máximo do campo.
  final maxLength = 4;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newValueLength = newValue.text.length;
    var selectionIndex = newValue.selection.end;

    if (newValueLength > maxLength) {
      return oldValue;
    }
    const substrInicio = 0;
    var substrIndex = 0;
    final newText = StringBuffer();

    if (newValueLength >= 3) {
      newText
          .write('${newValue.text.substring(substrInicio, substrIndex = 2)}/');
      if (newValue.selection.end >= 2) selectionIndex++;
    }

    if (newValueLength >= substrIndex) {
      newText.write(newValue.text.substring(substrIndex));
    }

    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
