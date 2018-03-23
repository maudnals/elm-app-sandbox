module Models exposing (..)

-- model
type alias Model = 
  { 
    players: List Player
  }

initialModel : Model
initialModel = 
  {
    players = [ Player "id1" "John" 0 ]
  }

type alias PlayerId = 
  String

-- player record
type alias Player = {
  id : PlayerId,
  name : String,
  level : Int
}
