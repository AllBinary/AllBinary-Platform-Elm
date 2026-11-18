module Org.Allbinary.Data.Tree.Dom.ToDomHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tree.dom
-}

import JR
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ToDomHelper"


jchain : List String
jchain =
    [ "ToDomHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "convertNull_1", jm_convertNull_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ToDomHelper"
        [ ( "jm_convertNull_1", jm_convertNull_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_convertNull_1 : JR.Method
jm_convertNull_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "value") JR.null) (JR.run [ 
                        JR.exec (JR.setLocal "value" "" (JR.field "NULL_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))) ]) identity, 
                    JR.return (JR.local "value") ])
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

