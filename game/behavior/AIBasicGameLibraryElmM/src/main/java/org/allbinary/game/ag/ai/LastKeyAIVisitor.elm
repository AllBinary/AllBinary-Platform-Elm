module Org.Allbinary.Game.Ag.Ai.LastKeyAIVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Util.Visitor.Visitor as Visitor


jclass : String
jclass =
    "LastKeyAIVisitor"


jchain : List String
jchain =
    [ "LastKeyAIVisitor" ]
        ++ Visitor.jchain


jfields : List ( String, JR.JValue )
jfields =
    Visitor.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "TRUE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "visit_1", jm_visit_1 ) ]
        Visitor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LastKeyAIVisitor"
        [ ( "jm_visit_1", jm_visit_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Visitor.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "TRUE" "" JR.this (JR.field "TRUE" (JR.callStatic BooleanFactory.jm_getInstance_0 []))),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_visit_1 : JR.Method
jm_visit_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "basicAI" "" (JR.local "anyType"), 
                        JR.declare "key" "I" (JR.invoke "getLastKey_0" (JR.local "basicAI") []), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "key") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                            JR.exec (JR.invoke "processKeyAI_1" (JR.local "basicAI") [ (JR.local "key") ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "VISIT" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                    JR.return (JR.thisField "TRUE") ])
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

