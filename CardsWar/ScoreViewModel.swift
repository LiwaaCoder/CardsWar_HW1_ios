
import Foundation


class ScoreViewModel: ObservableObject{
    @Published var winnerTitle : String = ""
    @Published var scoreTitle : String = ""
    @Published var isBack = false

    init(winnerName: String, score: Int)
    {
        winnerTitle = "Our  Winner is " + winnerName + "!"
        scoreTitle = "The Highest Score : \(score)"
    }
    
    func backTomMenu(){
        isBack = true
    }

}
