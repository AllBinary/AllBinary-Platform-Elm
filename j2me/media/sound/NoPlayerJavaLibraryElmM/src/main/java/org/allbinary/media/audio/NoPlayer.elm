module Org.Allbinary.Media.Audio.NoPlayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.Media.Audio.BasicPlayer as BasicPlayer
import Org.Allbinary.Media.Audio.NullControl as NullControl
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "NoPlayer"


jchain : List String
jchain =
    [ "NoPlayer" ]
        ++ BasicPlayer.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicPlayer.jfields ++ []


jvtable =
    JR.vtable
        [ ( "close_0", jm_close_0 )
        , ( "getContentType_0", jm_getContentType_0 )
        , ( "getControl_1", jm_getControl_1 )
        , ( "getControls_0", jm_getControls_0 ) ]
        BasicPlayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoPlayer"
        [ ( "jm_close_0", jm_close_0 ), ( "jm_getContentType_0", jm_getContentType_0 ), ( "jm_getControl_1", jm_getControl_1 ), ( "jm_getControls_0", jm_getControls_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NO_PLAYER", jstatic_NO_PLAYER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NO_PLAYER : JR.M
jstatic_NO_PLAYER s =
    JR.static "NoPlayer" jclinit "NO_PLAYER"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BasicPlayer.jinit_0 JR.this []),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getContentType_0 : JR.Method
jm_getContentType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "NULL_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getControl_1 : JR.Method
jm_getControl_1 jheap jthis jargs =
    JR.method [ ( "controlType", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new NullControl.jnew_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_getControls_0 : JR.Method
jm_getControls_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.newArray "" [ (JR.int 0) ]) ])
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

