//
//  vistaMasa.swift
//  Pizza
//
//  Created by Mac Juan Araiza on 22/04/17.
//  Copyright © 2017 Juan Araiza. All rights reserved.
//

import UIKit

class vistaMasa: UIViewController {
    var tamanio:Int=0

    @IBOutlet weak var tipoMasa: UISegmentedControl!
    var rmasa:Int=0
    var rqueso:Int=0
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
        if(regreso==1){
            
            tipoMasa.selectedSegmentIndex=self.rmasa
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       

        if segue.identifier == "irQueso" {
             if (self.tipoMasa.selectedSegmentIndex>=0){
        let tamanio = self.tamanio
        let masa = tipoMasa.selectedSegmentIndex
                let queso = self.rqueso
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
                let regreso = self.regreso
        let sigVista=segue.destination as! vistaQueso
        sigVista.tamanio=tamanio
        sigVista.masa=masa
                if(regreso==1){
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
                    sigVista.regreso=regreso
                }
             }else{
                let alertController = UIAlertController(title: "Escoger el Tipo de Masa", message: "", preferredStyle: .alert)
                let cancel = UIAlertAction(title: "Aceptar", style: .default, handler: { (action) -> Void in })
                alertController.addAction(cancel)
                present(alertController, animated: true, completion: nil)
            }
        }
        
        
        if segue.identifier == "irTamanio" {
            
            let tamanio = self.tamanio
            let masa = self.rmasa
            let queso = self.rqueso
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
            
            let sigVista=segue.destination as! ViewController
            sigVista.rtamanio=tamanio
            sigVista.rmasa=masa
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
