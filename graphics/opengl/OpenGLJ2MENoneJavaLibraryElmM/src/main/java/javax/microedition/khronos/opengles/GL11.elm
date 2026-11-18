module Javax.Microedition.Khronos.Opengles.GL11 exposing (..)

{-| Generated Code Do Not Modify package javax.microedition.khronos.opengles
-}

import JR
import Javax.Microedition.Khronos.Opengles.GL10 as GL10


jclass : String
jclass =
    "GL11"


jchain : List String
jchain =
    [ "GL11" ]
        ++ GL10.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GL11"
        []
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

