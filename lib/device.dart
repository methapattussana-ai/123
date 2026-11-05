class ComputerPart{
  String name;
  double price;
  ComputerPart (this.name, this.price);
String getCategoryInfo(){
  return "อุปกรณ์พื้นฐาน";
}
  void showInfo(){
    print("สินค้า :$name");
    print("ราคา :$price") ;
  }
}

class Storage extends ComputerPart {
 int capacityGB;
 int readSpeed;
 Storage(String name, double price, this.capacityGB, this.readSpeed)
     : super(name, price);
@override
String getCategoryInfo(){
  return "อุุปกรณ์จัดเก็บข้อมูล";
  }
  void calculateTransferTime(double fileSizeGB){
    (fileSizeGB * 1024) / readSpeed;
  }
 void showDetail(){
  print("VRAM  : $capacity(GB");
  print()
 }
}