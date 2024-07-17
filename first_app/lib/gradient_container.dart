import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// final -> for constant values, which are dynamically derived at run time
// const -> compile time variables, this can lead to performance optimization
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
// if we use var -> then in the container below, there are some changes to be done w.r.t const values
Alignment? centerAlignment; // can accept null or alignment
// named arguments are optional by default for example key argument in the constructor below

// dynamic variable types can lead to bugs
class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: startAlignment,
            end: endAlignment,
            tileMode: TileMode.mirror),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: colors,
//             begin: startAlignment,
//             end: endAlignment,
//             tileMode: TileMode.mirror),
//       ),
//       child: const Center(
//         child: StyledText("Revamp Journey 2.0 w/ M"),
//       ),
//     );
//   }
// }
