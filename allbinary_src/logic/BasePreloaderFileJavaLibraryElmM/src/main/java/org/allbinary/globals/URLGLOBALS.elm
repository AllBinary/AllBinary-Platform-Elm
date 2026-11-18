module Org.Allbinary.Globals.URLGLOBALS exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.globals
-}

import JR
import Org.Allbinary.Globals.AppUrlGlobals as AppUrlGlobals


jclass : String
jclass =
    "URLGLOBALS"


jchain : List String
jchain =
    [ "URLGLOBALS" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 )
        , ( "isTestingMode_0", jm_isTestingMode_0 )
        , ( "getWebappPath_0", jm_getWebappPath_0 )
        , ( "getTestHtmlPath_0", jm_getTestHtmlPath_0 )
        , ( "getMainPath_0", jm_getMainPath_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "URLGLOBALS"
        [ ( "jm_init_1", jm_init_1 ), ( "jm_isTestingMode_0", jm_isTestingMode_0 ), ( "jm_getWebappPath_0", jm_getWebappPath_0 ), ( "jm_getTestHtmlPath_0", jm_getTestHtmlPath_0 ), ( "jm_getMainPath_0", jm_getMainPath_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_urlGlobalsInterface", jstatic_urlGlobalsInterface ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_urlGlobalsInterface : JR.M
jstatic_urlGlobalsInterface s =
    JR.static "URLGLOBALS" jclinit "urlGlobalsInterface"
        AppUrlGlobals.jstatic_NULL_APP_URL_GLOBALS
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


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "urlGlobalsInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "URLGLOBALS.urlGlobalsInterface" "" (JR.local "urlGlobalsInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_isTestingMode_0 : JR.Method
jm_isTestingMode_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isTestingMode_0" jstatic_urlGlobalsInterface []) ])
        (jregister jheap)
        jthis
        jargs


jm_getWebappPath_0 : JR.Method
jm_getWebappPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getWebappPath_0" jstatic_urlGlobalsInterface []) ])
        (jregister jheap)
        jthis
        jargs


jm_getTestHtmlPath_0 : JR.Method
jm_getTestHtmlPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getTestHtmlPath_0" jstatic_urlGlobalsInterface []) ])
        (jregister jheap)
        jthis
        jargs


jm_getMainPath_0 : JR.Method
jm_getMainPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getMainPath_0" jstatic_urlGlobalsInterface []) ])
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

