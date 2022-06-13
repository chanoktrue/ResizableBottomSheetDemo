//
//  ContentView.swift
//  ResizableBottomSheetDemo
//
//  Created by Thongchai Subsaidee on 13/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            Button {
                showSheet.toggle()
            } label: {
                Text("Show Bottom Sheet")
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $showSheet) {
                Text("This is the resizable bottom sheet.")
//                    .presentationDetents([.height(100), .medium])
//                    .presentationDragIndicator(.hidden)
                    .presentationDetents([.fraction(0.1), .medium, .large])
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
