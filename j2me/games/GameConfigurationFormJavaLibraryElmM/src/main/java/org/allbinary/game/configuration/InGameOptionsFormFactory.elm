module Org.Allbinary.Game.Configuration.InGameOptionsFormFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Org.Allbinary.Graphics.Displayable.Screen.CommandForm as CommandForm
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.InGameOptionsForm as InGameOptionsForm
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "InGameOptionsFormFactory"


jchain : List String
jchain =
    [ "InGameOptionsFormFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "SINGLETON", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_5", jm_init_5 )
        , ( "get_0", jm_get_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InGameOptionsFormFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_5", jm_init_5 ), ( "jm_get_0", jm_get_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "InGameOptionsFormFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "SINGLETON" "" JR.this (JR.callStatic CommandForm.jm_getNullCommandForm_0 [])),
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "InGameOptionsFormFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_init_5 : JR.Method
jm_init_5 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "initInterface", "" ), ( "title", "" ), ( "backgrounBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.thisField "SINGLETON") (JR.callStatic CommandForm.jm_getNullCommandForm_0 [])) (JR.run [ 
                            JR.exec (JR.invoke "init_0" (JR.local "initInterface") []), 
                            JR.exec (JR.setField "SINGLETON" "" JR.this (JR.new InGameOptionsForm.jnew_4 [ (JR.local "commandListener"), (JR.local "title"), (JR.local "backgrounBasicColor"), (JR.local "foregroundBasicColor") ])) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "INIT" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_get_0 : JR.Method
jm_get_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "SINGLETON") ])
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

