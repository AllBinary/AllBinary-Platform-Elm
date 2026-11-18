module Org.Allbinary.Game.Health.HealthBarTwodAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.health
-}

import JR
import Org.Allbinary.Game.Health.HealthBarAnimation as HealthBarAnimation


jclass : String
jclass =
    "HealthBarTwodAnimation"


jchain : List String
jchain =
    [ "HealthBarTwodAnimation" ]
        ++ HealthBarAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    HealthBarAnimation.jfields ++ []


jvtable =
    JR.vtable
        [ ( "paintXY_3", jm_paintXY_3 ) ]
        HealthBarAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HealthBarTwodAnimation"
        [ ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "location", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect HealthBarAnimation.jinit_2 JR.this [ (JR.local "layerInterface"), (JR.local "location") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.declare "ax" "I" (JR.invoke "getX_0" (JR.invoke "getViewPosition_0" (JR.thisField "allbinaryLayer") []) []), 
                    JR.exec (JR.invoke "setBasicColorP3_3" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.thisField "basicColor"), (JR.thisField "colorP") ]), 
                    JR.exec (JR.invoke "fillRect_4" (JR.local "graphics") [ (JR.local "ax"), (JR.map2 JR.sub (JR.invoke "getY_0" JR.this []) (JR.int 1)), (JR.thisField "x2"), (JR.thisField "thickness") ]) ])
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

