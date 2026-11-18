module Org.Allbinary.Globals.WebAppUrlGlobals exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.globals
-}

import JR
import Org.Allbinary.Business.Init.InitInfo as InitInfo
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil
import Org.Allbinary.Globals.UrlGlobalsInterface as UrlGlobalsInterface


jclass : String
jclass =
    "WebAppUrlGlobals"


jchain : List String
jchain =
    [ "WebAppUrlGlobals" ]
        ++ UrlGlobalsInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    UrlGlobalsInterface.jfields ++ [ ( "path", JR.defaultOf "" ), ( "isWebappPathSet", JR.defaultOf "Z" ) ]


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
    JR.register "WebAppUrlGlobals"
        [ ( "jm_isTestingMode_0", jm_isTestingMode_0 ), ( "jm_getWebappPath_0", jm_getWebappPath_0 ), ( "jm_setWebappPath_1", jm_setWebappPath_1 ), ( "jm_getTestHtmlPath_0", jm_getTestHtmlPath_0 ), ( "jm_getMainPath_0", jm_getMainPath_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect UrlGlobalsInterface.jinit_0 JR.this []),
            JR.exec (JR.setField "isWebappPathSet" "Z" JR.this (JR.bool False)),
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
                    JR.return (JR.invoke "isTesting_0" (JR.callStatic InitInfo.jm_getInstance_0 []) []) ])
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
                    JR.exec (JR.setLocal "path" "" (JR.local "path")), 
                    JR.exec (JR.setField "isWebappPathSet" "Z" JR.this (JR.bool True)) ])
        (jregister jheap)
        jthis
        jargs


jm_getTestHtmlPath_0 : JR.Method
jm_getTestHtmlPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getTestHtmlPath_0" (JR.callStatic InitInfo.jm_getInstance_0 []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getMainPath_0 : JR.Method
jm_getMainPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "mainPath" "" (JR.invoke "getMainPath_0" (JR.callStatic InitInfo.jm_getInstance_0 []) []), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isEmpty_1" (JR.callStatic StringValidationUtil.jm_getInstance_0 []) [ (JR.local "mainPath") ])) (JR.run [ 
                        JR.return (JR.local "mainPath") ]) (JR.run [ 
                    JR.ifElse (JR.thisField "isWebappPathSet") (JR.run [ 
                        JR.return (JR.invoke "getWebappPath_0" JR.this []) ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Webapp Path is not set") ]) ]) ]) ])
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

