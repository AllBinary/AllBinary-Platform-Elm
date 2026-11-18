module Org.Allbinary.Business.Init.InitInfo2 exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init
-}

import JR
import Org.Allbinary.Logic.Io.File.Directory.Directory as Directory


jclass : String
jclass =
    "InitInfo2"


jchain : List String
jchain =
    [ "InitInfo2" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "directory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isTestHtmlPathValid_1", jm_isTestHtmlPathValid_1 )
        , ( "isMainPathValid_1", jm_isMainPathValid_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InitInfo2"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isTestHtmlPathValid_1", jm_isTestHtmlPathValid_1 ), ( "jm_isMainPathValid_1", jm_isMainPathValid_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "InitInfo2" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "directory" "" JR.this (JR.callStatic Directory.jm_getInstance_0 [])),
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


jm_isTestHtmlPathValid_1 : JR.Method
jm_isTestHtmlPathValid_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "create_1" (JR.thisField "directory") [ (JR.local "value") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isMainPathValid_1 : JR.Method
jm_isMainPathValid_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "create_1" (JR.thisField "directory") [ (JR.local "value") ]) ])
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

