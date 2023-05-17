//
//  ContentView.swift
//  OTUS HW25 CatsAndDogs
//
//  Created by Александр Касьянов on 17.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ImagePickerView(imageClassifier: ImageClassifier())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
