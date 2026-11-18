module Org.Allbinary.Midlet.ProgressMidlet exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.midlet
-}

import JR
import Org.Allbinary.Midlet.AllBinaryMidlet as AllBinaryMidlet
import Org.Allbinary.Midlet.ExitRunnable as ExitRunnable
import Org.Allbinary.Midlet.MidletExitProcessorFactory as MidletExitProcessorFactory
import Org.Allbinary.Thread.PrimaryThreadPool as PrimaryThreadPool


jclass : String
jclass =
    "ProgressMidlet"


jchain : List String
jchain =
    [ "ProgressMidlet" ]
        ++ AllBinaryMidlet.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryMidlet.jfields ++ [ ( "abeClientInformation", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "preInit_0", jm_preInit_0 )
        , ( "exitProgress_1", jm_exitProgress_1 ) ]
        AllBinaryMidlet.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ProgressMidlet"
        [ ( "jm_preInit_0", jm_preInit_0 ), ( "jm_exitProgress_1", jm_exitProgress_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "clientInformationFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryMidlet.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "preInit_0" JR.this []), 
                    JR.exec (JR.setField "abeClientInformation" "" JR.this (JR.invoke "getInstance_0" (JR.local "clientInformationFactory") [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_preInit_0 : JR.Method
jm_preInit_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_exitProgress_1 : JR.Method
jm_exitProgress_1 jheap jthis jargs =
    JR.method [ ( "isProgress", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "processor" "" (JR.invoke "getExitInstance_1" (JR.callStatic MidletExitProcessorFactory.jm_getInstance_0 []) [ JR.this ]), 
                    JR.try (JR.run [ 
                        JR.declare "primaryThreadPool" "" (JR.callStatic PrimaryThreadPool.jm_getInstance_0 []), 
                        JR.declare "runnable" "" (JR.new ExitRunnable.jnew_3 [ JR.this, (JR.local "processor"), (JR.local "isProgress") ]), 
                        JR.exec (JR.invoke "runTask_1" (JR.local "primaryThreadPool") [ (JR.local "runnable") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "exit"), (JR.local "e") ]), 
                        JR.try (JR.run [ 
                            JR.exec (JR.invoke "process_0" (JR.local "processor") []) ]) [ ( [ "Exception" ], "e2", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "exit"), (JR.local "e") ]) ]) ) ] identity ]) ) ] identity ])
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

