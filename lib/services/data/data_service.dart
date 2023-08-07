import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/portfolio/portfolio_data_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_service.g.dart';

@riverpod
DataServiceAggregator dataService(final _) => DataServiceImplementation();

abstract interface class DataServiceAggregator
    implements PortfolioDataService {}

class DataServiceImplementation implements DataServiceAggregator {
  @override
  TaskEither<Object, List<PortfolioDataServiceProject>> get projectsTask =>
      TaskEither<Object, List<PortfolioDataServiceProject>>.of(
        <PortfolioDataServiceProject>[
          PortfolioDataServiceProject(
            description:
                'Dart package with implementation for RFB (VNC) protocol.',
            link: Uri.parse('https://pub.dev/packages/dart_rfb'),
            title: 'dart_rfb',
          ),
        ],
      );
}
