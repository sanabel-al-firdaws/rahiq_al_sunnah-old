module Main exposing (..)

-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--

import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)



-- MAIN


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ button
            [ style "color" "var(--body-font-color)"
            , style "background" "var(--body-background)"
            , style "border" "2px solid var(--body-font-color)"
            , style "border-radius" "5px"
            , onClick Decrement
            ]
            [ text "-" ]
        , div [ style "color" "var(--body-font-color)" ] [ text (String.fromInt model) ]
        , button [ style "color" "var(--body-font-color)", onClick Increment ] [ text "+" ]
        , text "hello"
        ]
