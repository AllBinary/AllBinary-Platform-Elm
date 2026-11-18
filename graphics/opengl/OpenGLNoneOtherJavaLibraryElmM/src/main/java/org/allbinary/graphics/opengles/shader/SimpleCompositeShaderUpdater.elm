module Org.Allbinary.Graphics.Opengles.Shader.SimpleCompositeShaderUpdater exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles.shader
-}

import JR
import Org.Allbinary.Graphics.Opengles.Shader.CompositeShaderUpdater as CompositeShaderUpdater


jclass : String
jclass =
    "SimpleCompositeShaderUpdater"


jchain : List String
jchain =
    [ "SimpleCompositeShaderUpdater" ]
        ++ CompositeShaderUpdater.jchain


jfields : List ( String, JR.JValue )
jfields =
    CompositeShaderUpdater.jfields ++ []


jvtable =
    JR.vtable
        []
        CompositeShaderUpdater.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SimpleCompositeShaderUpdater"
        [ ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "uniformBlockArray", "" ), ( "uniformArray", "" ), ( "attributeArray", "" ), ( "attributeHandleArray", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CompositeShaderUpdater.jinit_4 JR.this [ (JR.local "uniformBlockArray"), (JR.local "uniformArray"), (JR.local "attributeArray"), (JR.local "attributeHandleArray") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

