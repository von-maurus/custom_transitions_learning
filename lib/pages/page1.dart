import 'package:flutter/material.dart';
import 'package:custom_transitions_learning/pages/page2.dart';
import 'package:custom_route_transitions_ex_plugin_01/custom_route_transitions_ex_plugin_01.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('Page1'), backgroundColor: Colors.transparent),
      body: Center(
        child: MaterialButton(
          color: Colors.white,
          child: Text('To Page 2', style: TextStyle(color: Colors.black, fontSize: 20)),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const Page2()),
            // ); // Posibilidad de navegar con animacion
            // Navigator.pushNamed(context, 'page2'); // navegacion sin animacion
            RouteTransitions(
              context: context,
              child: const Page2(),
              animation: AnimationType.fadeIn,
              duration: const Duration(milliseconds: 500),
            ); // navegacion con animacion
          },
        ),
      ),
    );
  }
}
