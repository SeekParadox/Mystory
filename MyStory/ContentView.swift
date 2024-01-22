//
//  ContentView.swift
//  MyStory
//
//  Created by Michael Waller on 1/18/24.
//

import SwiftUI

let luffy = Image("Luffy")
let luffyStory = Image("Luffy_story")
let gum = Image("gum")
let crew = Image("crew")
struct ContentView: View {
    var body: some View {

        
        NavigationView {
            VStack(alignment: .leading) {
                  
                  luffy.resizable()
      //                .aspectRatio(contentMode: .fill)
                      .scaledToFill()
                      .frame(width: 200, height: 200)
                      .clipShape(Circle())
                      .overlay(Circle().stroke(Color.white, lineWidth: 2)) // Add a border if desired
                      .shadow(radius: 5)
                  // Your content here
                  NavigationLink(destination: BackstoryView()) {
                      Text("My cool backstory")
                          .frame(minWidth: 200)
                          .padding()
                          .background(Color.blue)
                          .foregroundColor(.white)
                          .cornerRadius(10)
                  }
                  NavigationLink(destination: DevilFruitView()) {
                      Text("My Devil Fruit")
                          .frame(minWidth: 200)
                          .padding()
                          .background(Color.blue)
                          .foregroundColor(.white)
                          .cornerRadius(10)
                  }
                
                NavigationLink(destination: CrewView()) {
                    Text("My crew")
                        .frame(minWidth: 200)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
                Spacer()
              }
       
//              .navigationTitle("Main Page")

        }
   
    }
}

struct BackstoryView: View {
    var body: some View {
        luffyStory.resizable()
            .aspectRatio(contentMode: .fit)
            .padding(5)
                        
        Text("Luffy first appears as a young boy in Windmill Village located in the Goa kingdom, who befriends the pirate \"Red-Haired\" Shanks and intends to become one himself. He accidentally eats the Human Human fruit, model: \"Nika\" fruit and acquires rubber powers at the cost of being unable to swim. From there he begins his journey of becoming the pirate king").multilineTextAlignment(.leading)
        Spacer()
            .navigationTitle("Luffy")
    }
}

struct DevilFruitView: View {
    var body: some View {
        gum
        Text("The fruit enables all parts of the consumer's body to behave like rubber, including their organs. This means that certain actions that otherwise would be impossible to do with a normal human body, such as pumping one's own blood or bones with air, can be achieved through this ability for extra speed or power.").multilineTextAlignment(.center)
        
        
            .navigationTitle("Devil Fruit")
        Spacer()
    }
}

struct CrewView: View {
    var body: some View {
        crew.resizable().scaledToFill().frame(maxHeight: 250)
        Text("The crew consists of eight humans, one fish-man, and one animal with Devil Fruit-powered human intellect; of the humans, Sanji possesses superhuman modifications given to him at birth, Franky is a cyborg, and Brook possesses a skeleton body after being resurrected by a Devil Fruit power.").multilineTextAlignment(.center)

        Spacer()
            .navigationTitle("Crew")
    }
}

#Preview {
    ContentView()
}
