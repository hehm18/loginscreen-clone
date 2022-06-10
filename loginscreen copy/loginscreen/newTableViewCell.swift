//
//  newTableViewCell.swift
//  loginscreen
//
//  Created by Cepl on 25/05/22.
//

import UIKit
var img = [UIImage]()

class newTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    @IBOutlet weak var label1: UILabel!
    @IBAction func LABEL(_ sender: Any) {
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let subcell2 = collectionview.dequeueReusableCell(withReuseIdentifier: "collcell", for: indexPath) as! NEWCollectionViewCell
        subcell2.imgview.image = img[indexPath.row]
        return subcell2
    }
    

    @IBOutlet weak var collectionview: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionview.delegate = self
        collectionview.dataSource = self
        
        img = [
            UIImage(named: "images-3")!,
            UIImage(named: "images-4")!,
            UIImage(named: "images-5")!,
            UIImage(named: "images-6")!,
            UIImage(named: "images")!,
            UIImage(named: "images-4")!,
            UIImage(named: "images-5")!,
            UIImage(named: "images-6")!,
            UIImage(named: "images-5")!,
            UIImage(named: "images-4")!
        ]
    }
   
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
