module Org.Allbinary.Business.User.Commerce.Inventory.Item.Permission.PermissionItemData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.inventory.item.permission
-}

import JR



jclass : String
jclass =
    "PermissionItemData"


jchain : List String
jchain =
    [ "PermissionItemData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PermissionItemData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_WHO", jstatic_WHO ), ( "jstatic_WHAT", jstatic_WHAT ), ( "jstatic_TYPE", jstatic_TYPE ), ( "jstatic_START_TIME", jstatic_START_TIME ), ( "jstatic_END_TIME", jstatic_END_TIME ), ( "jstatic_REMOTE_ADDR", jstatic_REMOTE_ADDR ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_WHO : JR.M
jstatic_WHO s =
    JR.static "PermissionItemData" jclinit "WHO"
        (JR.str "PERMISSIONSITEM_WHO")
        s


jstatic_WHAT : JR.M
jstatic_WHAT s =
    JR.static "PermissionItemData" jclinit "WHAT"
        (JR.str "PERMISSIONSITEM_WHAT")
        s


jstatic_TYPE : JR.M
jstatic_TYPE s =
    JR.static "PermissionItemData" jclinit "TYPE"
        (JR.str "PERMISSIONSITEM_TYPE")
        s


jstatic_START_TIME : JR.M
jstatic_START_TIME s =
    JR.static "PermissionItemData" jclinit "START_TIME"
        (JR.str "PERMISSIONSITEM_START_TIME")
        s


jstatic_END_TIME : JR.M
jstatic_END_TIME s =
    JR.static "PermissionItemData" jclinit "END_TIME"
        (JR.str "PERMISSIONSITEM_END_TIME")
        s


jstatic_REMOTE_ADDR : JR.M
jstatic_REMOTE_ADDR s =
    JR.static "PermissionItemData" jclinit "REMOTE_ADDR"
        (JR.str "PERMISSIONSITEM_REMOTE_ADDR")
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

