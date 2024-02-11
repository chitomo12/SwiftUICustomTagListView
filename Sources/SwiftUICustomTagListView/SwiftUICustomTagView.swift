//
//  SwiftUICustomTagView.swift
//  
//
//  Created by 福田正知 on 2024/02/11.
//

import SwiftUI

public struct SwiftUICustomTagView: View, Hashable {
    
    let id = UUID()
    @State var view: AnyView
    
    public init(view: AnyView) {
        self._view = State(initialValue: view)
    }
    
    public var body: some View {
        view
    }
    
    public static func == (lhs: SwiftUICustomTagView, rhs: SwiftUICustomTagView) -> Bool {
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

struct SwiftUICustomTagView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUICustomTagView(view: AnyView(Text("aaa")))
    }
}
