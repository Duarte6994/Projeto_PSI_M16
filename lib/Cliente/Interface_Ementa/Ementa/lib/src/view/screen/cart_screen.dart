import 'package:pap_projeto/Cliente/Interface_Ementa/Ementa/lib/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/product_controller.dart';
import '../../model/product.dart';
import '../widget/empty_cart.dart';

final ProductController controller = Get.put(ProductController());

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: false,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/Icons_launcher/ic_launcher.png'),
            ),
          ),
          actions: [
            IconButton(
              icon: Image.asset('assets/Icons/qrcodescan.png'),
              iconSize: 60,
              onPressed: null,
            )
          ]
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 10,
            child: !controller.isEmptyCart
                ? ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20),
                    itemCount: controller.cartProducts.length,
                    itemBuilder: (_, index) {
                      Product product = controller.cartProducts[index];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.all(15),
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.grey[200]?.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorExtension.randomColor),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    product.images[0],
                                    width: 70,
                                    height: 120,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    product.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    controller.getCurrentSize(product),
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    controller.isPriceOff(product)
                                        ? "${product.off}\€"
                                        : "${product.price}\€",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 23),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  FittedBox(
                                    child: IconButton(
                                      splashRadius: 10.0,
                                      onPressed: () =>
                                          controller.decreaseItem(index),
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Color(0xFFEC6813),
                                      ),
                                    ),
                                  ),
                                  GetBuilder<ProductController>(
                                    builder: (ProductController controller) {
                                      return Text(
                                        '${controller.cartProducts[index].quantity}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w900),
                                      );
                                    },
                                  ),
                                  FittedBox(
                                      child: IconButton(
                                          splashRadius: 10.0,
                                          onPressed: () =>
                                              controller.increaseItem(index),
                                          icon: const Icon(Icons.add,
                                              color: Color(0xFFEC6813)))),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  )
                : const EmptyCart(),
          ),
          Expanded(
            flex: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Total: ",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
                  SizedBox(height: 10),
                  Obx(() {
                    return Text(
                      "${controller.totalPrice.value}\€",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFEC6813),
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: ElevatedButton(
                  child: const Text("Submeter Pedido"),
                  onPressed: controller.isEmptyCart ? null : () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
