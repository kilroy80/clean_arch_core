mixin ViewModelMixin {

  late int cancelTokenHash;

  void createToken();
  void cancel();
  void dispose();
}