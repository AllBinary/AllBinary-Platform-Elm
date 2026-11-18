module Org.Allbinary.Logic.Visual.Transform.Info.ViewObject.TransformInfoObjectData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.transform.info.viewObject
-}

import JR



jclass : String
jclass =
    "TransformInfoObjectData"


jchain : List String
jchain =
    [ "TransformInfoObjectData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "UNCRYPTED_EXTENSION", JR.defaultOf "" ), ( "ENCRYPTED_EXTENSION", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TransformInfoObjectData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TransformInfoObjectData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "UNCRYPTED_EXTENSION" "" JR.this (JR.str "class")),
                JR.exec (JR.setField "ENCRYPTED_EXTENSION" "" JR.this (JR.str "abw")),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
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

