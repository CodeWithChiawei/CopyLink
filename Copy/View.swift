//
//  View.swift
//  Copy
//
//  Created by chiawei wen on 6/23/23.
//

import Foundation
import UIKit

class View: UIView {
    
    let githubLinkButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Gibhub Link", for: .normal)
        return button
    }()
    
    let linkedinLinkButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Linkedin Link", for: .normal)
        return button
    }()
    
    let introParagraphButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Intro", for: .normal)
        return button
    }()
    
    let copyTitle: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraint() {
        addSubview(githubLinkButton)
        addSubview(linkedinLinkButton)
        addSubview(introParagraphButton)
        addSubview(copyTitle)
        
        linkedinLinkButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        linkedinLinkButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        linkedinLinkButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        linkedinLinkButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        copyTitle.bottomAnchor.constraint(equalTo: githubLinkButton.topAnchor, constant: -50).isActive = true
        copyTitle.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        copyTitle.heightAnchor.constraint(equalToConstant: 75).isActive = true
        copyTitle.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        githubLinkButton.bottomAnchor.constraint(equalTo: linkedinLinkButton.topAnchor, constant: -50).isActive = true
        githubLinkButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        githubLinkButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        githubLinkButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        introParagraphButton.topAnchor.constraint(equalTo: linkedinLinkButton.bottomAnchor, constant: 50).isActive = true
        introParagraphButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        introParagraphButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        introParagraphButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func configureCopyTitle(text: String) {
        copyTitle.text = text
    }
}
