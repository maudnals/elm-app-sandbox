module Msgs exposing (..)
import RemoteData exposing (WebData)
import Models exposing (Player)

-- msg
type Msg = 
  OnFetchPlayers (WebData (List Player))