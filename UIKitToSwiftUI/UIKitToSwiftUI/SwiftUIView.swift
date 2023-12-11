//
//  SwiftUIView.swift
//  UIKitToSwiftUI
//
//  Created by Amandine Cousin on 11/12/2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Text("Je suis une View SwiftUI")
                .padding()
            .background(.green)
            FinalView()
        }
    }
}

struct FinalView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        guard let finalVC = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "FinalViewController") as? FinalViewController else {
            fatalError("Unable to instantiate FinalViewController")
        }
        return finalVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

#Preview {
    SwiftUIView()
}
