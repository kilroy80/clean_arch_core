mixin ViewModelMixin<T> {
  // void create();
  // void dispose();
  // void cancel();

  void create();
  void authChange(T? data);
  void widgetResume();
  void widgetPause();
}