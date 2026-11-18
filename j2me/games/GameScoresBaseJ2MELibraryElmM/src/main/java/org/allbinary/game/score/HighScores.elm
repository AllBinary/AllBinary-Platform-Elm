module Org.Allbinary.Game.Score.HighScores exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Game.Score.HighScoresInterface as HighScoresInterface
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "HighScores"


jchain : List String
jchain =
    [ "HighScores" ]
        ++ HighScoresInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "orderedHighScoresList", JR.defaultOf "" ), ( "name", JR.defaultOf "" ), ( "heading", JR.defaultOf "" ), ( "columnOneHeading", JR.defaultOf "" ), ( "columnTwoHeading", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setList_1", jm_setList_1 )
        , ( "getList_0", jm_getList_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "getTotal_0", jm_getTotal_0 )
        , ( "addHighScore_1", jm_addHighScore_1 )
        , ( "getHeading_0", jm_getHeading_0 )
        , ( "getColumnOneHeading_0", jm_getColumnOneHeading_0 )
        , ( "getColumnTwoHeading_0", jm_getColumnTwoHeading_0 )
        , ( "isBestScore_1", jm_isBestScore_1 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScores"
        [ ( "jm_setList_1", jm_setList_1 ), ( "jm_getList_0", jm_getList_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_getTotal_0", jm_getTotal_0 ), ( "jm_addHighScore_1", jm_addHighScore_1 ), ( "jm_getHeading_0", jm_getHeading_0 ), ( "jm_getColumnOneHeading_0", jm_getColumnOneHeading_0 ), ( "jm_getColumnTwoHeading_0", jm_getColumnTwoHeading_0 ), ( "jm_isBestScore_1", jm_isBestScore_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "heading", "" ), ( "columnTwoHeading", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "orderedHighScoresList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "columnOneHeading" "" JR.this (JR.str "Name")),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.exec (JR.setField "heading" "" JR.this (JR.local "heading")), 
                    JR.exec (JR.setField "columnTwoHeading" "" JR.this (JR.local "columnTwoHeading")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_setList_1 : JR.Method
jm_setList_1 jheap jthis jargs =
    JR.method [ ( "orderedHighScoresList", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "orderedHighScoresList" "" JR.this (JR.local "orderedHighScoresList")) ])
        (jregister jheap)
        jthis
        jargs


jm_getList_0 : JR.Method
jm_getList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "orderedHighScoresList") ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_getTotal_0 : JR.Method
jm_getTotal_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "size_0" (JR.invoke "getList_0" JR.this []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_addHighScore_1 : JR.Method
jm_addHighScore_1 jheap jthis jargs =
    JR.method [ ( "newHighScore", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "orderedHighScoresList") [ (JR.local "newHighScore") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getHeading_0 : JR.Method
jm_getHeading_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "heading") ])
        (jregister jheap)
        jthis
        jargs


jm_getColumnOneHeading_0 : JR.Method
jm_getColumnOneHeading_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "columnOneHeading") ])
        (jregister jheap)
        jthis
        jargs


jm_getColumnTwoHeading_0 : JR.Method
jm_getColumnTwoHeading_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "columnTwoHeading") ])
        (jregister jheap)
        jthis
        jargs


jm_isBestScore_1 : JR.Method
jm_isBestScore_1 jheap jthis jargs =
    JR.method [ ( "newHighScore", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "HighScores: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "heading") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "TOTAL_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.thisField "orderedHighScoresList") []) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

