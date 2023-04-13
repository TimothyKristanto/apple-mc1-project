//
//  SelectActorsView.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 05/04/23.
//

import SwiftUI

struct SelectActorsView: View {
    @State var searchActor = ""
    
    @Binding var selector: String
    
    var actors: [String] = [
        "Kana Sooyoun","Baek Yoonsik","Kim Haesook","Lee Junho","Park Haesoo","Jung Woongin","Yoon Kyesang","Yoo Teo","Park Haseon","Song Yoona","Lee Jooyoung","Kim Goeun","Jang Youngnam","Cho Jungseok","Park Shinhye","Lee Minho","Yoo Yeonseok","Park Haejoon","Song Joongki","Youn Yuhjung","Jung Woo","Yum. Jungah","Choi Minsik","Ryu Hyeyoung","Kang Malgeum","Lee Sunkyun","Moon Jeonghee","So Jisub","Jang Hyuk","Kim Sungryoung ","Park Bovoung","Kim Heeae","Kim Okvin","Yoon Kyungho","Lee Junhyuk","Lee Sungkyoung","Kim Daemyeung","Kim Euisung","Jin Kyung","Park Jeongmin","Kim Youngmin","Kim Dongwook","Cho Minsoo","Ju Jihoon","Ryoo Seungbum","Seo Kangjun","Park Byungeun","Kim Hiewon","Yoo Hajin","Yeom Hyeran","Ryu Seungryong","Lee Yeonhee","Ra Miran","Ryu Junyeol","Lee Youyoung","Lee Jehoon","Lee Sanghee","Kim Namgil","Sung Dongil","Choi Sooyoung","Son Yejin","Lee Heejun","Park Bogum","Park Sodam","Jeon Hyejin","Yoo Vitae","Claudia KIM","Lee Hyeyoung","Goh Dooshim","Jo Woojin","Kim Mooyu","Cha Taehyun","Park Heesoon","Kim Hojung","Kim Suan","Park Jinioo","Lee Re","Son Hyunjoo","Lee Kwanasoo","Park Sungwoong","Lee Minis","Bae Jongok","Kim Sangho","Nam Yeonwoo","Chun Woohee","Kim Soohyun","Lim Yoona","Sul Kyunggu","Uhm Jiwon","Àwang Jungmin","Lee Seojin","Kim Hyunjoo","Won Jina","Yeo Jingoo","Kim Sungkyu","Shim Eunkyung","Lee Youngae","Shim Dalgi","Moon Geunyoung","Kim Dami","Um Taegoo","Ye Sujeong","Lee Byunghun","Sim Heeseop","Doh Kyungsoo","Park Myunghoon","Lee Soonjae","Lee Joongi","Moon Chaewon","Song Jihyo",
        "Kim Ajoong","Soo Ae","Jung Woosung","Moon Sori","Kang Haneul","Jang Yoonju","Lee Siyoung","Uhm Junchwa","Esom","Lee Jaein","Shin Jungkeun","Lee Hanee","Jung Haein","Koo Kyohwan","Jin Sunkyu","EL","Vim Siwan","Oh Jungse","Lee Nayoung","Lee Junghyun","Yoo Dain","Go Changsuk","Kim Hyejun","Lee Joon","Shin Haesun","Shin Hakyun","Jung Jaeyoung","Lee Seunggi","Kim Myungmin","Park Jihu","Park Seojun","Lee Sungmin","Kim Mekyung","Kwak Dowon","Hyun Bin","Lee Jooyoung","Ok Taecyeon","Seo Younghee","Ahn Sungki","Jung Eunchae","Han Veri","Shin Hyunbeen","Kim Sunakrun","Shin Saekyeong","Lee Jungjae","Kim Hwanhee","Lee Donghwi","Lee Jungeun","Kwon Sangwoo","Jun Jonaseo","Kim Sangkyung","Kim Hyeja","Kim Hyanggi","Jung Ryeowon","Kwon Yul","Kim Sunyoung","Kim Saeron","Jin Goo","Cho Hyunchul","Byun Yohan","Jang Donggun","Go Soo","Kim Seohyung","Ahn Seohyun","Jeong Hadam","Kim Yunjin","Kim Saebyuk","Choi Heeseo","Cho Yeojeong","Kim Sojin","Kim Youjung","Jung Soojung","Huh Joonho","Kwon Haehyo","Cha Seoungwon","Ko Asung","Han Jimin","Gong Myoung","An Sohee","Jung Jinyoung","Kim Yunseok","Jung Kyungho","Jeong Mansik","Ji Changwook","Jeon Doveon","Jeon Sonee","Cho Jinwoong","Han Hyojoo","Chang Hyaejin"
    ]
    
    var searchResults: [String] {
        if(searchActor.isEmpty){
            return actors
        }else{
            return actors.filter{
                return $0.contains(searchActor)
            }
        }
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(searchResults, id: \.self){ act in
                        SingleGenreActorRow(name: act)
                    }
                }
            }
            .navigationTitle("Select Actors")
            .navigationBarItems(leading: Button{
                withAnimation{
                    selector = "genres"
                }
            }label: {
                HStack{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                    
                    Text("Back")
                }
            })
            .toolbar {
                Button("Finish"){
                    withAnimation{
                        selector = "done"
                    }
                }
            }
        }
        .searchable(text: $searchActor)
    }
}

struct SelectActorsView_Previews: PreviewProvider {
    static var previews: some View {
        SelectActorsView(selector: .constant("actors"))
    }
}
