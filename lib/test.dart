class Product{
  String name;
  double price;
  int qty;
  Product(this.name,this.price,this.qty);

  double cal(){
    double total=this.price * this.qty;
    return total;
  }

  void showInfo(){
    print("สินค้า: $nameราคา: $price ซื้อจำนวน: $qty: ราคารวม: ${cal().toString()}");
  }
}

// สร้างคลาลูก
class CarProduct extends Product{
  CarProduct (String name, double price , int qty) : super (name, price, qty);

}

void main(){
 //  String myName= "Methapat";
 // int ace = 18;
 //  print("hello, word ");
 //  print("mynameis $myName acg is $ace");



  var  p1 = Product("iPhone 18Promax", 50000, 3);
  var  p2 = Product("iPed Air", 25000, 2);
  var  p3 = CarProduct("Honda City",60000, 2);


  p1.showInfo();
  p2.showInfo();
  p3.showInfo();
  print(p3.name);
  print(p3.cal());
}

