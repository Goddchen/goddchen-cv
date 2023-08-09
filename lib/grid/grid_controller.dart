import 'package:goddchen_cv/grid/grid_model.dart';

abstract interface class GridController<T extends GridModelItem> {
  void openItem({required final T item});
}
