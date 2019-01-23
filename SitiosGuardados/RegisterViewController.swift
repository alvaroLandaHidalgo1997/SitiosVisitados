//
//  RegisterViewController.swift
//  SitiosGuardados
//
//  Created by alumnos on 22/1/19.
//  Copyright © 2019 Alvaro Landa. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var usuario: UITextField!
    @IBOutlet weak var contrasennaconfirmada: UITextField!
    @IBOutlet weak var contrasenna: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBAction func Registrarse(_ sender: Any)
    {
        dismiss(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    

}
