
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ImcBloc {
  MaskTextInputFormatter heightController = MaskTextInputFormatter(mask: '###');
  MaskTextInputFormatter weightController = MaskTextInputFormatter(mask: '###');
  String result = "Preencha os campos para calcular o IMC";

  void calculate() {
    double weight = double.parse(weightController.getMaskedText());
    double height = double.parse(heightController.getMaskedText()) / 100;
    double imc = weight / (height * height);

    if (imc < 18.6) {
      result = "Abaixo do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc < 24.9) {
      result = "Peso ideal (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc < 29.9) {
      result = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 29.9 && imc < 34.9) {
      result = "Obesidade grau I (${imc.toStringAsPrecision(3)})";
    } else if (imc >= 34.9 && imc < 39.9) {
      result = "Obesidade grau II (${imc.toStringAsPrecision(3)})";
    } else {
      result = "Obesidade grau III (${imc.toStringAsPrecision(3)})";
    }
  }
  
}