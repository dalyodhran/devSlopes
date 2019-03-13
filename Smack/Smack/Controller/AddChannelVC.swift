//
//  AddChannelVC.swift
//  Smack
//
//  Created by Odhrán Daly on 09/03/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var chanDesc: UITextField!
    @IBOutlet weak var bgView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    @IBAction func createChannelPressed(_ sender: Any) {
        guard let channelName = nameText.text, nameText.text != "" else {return}
        guard let channelDesc = chanDesc.text, chanDesc.text != "" else {return}
        SocketService.instance.addChannel(channelName: channelName, channelDescription: channelDesc) { (success) in
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func closedModelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupView(){
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameText.attributedPlaceholder  = NSAttributedString(string: "name", attributes: [NSAttributedString.Key.foregroundColor: SMACK_PURPLE_PLACEHOLDER])
        chanDesc.attributedPlaceholder  = NSAttributedString(string: "description", attributes: [NSAttributedString.Key.foregroundColor: SMACK_PURPLE_PLACEHOLDER])
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer){
        dismiss(animated: true, completion: nil)
    }
}
