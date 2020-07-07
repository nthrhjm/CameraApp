//
//  UIImageExtensions.swift
//  CameraApp
//
//  Created by nhajime on 2020/07/07.
//  Copyright © 2020 nhajime. All rights reserved.
//

import UIKit

extension UIImage {
    func redraw() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: size, format: format)
            .image { context in draw(in: CGRect(origin: .zero, size: size))}
    }
}
