//
//  TestStartedViewController.swift
//  TeamApp
//
//  Created by Misha on 06.01.2021.
//

import Spring

class TestStartedViewController: UIViewController {
    
    @IBOutlet weak var questionNumberLabel: SpringLabel!
    @IBOutlet weak var questionLabel: SpringLabel!
    
    @IBOutlet var allButtons: [SpringButton]!
    
    
    // MARK: - Private Properties
    private let primaryColor = UIColor(
        red: 255/255,
        green: 199/255,
        blue: 0/255,
        alpha: 1)
    
    private let secondaryColor = UIColor(
        red: 255/255,
        green: 82/255,
        blue: 0/255,
        alpha: 1)

    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        for button in allButtons {
            button.layer.cornerRadius = 5
        }
        
        addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
    }

}

extension TestStartedViewController {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}
