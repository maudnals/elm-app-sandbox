module Models exposing (..)
import RemoteData exposing (WebData)

-- model
type alias Model = 
  { 
    players: WebData (List Player)
  }
-- WebData is a promise or so

initialModel : Model
initialModel = 
  {
    players = RemoteData.Loading
  }

type alias PlayerId = 
  String

-- player record
type alias Player = {
  id : PlayerId,
  name : String,
  level : Int
}
