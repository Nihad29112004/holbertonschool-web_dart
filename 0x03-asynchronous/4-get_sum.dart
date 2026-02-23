import 'dart:convert';
import '4-util.dart';

calculateTotal() async {
  double total = 0;
  try {
    String user = await fetchUserData();
    Map<String, dynamic> userData = jsonDecode(user);
    String id = userData['id'];

    String orders = await fetchUserOrders(id);
    List<dynamic> userOrders = jsonDecode(orders);
    for (int i = 0; i < userOrders.length; i++) {
      total += jsonDecode(await fetchProductPrice(userOrders[i]));
    }

    return total;

    } catch (error) {
      return -1;
    }
}