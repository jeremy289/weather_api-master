//
//  Imagepicker.swift
//  weather_api
//
//  Created by User18 on 2020/6/16.
//  Copyright © 2020 ntou. All rights reserved.
//

import SwiftUI

struct ImagePickerController:UIViewControllerRepresentable{
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerController>) -> UIImagePickerController {
         let controller = UIImagePickerController()
         controller.sourceType = .photoLibrary
        return controller
         
    }
    
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
}

struct Imagepicker: View {
    @State private var showSelectPhoto = false
    
    var body: some View {
        
        Button(action:{
            self.showSelectPhoto=true
        }){
            Image(systemName: "photo")
                .resizable().scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()
        }
        .sheet(isPresented: $showSelectPhoto){
            ImagePickerController()
        }
        
    }
}


struct Imagepicker_Previews: PreviewProvider {
    static var previews: some View {
        Imagepicker()
    }
}
