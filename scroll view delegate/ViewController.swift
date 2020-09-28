//
//  ViewController.swift
//  scroll view delegate
//
//  Created by 維衣 on 2020/9/24.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var photos: [UIImageView]!
    @IBOutlet weak var scrollControl: UIScrollView!
    @IBOutlet weak var pagesControl: UIPageControl!
    @IBOutlet var viewOutlet: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        scrollControl.delegate = self
        pagesControl.numberOfPages = 5
        pagesControl.currentPage = 0
        
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = Int(scrollControl.contentOffset.x / scrollControl.frame.size.width)
        
        pagesControl.currentPage = currentPage
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        for viewOutlet in scrollControl.subviews{
            if viewOutlet.isKind(of: UIView.self){
                return viewOutlet
            }
        }
        return nil
    }

}

