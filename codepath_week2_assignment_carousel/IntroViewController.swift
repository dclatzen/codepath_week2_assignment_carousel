//
//  IntroViewController.swift
//  codepath_week2_assignment_carousel
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    // Do any additional setup after loading the view.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introScrollView.contentSize = introImageView.frame.size
        introScrollView.delegate = self
        
    // end viewDidLoad method
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var offset = Float(introScrollView.contentOffset.y)
        
        // content offset: 0 -> 568
        // x offset: -30 -> 0
        // y offset: -285 -> 0
        
        var tx = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -30, r2Max: 0)
        var ty = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -285, r2Max: 0)
        var scale = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: 1, r2Max: 1)
        var rotation = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 667, r2Min: -10, r2Max: 0)
        
        tile1View.transform = CGAffineTransform(translationX: CGFloat(tx), y: CGFloat(ty))
        tile1View.transform = tile1View.transform.scaledBy(x: scale, y: scale)
        tile1View.transform = tile1View.transform.rotated(by: rotation * CGFloat(M_PI / 180))

        
        
        
    }

}
