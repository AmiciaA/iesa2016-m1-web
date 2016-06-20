class Vehicule {
    var name: String
    var couleur : String
    init(name: String){ self.name = name }
    func rouler() -> String { return "Le véhicule de couleur \(couleur) roule." }
}

class Moto : Vehicule{
    var nbRoues : Int
    init(modele: String){
        nbRoues = 2
        super.init(name:name)
    }
}

class Avion : Vehicule{
    var altMax : Int
    init(modele: String){
        nbRoues = 3
        super.init(name:name)
    }
    
    func voler() -> String { return "En vol, Altitude max : \(altMax)" }
}

class Char : Vehicule{
    
}
