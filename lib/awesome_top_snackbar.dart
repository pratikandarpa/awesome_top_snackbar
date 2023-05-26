library awesome_top_snackbar;

import 'package:awesome_top_snackbar/top_snack_bar.dart';
import 'package:flutter/material.dart';

class AwesomeTopSnackbar extends StatefulWidget {
  final String message;
  final Color backgroundColor;
  final TextStyle textStyle;
  final int maxLines;
  final int iconRotationAngle;
  final List<BoxShadow> boxShadow;
  final BorderRadius borderRadius;
  final double iconPositionTop;
  final double iconPositionLeft;
  final EdgeInsetsGeometry messagePadding;
  final double textScaleFactor;
  final TextAlign textAlign;
  final VoidCallback? onCloseClick;
  final Icon? icon;
  final BoxDecoration? iconWithDecoration;

  const AwesomeTopSnackbar({
    Key? key,
    required this.message,
    this.onCloseClick,
    this.messagePadding = const EdgeInsets.symmetric(horizontal: 24),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.white,
    ),
    this.icon,
    this.iconWithDecoration,
    this.maxLines = 2,
    this.iconRotationAngle = 32,
    this.iconPositionTop = -10,
    this.iconPositionLeft = -8,
    required this.backgroundColor,
    this.boxShadow = kDefaultBoxShadow,
    this.borderRadius = kDefaultBorderRadius,
    this.textScaleFactor = 1.0,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  AwesomeTopSnackbarState createState() => AwesomeTopSnackbarState();
}

class AwesomeTopSnackbarState extends State<AwesomeTopSnackbar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 70,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius,
        boxShadow: widget.boxShadow,
      ),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                widget.message,
                style: theme.textTheme.bodyText2?.merge(widget.textStyle),
                textAlign: widget.textAlign,
                overflow: TextOverflow.ellipsis,
                maxLines: widget.maxLines,
                textScaleFactor: widget.textScaleFactor,
              ),
            ),
          ),
          Visibility(
            visible: widget.icon == null ? false : true,
            child: GestureDetector(
              onTap: widget.onCloseClick,
              child: Container(
                height: 32,
                width: 32,
                margin: const EdgeInsets.all(10),
                decoration: widget.iconWithDecoration,
                child: widget.icon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const kDefaultBoxShadow = [
  BoxShadow(
    color: Colors.black26,
    offset: Offset(0, 0),
    spreadRadius: 1,
    blurRadius: 30,
  ),
];

const kDefaultBorderRadius = BorderRadius.all(Radius.circular(12));

void awesomeTopSnackbar(BuildContext context, String message, {BoxDecoration? iconWithDecoration, Color? backgroundColor, Icon? icon}) {
  AnimationController? localAnimationController;

  showTopSnackBar(
    animationDuration: const Duration(milliseconds: 1000),
    reverseAnimationDuration: const Duration(milliseconds: 350),
    displayDuration: const Duration(milliseconds: 2000),
    onAnimationControllerInit: (controller) => localAnimationController = controller,
    dismissType: DismissType.onSwipe,
    dismissDirection: [
      DismissDirection.horizontal,
      DismissDirection.vertical,
      DismissDirection.endToStart,
      DismissDirection.up,
      DismissDirection.startToEnd
    ],
    Overlay.of(context),
    AwesomeTopSnackbar(
      onCloseClick: () {
        localAnimationController?.reverse();
      },
      icon: icon,
      iconWithDecoration: iconWithDecoration,
      message: message,
      backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
    ),
  );
}
/* 
void showErrorSnackBar(BuildContext context, String message,
    {Color? backgroundColor}) {
  AnimationController? localAnimationController;

  showTopSnackBar(
    animationDuration: const Duration(milliseconds: 1000),
    reverseAnimationDuration: const Duration(milliseconds: 350),
    displayDuration: const Duration(milliseconds: 2000),
    onAnimationControllerInit: (controller) =>
        localAnimationController = controller,
    dismissType: DismissType.onSwipe,
    dismissDirection: [
      DismissDirection.horizontal,
      DismissDirection.vertical,
      DismissDirection.endToStart,
      DismissDirection.up,
      DismissDirection.startToEnd
    ],
    Overlay.of(context),
    AwesomeTopSnackbar.error(
      onCloseClick: () {
        localAnimationController?.reverse();
      },
      message: message,
      backgroundColor: backgroundColor ?? const Color(0xFFE74848),
    ),
  );
} */
