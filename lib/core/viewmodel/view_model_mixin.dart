mixin ViewModelMixin {
  // void create();
  // void dispose();
  // void cancel();

  void create();
  void authChange<T>(T data);
  void widgetResume();
  void widgetPause();
}