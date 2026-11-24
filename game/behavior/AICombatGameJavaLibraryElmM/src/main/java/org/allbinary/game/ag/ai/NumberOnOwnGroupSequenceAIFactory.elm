module Org.Allbinary.Game.Ag.Ai.NumberOnOwnGroupSequenceAIFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Ag.Ai.NumberInSameGroupSequence as NumberInSameGroupSequence
import Org.Allbinary.Game.Ag.Ai.NumberOnOwnGroupSequenceAI as NumberOnOwnGroupSequenceAI
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "NumberOnOwnGroupSequenceAIFactory"


jchain : List String
jchain =
    [ "NumberOnOwnGroupSequenceAIFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_4", jm_getInstance_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NumberOnOwnGroupSequenceAIFactory"
        [ ( "jm_getInstance_4", jm_getInstance_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_4 : JR.Method
jm_getInstance_4 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "artificialIntelligenceInterface", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ 
                    JR.declare "integerArray" "" (JR.field "NUMBER_ON_SAME_TEAM_SEQUENCE" (JR.callStatic NumberInSameGroupSequence.jm_getInstance_0 [])), 
                    JR.declare "list" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "integerArray"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68422 -> (JR.setLocal "index" "I" (JR.lit jwN68422))) JR.increment) ]) (JR.run [ 
                        JR.declare "integerCanBeNull" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.aget (JR.local "integerArray") (JR.local "index")) ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "integerCanBeNull") JR.null) (JR.run [ 
                            JR.break ]) identity, 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.local "integerCanBeNull") ]) ]) ], 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Total AI Properties: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.local "list") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " == Total AI: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.alength (JR.local "artificialIntelligenceInterface")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " + 1") ]), 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "GET_INSTANCE" (JR.local "commonStrings")) ]), 
                    JR.ifElse (JR.map2 JR.greater (JR.map2 JR.sub (JR.alength (JR.local "artificialIntelligenceInterface")) (JR.int 1)) (JR.invoke "size_0" (JR.local "list") [])) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Not enough AI properties.") ]) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.map2 JR.sub (JR.alength (JR.local "artificialIntelligenceInterface")) (JR.int 1)) (JR.invoke "size_0" (JR.local "list") [])) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Too Many AI properties.") ]) ]) identity, 
                    JR.declare "numberOnSameTeam" "" (JR.newArray "" [ (JR.invoke "size_0" (JR.local "list") []) ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "numberOnSameTeam"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69116 -> (JR.setLocal "index" "I" (JR.lit jwN69116))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "numberOnSameTeam") (\jaN68991 -> JR.andThen (JR.local "index") (\jiN68991 -> (JR.aset (JR.lit jaN68991) (JR.lit jiN68991) (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")))))) ]) ], 
                    JR.return (JR.new NumberOnOwnGroupSequenceAI.jnew_4 [ (JR.local "numberOnSameTeam"), (JR.local "artificialIntelligenceInterface"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]) ])
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

