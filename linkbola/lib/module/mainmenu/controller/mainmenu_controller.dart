import 'package:flutter/material.dart';
import 'package:linkbola/core.dart';
import '../view/mainmenu_view.dart';

class MainmenuController extends State<MainmenuView> {
  static late MainmenuController instance;
  late MainmenuView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List kategori = [
    "Rekomendasi",
    "Aneka Kopi",
    "Makanan",
    "Aneka Jus",
    "Snack"
  ];
  int pilihkategori = 0;
  updatekategori(int newindex) {
    pilihkategori = newindex;
    setState(() {});
  }

  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "photo":
          "https://riaupos.co/thumb/4919-img_6848.jpeg",
      "product_name": "Kopi Murah",
      "price": 10,
      "category": "Minuman",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 20,
      "is_favorite": false,
    },
    {
      "id": 2,
      "photo":
          "https://res.cloudinary.com/dk0z4ums3/image/upload/v1649031154/attached_image/kentang-goreng-dinilai-tidak-sehat-ini-cara-mengakalinya.jpg",
      "product_name": "Kentang Goreng",
      "price": 17,
      "category": "Makanan",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 18,
      "is_favorite": true,
    },
    {
      "id": 3,
      "photo":
          "https://cdn1.katadata.co.id/media/images/thumb/2023/05/09/Resep_Es_Kopi_Kekinian-2023_05_09-11_40_31_5cf04a9c1074427619b3147c01c2607c_960x640_thumb.jpg",
      "product_name": "Kopi kekinian",
      "price": 15,
      "category": "Minuman",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 28,
      "is_favorite": false,
    },
    {
      "id": 4,
      "photo":
          "https://st3.depositphotos.com/34780080/37029/i/450/depositphotos_370297034-stock-photo-ayam-geprek-is-indonesian-deep.jpg",
      "product_name": "Ayam Geprek",
      "price": 18,
      "category": "Makanan",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 25,
      "is_favorite": true,
    },
    {
      "id": 5,
      "photo": "https://www.dapurkobe.co.id/wp-content/uploads/sate-ayam.jpg",
      "product_name": "Sate Ayam",
      "price": 25,
      "category": "Makanan",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 28,
      "is_favorite": true,
    },
    {
      "id": 6,
      "photo":
          "https://asset-a.grid.id/crop/0x0:0x0/x/photo/2020/02/01/2471586943.jpg",
      "product_name": "Taro",
      "price": 10,
      "category": "Minuman",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 45,
      "is_favorite": false,
    },
    {
      "id": 7,
      "photo":
          "https://bebekbkb.com/wp-content/uploads/2020/02/es-lemon-tea.jpg",
      "product_name": "Lemon Tea",
      "price": 7,
      "category": "Minuman",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 56,
      "is_favorite": false,
    },
    {
      "id": 8,
      "photo":
          "https://limawarna.com/blog/wp-content/uploads/2020/07/2-cara-membuat-dalgona-coffee-tanpa-mixer.jpg",
      "product_name": "Dalgona",
      "price": 15,
      "category": "Minuman",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true,
    },
    {
      "id": 9,
      "photo":
          "https://img.kurio.network/0RDRFlmlME_TtLODTWWpxwPZPZs=/1200x1200/filters:quality(80)/https://kurio-img.kurioapps.com/20/11/09/afea2d30-4e7f-4670-9917-9cb7195377d7.jpeg",
      "product_name": "Nugget",
      "price": 23,
      "category": "Makanan",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true
    },
    {
      "id": 10,
      "photo":
          "https://images.unsplash.com/photo-1622240506921-042a4e71c172?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "product_name": "Puncak Coffe",
      "price": 10,
      "category": "Minuman",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true
    },
    {
      "id": 11,
      "photo":
          "https://cdn.qasir.id/production/newproduct/original/tG7gGQgm8UEAtfkstudioku-117342937-593140238018912-6804199493516167354-n-1024x1024jpg",
      "product_name": "Gula Aren",
      "price": 10,
      "category": "Minuman",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true
    },
    {
      "id": 12,
      "photo":
          "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/indizone/2020/04/16/0ysxdv/t_5e9d4453939c5.jpg",
      "product_name": "Matcha",
      "price": 12,
      "category": "Minuman",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true
    },
    {
      "id": 13,
      "photo":
          "https://www.dapurkobe.co.id/wp-content/uploads/seblak-poll-pedas-1.jpg",
      "product_name": "Seblak",
      "price": 15,
      "category": "Makanan",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true
    },
    {
      "id": 14,
      "photo":
          "https://ik.imagekit.io/10tn5i0v1n/article/165074f7ebc88cf400c7041ec6450010.jpeg",
      "product_name": "Roti Bakar",
      "price": 10,
      "category": "Makanan",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true
    },
    {
      "id": 15,
      "photo":
          "https://miro.medium.com/v2/resize:fit:1200/1*mbHLyfxRa6TZ3N1UVeRfyQ.jpeg",
      "product_name": "Kopi Susu",
      "price": 10,
      "category": "Minuman",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true
    },
    {
      "id": 16,
      "photo":
          "https://puripangan.co.id/wp-content/uploads/2021/04/pexels-maria-marghareta-wibisono-5735836-1024x819.jpg",
      "product_name": "Mie Samyang",
      "price": 15,
      "category": "Makanan",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true
    },
  ];
}
