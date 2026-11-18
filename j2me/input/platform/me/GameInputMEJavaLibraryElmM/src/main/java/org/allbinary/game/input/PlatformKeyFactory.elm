module Org.Allbinary.Game.Input.PlatformKeyFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.J2MEGameKey as J2MEGameKey
import Org.Allbinary.Game.Input.J2MEKeyFactory as J2MEKeyFactory
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "PlatformKeyFactory"


jchain : List String
jchain =
    [ "PlatformKeyFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getString_1", jm_getString_1 )
        , ( "isSubmission_1", jm_isSubmission_1 )
        , ( "isDelete_1", jm_isDelete_1 )
        , ( "isBackSpace_1", jm_isBackSpace_1 )
        , ( "isLeft_1", jm_isLeft_1 )
        , ( "isRight_1", jm_isRight_1 )
        , ( "isUp_1", jm_isUp_1 )
        , ( "isDown_1", jm_isDown_1 )
        , ( "isEnter_1", jm_isEnter_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlatformKeyFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getString_1", jm_getString_1 ), ( "jm_isSubmission_1", jm_isSubmission_1 ), ( "jm_isDelete_1", jm_isDelete_1 ), ( "jm_isBackSpace_1", jm_isBackSpace_1 ), ( "jm_isLeft_1", jm_isLeft_1 ), ( "jm_isRight_1", jm_isRight_1 ), ( "jm_isUp_1", jm_isUp_1 ), ( "jm_isDown_1", jm_isDown_1 ), ( "jm_isEnter_1", jm_isEnter_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PlatformKeyFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "PlatformKeyFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getString_1 : JR.Method
jm_getString_1 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic J2MEGameKey.jm_getString_1 [ (JR.local "keyCode") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isSubmission_1 : JR.Method
jm_isSubmission_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isSubmission_1" (JR.callStatic J2MEKeyFactory.jm_getInstance_0 []) [ (JR.local "input") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isDelete_1 : JR.Method
jm_isDelete_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isDelete_1" (JR.callStatic J2MEKeyFactory.jm_getInstance_0 []) [ (JR.local "input") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isBackSpace_1 : JR.Method
jm_isBackSpace_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isBackSpace_1" (JR.callStatic J2MEKeyFactory.jm_getInstance_0 []) [ (JR.local "input") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isLeft_1 : JR.Method
jm_isLeft_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isLeft_1" (JR.callStatic J2MEKeyFactory.jm_getInstance_0 []) [ (JR.local "input") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isRight_1 : JR.Method
jm_isRight_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isRight_1" (JR.callStatic J2MEKeyFactory.jm_getInstance_0 []) [ (JR.local "input") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isUp_1 : JR.Method
jm_isUp_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isUp_1" (JR.callStatic J2MEKeyFactory.jm_getInstance_0 []) [ (JR.local "input") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isDown_1 : JR.Method
jm_isDown_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isDown_1" (JR.callStatic J2MEKeyFactory.jm_getInstance_0 []) [ (JR.local "input") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isEnter_1 : JR.Method
jm_isEnter_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isEnter_1" (JR.callStatic J2MEKeyFactory.jm_getInstance_0 []) [ (JR.local "input") ]) ])
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

