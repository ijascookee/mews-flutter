// ignore_for_file: prefer_single_quotes

import 'package:flutter/widgets.dart';
import 'package:optimus/optimus.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final List<Option<OptimusColorOption>> colorOptions = OptimusColorOption.values
    .map((e) => Option(label: e.name, value: e))
    .toList();

final List<Option<IconData?>> exampleIcons = [
  const Option(label: 'none', value: null),
  const Option(label: 'Mews Logo', value: OptimusIcons.mews_logo),
  const Option(label: 'Magic', value: OptimusIcons.magic),
  const Option(label: 'Plus', value: OptimusIcons.plus),
  const Option(label: 'Delete', value: OptimusIcons.delete),
  const Option(label: 'Edit', value: OptimusIcons.edit),
  const Option(label: 'Chevron right', value: OptimusIcons.chevron_right),
  const Option(label: 'Chevron left', value: OptimusIcons.chevron_left),
];

final List<Option<Alignment>> alignments = [
  const Option<Alignment>(value: Alignment.center, label: 'Center'),
  const Option<Alignment>(value: Alignment.centerLeft, label: 'Center left'),
  const Option<Alignment>(value: Alignment.centerRight, label: 'Center right'),
  const Option<Alignment>(value: Alignment.topLeft, label: 'Top left'),
  const Option<Alignment>(value: Alignment.topRight, label: 'Top right'),
  const Option<Alignment>(value: Alignment.bottomLeft, label: 'Bottom left'),
  const Option<Alignment>(value: Alignment.bottomRight, label: 'Bottom right'),
];

final List<Option<OptimusWidgetSize>> sizeOptions = OptimusWidgetSize.values
    .map((e) => Option(label: e.name, value: e))
    .toList();

final List<Option<Variation>> variationOptions =
    Variation.values.map((e) => Option(label: e.name, value: e)).toList();

const longText = """
Nascetur nec convallis tempor sagittis ligula. Mauris aenean curae vestibulum 
aenean fames posuere consequat turpis. Cursus lectus rutrum dolor condimentum 
rhoncus tincidunt rutrum. Hac amet class vivamus rhoncus condimentum; penatibus 
risus magnis. Penatibus nulla venenatis nulla praesent mauris. Morbi feugiat 
rhoncus ridiculus varius faucibus commodo tincidunt ipsum molestie. Volutpat 
semper aptent viverra facilisi nam nibh suscipit purus himenaeos. Himenaeos 
quisque ultrices condimentum mauris a diam.""";

extension EnumsToOptions<T extends Enum> on List<T> {
  List<Option<T>> toOptions() =>
      map((e) => Option(label: e.name, value: e)).toList();
}

extension OptionsWithEmpty<T> on List<Option<T>> {
  List<Option<T?>> withEmpty() => [
        const Option(label: '', value: null),
        ...this,
      ];
}
