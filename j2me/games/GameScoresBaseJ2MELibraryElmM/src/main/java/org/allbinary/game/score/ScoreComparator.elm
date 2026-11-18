module Org.Allbinary.Game.Score.ScoreComparator exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import JByteArrayInputStream
import JDataInputStream
import JLong
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Javax.Microedition.Rms.RecordComparator as RecordComparator


jclass : String
jclass =
    "ScoreComparator"


jchain : List String
jchain =
    [ "ScoreComparator" ]
        ++ RecordComparator.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "isHighestBest", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getBestScore_0", jm_getBestScore_0 )
        , ( "compare_2", jm_compare_2 )
        , ( "getHighTooLow_2", jm_getHighTooLow_2 )
        , ( "getLowTooHigh_2", jm_getLowTooHigh_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScoreComparator"
        [ ( "jm_getBestScore_0", jm_getBestScore_0 ), ( "jm_compare_2", jm_compare_2 ), ( "jm_getHighTooLow_2", jm_getHighTooLow_2 ), ( "jm_getLowTooHigh_2", jm_getLowTooHigh_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "isHighestBest", "Z" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "isHighestBest" "Z" JR.this (JR.local "isHighestBest")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getBestScore_0 : JR.Method
jm_getBestScore_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.cond (JR.thisField "isHighestBest") JLong.jstatic_MAX_VALUE (JR.int 0)) ])
        (jregister jheap)
        jthis
        jargs


jm_compare_2 : JR.Method
jm_compare_2 jheap jthis jargs =
    JR.method [ ( "recordOne", "" ), ( "recordTwo", "" ) ] "I"
        (JR.run [ 
                    JR.declare "byteArrayInputStreamOne" "" (JR.new JByteArrayInputStream.jnew_1 [ (JR.local "recordOne") ]), 
                    JR.declare "inputStreamOne" "" (JR.new JDataInputStream.jnew_1 [ (JR.local "byteArrayInputStreamOne") ]), 
                    JR.declare "byteArrayInputStreamTwo" "" (JR.new JByteArrayInputStream.jnew_1 [ (JR.local "recordTwo") ]), 
                    JR.declare "inputStreamTwo" "" (JR.new JDataInputStream.jnew_1 [ (JR.local "byteArrayInputStreamTwo") ]), 
                    JR.declare "scoreOne" "J" (JR.long 0), 
                    JR.declare "scoreTwo" "J" (JR.long 0), 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "readUTF_0" (JR.local "inputStreamOne") []), 
                        JR.exec (JR.invoke "readUTF_0" (JR.local "inputStreamTwo") []), 
                        JR.exec (JR.setLocal "scoreOne" "J" (JR.invoke "readLong_0" (JR.local "inputStreamOne") [])), 
                        JR.exec (JR.setLocal "scoreTwo" "J" (JR.invoke "readLong_0" (JR.local "inputStreamTwo") [])) ]) [ ( [ "EOFException" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "compare"), (JR.local "e") ]) ]) ), ( [ "IOException" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "compare"), (JR.local "e") ]) ]) ), ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "compare"), (JR.local "e") ]) ]) ) ] identity, 
                    JR.ifElse (JR.thisField "isHighestBest") (JR.run [ 
                        JR.return (JR.invoke "getHighTooLow_2" JR.this [ (JR.local "scoreOne"), (JR.local "scoreTwo") ]) ]) (JR.run [ 
                        JR.return (JR.invoke "getLowTooHigh_2" JR.this [ (JR.local "scoreOne"), (JR.local "scoreTwo") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getHighTooLow_2 : JR.Method
jm_getHighTooLow_2 jheap jthis jargs =
    JR.method [ ( "scoreOne", "J" ), ( "scoreTwo", "J" ) ] "I"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "scoreOne") (JR.local "scoreTwo")) (JR.run [ 
                        JR.return RecordComparator.jstatic_PRECEDES ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.local "scoreOne") (JR.local "scoreTwo")) (JR.run [ 
                        JR.return RecordComparator.jstatic_FOLLOWS ]) (JR.run [ 
                        JR.return RecordComparator.jstatic_EQUIVALENT ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getLowTooHigh_2 : JR.Method
jm_getLowTooHigh_2 jheap jthis jargs =
    JR.method [ ( "scoreOne", "J" ), ( "scoreTwo", "J" ) ] "I"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.local "scoreOne") (JR.local "scoreTwo")) (JR.run [ 
                        JR.return RecordComparator.jstatic_PRECEDES ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "scoreOne") (JR.local "scoreTwo")) (JR.run [ 
                        JR.return RecordComparator.jstatic_FOLLOWS ]) (JR.run [ 
                        JR.return RecordComparator.jstatic_EQUIVALENT ]) ]) ])
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

