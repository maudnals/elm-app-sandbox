module View exposing (..)

import Msgs exposing (Msg)
import Models exposing (Model)
import Html exposing (div, Html, text)

-- view
view : Model -> Html Msg
view model =
  div []
    [ text (toString model.players) ]