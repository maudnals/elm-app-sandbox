module Main exposing (..)
import Html exposing (div, Html, program, text)


-- model
type alias Model = 
  String


-- msg
type Msg = 
  NoOp


-- init
init : (Model, Cmd Msg)
init =
  ("init!", Cmd.none)


-- view
view : Model -> Html Msg
view model =
  div []
    [ text model ]


-- update
update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  (model, Cmd.none)


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