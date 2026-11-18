module Org.Allbinary.Logic.Visual.Transform.Info.TransformInfoData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.transform.info
-}

import JR



jclass : String
jclass =
    "TransformInfoData"


jchain : List String
jchain =
    [ "TransformInfoData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "PARENT", JR.defaultOf "" ), ( "MAPPED", JR.defaultOf "" ), ( "NAME", JR.defaultOf "" ), ( "DESCRIPTION", JR.defaultOf "" ), ( "CATEGORY", JR.defaultOf "" ), ( "OBJECTFILENAME", JR.defaultOf "" ), ( "OBJECT", JR.defaultOf "" ), ( "OBJECTCONFIGFILENAME", JR.defaultOf "" ), ( "OBJECTCONFIG", JR.defaultOf "" ), ( "TEMPLATEFILENAME", JR.defaultOf "" ), ( "TEMPLATE", JR.defaultOf "" ), ( "DATAFILENAME", JR.defaultOf "" ), ( "DATA", JR.defaultOf "" ), ( "LABEL", JR.defaultOf "" ), ( "OWNER", JR.defaultOf "" ), ( "PARTIAL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TransformInfoData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TransformInfoData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "PARENT" "" JR.this (JR.str "TRANSFORM_INFO_PARENT")),
                JR.exec (JR.setField "MAPPED" "" JR.this (JR.str "TRANSFORM_INFO_MAPPED")),
                JR.exec (JR.setField "NAME" "" JR.this (JR.str "TRANSFORM_INFO_NAME")),
                JR.exec (JR.setField "DESCRIPTION" "" JR.this (JR.str "TRANSFORM_INFO_DESCRIPTION")),
                JR.exec (JR.setField "CATEGORY" "" JR.this (JR.str "TRANSFORM_INFO_CATEGORY")),
                JR.exec (JR.setField "OBJECTFILENAME" "" JR.this (JR.str "TRANSFORM_INFO_OBJECTFILENAME")),
                JR.exec (JR.setField "OBJECT" "" JR.this (JR.str "TRANSFORM_INFO_OBJECT")),
                JR.exec (JR.setField "OBJECTCONFIGFILENAME" "" JR.this (JR.str "TRANSFORM_INFO_OBJECTCONFIGFILENAME")),
                JR.exec (JR.setField "OBJECTCONFIG" "" JR.this (JR.str "TRANSFORM_INFO_OBJECTCONFIG")),
                JR.exec (JR.setField "TEMPLATEFILENAME" "" JR.this (JR.str "TRANSFORM_INFO_TEMPLATEFILENAME")),
                JR.exec (JR.setField "TEMPLATE" "" JR.this (JR.str "TRANSFORM_INFO_TEMPLATE")),
                JR.exec (JR.setField "DATAFILENAME" "" JR.this (JR.str "TRANSFORM_INFO_DATAFILENAME")),
                JR.exec (JR.setField "DATA" "" JR.this (JR.str "TRANSFORM_INFO_DATA")),
                JR.exec (JR.setField "LABEL" "" JR.this (JR.str "TRANSFORM_INFO_LABEL")),
                JR.exec (JR.setField "OWNER" "" JR.this (JR.concat (JR.str "OWNER_") (JR.thisField "NAME"))),
                JR.exec (JR.setField "PARTIAL" "" JR.this (JR.concat (JR.str "PARTIAL_") (JR.thisField "NAME"))),
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

