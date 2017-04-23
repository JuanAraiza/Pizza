//
//  ViewConfirmacion.swift
//  Pizza
//
//  Created by Mac Juan Araiza on 22/04/17.
//  Copyright © 2017 Juan Araiza. All rights reserved.
//

import UIKit

class ViewConfirmacion: UIViewController {
    var tamanio:Int=0
    var masa:Int=0
    var queso:Int=0
    var ijamon:Bool=true
    var ichorizo:Bool=true
    var ianchoa:Bool=true
    var ipina:Bool=true
    var ipimiento:Bool=true
    var icebolla:Bool=true
    var iaceituna:Bool=true
    var isalchicha:Bool=true
    var ipavo:Bool=true
    var ipepperoni:Bool=true
    var ichampinones:Bool=true
    var regreso:Int=0
    
    @IBOutlet weak var textTamanio: UILabel!
    
    @IBOutlet weak var textMasa: UILabel!
    @IBOutlet weak var textQueso: UILabel!
    @IBOutlet weak var textIngredientes: UITextView!
    
     override func viewDidLoad() {
        super.viewDidLoad()

        switch self.tamanio{
            case 0:
            textTamanio.text="Chica"
        case 1:
            textTamanio.text="Mediana"
        case 2:
            textTamanio.text="Grande"
        default:
            textTamanio.text=""
        }
        
       
        switch self.masa{
        case 0:
            textMasa.text="Delgada"
        case 1:
            textMasa.text="Crujiente"
        case 2:
            textMasa.text="Gruesa"
        default:
            textMasa.text=""
        }

        switch self.queso{
        case 0:
            textQueso.text="Mozarela"
        case 1:
            textQueso.text="Cheddar"
        case 2:
            textQueso.text="Parmesano"
        case 3:
            textQueso.text="Sin Queso"
        default:
            textMasa.text=""
        }
        textIngredientes.text = ""
        if(ijamon){ textIngredientes.text = textIngredientes.text! + "* Jamón \n" }
        if(ipepperoni){ textIngredientes.text = textIngredientes.text! + "* Pepperoni \n" }
        if(ipavo){ textIngredientes.text = textIngredientes.text! + "* Pavo \n" }
        if(isalchicha){ textIngredientes.text = textIngredientes.text! + "* Salchicha \n" }
        if(iaceituna){ textIngredientes.text = textIngredientes.text! + "* Aceituna \n" }
        if(icebolla){ textIngredientes.text = textIngredientes.text! + "* Cebolla \n" }
        if(ipimiento){ textIngredientes.text = textIngredientes.text! + "* Pimiento \n" }
        if(ipina){ textIngredientes.text = textIngredientes.text! + "* Piña \n" }
        if(ianchoa){ textIngredientes.text = textIngredientes.text! + "* Anchoa \n" }
        if(ichorizo){ textIngredientes.text = textIngredientes.text! + "* Chorizo \n" }
        if(ichampinones){ textIngredientes.text = textIngredientes.text! + "* Champiñones \n" }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "irIngredientes" {
            
            
                    let tamanio = self.tamanio
                    let masa = self.masa
                    let queso = self.queso
                    let ijamon = self.ijamon
                    let ichorizo = self.ichorizo
                    let ianchoa = self.ianchoa
                    let ipina = self.ipina
                    let ipimiento = self.ipimiento
                    let icebolla = self.icebolla
                    let iaceituna = self.iaceituna
                    let isalchicha = self.isalchicha
                    let ipavo = self.ipavo
                    let ipepperoni = self.ipepperoni
                    let ichampinones = self.ichampinones
                    let sigVista=segue.destination as! vistaIngredientes
                    sigVista.tamanio=tamanio
                    sigVista.masa=masa
                    sigVista.queso=queso
                    sigVista.rijamon=ijamon
                    sigVista.richorizo=ichorizo
                    sigVista.rianchoa=ianchoa
                    sigVista.ripina=ipina
                    sigVista.ripimiento=ipimiento
                    sigVista.ricebolla=icebolla
                    sigVista.riaceituna=iaceituna
                    sigVista.risalchicha=isalchicha
                    sigVista.ripavo=ipavo
                    sigVista.ripepperoni=ipepperoni
                    sigVista.richampinones=ichampinones
                    sigVista.regreso=1
        }
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
