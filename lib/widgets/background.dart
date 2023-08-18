import 'package:h_mart/consts/consts.dart';

import 'package:flutter/material.dart';

Widget backgroundWidget({Widget? child}) {
  return Container(clipBehavior: Clip.antiAlias,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),
        fit: BoxFit.fill
      ),
    ),
    child: child,
  );
}
