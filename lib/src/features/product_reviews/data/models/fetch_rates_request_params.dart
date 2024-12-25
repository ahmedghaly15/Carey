class FetchRatesRequestParams {
  final int carId;
  final int? page, perPage;

  FetchRatesRequestParams({
    required this.carId,
    this.page,
    this.perPage,
  });
}
