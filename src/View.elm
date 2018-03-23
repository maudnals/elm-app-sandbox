module View exposing (..)

import Msgs exposing (Msg)
import Models exposing (Model)
import Html exposing (div, Html, text)
import Players.List exposing (view)

-- view
view : Model -> Html Msg
view model =
  div []
    [ Players.List.view model.players ]