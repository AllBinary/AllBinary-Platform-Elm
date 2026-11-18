module Org.Allbinary.Graphics.Pipeline.RandomTranslation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.pipeline
-}

import JR
import Org.Allbinary.Graphics.Pipeline.BasicGraphicsPipeline as BasicGraphicsPipeline
import Org.Allbinary.Game.Rand.MyRandomFactory as MyRandomFactory


jclass : String
jclass =
    "RandomTranslation"


jchain : List String
jchain =
    [ "RandomTranslation" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_2", jm_getInstance_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RandomTranslation"
        [ ( "jm_getInstance_2", jm_getInstance_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_2 : JR.Method
jm_getInstance_2 jheap jthis jargs =
    JR.method [ ( "vector", "" ), ( "howMuch", "I" ) ] ""
        (JR.run [ 
                    JR.declare "myRandomFactory" "" (JR.callStatic MyRandomFactory.jm_getInstance_0 []), 
                    JR.declare "x" "I" (JR.map JR.neg (JR.invoke "getNextInt_1" (JR.local "myRandomFactory") [ (JR.local "howMuch") ])), 
                    JR.declare "y" "I" (JR.invoke "getNextInt_1" (JR.local "myRandomFactory") [ (JR.local "howMuch") ]), 
                    JR.declare "graphicsPipe" "" (JR.new BasicGraphicsPipeline.jnew_1 [ (JR.local "vector") ]), 
                    JR.exec (JR.invoke "createMatrix_0" (JR.local "graphicsPipe") []), 
                    JR.exec (JR.invoke "translate_2" (JR.local "graphicsPipe") [ (JR.local "x"), (JR.local "y") ]), 
                    JR.return (JR.invoke "getMatrix_0" (JR.local "graphicsPipe") []) ])
        (jregister jheap)
        jthis
        jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

