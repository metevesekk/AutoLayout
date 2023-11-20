//
//  ViewController.swift
//  AutoLayout
//
//  Created by Mete Vesek on 20.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let amazonImage : UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "amazon")) //burada #imageLiteral kullandık
        imageView.translatesAutoresizingMaskIntoConstraints = true
        return imageView
    }()
    
    let txtSirketAdi : UITextView = {
        let textView = UITextView()
        textView.text = "Dünyanın En İyi Kargo Şirketi"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        //  tıklayınca klavye gelmesini engellemek için
        textView.isEditable = false
        textView.isScrollEnabled = true
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(amazonImage)
        view.addSubview(txtSirketAdi)
        layoutDuzenle()
    }
    
    private func layoutDuzenle() {
        //  imageView.frame = CGRect(x: 150, y: 150, width: 70, height: 70)
        amazonImage.translatesAutoresizingMaskIntoConstraints = false
        amazonImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        amazonImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        amazonImage.widthAnchor.constraint(equalToConstant: 150).isActive = true
        amazonImage.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        txtSirketAdi.topAnchor.constraint(equalTo: amazonImage.bottomAnchor, constant: 30).isActive = true
        txtSirketAdi.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        txtSirketAdi.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        txtSirketAdi.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
            
    }


}

