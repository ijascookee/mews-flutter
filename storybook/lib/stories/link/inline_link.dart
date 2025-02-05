import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:optimus/optimus.dart';
import 'package:storybook/utils.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final Story inlineLink = Story(
  name: 'Navigation/Link/Inline Link',
  builder: (context) {
    final k = context.knobs;

    final size = k.sliderInt(label: 'Text size', initial: 16, min: 12, max: 20);
    final allowInherit = k.boolean(label: 'Inherit', initial: false);
    final color = k.options(label: 'Colors', initial: null, options: _colors);
    final onPressed = k.boolean(label: 'Enabled', initial: true) ? () {} : null;

    final TextStyle style = TextStyle(fontSize: size.toDouble(), color: color);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Some text before inline link. Inline ', style: style),
            OptimusInlineLink(
              text: const Text('Link'),
              shouldInherit: allowInherit,
              onPressed: onPressed,
              useStrong: k.boolean(label: 'Strong', initial: false),
              textStyle: allowInherit ? style : null,
              variant: k.options(
                label: 'Variant',
                initial: OptimusLinkVariant.primary,
                options: OptimusLinkVariant.values.toOptions(),
              ),
            ),
            Text(' could be used inside text.', style: style),
          ],
        ),
      ),
    );
  },
);

const _colors = [
  Option(label: 'none', value: null),
  Option(label: 'black', value: OptimusLightColors.neutral1000),
  Option(label: 'green', value: OptimusLightColors.success),
  Option(label: 'red', value: OptimusLightColors.danger),
];
