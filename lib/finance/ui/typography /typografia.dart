import 'package:flutter/material.dart';

class AppTypography {
  static const _baseFont = 'Open Sans';
  static const _titleFont = 'Roboto';

  static const _textStyle = TextStyle(fontFamily: _baseFont);
  static const _titleStyle = TextStyle(fontFamily: _titleFont);

  static final TextStyle txBody = _textStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.75,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final TextStyle txBodyBold = txBody.copyWith(
    fontWeight: FontWeight.w700,
  );

  static final TextStyle txButton = _textStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.425,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final TextStyle txButtonSmall = _textStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    height: 1.5,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final TextStyle txBodySmall = _textStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.571,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final TextStyle txSubtitle = _titleStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final TextStyle txTitle1 = _titleStyle.copyWith(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.375,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final TextStyle txTitle2 = _titleStyle.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.33333,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final TextStyle txTitle3 = _titleStyle.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 1.363,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const TextStyle emojiBig = TextStyle(
    fontSize: 24,
    height: 1,
  );

  static const TextStyle emojiMedium = TextStyle(
    fontSize: 20,
    height: 1,
  );

  static const TextStyle emojiSmall = TextStyle(
    fontSize: 16,
    height: 1,
  );
}
