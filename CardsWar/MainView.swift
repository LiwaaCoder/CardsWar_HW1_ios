import SwiftUI

struct MainView: View {
    @EnvironmentObject var locationManager: LocationManager
    @StateObject var viewModel = MainViewModel()
   
    var body: some View {
        ZStack { // Add a ZStack to place the background behind the view
            Color.blue // Set the background color here
            
            if !viewModel.isLinkActive {
                UserNameInput(viewModel: viewModel)
            } else {
                EarthMark(viewModel: viewModel).environmentObject(locationManager)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(LocationManager())
    }
}
