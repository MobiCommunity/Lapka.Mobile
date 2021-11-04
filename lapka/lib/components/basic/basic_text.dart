import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/text_styles.dart';

class BasicText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool center;
  final Color color;

  const BasicText.heading20Bold(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = heading20Bold;
  const BasicText.heading1(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = heading1;
  const BasicText.heading1Light(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = heading1Light;
  const BasicText.heading1Bold(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = heading1Bold;
  const BasicText.heading2(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = heading3;
  const BasicText.heading2Bold(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = heading3Bold;
  const BasicText.heading2Light(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = heading3Light;
  const BasicText.subtitleBig(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = subtitleBig;
  const BasicText.subtitleBigBold(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = subtitleBigBold;
  const BasicText.subtitleBigLight(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = subtitleBigLight;
  const BasicText.subtitle(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = subtitle;
  const BasicText.subtitleBold(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = subtitleBold;
  const BasicText.subtitleLight(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = subtitleLight;
  const BasicText.body14(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = body14;
  const BasicText.body14Bold(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = body14Bold;
  const BasicText.body14Light(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = body14Light;
  const BasicText.caption(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = caption;
  const BasicText.captionBold(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = captionBold;
  const BasicText.captionLight(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = captionLight;
  const BasicText.overline(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = overline;
  const BasicText.overlineBold(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = overlineBold;
  const BasicText.overlineLight(this.text,
      {this.center = false, this.color = BasicColors.darkGrey})
      : style = overlineLight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(color: color),
      textAlign: center ? TextAlign.center : TextAlign.start,
    );
  }
}
