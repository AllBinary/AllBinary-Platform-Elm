module Org.Allbinary.Logic.System.Security.Licensing.LockedUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.Logic.System.Security.Licensing.LockedUtilInterface as LockedUtilInterface


jclass : String
jclass =
    "LockedUtil"


jchain : List String
jchain =
    [ "LockedUtil" ]
        ++ LockedUtilInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isLocked_0", jm_isLocked_0 )
        , ( "isLockedFeature_1", jm_isLockedFeature_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LockedUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isLocked_0", jm_isLocked_0 ), ( "jm_isLockedFeature_1", jm_isLockedFeature_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LockedUtil" jclinit "instance"
        (JR.new jnew_0 [])
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_isLocked_0 : JR.Method
jm_isLocked_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isLockedFeature_1 : JR.Method
jm_isLockedFeature_1 jheap jthis jargs =
    JR.method [ ( "lockableFeatrue", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
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

