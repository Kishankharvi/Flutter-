import 'dart:io';

class Printer{
   void printMessage (String message){
        print("Printing: $message");
    }
    String _TypeofTonner="Default type";
}

class dotMatrix extends Printer{
    String _TypeofTonner="Dot matrix type";
    dotMatrix(){
        print("Dot matrix printer initialized.");
    }
}
class InkJet extends Printer{
    String _TypeofTonner="Ink type";
    InkJet(){
        print("InkJet printer initialized.");
    }

}
class LaserJet extends Printer{
    String _TypeofTonner="Laser type";
    LaserJet(){
        print("LaserJet printer initialized.");
    }
}

void main(){
    while(true){
        print("Enter the printer to be used \n choices: \n 1.dotmatrx\n 2 InkJet \n 3. LaserJet \n 4. Exit");
      String? choice = stdin.readLineSync();
     int? ch= int.tryParse(choice!);
        switch(ch){
            case 1:
                Printer p1=dotMatrix();
                print("You have selected ${p1._TypeofTonner}");
                break;
            case 2:
                Printer p2=InkJet();
                print("You have selected ${p2._TypeofTonner}");
                break;
            case 3:
                Printer p3=LaserJet();
                print("You have selected ${p3._TypeofTonner}");
                break;
            case 4:
                exit(0);
            default:
                print("Invalid choice, please try again.");
        }
    }
}