mixin ViewModelMixin<AT> {
  // void create();
  // void dispose();
  // void cancel();

  void create();
  void authChange(AT data);
  void widgetResume();
  void widgetPause();
}