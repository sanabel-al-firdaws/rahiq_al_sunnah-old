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
type alias Todo =
    { text : String ---what is this task
    , completed : Bool ---Is this task done??
    }

type alias Model1 = 
    { todos: List Todo ---this is a list of todos!!!
    , inputText: String
    }

type alias Model =
    Int


init : Model
init = initial_number

initial_number: Int
initial_number = 0



-- UPDATE


type Msg
    = Increment
    | Decrement
    | Reset


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        Reset ->
            initial_number



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ button
            [ style "background" "var(--body-background)"
            , style "border" "1px solid var(--body-font-color)"
            , style "color" "var(--body-font-color)"
            , style "border-radius" "5px"
            , onClick Decrement
            ]
            [ text "-" ]
        , div [ style "color" "var(--body-font-color)" ] [ text (String.fromInt model) ]
        , button
            [ style "color" "var(--body-font-color)"
            , style "background" "var(--body-background)"
            , style "border" "1px solid var(--body-font-color)"
            , style "border-radius" "5px"
            , onClick Increment
            ]
            [ text "+" ]
        , button
            [ style "color" "var(--body-font-color)"
            , style "background" "var(--body-background)"
            , style "border" "1px solid var(--body-font-color)"
            , style "border-radius" "5px"
            , onClick Reset  
            ]
            [ text "Reset this Number" ]
        ]
