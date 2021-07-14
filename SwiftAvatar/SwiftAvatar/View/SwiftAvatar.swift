//
//  SwiftAvatar.swift
//  SwiftAvatar
//
//  Created by Angelos Staboulis on 14/7/21.
//

import UIKit
import Toucan
@IBDesignable
class SwiftAvatar: UIImageView {
    
    var data:Data!
    
    @IBInspectable
    var URLImage:String?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override class func prepareForInterfaceBuilder() {
        
    }
    func showImage(){
        DispatchQueue.main.async {
            do{
                self.data = try Data(contentsOf: URL(string: self.URLImage!)!)
                let image = UIImage(data: self.data)
                let toucan = Toucan(image: image!).resizeByScaling(CGSize(width: 210, height: 205)).maskWithEllipse().image
                self.image = toucan
            }
            catch{
                debugPrint("something went wrong")
            }
        }
        
        
    }
}
