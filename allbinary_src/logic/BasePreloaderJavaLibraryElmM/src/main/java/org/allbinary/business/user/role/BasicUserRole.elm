module Org.Allbinary.Business.User.Role.BasicUserRole exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.role
-}

import JR
import Org.Allbinary.Business.User.Role.BasicUserRoles as BasicUserRoles
import JSerializable


jclass : String
jclass =
    "BasicUserRole"


jchain : List String
jchain =
    [ "BasicUserRole" ]
        ++ JSerializable.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "m_int_RoleId", JR.defaultOf "I" ), ( "role", JR.defaultOf "" ), ( "displayValue", JR.defaultOf "" ), ( "sessionTimeout", JR.defaultOf "J" ), ( "sessionInactivityTimeout", JR.defaultOf "J" ) ]


jvtable =
    JR.vtable
        [ ( "getRoleId_0", jm_getRoleId_0 )
        , ( "getRole_0", jm_getRole_0 )
        , ( "getSessionTimeout_0", jm_getSessionTimeout_0 )
        , ( "getSessionInactivityTimeout_0", jm_getSessionInactivityTimeout_0 )
        , ( "equals_1", jm_equals_1 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicUserRole"
        [ ( "jm_getRoleId_0", jm_getRoleId_0 ), ( "jm_getRole_0", jm_getRole_0 ), ( "jm_getSessionTimeout_0", jm_getSessionTimeout_0 ), ( "jm_getSessionInactivityTimeout_0", jm_getSessionInactivityTimeout_0 ), ( "jm_equals_1", jm_equals_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "aRole", "" ), ( "a_int_RoleId", "I" ), ( "aSessionTimeout", "J" ), ( "aSessionInactivityTimeout", "J" ) ] ""
        (JR.run [ JR.exec (JR.callDirect jinit_5 JR.this [ (JR.local "aRole"), (JR.local "aRole"), (JR.local "a_int_RoleId"), (JR.local "aSessionTimeout"), (JR.local "aSessionInactivityTimeout") ]),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "aRole", "" ), ( "aDisplayValue", "" ), ( "a_int_RoleId", "I" ), ( "aSessionTimeout", "J" ), ( "aSessionInactivityTimeout", "J" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "m_int_RoleId" "I" JR.this (JR.local "a_int_RoleId")), 
                    JR.exec (JR.setField "role" "" JR.this (JR.local "aRole")), 
                    JR.exec (JR.setField "displayValue" "" JR.this (JR.local "aDisplayValue")), 
                    JR.exec (JR.setField "sessionTimeout" "J" JR.this (JR.local "aSessionTimeout")), 
                    JR.exec (JR.setField "sessionInactivityTimeout" "J" JR.this (JR.local "aSessionInactivityTimeout")), 
                    JR.exec (JR.invoke "add_1" (JR.field "roleVector" (JR.callStatic BasicUserRoles.jm_getInstance_0 [])) [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_getRoleId_0 : JR.Method
jm_getRoleId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "m_int_RoleId") ])
        (jregister jheap)
        jthis
        jargs


jm_getRole_0 : JR.Method
jm_getRole_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "role") ])
        (jregister jheap)
        jthis
        jargs


jm_getSessionTimeout_0 : JR.Method
jm_getSessionTimeout_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.thisField "sessionTimeout") ])
        (jregister jheap)
        jthis
        jargs


jm_getSessionInactivityTimeout_0 : JR.Method
jm_getSessionInactivityTimeout_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.thisField "sessionInactivityTimeout") ])
        (jregister jheap)
        jthis
        jargs


jm_equals_1 : JR.Method
jm_equals_1 jheap jthis jargs =
    JR.method [ ( "basicUserRole", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getRoleId_0" JR.this []) (JR.invoke "getRoleId_0" (JR.local "basicUserRole") [])) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getRole_0" JR.this []) ])
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

