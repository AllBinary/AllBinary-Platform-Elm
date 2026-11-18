module Org.Allbinary.Logic.Visual.Dhtml.Html.Head.Meta.HtmlMetaAttributeData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.dhtml.html.head.meta
-}

import JR



jclass : String
jclass =
    "HtmlMetaAttributeData"


jchain : List String
jchain =
    [ "HtmlMetaAttributeData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "id", JR.defaultOf "I" ), ( "name", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "equals_1", jm_equals_1 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HtmlMetaAttributeData"
        [ ( "jm_equals_1", jm_equals_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "id", "I" ), ( "value", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "value")), 
                    JR.exec (JR.setField "id" "I" JR.this (JR.local "id")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_equals_1 : JR.Method
jm_equals_1 jheap jthis jargs =
    JR.method [ ( "htmlMetaAttributeData", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.field "id" (JR.local "htmlMetaAttributeData")) (JR.thisField "id")) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
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

