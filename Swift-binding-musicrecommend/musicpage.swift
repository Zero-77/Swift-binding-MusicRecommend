//
//  musicpage.swift
//  Swift-binding-musicrecommend
//
//  Created by 07 Zhang on 2020/4/30.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI

struct musicpage: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var songsData: songData
    
    @Binding var steppermood:Int
    @Binding var pickermood:Int
    @Binding var pickersong:Int
    
    var roles=["快樂","憂鬱","失戀","熱血"]
    var songtime=["新歌","經典歌"]
    
    
    var body: some View {
        
        ScrollView{
            
            Image("persona2")
                .resizable()
                .scaledToFit()
                .frame(width:450,height: 500)
            Text("心情分數:\(steppermood)").font(.custom("Thonburi",size:30))
            Text("目前心情:\(roles[pickermood])").font(.custom("Thonburi",size:30))
            Text("歌曲類型:\(songtime[pickersong])\n").font(.custom("Thonburi",size:30))
            newsongs(steppermood: self.$steppermood, pickermood: self.$pickermood, pickersong: self.$pickersong)
            //經典歌
            classicsong(steppermood: self.$steppermood, pickermood: self.$pickermood, pickersong: self.$pickersong)
            
            
            
        }.background(Path{(path) in
            path.move(to:CGPoint(x:0,y:50))
            path.addLine(to:CGPoint(x:0,y:930))
            path.addLine(to:CGPoint(x:200,y:120))
            path.move(to:CGPoint(x:440,y:50))
            path.addLine(to:CGPoint(x:440,y:930))
            path.addLine(to:CGPoint(x:300,y:700))
        }.fill(Color(hue: 0.614, saturation: 0.061, brightness: 0.447)))
        
        
    }
}

struct musicpage_Previews: PreviewProvider {
    static var previews: some View {
        musicpage(songsData: songData(),steppermood: .constant(0), pickermood: .constant(0), pickersong: .constant(0))
    }
}

