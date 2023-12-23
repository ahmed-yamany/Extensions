//
//  Created by Ahmed Yamany on 22/12/2023.
//

import SwiftUI

@available(iOS 15.0.0, *)
private struct NavigationBarBackButtonImageChanger: UIViewRepresentable {
    let image: UIImage?
    
    func makeUIView(context: Context) -> some UIView { UIView() }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.02) {
            let navigationBar = uiView.parentViewController?.navigationController?.navigationBar
            navigationBar?.backIndicatorImage = image
            navigationBar?.backIndicatorTransitionMaskImage = image
        }
    }
}

@available(iOS 15.0, *)
public extension View {
    @ViewBuilder
    func navigationBarBackButtonImage(_ image: UIImage?) -> some View {
        background {
           NavigationBarBackButtonImageChanger(image: image)
        }
    }
}
