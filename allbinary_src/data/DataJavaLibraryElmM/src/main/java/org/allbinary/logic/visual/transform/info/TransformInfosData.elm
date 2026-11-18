module Org.Allbinary.Logic.Visual.Transform.Info.TransformInfosData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.transform.info
-}

import JR



jclass : String
jclass =
    "TransformInfosData"


jchain : List String
jchain =
    [ "TransformInfosData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NAME", JR.defaultOf "" ), ( "GROUP", JR.defaultOf "" ), ( "ALL", JR.defaultOf "" ), ( "PREVIEW", JR.defaultOf "" ), ( "SMALL_PREVIEW", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TransformInfosData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TransformInfosData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NAME" "" JR.this (JR.str "TRANSFORM_INFOS_NAME")),
                JR.exec (JR.setField "GROUP" "" JR.this (JR.str "TRANSFORM_INFOS_GROUP")),
                JR.exec (JR.setField "ALL" "" JR.this (JR.str "TRANSFORM_INFOS_ALL")),
                JR.exec (JR.setField "PREVIEW" "" JR.this (JR.str "TRANSFORM_INFOS_PREVIEW")),
                JR.exec (JR.setField "SMALL_PREVIEW" "" JR.this (JR.str "TRANSFORM_INFOS_SMALL_PREVIEW")),
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

