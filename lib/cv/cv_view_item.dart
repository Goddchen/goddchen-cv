import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/cv/cv_model.dart';
import 'package:intl/intl.dart';

class CvViewItem extends StatelessWidget {
  final DateFormat _dateFormat = DateFormat.yMd();
  final CvModelItem _item;

  CvViewItem({
    super.key,
    required final CvModelItem item,
  }) : _item = item;

  @override
  Widget build(final BuildContext context) => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.tight,
                    child: Text(
                      _item.title,
                      maxLines: 2,
                      style: optionOf(Theme.of(context).textTheme.headlineSmall)
                          .map(
                            (final TextStyle textStyle) => textStyle.copyWith(
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                          .toNullable(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.calendar_month,
                    size: 24,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${_dateFormat.format(_item.from)} - ${_dateFormat.format(_item.until)}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ..._item.description.fold(
                () => <Widget>[],
                (final String description) => <Widget>[
                  Text(
                    description,
                    style: optionOf(Theme.of(context).textTheme.bodyMedium)
                        .map(
                          (final TextStyle textStyle) => textStyle.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                        .toNullable(),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
