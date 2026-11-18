module Org.Allbinary.Emulator.Swt.SWTRunnableProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.emulator.swt
-}

import JR
import Org.Allbinary.Emulator.Swt.SWTProcessor as SWTProcessor


jclass : String
jclass =
    "SWTRunnableProcessor"


jchain : List String
jchain =
    [ "SWTRunnableProcessor" ]
        ++ SWTProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    SWTProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "process_1", jm_process_1 ) ]
        SWTProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SWTRunnableProcessor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_1", jm_process_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instanceR", jstatic_instanceR ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instanceR : JR.M
jstatic_instanceR s =
    JR.static "SWTRunnableProcessor" jclinit "instanceR"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect SWTProcessor.jinit_0 JR.this []),
                identity,
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
                    JR.return jstatic_instanceR ])
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "display", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "run_0" (JR.thisField "runnable") []) ])
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

