//
//  MessageCell.swift
//  Smack
//
//  Created by Odhrán Daly on 08/04/2019.
//  Copyright © 2019 Odhrán Daly. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    //OutLets
    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var timeStampLabel: UILabel!
    @IBOutlet weak var messageBodyLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureSell(message: Message){
        messageBodyLabel.text = message.message
        userNameLabel.text = message.userName
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
        
        guard var isoDate = message.timeStamp else { return }
        let end = isoDate.index(isoDate.endIndex, offsetBy: -5)
        isoDate = isoDate.substring(to: end)
        
        let isoFormatter = ISO8601DateFormatter()
        let chatDate = isoFormatter.date(from: isoDate.appending("Z"))
        
        let newFormmater = DateFormatter()
        newFormmater.dateFormat = "MMM d, h:mm a"
        
        if let finalDate = chatDate {
            let finalDate = newFormmater.string(from: finalDate)
            timeStampLabel.text = finalDate
        }
    }

}
