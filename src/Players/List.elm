module Players.List exposing (view)
import Html exposing (..)
import Html.Attributes exposing (class)
import Msgs exposing (Msg)
import Models exposing (Model, Player)

view : List Player -> Html Msg
view list =
  div []
    [ pageTitle,
      div []
      [
        playerTable list
      ]
    ]

playerTable : List Player -> Html Msg
playerTable list = 
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
          tbody [] (List.map playerRow list)
        ]
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