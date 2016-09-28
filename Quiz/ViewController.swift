//
//  ViewController.swift
//  Quiz
//
//  Created by Rukmani on 26/07/16.
//  Copyright © 2016 Rukmani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Start: UIButton!
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var LabelEnd: UILabel!
    @IBOutlet weak var Next: UIButton!
 
    @IBOutlet weak var Stop: UIButton!
    var CorrectAnswer = String()
    var TotalScore : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HideAll()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func UnHide()
    {
        LabelEnd.hidden = false
        Next.hidden = false
    }
    
    func Hide()
    {
        LabelEnd.hidden = true
        Next.hidden = true
    }
    
    func HideAll()
    {
        QuestionLabel.hidden = true
        Button4.hidden = true
        Button3.hidden = true
        Button2.hidden = true
        Button1.hidden = true
        LabelEnd.hidden = true
        Next.hidden = true
        Stop.hidden = true
        
        
    }
    func UnhideButtons()
    {
        Button1.hidden = false
        Button2.hidden = false
        Button3.hidden = false
        Button4.hidden = false
    }
    
    func HideButtons()
    {
        Button1.hidden = true
        Button2.hidden = true
        Button3.hidden = true
        Button4.hidden = true
        
    }
    
    func EnableButtons()
    {
        Button1.enabled = true
        Button2.enabled = true
        Button3.enabled = true
        Button4.enabled = true
        
    }
    func DisableButtons()
    {
        Button1.enabled = false
        Button2.enabled = false
        Button3.enabled = false
        Button4.enabled = false
    }
    

    @IBAction func Start(sender: AnyObject) {
        Start.hidden = true
        QuestionLabel.hidden = false
        UnhideButtons()
        EnableButtons()
        RandomQuestions()
        
    }
    
    
  
    
    @IBAction func Button1Action(sender: AnyObject) {
        UnHide()
        DisableButtons()
        Stop.hidden = false
        if (CorrectAnswer == "1")
        {
            LabelEnd.text = "You are correct !!"
            TotalScore += 1
            
        }
        else{
            LabelEnd.text = "You are WRONG !!"
        }
        
    }
    
    @IBAction func Button2Action(sender: AnyObject) {
        UnHide()
        DisableButtons()
        Stop.hidden = false
        if (CorrectAnswer == "2")
        {
            LabelEnd.text = "You are correct !!"
            TotalScore += 1
        }
        else{
            LabelEnd.text = "You are WRONG !!"
        }
    }
    
    @IBAction func Button3Action(sender: AnyObject) {
        UnHide()
        DisableButtons()
        Stop.hidden = false
        if (CorrectAnswer == "3")
        {
            LabelEnd.text = "You are correct !!"
            TotalScore += 1
        }
        else{
            LabelEnd.text = "You are WRONG !!"
        }

    }
    
    @IBAction func Button4Action(sender: AnyObject) {
        UnHide()
        DisableButtons()
        Stop.hidden = false
        if (CorrectAnswer == "4")
        {
            LabelEnd.text = "You are correct !!"
            TotalScore += 1
        }
        else{
            LabelEnd.text = "You are WRONG !!"
        }

    }
    

    @IBAction func Next(sender: AnyObject) {
        Hide()
        EnableButtons()
        Stop.hidden = true
        RandomQuestions()
    }
    
    @IBAction func Stop(sender: AnyObject) {
        HideAll()
        LabelEnd.hidden = false
        LabelEnd.text = "FINISHED !! Your Score is \(TotalScore)"
    }

    
    func RandomQuestions()
    {
        var RandomNumber = random() % 4
        RandomNumber += 1
        
        switch(RandomNumber)
        {
        case 1 :
            QuestionLabel.text = "Hello, What is my name ?"
            Button1.setTitle("Chandani", forState: UIControlState.Normal)
            Button2.setTitle("Rukmani", forState: UIControlState.Normal)
            Button3.setTitle("Pankhuri", forState: UIControlState.Normal)
            Button4.setTitle("Rajat", forState: UIControlState.Normal)
            CorrectAnswer = "2"
            
            break
        case 2 :
            QuestionLabel.text = "What is my last name?"
            Button1.setTitle("Tyagi", forState: UIControlState.Normal)
            Button2.setTitle("Aggarwal", forState: UIControlState.Normal)
            Button3.setTitle("Gupta", forState: UIControlState.Normal)
            Button4.setTitle("Khurana", forState: UIControlState.Normal)
            CorrectAnswer = "1"
        
            break
        case 3 :
            QuestionLabel.text = "Where do I live?"
            Button1.setTitle("Magarpatta", forState: UIControlState.Normal)
            Button2.setTitle("Hadapsar", forState: UIControlState.Normal)
            Button3.setTitle("Kharadi", forState: UIControlState.Normal)
            Button4.setTitle("Amanora", forState: UIControlState.Normal)
            CorrectAnswer = "3"
        
            break
        case 4 :
            QuestionLabel.text = "What am I learning?"
            Button1.setTitle("Android", forState: UIControlState.Normal)
            Button2.setTitle("Python/Django", forState: UIControlState.Normal)
            Button3.setTitle("Angular", forState: UIControlState.Normal)
            Button4.setTitle("IOS", forState: UIControlState.Normal)
            CorrectAnswer = "4"
            
            break
        default :
            break
        }
        
        
        
    }
    
    
    
   
    
    
    
    
    
}

