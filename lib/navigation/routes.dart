enum Routes{
  splash('/'),
  main('/houses'),
  details('/houses/details');

  final String route;
  const Routes(this.route);
}