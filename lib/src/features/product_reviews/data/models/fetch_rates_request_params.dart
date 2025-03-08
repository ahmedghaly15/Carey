class FetchRatesRequestParams {
  final int carId;
  final int? page, perPage, rate;

  FetchRatesRequestParams({
    required this.carId,
    this.page,
    this.perPage,
    this.rate,
  });
}
