import 'package:causality/causality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_causality/flutter_causality.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/cv/cv_model.dart';
import 'package:intl/intl.dart';

class CvViewItem extends StatelessWidget {
  final DateFormat _dateFormat = DateFormat.y();
  final CvModelItem _item;

  CvViewItem({
    super.key,
    required final CvModelItem item,
  }) : _item = item;

  @override
  Widget build(final BuildContext context) => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: InkWell(
          onTap: _item.action
              .map(
                (final _) => () {
                  if (CausalityUniverseWidget.maybeOf(context)
                          ?.causalityUniverse
                      case CausalityUniverse universe) {
                    OpenCvViewItemCause(_item).emit(universe: universe);
                  }
                },
              )
              .toNullable(),
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      child: Text(
                        _item.title,
                        maxLines: 1,
                        style:
                            optionOf(Theme.of(context).textTheme.headlineSmall)
                                .map(
                                  (final TextStyle textStyle) =>
                                      textStyle.copyWith(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                                .toNullable(),
                      ),
                    ),
                    if (_item.from.isSome() || _item.until.isSome())
                      Row(
                        children: <Widget>[
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.calendar_month,
                            size: 24,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${_item.from.fold(() => '', (final DateTime from) => _dateFormat.format(from))}'
                            ' - '
                            '${_item.until.fold(() => 'today', (final DateTime until) => _dateFormat.format(until))}',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                ..._item.description.fold(
                  () => <Widget>[],
                  (final String description) => <Widget>[
                    Flexible(
                      child: SizedBox(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Text(
                            description,
                            maxLines: 2,
                            style:
                                optionOf(Theme.of(context).textTheme.bodyMedium)
                                    .map(
                                      (final TextStyle textStyle) =>
                                          textStyle.copyWith(
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                    .toNullable(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}

class OpenCvViewItemCause extends Cause {
  final CvModelItem item;

  OpenCvViewItemCause(this.item);
}
