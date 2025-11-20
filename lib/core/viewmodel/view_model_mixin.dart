mixin ViewModelMixin {
  // void create();
  // void dispose();
  // void cancel();

  void create();
  void authChange({dynamic data});
  void widgetResume();
  void widgetPause();
}