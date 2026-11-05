//-ข้อ1

class Product {
  String name;
  double price;
  Product(this.name, this.price);

  void showInfo() {
    print("สินค้า : $name");
    print("ราคา : $price");
  }
}

//-ข้อ2
class Clothing extends Product {
  String size;
  int quantity;

  Clothing(String name, double price, this.size, this.quantity)
    : super(name, price);

  int calculateDiscount() {
    if (quantity >= 10) {
      return 20;
    } else if (quantity >= 5) {
      return 10;
    } else if (quantity >= 3) {
      return 5;
    } else {
      return 0;
    }
  }

  @override
  void showInfo() {
    int discount = calculateDiscount();
    double total = price * quantity * (100 - discount) / 100;
    print("สินค้า: $name");
    print("ไซส์ : $size");
    print("ราคา : $price");
    print("จำนวน : $quantity");
  }
}

void main() {
  var p1 = Clothing("เสื้อยืดคอกลม", 1350, 'M', 10);
  var p2 = Clothing("กางเกงยีนส์", 590, 'L', 2);
  var p3 = Electronics("หูฟัง", 1290, 'Sonic', 12);
  var p4 = Electronics("พาวเวอร์แบงก์", 890, 'Volt', 24);
  p1.showInfo();
  p2.showInfo();
  p3.showInfo();
  p4.showInfo();

  print("${p1.name} ลด ${p1.calculateDiscount()}%");
  print("${p2.name} ลด ${p2.calculateDiscount()}%");
}

//-ข้อ3
class Electronics extends Product {
  String brand;
  int warrantyMonths;

  Electronics(String name, double price, this.brand, this.warrantyMonths)
    : super(name, price);

  @override
  void showInfo() {
    print("หูฟัง: $name");
    print("หูฟัง $brand");
    print("ราคา : $price");
    print("ประกัน : $warrantyMonthsเดือน");
  }
}
