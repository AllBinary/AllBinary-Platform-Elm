module ABSystemWrapper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic
-}

import JR
import JSystem


jclass : String
jclass =
    "ABSystemWrapper"


jchain : List String
jchain =
    [ "ABSystemWrapper" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "arraycopy_5", jm_arraycopy_5 )
        , ( "currentTimeMillis_0", jm_currentTimeMillis_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ABSystemWrapper"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_arraycopy_5", jm_arraycopy_5 ), ( "jm_currentTimeMillis_0", jm_currentTimeMillis_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ABSystemWrapper" jclinit "instance"
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


jm_arraycopy_5 : JR.Method
jm_arraycopy_5 jheap jthis jargs =
    JR.method [ ( "src", "" ), ( "srcPos", "I" ), ( "dest", "" ), ( "destPos", "I" ), ( "length", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.withState JR.arraycopy [ (JR.local "src"), (JR.local "srcPos"), (JR.local "dest"), (JR.local "destPos"), (JR.local "length") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_currentTimeMillis_0 : JR.Method
jm_currentTimeMillis_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.callStatic JSystem.jm_currentTimeMillis_0 []) ])
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

