# SwiftUICustomTagListView

![image](https://img.shields.io/badge/Platform-iOS14-orange.svg)

Simple and customizable Tag List View for SwiftUI

# How to use

<img width="317" alt="image" src="https://github.com/chitomo12/SwiftUICustomTagListView/assets/37266869/6b3e07a5-005e-4238-90e7-41d1f427f509" align="right">

```swift
struct SampleView: View {

    let data: [SampleTagViewData] = [
        .init(text: "#Technology", color: Color(hex: "#ff4d4d")),
        .init(text: "#News", color: Color(hex: "#b33636")),
        .init(text: "#Politics", color: Color(hex: "#ff944d")),
        .init(text: "#Breaking", color: Color(hex: "#ff4dd3")),
        .init(text: "#Global", color: Color(hex: "#b33693")),
    ]
    
    var views: [SwiftUICustomTagView<SampleTagView>] {
        self.data.map { data in
            SwiftUICustomTagView(content: {
                SampleTagView(data: data)
            })
        }
    }
    
    var body: some View {
        SwiftUICustomTagListView(views, horizontalSpace: 8, verticalSpace: 8)
            .frame(width: 240, height: 220)
    }
}

// MARK: - Define your own component
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

struct SampleTagViewData {
    let text: String
    let color: Color
}
```

## License
SwiftUICustomTagListView is available under the MIT license. See the LICENSE file for more info.
