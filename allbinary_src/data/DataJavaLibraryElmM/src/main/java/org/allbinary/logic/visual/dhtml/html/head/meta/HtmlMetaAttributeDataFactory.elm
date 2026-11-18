module Org.Allbinary.Logic.Visual.Dhtml.Html.Head.Meta.HtmlMetaAttributeDataFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.dhtml.html.head.meta
-}

import JR
import Org.Allbinary.Logic.Visual.Dhtml.Html.Head.Meta.HtmlMetaAttributeData as HtmlMetaAttributeData


jclass : String
jclass =
    "HtmlMetaAttributeDataFactory"


jchain : List String
jchain =
    [ "HtmlMetaAttributeDataFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NAME", JR.defaultOf "" ), ( "HTTP_EQUIV", JR.defaultOf "" ), ( "CONTENT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HtmlMetaAttributeDataFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "HtmlMetaAttributeDataFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NAME" "" JR.this (JR.new HtmlMetaAttributeData.jnew_2 [ (JR.int 0), (JR.str "HTMLMETA_ATTRIBUTE_NAME") ])),
                JR.exec (JR.setField "HTTP_EQUIV" "" JR.this (JR.new HtmlMetaAttributeData.jnew_2 [ (JR.int 1), (JR.str "HTMLMETA_ATTRIBUTE_HTTPEQUIV") ])),
                JR.exec (JR.setField "CONTENT" "" JR.this (JR.new HtmlMetaAttributeData.jnew_2 [ (JR.int 2), (JR.str "HTMLMETA_ATTRIBUTE_CONTENT") ])),
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

