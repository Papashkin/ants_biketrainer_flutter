class ViewState {
  ViewState(this.status) : assert(status != null);

  final ViewStatus status;
}

enum ViewStatus { loading, content }

extension ViewStatusExtension on ViewStatus {

  bool isLoading() {
    return this == ViewStatus.loading;
  }
}
