//
//  TableViewCell.swift
//  ejercicio_celdas
//
//  Created by Dianelys Saldaña on 11/2/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelAuthor: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var fondo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
