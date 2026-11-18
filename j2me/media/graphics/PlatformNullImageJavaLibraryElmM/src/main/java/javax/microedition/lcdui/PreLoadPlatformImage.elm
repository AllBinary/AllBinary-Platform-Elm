module Javax.Microedition.Lcdui.PreLoadPlatformImage exposing (..)

{-| Generated Code Do Not Modify package javax.microedition.lcdui
-}

import JR
import Javax.Microedition.Lcdui.PlatformImage as PlatformImage


jclass : String
jclass =
    "PreLoadPlatformImage"


jchain : List String
jchain =
    [ "PreLoadPlatformImage" ]
        ++ PlatformImage.jchain


jfields : List ( String, JR.JValue )
jfields =
    PlatformImage.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        PlatformImage.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PreLoadPlatformImage"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PreLoadPlatformImage" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect PlatformImage.jinit_0 JR.this []),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

