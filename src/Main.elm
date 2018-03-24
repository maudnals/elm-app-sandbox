module Main exposing (..)
import Commands exposing (fetchPlayers)
import Html exposing (Html, program)
import Models exposing (initialModel, Model)
import Msgs exposing (Msg)
import Update exposing (update)
import View exposing (view)

-- init
init : (Model, Cmd Msg)
init =
  (initialModel, fetchPlayers)


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