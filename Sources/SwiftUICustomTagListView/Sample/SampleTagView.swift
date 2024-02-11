//
//  SampleTagView.swift
//  
//
//  Created by 福田正知 on 2024/02/11.
//

import SwiftUI

struct SampleTagViewData {
    let text: String
    let color: Color
}

struct SampleTagView: View {
    
    let data: SampleTagViewData
    
    var body: some View {
        Text(data.text)
            .font(.title2)
            .onTapGesture {
                print("[Pressed] \(data.text)")
            }
            .foregroundColor(.white)
            .padding(.all, 8)
            .background(LinearGradient(
                gradient: Gradient(colors: [data.color, data.color.opacity(0.6)]),
                startPoint: .top,
                endPoint: .bottom))
            .cornerRadius(7)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static let data = SampleTagViewData(text: "Apple", color: .red)
    static var previews: some View {
        SampleTagView(data: data)
    }
}
