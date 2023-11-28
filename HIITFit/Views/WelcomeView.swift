

import SwiftUI

struct WelcomeView: View {
    
    @State private var showHistory = false
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: "Welcome")
                Spacer()
                Button("History") {
                    showHistory.toggle()
                }
                .sheet(isPresented: $showHistory) {
                  HistoryView(showHistory: $showHistory)
                }
                .padding(.bottom)
            }
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("Get Fit")
                            .font(.largeTitle)
                        Text("with high intensity interval training")
                            .font(.headline)
                    }
                    Image("step-up")
                        .resizedToFill(width: 240, height: 240)
                        .clipShape(Circle())
                }
                .padding()
                Button(action: { selectedTab = 0 }, label: {
                    Text("Get Started")
                    Image(systemName: "arrow.right.circle")
                })
                .font(.title2)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20.0)
                    .stroke(Color.gray, lineWidth: 2))
                
            }
        }
    }
}

#Preview {
    WelcomeView(selectedTab: .constant(9))
}
