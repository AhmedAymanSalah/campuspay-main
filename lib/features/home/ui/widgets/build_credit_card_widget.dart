import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class BuildCreditCardWidget extends StatefulWidget {
  const BuildCreditCardWidget({
    super.key,
  });

  @override
  State<BuildCreditCardWidget> createState() => _BuildCreditCardWidgetState();
}

class _BuildCreditCardWidgetState extends State<BuildCreditCardWidget> {
  GlobalKey<FormState> formKeyCreditCard = GlobalKey();

  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
          cardBgColor: const Color(0xFF2378FA),
        ),
        // CreditCardForm(
        //   cardNumber: cardNumber,
        //   expiryDate: expiryDate,
        //   cardHolderName: cardHolderName,
        //   cvvCode: cvvCode,
        //   onCreditCardModelChange: (value) {
        //     cardNumber = value.cardNumber;
        //     expiryDate = value.expiryDate;
        //     cardHolderName = value.cardHolderName;
        //     cvvCode = value.cvvCode;
        //     setState(() {});
        //   },
        //   formKey: formKeyCreditCard,
        // )
      ],
    );
  }
}
