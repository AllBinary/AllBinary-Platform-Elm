module Org.Allbinary.Logic.Visual.Transform.Template.Customizer.Widgets.Title.TitleData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.transform.template.customizer.widgets.title
-}

import JR



jclass : String
jclass =
    "TitleData"


jchain : List String
jchain =
    [ "TitleData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NAME", JR.defaultOf "" ), ( "TEXT", JR.defaultOf "" ), ( "VIEWNAMEKEY", JR.defaultOf "" ), ( "MAXLEN", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TitleData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TitleData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NAME" "" JR.this (JR.str "TITLE_NAME")),
                JR.exec (JR.setField "TEXT" "" JR.this (JR.str "TITLE_TEXT")),
                JR.exec (JR.setField "VIEWNAMEKEY" "" JR.this (JR.str "Title")),
                JR.exec (JR.setField "MAXLEN" "I" JR.this (JR.int 255)),
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

