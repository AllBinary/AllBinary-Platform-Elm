module Org.Allbinary.Business.User.Commerce.Inventory.Item.Special.SpecialItemData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.inventory.item.special
-}

import JR



jclass : String
jclass =
    "SpecialItemData"


jchain : List String
jchain =
    [ "SpecialItemData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpecialItemData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_START_TIME", jstatic_START_TIME ), ( "jstatic_END_TIME", jstatic_END_TIME ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_START_TIME : JR.M
jstatic_START_TIME s =
    JR.static "SpecialItemData" jclinit "START_TIME"
        (JR.str "SPECIALITEM_START_TIME")
        s


jstatic_END_TIME : JR.M
jstatic_END_TIME s =
    JR.static "SpecialItemData" jclinit "END_TIME"
        (JR.str "SPECIALITEM_END_TIME")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
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

