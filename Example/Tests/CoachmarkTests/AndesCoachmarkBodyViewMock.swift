//
//  AndesCoachmarkBodyViewMock.swift
//  AndesUI_Tests
//
//  Created by JONATHAN DANIEL BANDONI on 13/08/2020.
//  Copyright © 2020 MercadoLibre. All rights reserved.
//

import UIKit
@testable import AndesUI

class AndesCoachmarkBodyViewMock: AndesCoachMarkBodyViewProtocol, Mock {
    var didCallSetupTextAbove = MockCounter()
    var didCallSetupTextBelow = MockCounter()
    var didCallSetupArrowAboveOfTextAndPointToLeft = MockCounter()
    var didCallSetupArrowAboveOfTextAndPointToRight = MockCounter()
    var didCallSetupArrowBelowOfTextAndPointToLeft = MockCounter()
    var didCallSetupArrowBelowOfTextAndPointToRight = MockCounter()
    var didCallSetupTitleLabel = MockCounter()
    var didCallSetupNextText = MockCounter()
    var didCallSetupDescriptionLabel = MockCounter()
    var didCallConvertCoordinates = MockCounter()

    var title: String?
    var description: String?
    var nextTitle: String?
    var buttonStyle: AndesCoachMarkBodyEntity.ButtonStyle?
    var positionY: CGFloat?
    var arrowWidth: CGFloat?

    func setupTextAbove(of positionY: CGFloat) {
        self.positionY = positionY
        didCallSetupTextAbove.wasCalled()
    }

    func setupTextBelow(of positionY: CGFloat) {
        self.positionY = positionY
        didCallSetupTextBelow.wasCalled()
    }

    func setupArrowAboveOfTextAndPointToLeft(positionY: CGFloat, width: CGFloat) {
        self.positionY = positionY
        arrowWidth = width
        didCallSetupArrowAboveOfTextAndPointToLeft.wasCalled()
    }

    func setupArrowAboveOfTextAndPointToRight(positionY: CGFloat, width: CGFloat) {
        self.positionY = positionY
        arrowWidth = width
        didCallSetupArrowAboveOfTextAndPointToRight.wasCalled()
    }

    func setupArrowBelowOfTextAndPointToLeft(positionY: CGFloat, width: CGFloat) {
        self.positionY = positionY
        arrowWidth = width
        didCallSetupArrowBelowOfTextAndPointToLeft.wasCalled()
    }

    func setupArrowBelowOfTextAndPointToRight(positionY: CGFloat, width: CGFloat) {
        self.positionY = positionY
        arrowWidth = width
        didCallSetupArrowBelowOfTextAndPointToRight.wasCalled()
    }

    func setupTitleLabel(title: String) {
        self.title = title
        didCallSetupTitleLabel.wasCalled()
    }

    func setupDescriptionLabel(description: String) {
        self.description = description
        didCallSetupDescriptionLabel.wasCalled()
    }

    func setupNextButton(nextText: String, buttonStyle: AndesCoachMarkBodyEntity.ButtonStyle) {
        self.nextTitle = nextText
        self.buttonStyle = buttonStyle
        didCallSetupNextText.wasCalled()
    }

    func convertCoordinates(view: UIView) -> CGRect {
        didCallConvertCoordinates.wasCalled()
        return view.frame
    }

    var width: CGFloat = 150

}
