class SizeConstants{
  SizeConstants._internal();

  static final SizeConstants _instance = SizeConstants._internal();

  factory SizeConstants() {
    return _instance;
  }
  static final double outerBorderRadius=20;
  static final double innerBorderRadius=16;

  static final double padding=20;
  static final double verticalPadding=10;


  static final Duration mainDuration=Duration(seconds: 1);
  static final Duration slideDuration=Duration(milliseconds: 600);

  static final Duration mainDelayDuration=Duration(milliseconds: 400);
  static final Duration maxDelayDuration=Duration(milliseconds: 600);

}