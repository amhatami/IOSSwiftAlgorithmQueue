//
//  ViewController.swift
//  IOSSwiftAlgorithmQueue
//
//  Created by Pooya on 2018-06-19.
//  Copyright © 2018 Pooya. All rights reserved.
//
// Queue Data Structure algorithm !
// Class    abstract data type FIFO (First In First Out)
// Data structure   Queue
// Worst-case performance    О(n)
// Best-case performance    O(1)
// Average performance    О(1)
// Worst-case space complexity
//   where n is the size of the input array.
//
//   Note:  Inserting at the beginning of an array is expensive, an O(n) operation.
//   but Adding at the end is O(1).
//
// Author: Pooya Hatami

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enQueuetext: UITextField!
    @IBOutlet weak var deQueueText: UITextField!
    @IBOutlet weak var queueView: UITextView!
    var mainQueue = Queue<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainQueue.enQueue(value: "lad01")
        mainQueue.enQueue(value: "lad02")
        mainQueue.enQueue(value: "lad03")
        mainQueue.enQueue(value: "lad04")
        mainQueue.enQueue(value: "lad05")
        mainQueue.enQueue(value: "lad06")
        mainQueue.enQueue(value: "lad07")
        mainQueue.enQueue(value: "lad08")
        mainQueue.enQueue(value: "lad09")
        mainQueue.enQueue(value: "lad10")

        mainQueue.showQueue()
        queueView.text = mainQueue.toArrayQueue().joined(separator: "\n")
        
    }


    @IBAction func enQueueAct(_ sender: UIButton) {

        guard let enQueueInputValue = enQueuetext.text else {
            return
        }
        
        mainQueue.enQueue(value: enQueueInputValue)
        queueView.text = mainQueue.toArrayQueue().joined(separator: "\n")

    }
    
    
    
    
    @IBAction func deQueueAct(_ sender: UIButton) {

        guard let deQueueOutputValue = mainQueue.deQueue() else {
            return
        }
        deQueueText.text = deQueueOutputValue
        queueView.text = mainQueue.toArrayQueue().joined(separator: "\n")

    }
    
    


}

