module Org.Allbinary.Business.User.Role.BasicUserRoles exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.role
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD


jclass : String
jclass =
    "BasicUserRoles"


jchain : List String
jchain =
    [ "BasicUserRoles" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "roleVector", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getRole_1", jm_getRole_1 )
        , ( "getAll_0", jm_getAll_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicUserRoles"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getRole_1", jm_getRole_1 ), ( "jm_getAll_0", jm_getAll_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BasicUserRoles" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "roleVector" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
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


jm_getRole_1 : JR.Method
jm_getRole_1 jheap jthis jargs =
    JR.method [ ( "role", "" ) ] ""
        (JR.run [ 
                    JR.declare "roleVector" "" (JR.invoke "getAll_0" JR.this []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "roleVector") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66502 -> (JR.setLocal "index" "I" (JR.lit jwN66502))) JR.increment) ]) (JR.run [ 
                        JR.declare "userRole" "" (JR.invoke "get_1" (JR.local "roleVector") [ (JR.local "index") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.local "role") [ (JR.invoke "toString_0" (JR.local "userRole") []) ]) (JR.int 0)) (JR.run [ 
                            JR.return (JR.local "userRole") ]) identity ]) ], 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Unable to get role - Unknown Role") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAll_0 : JR.Method
jm_getAll_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "roleVector") ])
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

