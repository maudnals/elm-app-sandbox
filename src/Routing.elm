module Routing exposing(..)
import Navigation exposing (Location)
import Models exposing (PlayerId, Route(..))
import UrlParser exposing (..)


-- the routing module defines:
-- how to react to routing messages
-- how to match browser paths to routes