//
//  SwiftUICustomTagListView.swift
//  
//
//  Created by 福田正知 on 2024/02/11.
//

import SwiftUI

public struct SwiftUICustomTagListView: View {
    
    private let tagViews: [SwiftUICustomTagView]
    private let horizontalSpacing: CGFloat
    private let verticalSpacing: CGFloat
    
    @State private var listHeight: CGFloat = 0
    
    public init(_ views: [SwiftUICustomTagView], horizontalSpacing: CGFloat, verticalSpacing: CGFloat) {
        self.tagViews = views
        self.horizontalSpacing = horizontalSpacing
        self.verticalSpacing = verticalSpacing
    }
    
    public var body: some View {
        GeometryReader { geometry in
            generateTags(geometry, views: tagViews)
                .background(GeometryReader { geo in
                    Color(.white)
                        .onAppear {
                            self.listHeight = geo.size.height
                        }
                })
        }
        .frame(height: listHeight)
    }
    
    // ref: https://reona.dev/posts/20200929
    private func generateTags(_ geometry: GeometryProxy, views: [SwiftUICustomTagView]) -> some View {
        var width = CGFloat.zero
        var height = CGFloat.zero
     
        return ZStack(alignment: .topLeading) {
            ForEach(views, id: \.self) { view in
                view
                    .padding(.trailing, horizontalSpacing)
                    .alignmentGuide(.leading, computeValue: { dimension in
                        if abs(width - dimension.width) > geometry.size.width {
                            width = 0
                            height -= dimension.height + verticalSpacing
                        }
                        let result = width
                        if view == views.last {
                            width = 0
                        } else {
                            width -= dimension.width
                        }
                        return result
                    })
                    .alignmentGuide(.top, computeValue: { dimension in
                        let result = height
                        if view == views.last {
                            height = 0
                        }
                        return result
                    })
            }
        }
    }
}

struct SwiftUICustomTagListView_Previews: PreviewProvider {
    static let views: [SwiftUICustomTagView] = [
        SwiftUICustomTagView(view: AnyView(Text("aaa"))),
        SwiftUICustomTagView(view: AnyView(Text("Sample"))),
        SwiftUICustomTagView(view: AnyView(Text("123"))),
        SwiftUICustomTagView(view: AnyView(Text("Sample"))),
        SwiftUICustomTagView(view: AnyView(Text("Sample"))),
    ]
    static var previews: some View {
        SwiftUICustomTagListView(views, horizontalSpacing: 8, verticalSpacing: 8)
            .frame(width: 140, height: 100)
            .previewLayout(.sizeThatFits)
    }
}
