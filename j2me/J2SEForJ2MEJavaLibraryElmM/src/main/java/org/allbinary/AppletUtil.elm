module Org.Allbinary.AppletUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary
-}

import JR



jclass : String
jclass =
    "AppletUtil"


jchain : List String
jchain =
    [ "AppletUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "setApplet_0", jm_setApplet_0 )
        , ( "isAppletLoader_1", jm_isAppletLoader_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AppletUtil"
        [ ( "jm_setApplet_0", jm_setApplet_0 ), ( "jm_isAppletLoader_1", jm_isAppletLoader_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_applet", jstatic_applet ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_applet : JR.M
jstatic_applet s =
    JR.static "AppletUtil" jclinit "applet"
        (JR.bool False)
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_setApplet_0 : JR.Method
jm_setApplet_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "AppletUtil.applet" "Z" (JR.bool True)) ])
        (jregister jheap)
        jthis
        jargs


jm_isAppletLoader_1 : JR.Method
jm_isAppletLoader_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] "Z"
        (JR.run [ 
                    JR.return jstatic_applet ])
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

