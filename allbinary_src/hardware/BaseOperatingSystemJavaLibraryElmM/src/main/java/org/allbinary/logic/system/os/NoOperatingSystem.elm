module Org.Allbinary.Logic.System.Os.NoOperatingSystem exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.os
-}

import JR
import Org.Allbinary.Logic.System.Os.GenericOperatingSystem as GenericOperatingSystem


jclass : String
jclass =
    "NoOperatingSystem"


jchain : List String
jchain =
    [ "NoOperatingSystem" ]
        ++ GenericOperatingSystem.jchain


jfields : List ( String, JR.JValue )
jfields =
    GenericOperatingSystem.jfields ++ []


jvtable =
    JR.vtable
        []
        GenericOperatingSystem.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoOperatingSystem"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NO_OPERATING_SYSTEM", jstatic_NO_OPERATING_SYSTEM ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NO_OPERATING_SYSTEM : JR.M
jstatic_NO_OPERATING_SYSTEM s =
    JR.static "NoOperatingSystem" jclinit "NO_OPERATING_SYSTEM"
        (JR.new GenericOperatingSystem.jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect GenericOperatingSystem.jinit_0 JR.this []),
                identity,
                identity ])
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

