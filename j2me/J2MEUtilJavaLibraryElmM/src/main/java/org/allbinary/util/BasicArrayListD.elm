module Org.Allbinary.Util.BasicArrayListD exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.util
-}

import JR
import Org.Allbinary.Util.BasicArrayListS as BasicArrayListS


jclass : String
jclass =
    "BasicArrayListD"


jchain : List String
jchain =
    [ "BasicArrayListD" ]
        ++ BasicArrayListS.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicArrayListS.jfields ++ []


jvtable =
    JR.vtable
        []
        BasicArrayListS.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicArrayListD"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BasicArrayListS.jinit_1 JR.this [ (JR.int 7) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

