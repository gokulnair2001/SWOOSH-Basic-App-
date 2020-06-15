//
//  secondViewController.swift
//  Practice
//
//  Created by Gokul Nair on 14/06/20.
//  Copyright © 2020 Gokul Nair. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player() 
    }
    
    @IBAction func mensSelected(_ sender: UIButton) {
        
        nextButtonFunc(leagueType: "Men")
    }
    
    @IBAction func womenSelected(_ sender: UIButton) {
        
        nextButtonFunc(leagueType: "Women")
    }
    
    @IBAction func coedSelected(_ sender: UIButton) {
        
        nextButtonFunc(leagueType: "Co-Ed")
    }
    
    @IBAction func onNextTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "thirdVC", sender: self)
    }
    //MARK:- to enable next button
    
    func nextButtonFunc(leagueType:String){
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
        
        //here you will not be able to use is enaled unless you assign it in class as uibutton weak var
    }
    
    //MARK:- for passing data
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? thirdViewController {
            skillVC.player = player!
        }
    }
    
    //MARK:- BACK BUTTON CODE
    
    @IBAction func getBackToSB (usingSeque: UIStoryboardSegue) {
        
    }

}
