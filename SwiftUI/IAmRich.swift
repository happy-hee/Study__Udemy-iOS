//
//  IAmRich.swift
//  Study__Udemy-iOS
//
//  Created by happy on 2024/01/04.
//

import SwiftUI

struct IAmRich: View {
  var body: some View {
    ZStack {
      Color(.systemTeal) // 배경색 => 위, 아래 가장자리 안전지역은 제외됨
        .edgesIgnoringSafeArea(.all) // 안전지역 제외 무시 (위 배경색이 같이 적용됨)

      VStack { // 수직스택
        Text("I Am Rich")
          .font(.system(size: 40)) // 폰트 크기 
          .fontWeight(.bold) // 폰트 굵기
          .foregroundcolor(.Color.white) // 폰트 색상

        Image("diamond") // 이미지("Assets 에서 추가한 diamond 라는 이름의 이미지")
          .resizable() // 크기조정 가능()
          .aspectRatio(contentMode: .fit) // 비율(모드: 꽉차게)
          .frame(width: 200, height: 200, alignment: .center) // 프레임(가로, 세로, 정렬)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}