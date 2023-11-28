

import SwiftUI



struct SuccessView: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var selectedTab: Int
    
    let msg = """
Good job completing all four exercises.
Remember, tomorrow is another day.
So eat well and get some rest.
"""
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height: 75)
                    .foregroundColor(.purple)
                    .padding()
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Text(msg)
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .foregroundColor(.gray)
            }
            VStack {
                Spacer()
                Button("Continue") {
                    selectedTab = 9
                    dismiss()
                }
                    .padding()
            }
        }
    }
}

#Preview {
    SuccessView(selectedTab: .constant(3))
}
