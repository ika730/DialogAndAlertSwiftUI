//
//  ContentView.swift
//  part9
//
//  Created by Nakagawa Kosuke on 2023/08/16.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAleart = false
    @State var isShowDialog = false
    var body: some View {
        VStack {
            Button{
                isShowAleart = true
            }label:{
                Text("アラートを表示")
            }
            .alert("タイトル",isPresented: $isShowAleart){
                Button("キャンセル"){
                    
                }
                Button("OK"){
                    
                }
            }message: {
                Text("ここに詳細メッセージを書きます")
            }
            Button{
                isShowDialog = true
            }label:{
                Text("ダイアログを表示")
            }
            .confirmationDialog("タイトル", isPresented:  $isShowDialog, titleVisibility: .visible){
                Button("選択肢1"){
                }
                Button("選択肢2"){
                }
                }message: {
                    Text("メッセージ")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
