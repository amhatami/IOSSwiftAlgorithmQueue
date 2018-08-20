//
//  Queue.swift
//  IOSSwiftAlgorithmQueue
//
//  Created by Pooya on 2018-06-19.
//  Copyright © 2018 Pooya. All rights reserved.
//

import Foundation

class _QueueItem<T> {
    let value: T!
    var next: _QueueItem?
    
    init(_ newvalue: T?) {
        self.value = newvalue
    }
}

struct Queue<T> {
    public typealias Element = T
    
    var _front : _QueueItem<Element>
    var _back : _QueueItem<Element>
    
    public init() {
        _back = _QueueItem(nil)
        _front = _back
    }
    
    public mutating func enQueue (value : Element) {
        _back.next = _QueueItem(value)
        _back = _back.next!
    }
    
    public mutating func deQueue () -> Element? {
        if let newhead = _front.next {
            _front = newhead
            return newhead.value
        } else {
            return nil
        }
    }
    
    public func isEmpty() -> Bool {
        return _front === _back
    }
    
    public func showQueue(){
        var tempQueue = self
        while let value = tempQueue.deQueue() {
            print(value)
        }
    }
    
    public func toArrayQueue () -> [String] {
        var tempQueue = self
        var outputArray : [String] = []
        while let value = tempQueue.deQueue() {
            outputArray.append(value as! String)
        }
        
        return outputArray
    }
    
    
    
}
