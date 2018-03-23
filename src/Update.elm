module Update exposing (..)
import Msgs exposing (Msg)
import Models exposing (Model)

-- update
update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  (model, Cmd.none)