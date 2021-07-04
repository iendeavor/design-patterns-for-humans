class Computer {
  getElectricShock() {
    print("Ouch!");
  }

  makeSound() {
    print("Beep beep!");
  }

  showLoadingScreen() {
    print("Loading..");
  }

  bam() {
    print("Ready to be used!");
  }

  closeEverything() {
    print("Bup bup bup buzzzz!");
  }

  sooth() {
    print("Zzzzz");
  }

  pullCurrent() {
    print("Haaah!");
  }
}

class ComputerFacade {
  Computer _computer;

  ComputerFacade({required computer}) : _computer = computer;

  turnOn() {
    _computer.getElectricShock();
    _computer.makeSound();
    _computer.showLoadingScreen();
    _computer.bam();
  }

  turnOff() {
    _computer.closeEverything();
    _computer.pullCurrent();
    _computer.sooth();
  }
}

void main() {
  var computer = ComputerFacade(computer: Computer());
  computer.turnOn(); // Ouch! Beep beep! Loading.. Ready to be used!
  computer.turnOff(); // Bup bup buzzz! Haah! Zzzzz
}
