//
//  ViewController.swift
//  SitiosGuardados
//
//  Created by Alvaro Landa on 18/01/2019.
//  Copyright © 2019 Alvaro Landa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var _usuario: String = "";
    var _contrasenna: String = "";
    var usuarioregistrado = [String]();
    
    @IBAction func tohome(_ sender: Any) {
        if(usuarioregistrado[0] == "manolo" && usuarioregistrado[1] == "1234"){
        performSegue(withIdentifier: "logintohome", sender: sender)
        }
    }
    
    @IBOutlet weak var usuario: UITextField!
    
    @IBOutlet weak var contrasenna: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        asignarCampos()
        crearUsuarioRegistrado()
        print(usuarioregistrado)
    }
    func asignarCampos()
    {
        usuario.text = _usuario;
        contrasenna.text = _contrasenna;
    }
    func crearUsuarioRegistrado()
    {
        usuarioregistrado.append(_usuario) ;
        usuarioregistrado.append(_contrasenna);
    }
    
    
}

