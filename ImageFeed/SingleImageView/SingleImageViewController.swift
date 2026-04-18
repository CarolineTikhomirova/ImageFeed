//
//  SingleImageViewController.swift
//  ImageFeed
//
//  Created by Caroline on 18.04.2026.
//

import UIKit

class SingleImageViewController: UIViewController {
    var image: UIImage? {
        didSet {
            guard isViewLoaded else { return } // 1
            imageView.image = image // 2
        }
    }
    
    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var backwardButton: UIButton!
    
    @IBAction private func didTapBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
}
