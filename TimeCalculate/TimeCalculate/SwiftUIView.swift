//
//  SwiftUIView.swift
//  TimeCalculate
//
//  Created by 岡優志 on 2021/06/05.
//

import SwiftUI

struct SwiftUIView: View {
    @State var subtractionText = "差分を表示"
    private let isDate = IsDate(calculate: SubtractionCalculate())
    var body: some View {
        // GeometryでViewのサイズを取得
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: 35.0){
                Button(action: {
                    isDate.updateLog()
                }, label: {
                    Text("今の日時を記録")
                        .font(.system(size: 15))
                })
                Button(action: {
                    isDate.nowDate = Date()
                    subtractionText = isDate.isDate(isLogDate: isDate.logDate, isNowDate: isDate.nowDate)
                }, label: {
                    Text("記録した日時と今の日時の差分を計算")
                        .font(.system(size: 15))
                })
                Text(subtractionText)
                    .font(.system(size: 17))
            }
            // ViewSizeを取得してoffsetでUIKitと同じ場所にコンポーネントを配置
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .top)
            .offset(y: 150)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
