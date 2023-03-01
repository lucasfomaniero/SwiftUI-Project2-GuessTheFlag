//
//  ContentView.swift
//  P2-GuessTheFlag
//
//  Created by Lucas Maniero on 27/02/23.
//

import SwiftUI

struct Day20Examples: View {
    @State private var showingAlert: Bool = false
    @State var title = "Teste"
    var body: some View {
        ScrollView {
//            Text("Your content")
//                .foregroundColor(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//
//            LinearGradient(gradient: Gradient(colors: [.white, .accentColor.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
//                .frame(height: 80)
//            LinearGradient(gradient: Gradient(stops: [
//                   .init(color: .white, location: 0.49),
//                   .init(color: .black, location: 0.51),
//               ]), startPoint: .top, endPoint: .bottom)
//            .frame(height: 180)
//            RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
//                .frame(height: 80)
//            AngularGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .darkBlue, .purple, .red]), center: .center)
//                .frame(height: 80)
            Button("Plain") { }
                .buttonStyle(.plain)
                .tint(.mint)
            Button(title) {
                self.title += " 😌"
            }
//            Button {
//                showingAlert = true
//            } label: {
//                    Image(systemName: "clock")
//                    .symbolRenderingMode(.multicolor)
//                    Text("Show Alert")
//            }
//            .buttonStyle(.borderedProminent)
//            .tint(.accentColor)
//            .alert("Important Message", isPresented: $showingAlert) {
//                Button("OK"){
//                    showingAlert = false
//                }
//            }
        }
        
    }
    
   
}



extension Color {
    public static var darkBlue: Color {
        return Color(uiColor: .init(red: 0, green: 0, blue: 139/255, alpha: 1.0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Day20Examples()
    }
}
