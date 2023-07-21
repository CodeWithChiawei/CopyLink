//
//  ViewController.swift
//  Copy
//
//  Created by chiawei wen on 6/23/23.
//
import Foundation
import UIKit

class ViewController: UIViewController {
    
    private let contentView = View()

    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonsTarget()
    }
    
    override func loadView() {
        view = contentView
    }
    
    private func setButtonsTarget() {
        contentView.githubLinkButton.addTarget(self, action: #selector(githubLinkButtonTapped), for: .touchUpInside)
        contentView.linkedinLinkButton.addTarget(self, action: #selector(linkedinLinkButtonTapped), for: .touchUpInside)
        contentView.introParagraphButton.addTarget(self, action: #selector(introParagraphButtonTapped), for: .touchUpInside)
    }
    
    @objc
    private func githubLinkButtonTapped() {
        let link = "https://github.com/CodeWithChiawei"
        UIPasteboard.general.string = link
        contentView.configureCopyTitle(text: "Github Link Copy")
    }
    
    @objc
    private func linkedinLinkButtonTapped() {
        let link = "https://www.linkedin.com/in/chiaweiwen/"
        UIPasteboard.general.string = link
        contentView.configureCopyTitle(text: "Linkedin Link Copy")
    }
    
    @objc
    private func introParagraphButtonTapped() {
        let paragraph = ""
        UIPasteboard.general.string = paragraph
        contentView.configureCopyTitle(text: "Intro Copy")
    }
}

