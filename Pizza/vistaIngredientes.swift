//
//  vistaIngredientes.swift
//  Pizza
//
//  Created by Mac Juan Araiza on 22/04/17.
//  Copyright © 2017 Juan Araiza. All rights reserved.
//

import UIKit

class vistaIngredientes: UIViewController {
    var tamanio:Int=0
    var masa:Int=0
    var queso:Int=0
    var val:Int = 1
    
    @IBOutlet weak var ijamon: UISwitch!
    @IBOutlet weak var ichampinones: UISwitch!
    @IBOutlet weak var ichorizo: UISwitch!
    @IBOutlet weak var ianchoa: UISwitch!
    @IBOutlet weak var ipina: UISwitch!
    @IBOutlet weak var ipimineto: UISwitch!
    @IBOutlet weak var icebolla: UISwitch!
    @IBOutlet weak var iaceituna: UISwitch!
    @IBOutlet weak var isalchicha: UISwitch!
    @IBOutlet weak var ipavo: UISwitch!
    @IBOutlet weak var ipepperoni: UISwitch!
    
    var rijamon:Bool=false
    var richorizo:Bool=false
    var rianchoa:Bool=false
    var ripina:Bool=false
    var ripimiento:Bool=false
    var ricebolla:Bool=false
    var riaceituna:Bool=false
    var risalchicha:Bool=false
    var ripavo:Bool=false
    var ripepperoni:Bool=false
    var richampinones:Bool=false
    var regreso:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if(self.regreso==1){
            if(rijamon){ ijamon.isOn=true }
            if(ripepperoni){ ipepperoni.isOn=true }
            if(ripavo){ ipavo.isOn=true }
            if(risalchicha){ isalchicha.isOn=true }
            if(riaceituna){ iaceituna.isOn=true }
            if(ricebolla){ icebolla.isOn=true }
            if(ripimiento){ ipimineto.isOn=true }
            if(ripina){ ipina.isOn=true }
            if(rianchoa){ ianchoa.isOn=true }
            if(richorizo){ ichorizo.isOn=true }
            if(richampinones){ ichampinones.isOn=true }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
            if segue.identifier == "irConfirmacion" {
                
                if(self.ijamon.isOn){
                    val+=1
                }
                if(self.ichorizo.isOn){
                    val+=1
                }
                if(self.ianchoa.isOn){
                    val+=1
                }
                if(self.ipina.isOn){
                    val+=1
                }
                if(self.ipimineto.isOn){
                    val+=1
                }
                if(self.icebolla.isOn){
                    val+=1
                }
                if(self.iaceituna.isOn){
                    val+=1
                }
                if(self.isalchicha.isOn){
                    val+=1
                }
                if(self.ipavo.isOn){
                    val+=1
                }
                if(self.ipepperoni.isOn){
                    val+=1
                }
                if(self.ichampinones.isOn){
                    val+=1
                }
 
               
                if (val >= 1){
                
                    if (val <= 5){
              
                let tamanio = self.tamanio
                let masa = self.masa
                let queso = self.queso
                let ijamon = self.ijamon.isOn
                let ichorizo = self.ichorizo.isOn
                let ianchoa = self.ianchoa.isOn
                let ipina = self.ipina.isOn
                let ipimiento = self.ipimineto.isOn
                let icebolla = self.icebolla.isOn
                let iaceituna = self.iaceituna.isOn
                let isalchicha = self.isalchicha.isOn
                let ipavo = self.ipavo.isOn
                let ipepperoni = self.ipepperoni.isOn
                let ichampinones = self.ichampinones.isOn
                let regreso = self.regreso
                let sigVista=segue.destination as! ViewConfirmacion
                sigVista.tamanio=tamanio
                sigVista.masa=masa
                sigVista.queso=queso
                sigVista.ijamon=ijamon
                sigVista.ichorizo=ichorizo
                sigVista.ianchoa=ianchoa
                sigVista.ipina=ipina
                sigVista.ipimiento=ipimiento
                sigVista.icebolla=icebolla
                sigVista.iaceituna=iaceituna
                sigVista.isalchicha=isalchicha
                sigVista.ipavo=ipavo
                sigVista.ipepperoni=ipepperoni
                sigVista.ichampinones=ichampinones
                        if(regreso==1){
                           sigVista.regreso=regreso
                        }

                    }else{
                        let alertController = UIAlertController(title: "Solo puedes seleccionar de uno a cinco ingredienes", message: "", preferredStyle: .alert)
                        let cancel = UIAlertAction(title: "Aceptar", style: .default, handler: { (action) -> Void in })
                        alertController.addAction(cancel)
                        present(alertController, animated: true, completion: nil)
                    }
                    
                }else{
                    let alertController = UIAlertController(title: "Selecciona al menos un ingrediente", message: "", preferredStyle: .alert)
                    let cancel = UIAlertAction(title: "Aceptar", style: .default, handler: { (action) -> Void in })
                    alertController.addAction(cancel)
                    present(alertController, animated: true, completion: nil)
                }
            }
       
        if segue.identifier == "irQueso" {

            let tamanio = self.tamanio
            let masa = self.masa
            let queso = self.queso
            let ijamon = self.rijamon
            let ichorizo = self.richorizo
            let ianchoa = self.rianchoa
            let ipina = self.ripina
            let ipimiento = self.ripimiento
            let icebolla = self.ricebolla
            let iaceituna = self.riaceituna
            let isalchicha = self.risalchicha
            let ipavo = self.ripavo
            let ipepperoni = self.ripepperoni
            let ichampinones = self.richampinones
           
            let sigVista=segue.destination as! vistaQueso
            sigVista.tamanio=tamanio
            sigVista.masa=masa
            sigVista.rqueso=queso
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
