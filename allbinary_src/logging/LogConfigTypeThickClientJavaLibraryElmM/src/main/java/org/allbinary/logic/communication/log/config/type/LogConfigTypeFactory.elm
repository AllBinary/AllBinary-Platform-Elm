module Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log.config.type
-}

import JR
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigType as LogConfigType
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes


jclass : String
jclass =
    "LogConfigTypeFactory"


jchain : List String
jchain =
    [ "LogConfigTypeFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NO_DESCRIPTION", JR.defaultOf "" ), ( "OS", JR.defaultOf "" ), ( "FACTORYERROR", JR.defaultOf "" ), ( "FILE", JR.defaultOf "" ), ( "FILEERROR", JR.defaultOf "" ), ( "IDLOGGING", JR.defaultOf "" ), ( "REPLACE", JR.defaultOf "" ), ( "REPLACE_INFO", JR.defaultOf "" ), ( "REPLACEERROR", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LogConfigTypeFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LogConfigTypeFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NO_DESCRIPTION" "" JR.this (JR.str "No Description")),
                JR.exec (JR.setField "OS" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Operating System"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "FACTORYERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Factory Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "FILE" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "File"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "FILEERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "File Error"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "IDLOGGING" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "ID Logging"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "REPLACE" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Replace"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "REPLACE_INFO" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Replace Info"), (JR.thisField "NO_DESCRIPTION") ])),
                JR.exec (JR.setField "REPLACEERROR" "" JR.this (JR.new LogConfigType.jnew_2 [ (JR.str "Replace Error"), (JR.thisField "NO_DESCRIPTION") ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "add_1" LogConfigTypes.jstatic_LOGGING [ (JR.thisField "OS") ]), 
                    JR.exec (JR.invoke "add_1" LogConfigTypes.jstatic_LOGGING [ (JR.thisField "FACTORYERROR") ]) ]) ])
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

