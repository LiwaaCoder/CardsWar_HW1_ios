
import Foundation


class ScoreViewModel: ObservableObject{
    @Published var winnerTitle : String = ""
    @Published var scoreTitle : String = ""
    @Published var isBack = false

    init(winnerName: String, score: Int)
    {
        winnerTitle = "The Winner is " + winnerName + "!"
        scoreTitle = "Score : \(score)"
    }
    
    func backTomMenu(){
        isBack = true
    }

}
