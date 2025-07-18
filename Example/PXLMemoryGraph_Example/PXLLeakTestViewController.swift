//
//  PXLLeakTestViewController.swift
//  PXLMemoryGraph_Example
//
//  Created by 冯驰伟 on 2025/7/18.
//  Copyright © 2025 David Grigoryan. All rights reserved.
//

import UIKit
import PXLMemoryGraph

class PXLLeakTestViewController: UIViewController {
    
    var teacher: Teacher?
    var testModels = Array<AnyObject>()
    
    class LeakyObject {
        var closure: (() -> Void)?
        deinit {
            print("LeakyObject deinit")
        }
    }
    
    var obj: LeakyObject?
    
    deinit {
        print("deinit")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.gray;
        
        self.configureNavigationItem()
        
        self.prepareTestModels()
        self.mockLeak()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    func configureNavigationItem() {
        let item = UIBarButtonItem(title: "Graph", style: .plain, target: self, action: #selector(buildGraph))
        self.navigationItem.rightBarButtonItem = item
    }
    
    func mockLeak() {
        let obj = LeakyObject()
        
        // 模拟泄漏，这里形成循环引用：obj 持有 closure，closure 又捕获 self
        obj.closure = {
            self.prepareTestModels()
        }
        
        self.obj = obj
    }
    
    func prepareTestModels() {
        self.teacher = Teacher();
        let dog = Dog();
        let container = SwiftContainer();
        
        let student = Student();
        student.someStorableObj = self.teacher!;
        
        student.protocolProperty = dog;
        self.teacher?.student = student;
        self.teacher?.undefined = student;
        student.teacher = self.teacher!;
        self.testModels = [self.teacher!, student, dog, container];
    }

    @objc func buildGraph() {
        let momoryService = PXLMemoryService()
        let graph = momoryService.fullMemoryGraph()
        print("\(graph)")
    }

}
