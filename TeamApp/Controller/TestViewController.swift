//
//  TestViewController.swift
//  TeamApp
//
//  Created by Misha on 04.01.2021.
//

import Spring

class TestViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var moduleLabel: SpringLabel!
    @IBOutlet weak var lectionLabel: SpringLabel!
    @IBOutlet weak var startButton: SpringButton!
    @IBOutlet weak var testLabel: SpringLabel!
    
    
    // MARK: - Properties
    var moduleName: String = ""
    var lection: String = ""
    
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.isHidden = true
        startButton.layer.cornerRadius = 5
        
        //lectionLabel.numberOfLines = 0
        lectionLabel.lineBreakMode = .byWordWrapping
        
        moduleLabel.text = "Модуль \(moduleName)"
        lectionLabel.text = "Урок \n«\(lection)»"
        
        animateModuleLabel()
        animateLectionLabel()
        animateTestLabel()
        animateStartButton()
        
    }
    
    
    // MARK: - IBActions
    @IBAction func startButtonPressed(_ sender: SpringButton) {
        startButton.animation = "pop"
        startButton.curve = "easeOutCubic"
        startButton.force = 0.1
        startButton.duration = 1.5
        startButton.scaleX = 1.1
        startButton.scaleY = 1.1
        startButton.damping = 0.2
        startButton.velocity = 0.0
        startButton.animate()
        
    }
    
    
    // MARK: - Private Methods
    // MARK: - Animation Methods
    private func animateStartButton() {
        startButton.animation = "squeezeUp"
        startButton.curve = "easeIn"
        startButton.duration = 1.0
        startButton.delay = 0.8
        startButton.scaleX = 1.1
        startButton.scaleY = 1.1
        startButton.damping = 1.0
        startButton.animate()
    }
    
    private func animateModuleLabel() {
        moduleLabel.animation = "slideDown"
        moduleLabel.curve = "easeIn"
        moduleLabel.duration = 1.0
        moduleLabel.delay = 0.2
        moduleLabel.scaleX = 1.1
        moduleLabel.scaleY = 1.1
        moduleLabel.damping = 1.0
        moduleLabel.animate()
    }
    
    private func animateLectionLabel() {
        lectionLabel.animation = "squeezeRight"
        lectionLabel.curve = "easeIn"
        lectionLabel.duration = 1.0
        lectionLabel.delay = 0.4
        lectionLabel.scaleX = 1.1
        lectionLabel.scaleY = 1.1
        lectionLabel.damping = 1.0
        lectionLabel.animate()
    }
    
    private func animateTestLabel() {
        testLabel.isHidden = false
        testLabel.animation = "slideLeft"
        testLabel.curve = "easeIn"
        testLabel.duration = 1.0
        testLabel.delay = 0.6
        testLabel.scaleX = 1.1
        testLabel.scaleY = 1.1
        testLabel.damping = 1.0
        testLabel.animate()
    }
    

}
