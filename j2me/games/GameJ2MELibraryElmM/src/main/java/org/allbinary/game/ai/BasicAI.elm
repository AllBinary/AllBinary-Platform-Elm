module Org.Allbinary.Game.Ai.BasicAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ai
-}

import JR
import Org.Allbinary.Ai.ArtificialIntelligence as ArtificialIntelligence
import Org.Allbinary.Game.Displayable.Canvas.CanvasUtil as CanvasUtil
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.Event.GameKeyEventFactory as GameKeyEventFactory
import Org.Allbinary.Game.Input.GameKeyEventSourceInterface as GameKeyEventSourceInterface
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "BasicAI"


jchain : List String
jchain =
    [ "BasicAI" ]
        ++ ArtificialIntelligence.jchain
        ++ GameKeyEventSourceInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    ArtificialIntelligence.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "gameKeyEventFactory", JR.defaultOf "" ), ( "ownerLayerInterface", JR.defaultOf "" ), ( "gameInput", JR.defaultOf "" ), ( "lastKey", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 )
        , ( "processKeyAI_1", jm_processKeyAI_1 )
        , ( "setLastKey_1", jm_setLastKey_1 )
        , ( "getLastKey_0", jm_getLastKey_0 )
        , ( "getOwnerLayerInterface_0", jm_getOwnerLayerInterface_0 )
        , ( "getGameInput_0", jm_getGameInput_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "toString_0", jm_toString_0 )
        , ( "getSourceId_0", jm_getSourceId_0 ) ]
        ArtificialIntelligence.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jm_processKeyAI_1", jm_processKeyAI_1 ), ( "jm_setLastKey_1", jm_setLastKey_1 ), ( "jm_getLastKey_0", jm_getLastKey_0 ), ( "jm_getOwnerLayerInterface_0", jm_getOwnerLayerInterface_0 ), ( "jm_getGameInput_0", jm_getGameInput_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_getSourceId_0", jm_getSourceId_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_AI_VISITOR", jstatic_AI_VISITOR ), ( "jstatic_ID", jstatic_ID ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_AI_VISITOR : JR.M
jstatic_AI_VISITOR s =
    JR.static "BasicAI" jclinit "AI_VISITOR"
        (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 2) ])
        s


jstatic_ID : JR.M
jstatic_ID s =
    JR.static "BasicAI" jclinit "ID"
        (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 1) ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ArtificialIntelligence.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameKeyEventFactory" "" JR.this (JR.callStatic GameKeyEventFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "lastKey" "I" JR.this (JR.map JR.neg (JR.int 1))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "ownerLayerInterface" "" JR.this (JR.local "ownerLayerInterface")), 
                    JR.exec (JR.setField "gameInput" "" JR.this (JR.local "gameInput")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processKeyAI_1 : JR.Method
jm_processKeyAI_1 jheap jthis jargs =
    JR.method [ ( "key", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "key") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "gameInput") [ (JR.invoke "getInstanceForKey_2" (JR.thisField "gameKeyEventFactory") [ JR.this, (JR.local "key") ]) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setLastKey_1 : JR.Method
jm_setLastKey_1 jheap jthis jargs =
    JR.method [ ( "lastKey", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "lastKey" "I" JR.this (JR.local "lastKey")) ])
        (jregister jheap)
        jthis
        jargs


jm_getLastKey_0 : JR.Method
jm_getLastKey_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "lastKey") ])
        (jregister jheap)
        jthis
        jargs


jm_getOwnerLayerInterface_0 : JR.Method
jm_getOwnerLayerInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "ownerLayerInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_getGameInput_0 : JR.Method
jm_getGameInput_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameInput") ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getName_0" (JR.getClass JR.this) []) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " LastKey: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callStatic CanvasUtil.jm_getKeyName_1 [ (JR.invoke "getLastKey_0" JR.this []) ]) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSourceId_0 : JR.Method
jm_getSourceId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 1) ])
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

