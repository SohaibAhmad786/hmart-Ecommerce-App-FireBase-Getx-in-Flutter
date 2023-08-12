import 'package:h_mart/consts/consts.dart';

import 'package:flutter/material.dart';

Widget backgroundWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
      image: DecorationImage(
        image: AssetImage(imgBackground),
      ),
    ),
    child: child,
  );
}
