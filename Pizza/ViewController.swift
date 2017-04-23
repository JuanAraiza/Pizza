//
//  ViewController.swift
//  Pizza
//
//  Created by Mac Juan Araiza on 22/04/17.
//  Copyright © 2017 Juan Araiza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tamanio: UISegmentedControl!
    
    var rtamanio:Int=0
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
        // Do any additional setup after loading the view, typically from a nib.
        if(regreso==1){
            tamanio.selectedSegmentIndex=self.rtamanio
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (self.tamanio.selectedSegmentIndex>=0){
        let tamnio = self.tamanio.selectedSegmentIndex
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
            let regreso = self.regreso
        let sigVista=segue.destination as! vistaMasa
            sigVista.tamanio=tamnio
            if(regreso==1){
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
            sigVista.regreso=regreso
                }
        }else{
            let alertController = UIAlertController(title: "Escoger el tamaño de la Pizza", message: "", preferredStyle: .alert)
            let cancel = UIAlertAction(title: "Aceptar", style: .default, handler: { (action) -> Void in })
            alertController.addAction(cancel)
            present(alertController, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func SiguienteTamanio(_ sender: Any) {
        
    }
}

