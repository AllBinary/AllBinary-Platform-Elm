module Org.Allbinary.Input.Motion.Button.NoButtonsBuilder exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Input.Motion.Button.BaseTouchInput as BaseTouchInput
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "NoButtonsBuilder"


jchain : List String
jchain =
    [ "NoButtonsBuilder" ]
        ++ BaseTouchInput.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseTouchInput.jfields ++ [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getList_0", jm_getList_0 ) ]
        BaseTouchInput.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoButtonsBuilder"
        [ ( "jm_getList_0", jm_getList_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BaseTouchInput.jinit_0 JR.this []),
            JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getList_0 : JR.Method
jm_getList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                        JR.declare "list" "" (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) []), 
                        JR.return (JR.local "list") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "GET_LIST" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                        JR.return (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) []) ]) ) ] identity ])
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

