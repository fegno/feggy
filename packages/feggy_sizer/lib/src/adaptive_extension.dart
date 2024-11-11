import 'package:feggy_sizer/imports_bindings.dart';

///*
extension ResponsiveSizeExt on num {
  ///
  double get w => Sizer.setWidth(this);

  ///
  double get h => Sizer.setHeight(this);

  ///
  double get r => Sizer.radius(this);

  ///
  double get sp => Sizer().setSp(this);

  ///
  Widget get verticalSpace => Sizer.setVerticalSpacing(this);

  ///
  Widget get verticalSpaceRadius => Sizer.setVerticalSpacingRadius(this);

  ///
  Widget get horizontalSpace => Sizer.setHorizontalSpacing(this);

  ///
  Widget get horizontalSpaceRadius => Sizer.setHorizontalSpacingRadius(this);
}
