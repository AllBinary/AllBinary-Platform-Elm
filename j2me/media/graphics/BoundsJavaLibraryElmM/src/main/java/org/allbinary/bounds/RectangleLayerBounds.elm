module Org.Allbinary.Bounds.RectangleLayerBounds exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.bounds
-}

import JR
import Org.Allbinary.Bounds.LayerBounds as LayerBounds


jclass : String
jclass =
    "RectangleLayerBounds"


jchain : List String
jchain =
    [ "RectangleLayerBounds" ]
        ++ LayerBounds.jchain


jfields : List ( String, JR.JValue )
jfields =
    LayerBounds.jfields ++ []


jvtable =
    JR.vtable
        [ ( "visit_1", jm_visit_1 ) ]
        LayerBounds.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RectangleLayerBounds"
        [ ( "jm_visit_1", jm_visit_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "rectangle", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect LayerBounds.jinit_1 JR.this [ (JR.local "rectangle") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_visit_1 : JR.Method
jm_visit_1 jheap jthis jargs =
    JR.method [ ( "boundsVisitorInterface", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getX_0" (JR.local "boundsVisitorInterface") []) (JR.invoke "getMaxX_0" (JR.thisField "rectangle") [])) (JR.run [ 
                        JR.exec (JR.invoke "maxX_0" (JR.local "boundsVisitorInterface") []) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getY_0" (JR.local "boundsVisitorInterface") []) (JR.invoke "getMaxY_0" (JR.thisField "rectangle") [])) (JR.run [ 
                        JR.exec (JR.invoke "maxY_0" (JR.local "boundsVisitorInterface") []) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getX_0" (JR.local "boundsVisitorInterface") []) (JR.invoke "getX_0" (JR.invoke "getPoint_0" (JR.thisField "rectangle") []) [])) (JR.run [ 
                        JR.exec (JR.invoke "minX_0" (JR.local "boundsVisitorInterface") []) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getY_0" (JR.local "boundsVisitorInterface") []) (JR.invoke "getY_0" (JR.invoke "getPoint_0" (JR.thisField "rectangle") []) [])) (JR.run [ 
                        JR.exec (JR.invoke "minY_0" (JR.local "boundsVisitorInterface") []) ]) identity ])
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