struct newsongs: View {
    @Binding var steppermood:Int
    @Binding var pickermood:Int
    @Binding var pickersong:Int
    @State private var showAlert = false
    var body: some View {
        Group{
            Group{
                Group{
                    if steppermood==1&&pickermood==0&&pickersong==0{
                        Text("推薦歌曲為-\n盧廣仲-\n一定要相信自己").font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=3xx4RlPfvUw") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==1&&pickermood==1&&pickersong==0{
                        Text("推薦歌曲為-\n告五人-\n我會披星戴月的想你")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=VpwAq7hiij0") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==1&&pickermood==2&&pickersong==0{
                        Text("推薦歌曲為-\n甜約翰Sweet John-\n失蹤人口")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=djACkCHl3JA") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==1&&pickermood==3&&pickersong==0{
                        Text("推薦歌曲為-\nAqua Timez-\nVelonica")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=NvMRG_F_CGI") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                }
                Group{
                    if steppermood==2&&pickermood==0&&pickersong==0{
                        Text("推薦歌曲為-\nBRADIO-\nFlyers")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=9wh8FgsEtNQ") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==2&&pickermood==1&&pickersong==0{
                        Text("推薦歌曲為-\n宇宙人-\n一桌菜")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=8KhiikVXO0s") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==2&&pickermood==2&&pickersong==0{
                        Text("推薦歌曲為-\n好樂團-\n我把我的青春給你")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=9MMIB61e6sM") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==2&&pickermood==3&&pickersong==0{
                        Text("推薦歌曲為-\nCasey Edwards-\nDevil Trigger")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=t9j0fq0ELnc") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                }
                Group{
                    if steppermood==3&&pickermood==0&&pickersong==0{
                        Text("推薦歌曲為-\n盧廣仲-\n敢傻 就是我的本事")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=v_n482zGOE0") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==3&&pickermood==1&&pickersong==0{
                        Text("推薦歌曲為-\nChildish Gambino-\nRedbone")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=Kp7eSUU9oy8") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==3&&pickermood==2&&pickersong==0{
                        Text("推薦歌曲為-\nThe Chainsmokers-\nParis")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=RhU9MZ98jxo") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==3&&pickermood==3&&pickersong==0{
                        Text("推薦歌曲為-\nBLUE ENCOUNT-\nSurvior")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=wLOohMe0sGU") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                }
                Group{
                    if steppermood==4&&pickermood==0&&pickersong==0{
                        Text("推薦歌曲為-\nSPiCYSOL-\nSOLO")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=wgJRagllRtQ") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==4&&pickermood==1&&pickersong==0{
                        Text("推薦歌曲為-\n甜約翰Sweet John-\n靠窗座位")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=3jt1RFCZBcI") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==4&&pickermood==2&&pickersong==0{
                        Text("推薦歌曲為-\nEd Sheeran-\nPerfect")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=2Vv-BfVoq4g") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==4&&pickermood==3&&pickersong==0{
                        Text("推薦歌曲為-\nKANA-BOON-\nSilhouette")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=dlFA0Zq1k2A") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                }
                Group{
                    if steppermood==5&&pickermood==0&&pickersong==0{
                        Text("推薦歌曲為-\nØZI,9m88-\nB.O.")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=MHKnSFlDBLQ") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==5&&pickermood==1&&pickersong==0{
                        Text("推薦歌曲為-\nキャロル&チューズデイ-\nKiss Me")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=3FX-0Z9pdgw") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==5&&pickermood==2&&pickersong==0{
                        Text("推薦歌曲為-\n盧廣仲-\n幾分之幾")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=HQ_mU73VhEQ") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==5&&pickermood==3&&pickersong==0{
                        Text("推薦歌曲為-\nFLOW-\nCha-La Head-Cha-La")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=UPwmjFe9-yo") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                }
            }
        }
    }
}

struct classicsong: View {
    @Binding var steppermood:Int
    @Binding var pickermood:Int
    @Binding var pickersong:Int
    @State private var showAlert = false
    var body: some View {
        Group{
            Group{
                Group{
                    if steppermood==1&&pickermood==0&&pickersong==1{
                        Text("推薦歌曲為-\n盧廣仲-\n100種生活")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=nPcByqGfxQo") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==1&&pickermood==1&&pickersong==1{
                        Text("推薦歌曲為-\n張震嶽-\n愛我別走")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=zPeMFCDPgKE") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==1&&pickermood==2&&pickersong==1{
                        Text("推薦歌曲為-\n阿杜-\n他一定很愛你")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=O5zouptvi9g") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==1&&pickermood==3&&pickersong==1{
                        Text("推薦歌曲為-\n八三夭-\n東區東區")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=qVKLNfbpCZ0") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                }
                Group{
                    if steppermood==2&&pickermood==0&&pickersong==1{
                        Text("推薦歌曲為-\nBAAD-\n君が好きだと叫びたい")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=8i862BjPn5c") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==2&&pickermood==1&&pickersong==1{
                        Text("推薦歌曲為-\n蕭敬騰-\n我懷念的")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=gTOGQ-t2TQo") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==2&&pickermood==2&&pickersong==1{
                        Text("推薦歌曲為-\n陳勢安-\n天后")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=ByjGY4XgZdM") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==2&&pickermood==3&&pickersong==1{
                        Text("推薦歌曲為-\nJustin Bieber-\nBeauty And A Beat")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=Ys7-6_t7OEQ") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                }
                Group{
                    if steppermood==3&&pickermood==0&&pickersong==1{
                        Text("推薦歌曲為-\nHappy-\nPharrell Williams")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=ZbZSe6N_BXs") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==3&&pickermood==1&&pickersong==1{
                        Text("推薦歌曲為-\n周杰倫-\n晴天")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=DYptgVvkVLQ") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==3&&pickermood==2&&pickersong==1{
                        Text("推薦歌曲為-\n蘇打綠-\n我好想你")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=P_pyfLArjQg") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==3&&pickermood==3&&pickersong==1{
                        Text("推薦歌曲為-\nFLOW-\nGO!!!")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=AE4b9jO1uB4") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                }
                Group{
                    if steppermood==4&&pickermood==0&&pickersong==1{
                        Text("推薦歌曲為-\nOwl City & Carly Rae Jepsen-\nGood Time")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=H7HmzwI67ec") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==4&&pickermood==1&&pickersong==1{
                        Text("推薦歌曲為-\n蘇打綠-\n小情歌")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=in8NNzwFa-s") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==4&&pickermood==2&&pickersong==1{
                        Text("推薦歌曲為-\n楊丞琳-\n雨愛")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=oec9R5ypf-o") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==4&&pickermood==3&&pickersong==1{
                        Text("推薦歌曲為-\n潘瑋柏-\n快樂崇拜")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=mZFu9xli2oo") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                }
                Group{
                    if steppermood==5&&pickermood==0&&pickersong==1{
                        Text("推薦歌曲為-\nMaroon 5-\nMoves Like Jagger")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=iEPTlhBmwRg") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==5&&pickermood==1&&pickersong==1{
                        Text("推薦歌曲為-\nROOKiEZ is PUNK'D-\nコンプリケイション")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=rvC3j1ow32g") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==5&&pickermood==2&&pickersong==1{
                        Text("推薦歌曲為-\n南拳媽媽-\n下雨天")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=uu0k4cQS7_8") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                    if steppermood==5&&pickermood==3&&pickersong==1{
                        Text("推薦歌曲為-\n中川翔子-\n空色デイズ")
                            .font(.custom("Thonburi",size:30))
                        Button("連結"){
                            self.showAlert = true
                            if let url = URL(string: "https://www.youtube.com/watch?v=XIIPPTnZxkw") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url, options: [:])
                                }
                            }
                        }.frame(width:100,height:50)
                            .font(.custom("Copperplate",size:25))
                            .background(Color.pink)
                            .foregroundColor(.black)
                            .cornerRadius(50)
                            .alert(isPresented: $showAlert) { () -> Alert in
                                let answer = ["請享受歌曲", "轉換心情"].randomElement()!
                                return Alert(title: Text(answer))
                        }
                    }
                }
            }
        }
    }
}
