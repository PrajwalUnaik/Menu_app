
import SwiftUI

struct MenuView: View {
    
    @State var menuItem:[MenuItem] = [MenuItem]()
    var dataServices = DataService()
    
    var body: some View {
        List(menuItem) { item in
            
            HStack{
                Image(item.imageName).resizable().aspectRatio(contentMode: .fit)
                    .frame(height: 50).cornerRadius(10)
                Text(item.name).bold()
                Spacer()
                Text("$" + item.price)
            }.listRowSeparator(.hidden).listRowBackground(Color(.brown).opacity(0.2))
        }.listStyle(.plain).onAppear(perform: {
            //call for the data
            menuItem = dataServices.getData()
        })
    }
}

#Preview {
    MenuView()
}


