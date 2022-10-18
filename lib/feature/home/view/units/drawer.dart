import 'package:eh_hadidy/core/color.dart';
import 'package:flutter/material.dart';

class DrawerFb1 extends StatelessWidget {
  const DrawerFb1({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: AppColors.white,
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  //   image: NetworkImage(
                  //       'https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/backgrounds%2Fgradienta-m_7p45JfXQo-unsplash.jpg?alt=media&token=adc01da9-3e54-48af-91c3-d1b303498618'),
                  // ),
                  image: AssetImage('assets/splash_cover.jpg'),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircleAvatar(
                      maxRadius: MediaQuery.of(context).size.width / 9,
                      backgroundImage: const NetworkImage(
                          'https://imgs.search.brave.com/NywNzwKtxVQ81Xd2_Llljzx6j8qIWlq91IAWDuvrc5g/rs:fit:612:612:1/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vdmVjdG9y/cy9kZWZhdWx0LXBy/b2ZpbGUtcGljdHVy/ZS1hdmF0YXItcGhv/dG8tcGxhY2Vob2xk/ZXItdmVjdG9yLWls/bHVzdHJhdGlvbi12/ZWN0b3ItaWQxMjIz/NjcxMzkyP2s9NiZt/PTEyMjM2NzEzOTIm/cz02MTJ4NjEyJnc9/MCZoPU5HeGRleGZs/YjlFeVFjaHFqUVAw/bTZ3WXVjSkJZTGZ1/NDZLQ0xOTUhaWU09'),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'محمود',
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    color: AppColors.orange,
                                  ),
                        ))
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: Column(
                children: [
                  MenuItem(
                    text: 'صور الروشتة وابعتها لينا',
                    icon: Icons.whatsapp,
                    onClicked: () => {},
                  ),
                  MenuItem(
                    text: 'السنبلاوين أرض الجمال',
                    icon: Icons.pin_drop,
                    onClicked: () {},
                  ),
                  MenuItem(
                    text: 'السنبلاوين ارض الجمال',
                    icon: Icons.pin_drop,
                    onClicked: () {},
                  ),
                  MenuItem(
                    text: '01009300330',
                    icon: Icons.phone,
                    onClicked: () {},
                  ),
                  const Divider(color: Colors.black),
                  MenuItem(
                    text: 'Settings',
                    icon: Icons.settings,
                    onClicked: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onClicked;

  const MenuItem({
    required this.text,
    required this.icon,
    this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = AppColors.white;
    const hoverColor = Colors.white70;

    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: AppColors.white,
          size: 24,
        ),
        title: Text(text, style: const TextStyle(color: color)),
        hoverColor: hoverColor,
        onTap: onClicked,
      ),
    );
  }
}
