module Main exposing (..)
import Html exposing (Html, program)

import Msgs exposing (Msg)
import Models exposing (initialModel, Model)
import Update exposing (update)
import View exposing (view)

-- init
init : (Model, Cmd Msg)
init =
  (initialModel, Cmd.none)


-- subscriptions
subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none


-- main
main : Program Never Model Msg
main = program 
  {
    init = init,
    update = update,
    view = view,
    subscriptions = subscriptions
  }