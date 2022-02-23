import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String buttonName;
  final Function function;
  final double marginTop;
  final double height;
  final double width;
  double? borderRadius;

  CommonButton(
      {Key? key, required this.buttonName,
      required this.function,
      required this.marginTop,
      required this.height,
      required this.width,
      this.borderRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(top: marginTop),
        decoration: BoxDecoration(
            color: Theme.of(context).buttonTheme.colorScheme!.primary,
            borderRadius: borderRadius != null
                ? BorderRadius.circular(borderRadius!)
                : BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ]),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            buttonName,
            style: TextStyle(
                color: Theme.of(context).buttonTheme.colorScheme!.secondary,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
