//
//  ImageClassifier.swift
//  OTUS HW25 CatsAndDogs
//
//  Created by Александр Касьянов on 17.05.2023.
//

import SwiftUI

class ImageClassifier: ObservableObject {
    @Published private var classifier = MLViewModelClassifier()

    var imageClass: String? {
        classifier.results
    }

    func detect(uiImage: UIImage) {
        guard let ciImage = CIImage(image: uiImage) else { return }
        classifier.detect(ciImage: ciImage)
    }

    func detect(cgImage: CGImage) {
        classifier.detect(cgImage: cgImage)
    }

    func detect(cvPixelBuffer: CVPixelBuffer?) {
        if cvPixelBuffer != nil {
            classifier.detect(cvPixelBuffer: cvPixelBuffer!)
        }
    }
    func clear() {
        classifier.clear()
    }

}
