//
//  AlertBox.swift
//  Alert
//
//  Created by MAC on 06/05/20.
//  Copyright © 2020 Chandan Sharda. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showAlertWithAction(Title: String , Message: String , ButtonTitle: String ,outputBlock:@escaping ()->Void) {
        
        let alert = UIAlertController(title: Title, message: Message, preferredStyle: UIAlertController.Style.alert)
        
        alert.view.tintColor = UIColor.black
        
        alert.addAction(UIAlertAction(title: ButtonTitle, style: .default, handler: { (action: UIAlertAction!) in
            
            outputBlock()
            
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func showAlertWithActionOkandCancel(Title: String , Message: String , OkButtonTitle: String ,CancelButtonTitle: String ,outputBlock:@escaping ()->Void) {
        
        let alert = UIAlertController(title: Title, message: Message, preferredStyle: UIAlertController.Style.alert)
        alert.view.tintColor = UIColor.black
        alert.addAction(UIAlertAction(title: CancelButtonTitle, style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: OkButtonTitle, style: .default, handler: { (action: UIAlertAction!) in
            outputBlock()
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    func showAlert(Title: String , Message: String , ButtonTitle: String) {
        
        let alert = UIAlertController(title: Title, message: Message, preferredStyle: UIAlertController.Style.alert)
        alert.view.tintColor = UIColor.black
        alert.addAction(UIAlertAction(title: ButtonTitle, style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func showDefaultAlert(Message: String) {
        
        let alert = UIAlertController(title: "", message: Message, preferredStyle: UIAlertController.Style.alert)
        alert.view.tintColor = UIColor.black
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}
