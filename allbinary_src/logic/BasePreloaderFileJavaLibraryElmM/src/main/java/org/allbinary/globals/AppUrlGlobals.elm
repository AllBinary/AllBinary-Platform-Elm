module Org.Allbinary.Globals.AppUrlGlobals exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.globals
-}

import JR
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Globals.UrlGlobalsInterface as UrlGlobalsInterface


jclass : String
jclass =
    "AppUrlGlobals"


jchain : List String
jchain =
    [ "AppUrlGlobals" ]
        ++ UrlGlobalsInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    UrlGlobalsInterface.jfields ++ [ ( "path", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "isTestingMode_0", jm_isTestingMode_0 )
        , ( "getWebappPath_0", jm_getWebappPath_0 )
        , ( "setWebappPath_1", jm_setWebappPath_1 )
        , ( "getTestHtmlPath_0", jm_getTestHtmlPath_0 )
        , ( "getMainPath_0", jm_getMainPath_0 ) ]
        UrlGlobalsInterface.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AppUrlGlobals"
        [ ( "jm_isTestingMode_0", jm_isTestingMode_0 ), ( "jm_getWebappPath_0", jm_getWebappPath_0 ), ( "jm_setWebappPath_1", jm_setWebappPath_1 ), ( "jm_getTestHtmlPath_0", jm_getTestHtmlPath_0 ), ( "jm_getMainPath_0", jm_getMainPath_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_APP_URL_GLOBALS", jstatic_NULL_APP_URL_GLOBALS ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_APP_URL_GLOBALS : JR.M
jstatic_NULL_APP_URL_GLOBALS s =
    JR.static "AppUrlGlobals" jclinit "NULL_APP_URL_GLOBALS"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect UrlGlobalsInterface.jinit_0 JR.this []),
            JR.exec (JR.setField "path" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_isTestingMode_0 : JR.Method
jm_isTestingMode_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getWebappPath_0 : JR.Method
jm_getWebappPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "path") ])
        (jregister jheap)
        jthis
        jargs


jm_setWebappPath_1 : JR.Method
jm_setWebappPath_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "path" "" JR.this (JR.local "path")), 
                    JR.ifElse (JR.map JR.not_ ((JR.or (JR.invoke "endsWith_1" (JR.thisField "path") [ (JR.str "\\") ]) (JR.invoke "endsWith_1" (JR.thisField "path") [ (JR.str "/") ])))) (JR.run [ 
                        JR.exec (JR.setField "path" "" JR.this (JR.concat (JR.thisField "path") (JR.str "\\"))) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getTestHtmlPath_0 : JR.Method
jm_getTestHtmlPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getMainPath_0 : JR.Method
jm_getMainPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "path") ])
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

