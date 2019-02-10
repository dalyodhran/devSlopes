//
//  LeagueVC.swift
//  app-swoodh
//
//  Created by Odhrán Daly on 09/02/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    
    @IBOutlet weak var nextBtn: BoarderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player = Player()
    }
    
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVc = segue.destination as? SkillVC{
            skillVc.player = player
        }
    }
}
