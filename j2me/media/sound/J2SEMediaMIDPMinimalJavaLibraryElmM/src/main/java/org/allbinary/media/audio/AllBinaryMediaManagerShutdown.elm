module Org.Allbinary.Media.Audio.AllBinaryMediaManagerShutdown exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.Media.Audio.AllBinaryMediaManager as AllBinaryMediaManager
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "AllBinaryMediaManagerShutdown"


jchain : List String
jchain =
    [ "AllBinaryMediaManagerShutdown" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "shutdown_1", jm_shutdown_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryMediaManagerShutdown"
        [ ( "jm_shutdown_1", jm_shutdown_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AllBinaryMediaManagerShutdown" jclinit "instance"
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


jm_shutdown_1 : JR.Method
jm_shutdown_1 jheap jthis jargs =
    JR.method [ ( "soundsFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.local "logUtil") [ (JR.field "START" (JR.local "commonStrings")), jstatic_instance, (JR.str "shutdown") ]), 
                    JR.exec (JR.callStatic AllBinaryMediaManager.jm_shutdown_1 [ (JR.local "soundsFactoryInterface") ]) ])
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

