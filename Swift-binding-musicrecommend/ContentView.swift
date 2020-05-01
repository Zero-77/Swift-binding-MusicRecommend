//
//  ContentView.swift
//  Swift-binding-musicrecommend
//
//  Created by 07 Zhang on 2020/4/30.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var happy=1
    @State private var roles=["快樂","憂鬱","失戀","熱血"]
    @State private var selectedIndexmood=0
    @State private var selectedIndexsong=0
    @State private var songtime=["新歌","經典歌"]
    @State private var choosemood=false
    @State private var showmusicpage = false
    @ObservedObject var songsData=songData()
    var body: some View {
        ScrollView{
            VStack{
                ZStack{
                    Text("-MUSIC RecommenD-")
                        .padding()
                        .font(.custom("GillSans-Italic",size:30))
                        .frame(width:300,height: 50)
                        .background(Color.yellow)
                        .cornerRadius(50)
                    
                    Image(systemName: "hifispeaker")
                        .resizable()
                        .scaledToFit()
                        .frame(width:50,height:50)
                        .offset(x:150,y:0)
                        .foregroundColor(.blue)
                    Image(systemName: "hifispeaker")
                        .resizable()
                        .scaledToFit()
                        .frame(width:50,height:50)
                        .offset(x:-150,y:0)
                        .foregroundColor(.red)
                }//zstack
                Text("\n")
                Image("music2")
                    .resizable()
                    .scaledToFit()
                    .frame(width:200,height:200)
                    .rotationEffect(.radians(0.40))
                Text("來首音樂吧!")
                    .padding()
                    .font(.custom("Thonburi",size:25))
                    .frame(width:450,height: 50)
                    .background(Color(hue: 0.46, saturation: 0.899, brightness: 0.963))
                Text("一同祝賀、轉換你的心情")
                    .padding()
                    .font(.custom("Thonburi",size:25))
                    .frame(width:450,height: 50)
                    .background(Color(hue: 0.46, saturation: 0.899, brightness: 0.963))
                Toggle("挑選心情，推薦歌曲",isOn: $choosemood)
                    .frame(width:400,height:50)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(30)
                if choosemood{
                    VStack{
                        Text("心情選單↓")
                            .font(.custom("Copperplate-Bold",size:30))
                            .padding(0.0)
                            .frame(width:200,height: 50)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                        steppermood(happy: self.$happy)
                        Text("\n")
                        pickermood(selectedIndexmood: self.$selectedIndexmood)
                        
                        pickersong(selectedIndexsong: self.$selectedIndexsong)
                        Button("Drop The BeaT", action:{
                            self.showmusicpage=true
                        }).sheet(isPresented:$showmusicpage){
                                
                                musicpage(songsData: songData(), steppermood:self.$happy,pickermood:self.$selectedIndexmood,pickersong:self.$selectedIndexsong)
                                //新增情人利用sheet顯示時再另外產生NavigationView
                        }//button
                            .frame(width:250,height:80)
                            .font(.custom("Copperplate",size:30))
                            .background(Color.yellow)
                            .cornerRadius(50)
                        
                    }
                }//if true toggle
                //moodmusic()
            }//vstack
            //.offset(x: 0, y: -200)
        }.background(Path{(path) in
            path.move(to:CGPoint(x:0,y:0))
            path.addLine(to:CGPoint(x:0,y:930))
            path.addLine(to:CGPoint(x:200,y:530))
            path.move(to:CGPoint(x:440,y:0))
            path.addLine(to:CGPoint(x:440,y:930))
            path.addLine(to:CGPoint(x:220,y:300))
        }.fill(Color(hue: 1.0, saturation: 0.826, brightness: 0.889)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct steppermood: View {
    @Binding var happy:Int
    var body: some View {
        Stepper("心情分數(五個等級)？\(happy)",value:$happy,in:1...5)
            .frame(width:400,height: 50)
            .background(Color.white)
            .foregroundColor(.black)
            .cornerRadius(10)
            .shadow(radius: 30)
    }
}

struct pickermood: View {
    @Binding var selectedIndexmood:Int
    var roles=["快樂","憂鬱","失戀","熱血"]
    var body: some View {
        Picker(selection:$selectedIndexmood,label:Text("選擇心情")){
            ForEach(0..<roles.count){
                (index) in
                Text(self.roles[index])
            }
        }//picker mood
            .frame(height:70)
            .pickerStyle(SegmentedPickerStyle())
            .background(Color(hue: 0.46, saturation: 0.899, brightness: 0.963))
            .cornerRadius(50)
            .shadow(radius: 30)
    }
}

struct pickersong: View {
    @Binding var selectedIndexsong:Int
    var songtime=["新歌","經典歌"]
    var body: some View {
        Picker(selection:$selectedIndexsong,label:Text("選擇類型")){
            ForEach(0..<songtime.count){
                (index) in
                Text(self.songtime[index]).foregroundColor(.black)
            }
        }//picker time
            .background(Color.white)
            .foregroundColor(.black)
            .frame(width:400,height:100)
            .cornerRadius(50)
            .shadow(radius: 30)
    }
}
