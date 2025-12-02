mixin ViewModelMixin {
  void create();
  void authChange<T>(T? data);
  void widgetResume();
  void widgetPause();
}