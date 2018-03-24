module Players.List exposing (view)
import Html exposing (..)
import Html.Attributes exposing (class)
import Msgs exposing (Msg)
import Models exposing (Model, Player)
import RemoteData exposing (WebData)

view : WebData (List Player) -> Html Msg
view response =
  div []
    [ pageTitle,
      div []
      [
        maybeTable response
      ]
    ]

maybeTable : WebData (List Player) -> Html Msg
maybeTable response = 
  case response of
      RemoteData.NotAsked ->
        div []
          [ text ""
          ]
      RemoteData.Loading ->
        div []
          [ text "loading"
          ] 
      RemoteData.Success players->
        div []
          [ table []
              [ thead []
                  [ tr []
                    [ th [] [ text "Id" ],
                      th [] [ text "Name" ],
                      th [] [ text "Level" ],
                      th [] [ text "Actions" ]
                    ]
                  ],
                tbody [] (List.map playerRow players)
              ]
          ]
      RemoteData.Failure error ->
        div []
          [ text (toString error)
          ] 

playerRow : Player -> Html Msg
playerRow player =
  tr []
    [ td [] [ text player.id ],
      td [] [ text player.name ],
      td [] [ text (toString player.level) ],
      td [] 
      []
    ]

pageTitle : Html Msg
pageTitle = 
  div [ class "mb2 white bg-black" ]
    [ text "Players" ]