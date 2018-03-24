module Commands exposing (..)

import Http
import Json.Decode as Decode
import Json.Decode.Pipeline exposing (decode, required)
import Msgs exposing (Msg)
import Models exposing (PlayerId, Player)
import RemoteData


-- none of the following executes until the cmd is sent to Program

fetchPlayers : Cmd Msg
fetchPlayers = 
  Http.get fetchPlayersUrl playersDecoder
    |> RemoteData.sendRequest
    |> Cmd.map Msgs.OnFetchPlayers
-- Http.get fetchPlayersUrl playersDecoder: returns a Request
-- request is passed to RemoteData.sendRequest, who will wrap the request in a WebData type AND return a command to send this request
-- map the command to onFetchPlayers msg, in order to handle the response in our update function



fetchPlayersUrl : String
fetchPlayersUrl = 
  "http://localhost:5000/players"


playersDecoder : Decode.Decoder (List Player)
playersDecoder =
  Decode.list playerDecoder


playerDecoder : Decode.Decoder Player
playerDecoder = 
  decode Player
    |> required "id" Decode.string
    |> required "name" Decode.string
    |> required "level" Decode.int
