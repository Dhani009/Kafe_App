import 'package:flutter/material.dart';
import 'package:linkbola/core.dart';
import '../controller/mainmenu_controller.dart';

class MainmenuView extends StatefulWidget {
  const MainmenuView({Key? key}) : super(key: key);

  Widget build(context, MainmenuController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              padding: const EdgeInsets.all(10.0),
              width: 60,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 24.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 24.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      size: 24.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_2_outlined,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1663838843854-8f9fc4d2a433?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.black,
                        ),
                        child: Image.network(
                          "https://www.freepnglogos.com/uploads/coffee-logo-png/hot-coffee-logos-28.png",
                          width: 90.0,
                          height: 90.0,
                          fit: BoxFit.cover,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        "Selamat Pagi",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        "Ahmad Dhani",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SingleChildScrollView(
                        clipBehavior: Clip.none,
                        controller: ScrollController(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(controller.kategori.length,
                              (index) {
                            var item = controller.kategori[index];
                            bool klikmenu = controller.pilihkategori == index;
                            return Container(
                              margin: const EdgeInsets.only(
                                right: 15.0,
                              ),
                              child: InkWell(
                                onTap: () => controller.updatekategori(index),
                                child: Text(
                                  "$item",
                                  style: TextStyle(
                                      fontSize: klikmenu ? 16.0 : 14,
                                      fontWeight: klikmenu
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color:
                                          klikmenu ? Colors.red : Colors.grey),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SingleChildScrollView(
                        controller: ScrollController(),
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.none,
                        child: Row(
                          children: List.generate(controller.products.length,
                              (index) {
                            var item = controller.products[index];
                            return Container(
                              margin: const EdgeInsets.only(
                                right: 12.0,
                              ),
                              width: 90,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.network(
                                      item["photo"],
                                      width: 100.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    item["product_name"],
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Rp ${item["price"]}K",
                                          style: const TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.add,
                                        size: 24.0,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        "Kopi apa yang paling pahit? Kopilih dia daripada aku.",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 160.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://media.istockphoto.com/id/1440876715/id/foto/seorang-wanita-bahagia-di-sebuah-kafe-menggunakan-smartphone-dan-laptop-minum-kopi-dalam.jpg?s=170667a&w=0&k=20&c=7o3etdDohYxeMUgfU5vZy8--ysLTiIRg_sGJg4IzRr8=",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1.0 / 1.4,
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                        ),
                        itemCount: controller.products.length,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          var item = controller.products[index];
                          return Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          item["photo"],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                          6.0,
                                        ),
                                      ),
                                    ),
                                    child: const Stack(
                                      children: [
                                        Positioned(
                                          right: 6.0,
                                          top: 8.0,
                                          child: CircleAvatar(
                                            radius: 14.0,
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 14.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  item["product_name"],
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  item["category"],
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "Rp ${item["price"]}K",
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MainmenuView> createState() => MainmenuController();
}