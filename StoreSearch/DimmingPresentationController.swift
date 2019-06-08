//
//  DimmingPresentationController.swift
//  StoreSearch
//
//  Created by Brett Wallace on 6/6/19.
//  Copyright © 2019 Brett Wallace. All rights reserved.
//

import UIKit

class DimmingPresentationController: UIPresentationController {
    lazy var dimmingView = GradientView(frame: CGRect.zero)
    
    override func presentationTransitionWillBegin() {
        dimmingView.frame = containerView!.bounds
        
        containerView?.insertSubview(dimmingView, at: 0)
    }
    
    override var shouldRemovePresentersView: Bool {
        return false
    }
}
