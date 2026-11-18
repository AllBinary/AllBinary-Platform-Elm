module Org.Allbinary.Business.User.Commerce.Inventory.Item.Group.BasicGroupItemData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.inventory.item.group
-}

import JR



jclass : String
jclass =
    "BasicGroupItemData"


jchain : List String
jchain =
    [ "BasicGroupItemData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicGroupItemData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_ITEM_ONE", jstatic_ITEM_ONE ), ( "jstatic_ITEM_TWO", jstatic_ITEM_TWO ), ( "jstatic_ITEM_THREE", jstatic_ITEM_THREE ), ( "jstatic_ITEM_FOUR", jstatic_ITEM_FOUR ), ( "jstatic_ITEM_FIVE", jstatic_ITEM_FIVE ), ( "jstatic_ITEM_SIX", jstatic_ITEM_SIX ), ( "jstatic_ITEM_SEVEN", jstatic_ITEM_SEVEN ), ( "jstatic_ITEM_EIGHT", jstatic_ITEM_EIGHT ), ( "jstatic_ITEM_NINE", jstatic_ITEM_NINE ), ( "jstatic_ITEM_TEN", jstatic_ITEM_TEN ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_ITEM_ONE : JR.M
jstatic_ITEM_ONE s =
    JR.static "BasicGroupItemData" jclinit "ITEM_ONE"
        (JR.str "BASICGROUPITEM_ONE")
        s


jstatic_ITEM_TWO : JR.M
jstatic_ITEM_TWO s =
    JR.static "BasicGroupItemData" jclinit "ITEM_TWO"
        (JR.str "BASICGROUPITEM_TWO")
        s


jstatic_ITEM_THREE : JR.M
jstatic_ITEM_THREE s =
    JR.static "BasicGroupItemData" jclinit "ITEM_THREE"
        (JR.str "BASICGROUPITEM_THREE")
        s


jstatic_ITEM_FOUR : JR.M
jstatic_ITEM_FOUR s =
    JR.static "BasicGroupItemData" jclinit "ITEM_FOUR"
        (JR.str "BASICGROUPITEM_FOUR")
        s


jstatic_ITEM_FIVE : JR.M
jstatic_ITEM_FIVE s =
    JR.static "BasicGroupItemData" jclinit "ITEM_FIVE"
        (JR.str "BASICGROUPITEM_FIVE")
        s


jstatic_ITEM_SIX : JR.M
jstatic_ITEM_SIX s =
    JR.static "BasicGroupItemData" jclinit "ITEM_SIX"
        (JR.str "BASICGROUPITEM_SIX")
        s


jstatic_ITEM_SEVEN : JR.M
jstatic_ITEM_SEVEN s =
    JR.static "BasicGroupItemData" jclinit "ITEM_SEVEN"
        (JR.str "BASICGROUPITEM_SEVEN")
        s


jstatic_ITEM_EIGHT : JR.M
jstatic_ITEM_EIGHT s =
    JR.static "BasicGroupItemData" jclinit "ITEM_EIGHT"
        (JR.str "BASICGROUPITEM_EIGHT")
        s


jstatic_ITEM_NINE : JR.M
jstatic_ITEM_NINE s =
    JR.static "BasicGroupItemData" jclinit "ITEM_NINE"
        (JR.str "BASICGROUPITEM_NINE")
        s


jstatic_ITEM_TEN : JR.M
jstatic_ITEM_TEN s =
    JR.static "BasicGroupItemData" jclinit "ITEM_TEN"
        (JR.str "BASICGROUPITEM_TEN")
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

