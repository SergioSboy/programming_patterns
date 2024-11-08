from abc import ABC, abstractmethod

'''
 Представим себе аэропорт, в котором есть множество самолётов,и вне зависимости от выбранного самолёта мы можем улететь
 и приземлиться на нем
'''


# Интерфейс для реализации самолётов
class Aircraft(ABC):
    @abstractmethod
    def fly(self):
        raise NotImplementedError

    @abstractmethod
    def land(self):
        raise NotImplementedError


# Реализация пассажирского самолёта
class PassengerPlane(Aircraft):
    def fly(self):
        print("Passenger plane is taking off with passengers on board!")

    def land(self):
        print("Passenger plane is landing safely with passengers.")


# Реализация грузового самолёта
class CargoPlane(Aircraft):
    def fly(self):
        print("Cargo plane is taking off with a full load of cargo!")

    def land(self):
        print("Cargo plane is landing with cargo intact.")


# Реализация частного джета
class PrivateJet(Aircraft):
    def fly(self):
        print("Private jet is taking off with a VIP passenger!")

    def land(self):
        print("Private jet is landing smoothly with a VIP passenger.")


# Класс, представляющий собой аэропорт, который может отправлять и принимать самолёты
class Airport:
    def __init__(self, fleet):
        self.fleet = fleet

    def depart_all(self):
        for aircraft in self.fleet:
            print(f"Preparing {aircraft.__class__.__name__} for takeoff")
            aircraft.fly()

    def land_all(self):
        for aircraft in self.fleet:
            print(f"Preparing {aircraft.__class__.__name__} for landing")
            aircraft.land()


# Пример использования
passenger_plane = PassengerPlane()
cargo_plane = CargoPlane()
private_jet = PrivateJet()

# Создаём список самолётов в аэропорту
fleet = [passenger_plane, cargo_plane, private_jet]
airport = Airport(fleet)

# Отправляем все самолёты
airport.depart_all()

print("\n--- After some time, planes are landing ---\n")

# Приземляем все самолёты
airport.land_all()
