//
//  ContentView.swift
//  Memorize App
//
//  Created by Diba Demir on 10.11.2021.
//

import SwiftUI


struct ContentView: View {
    
    @State var emojismain = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🚚", "🚛", "🚜", "🛴", "🚲", "🛵", "🏍", "🚨", "🚔", "🚍", "🚘", "🚖", "🚡", "🚠"]
    
    @State var emojisvehicles = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🚚", "🚛", "🚜", "🛴", "🚲", "🛵", "🏍", "🚨", "🚔", "🚍", "🚘", "🚖", "🚡", "🚠"]
    
    @State  var emojisnature = ["🌵", "🌳", "🪵", "🌿", "🎋", "🍂", "🍄", "🌾", "💐", "🌺"]
    
    @State var emojispeople = ["😃", "😅", "😎", "😋", "🥸", "🤩", "😤", "😢", "😵‍💫", "🤑", "🤠", "😨"]
    
    @State var emojiCount = 20
    
    var body: some View {
        VStack {
            Text("Memorize!").font(.largeTitle)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
            ForEach(emojismain[0..<emojiCount], id: \.self) { emoji in
                CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
            }
        }
    }
        .foregroundColor(.red)

        Spacer()
        HStack {
            cars
            Spacer()
            nature
            Spacer()
            emotions
         }
            
        .font(.largeTitle)
        .padding(.horizontal)
    }
    .padding(.horizontal)
    }
    

    var cars: some View {
        Button(action: {
            emojiCount = emojisvehicles.count
            emojismain = emojisvehicles
            emojisvehicles.shuffle()
            
        }, label: {
            Image(systemName: "car")
            
        })
    }
    var nature: some View {
        Button(action: {
            emojiCount = emojisnature.count
            emojismain = emojisnature
            emojisnature.shuffle()
            
        }, label: {
            Image(systemName: "globe.americas.fill")
        })
    }
    var emotions: some View {
        Button(action: {
            emojiCount = emojispeople.count
            emojismain = emojispeople
            emojispeople.shuffle()
            
        }, label: {
            Image(systemName: "person.fill")
        })
    }
    
    var carstext: some View {
        Text("Vehicle Theme")
    }
    
    var naturetext: some View {
        Text("Nature Theme")
    }
    
    var emotionstext: some View {
        Text("Emotions Theme")
    }
    

    
    
struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape =  RoundedRectangle(cornerRadius: 20.0)
            
            if isFaceUp {
             shape.fill().foregroundColor(.white)
                
             shape.strokeBorder(lineWidth: 3.0)
                
            Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
        }
    
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
    
}


