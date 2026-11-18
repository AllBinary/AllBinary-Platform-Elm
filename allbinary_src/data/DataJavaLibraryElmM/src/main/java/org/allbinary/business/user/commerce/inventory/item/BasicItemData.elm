module Org.Allbinary.Business.User.Commerce.Inventory.Item.BasicItemData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.inventory.item
-}

import JR



jclass : String
jclass =
    "BasicItemData"


jchain : List String
jchain =
    [ "BasicItemData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "ITEM", JR.defaultOf "" ), ( "TOTAL", JR.defaultOf "" ), ( "ID", JR.defaultOf "" ), ( "NUMBER", JR.defaultOf "" ), ( "INBASKETS", JR.defaultOf "" ), ( "WEIGHT", JR.defaultOf "" ), ( "NEWORUSED", JR.defaultOf "" ), ( "SUMMARY", JR.defaultOf "" ), ( "DISTRIBUTOR", JR.defaultOf "" ), ( "IDUSEDBYDISTRIBUTOR", JR.defaultOf "" ), ( "PRODUCEDBY", JR.defaultOf "" ), ( "PRODUCTIONDATE", JR.defaultOf "" ), ( "STARTPRODUCTIONDATE", JR.defaultOf "" ), ( "DESCRIPTION", JR.defaultOf "" ), ( "KEYWORDS", JR.defaultOf "" ), ( "CATEGORY", JR.defaultOf "" ), ( "TYPE", JR.defaultOf "" ), ( "IMAGE", JR.defaultOf "" ), ( "SMALLIMAGE", JR.defaultOf "" ), ( "MEDIUMIMAGE", JR.defaultOf "" ), ( "LARGEIMAGE", JR.defaultOf "" ), ( "PRICE", JR.defaultOf "" ), ( "COMMENT", JR.defaultOf "" ), ( "CUSTOMS", JR.defaultOf "" ), ( "DOWNLOADS", JR.defaultOf "" ), ( "GROUPS", JR.defaultOf "" ), ( "OPTIONS", JR.defaultOf "" ), ( "PERMISSIONS", JR.defaultOf "" ), ( "SPECIALS", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicItemData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BasicItemData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "ITEM" "" JR.this (JR.str "BASICITEM")),
                JR.exec (JR.setField "TOTAL" "" JR.this (JR.str "BASICITEM_TOTAL")),
                JR.exec (JR.setField "ID" "" JR.this (JR.str "BASICITEM_ID")),
                JR.exec (JR.setField "NUMBER" "" JR.this (JR.str "BASICITEM_NUMBER")),
                JR.exec (JR.setField "INBASKETS" "" JR.this (JR.str "BASICITEM_IN_BASKETS")),
                JR.exec (JR.setField "WEIGHT" "" JR.this (JR.str "BASICITEM_WEIGHT")),
                JR.exec (JR.setField "NEWORUSED" "" JR.this (JR.str "BASICITEM_NEW_OR_USED")),
                JR.exec (JR.setField "SUMMARY" "" JR.this (JR.str "BASICITEM_SUMMARY")),
                JR.exec (JR.setField "DISTRIBUTOR" "" JR.this (JR.str "BASICITEM_DISTRIBUTOR")),
                JR.exec (JR.setField "IDUSEDBYDISTRIBUTOR" "" JR.this (JR.str "BASICITEM_IDUSEDBYDISTRIBUTOR")),
                JR.exec (JR.setField "PRODUCEDBY" "" JR.this (JR.str "BASICITEM_PRODUCEDBY")),
                JR.exec (JR.setField "PRODUCTIONDATE" "" JR.this (JR.str "BASICITEM_PRODUCTIONDATE")),
                JR.exec (JR.setField "STARTPRODUCTIONDATE" "" JR.this (JR.str "BASICITEM_STARTPRODUCTIONDATE")),
                JR.exec (JR.setField "DESCRIPTION" "" JR.this (JR.str "BASICITEM_DESCRIPTION")),
                JR.exec (JR.setField "KEYWORDS" "" JR.this (JR.str "BASICITEM_KEYWORDS")),
                JR.exec (JR.setField "CATEGORY" "" JR.this (JR.str "BASICITEM_CATEGORY")),
                JR.exec (JR.setField "TYPE" "" JR.this (JR.str "BASICITEM_TYPE")),
                JR.exec (JR.setField "IMAGE" "" JR.this (JR.str "BASICITEM_IMG")),
                JR.exec (JR.setField "SMALLIMAGE" "" JR.this (JR.str "BASICITEM_SMALL_IMG")),
                JR.exec (JR.setField "MEDIUMIMAGE" "" JR.this (JR.str "BASICITEM_MEDIUM_IMG")),
                JR.exec (JR.setField "LARGEIMAGE" "" JR.this (JR.str "BASICITEM_LARGE_IMG")),
                JR.exec (JR.setField "PRICE" "" JR.this (JR.str "BASICITEM_PRICE")),
                JR.exec (JR.setField "COMMENT" "" JR.this (JR.str "BASICITEM_COMMENT")),
                JR.exec (JR.setField "CUSTOMS" "" JR.this (JR.str "BASICITEM_CUSTOMS")),
                JR.exec (JR.setField "DOWNLOADS" "" JR.this (JR.str "BASICITEM_DOWNLOADS")),
                JR.exec (JR.setField "GROUPS" "" JR.this (JR.str "BASICITEM_GROUPS")),
                JR.exec (JR.setField "OPTIONS" "" JR.this (JR.str "BASICITEM_OPTIONS")),
                JR.exec (JR.setField "PERMISSIONS" "" JR.this (JR.str "BASICITEM_PERMISSIONS")),
                JR.exec (JR.setField "SPECIALS" "" JR.this (JR.str "BASICITEM_SPECIALS")),
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

