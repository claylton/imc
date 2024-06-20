import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ImcBloc {
  MaskTextInputFormatter heightMaskTextInputFormatter = MaskTextInputFormatter(mask: '#.##');
  MaskTextInputFormatter weightMaskTextInputFormatter = MaskTextInputFormatter(mask: '###.##');
  String result = "Preencha os campos para calcular o IMC";

  void calculate() {
    double weight = double.parse(weightMaskTextInputFormatter.getMaskedText());
    double height = double.parse(heightMaskTextInputFormatter.getMaskedText());
    double imc = weight / (height * height);

    if (imc < 17) {
      result = "Muito abaixo do peso (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 17 && imc < 18.49) {
      result = "Abaixo do peso (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 18.50 && imc < 24.99) {
      result = "Peso ideal (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 25 && imc < 29.99) {
      result = "Levemente acima do peso (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 30 && imc < 34.99) {
      result = "Obesidade grau I (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 35 && imc < 39.99) {
      result = "Obesidade grau II (${imc.toStringAsPrecision(4)})";
    } else {
      result = "Obesidade grau III (${imc.toStringAsPrecision(4)})";
    }
  }
  
}