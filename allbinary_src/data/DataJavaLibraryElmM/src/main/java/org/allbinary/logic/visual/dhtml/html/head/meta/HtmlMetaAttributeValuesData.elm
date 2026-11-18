module Org.Allbinary.Logic.Visual.Dhtml.Html.Head.Meta.HtmlMetaAttributeValuesData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.dhtml.html.head.meta
-}

import JR



jclass : String
jclass =
    "HtmlMetaAttributeValuesData"


jchain : List String
jchain =
    [ "HtmlMetaAttributeValuesData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "ABSTRACT", JR.defaultOf "" ), ( "DESCRIPTION", JR.defaultOf "" ), ( "KEYWORDS", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HtmlMetaAttributeValuesData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "HtmlMetaAttributeValuesData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "ABSTRACT" "" JR.this (JR.str "abstract")),
                JR.exec (JR.setField "DESCRIPTION" "" JR.this (JR.str "description")),
                JR.exec (JR.setField "KEYWORDS" "" JR.this (JR.str "keywords")),
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

