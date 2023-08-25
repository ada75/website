
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    ValueNotifier<double> elevationValue = ValueNotifier(0);

    return AppBar(
      //leadingWidth: 250,
      toolbarHeight: 100,
      actions: [
        if(width > 768 )...[
          TextButton(onPressed: () => context.go("/"), child: Text("Accueil", style: TextStyle(color: Colors.white),),),
          const SizedBox(width: 20,),
          TextButton(onPressed: () => context.go("/privacy"), child: Text("Privacy", style: TextStyle(color: Colors.white),),),
          const SizedBox(width: 20,),

        ]

      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}
