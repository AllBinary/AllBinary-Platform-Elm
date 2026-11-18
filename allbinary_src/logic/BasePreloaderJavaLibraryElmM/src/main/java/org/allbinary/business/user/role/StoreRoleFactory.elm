module Org.Allbinary.Business.User.Role.StoreRoleFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.role
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Business.User.Role.BasicUserRoleFactory as BasicUserRoleFactory


jclass : String
jclass =
    "StoreRoleFactory"


jchain : List String
jchain =
    [ "StoreRoleFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "roles", JR.defaultOf "" ), ( "subscriberRoles", JR.defaultOf "" ), ( "wholesaleRoles", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getRoles_0", jm_getRoles_0 )
        , ( "getSubscriberRoles_0", jm_getSubscriberRoles_0 )
        , ( "getWholesaleRoles_0", jm_getWholesaleRoles_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StoreRoleFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getRoles_0", jm_getRoles_0 ), ( "jm_getSubscriberRoles_0", jm_getSubscriberRoles_0 ), ( "jm_getWholesaleRoles_0", jm_getWholesaleRoles_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "StoreRoleFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "roles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "subscriberRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "wholesaleRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "basicUserRoleFactory" "" (JR.callStatic BasicUserRoleFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "roles") [ (JR.field "CUSTOMER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "roles") [ (JR.field "SUBSCRIBERCUSTOMER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "roles") [ (JR.field "WHOLESALECUSTOMER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "subscriberRoles") [ (JR.field "SUBSCRIBERCUSTOMER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "wholesaleRoles") [ (JR.field "WHOLESALECUSTOMER" (JR.local "basicUserRoleFactory")) ]) ]) ])
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


jm_getRoles_0 : JR.Method
jm_getRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "roles") ])
        (jregister jheap)
        jthis
        jargs


jm_getSubscriberRoles_0 : JR.Method
jm_getSubscriberRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "subscriberRoles") ])
        (jregister jheap)
        jthis
        jargs


jm_getWholesaleRoles_0 : JR.Method
jm_getWholesaleRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "wholesaleRoles") ])
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

