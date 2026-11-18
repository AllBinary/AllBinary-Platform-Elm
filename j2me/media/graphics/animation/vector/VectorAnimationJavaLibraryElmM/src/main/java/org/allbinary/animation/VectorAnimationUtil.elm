module Org.Allbinary.Animation.VectorAnimationUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR



jclass : String
jclass =
    "VectorAnimationUtil"


jchain : List String
jchain =
    [ "VectorAnimationUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "toAnimationArrayFromListOfPointListWithPointsPerFrame_2", jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 )
        , ( "toAnimationArrayFromListOfPointList_1", jm_toAnimationArrayFromListOfPointList_1 )
        , ( "toFrameArrayFromPointBasicArrayList_1", jm_toFrameArrayFromPointBasicArrayList_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VectorAnimationUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2", jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 ), ( "jm_toAnimationArrayFromListOfPointList_1", jm_toAnimationArrayFromListOfPointList_1 ), ( "jm_toFrameArrayFromPointBasicArrayList_1", jm_toFrameArrayFromPointBasicArrayList_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "VectorAnimationUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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


jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 : JR.Method
jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 jheap jthis jargs =
    JR.method [ ( "vector", "" ), ( "pointsPerFrame", "I" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "vector") []), 
                    JR.declare "points" "" (JR.newArray "I" [ (JR.local "size"), (JR.local "pointsPerFrame"), (JR.int 2) ]), 
                    JR.declare "nextBasicArrayList" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "framePoints" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66746 -> (JR.setLocal "index" "I" (JR.lit jwN66746))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "nextBasicArrayList" "" (JR.aget (JR.field "objectArray" (JR.local "vector")) (JR.local "index"))), 
                        JR.exec (JR.setLocal "framePoints" "" (JR.invoke "toFrameArrayFromPointBasicArrayList_1" JR.this [ (JR.local "nextBasicArrayList") ])), 
                        JR.run [ JR.declare "pointIndex" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "pointIndex") (JR.alength (JR.local "framePoints"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "pointIndex") (\jwN66680 -> (JR.setLocal "pointIndex" "I" (JR.lit jwN66680))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "pointIndex")) (\jaN66470 -> JR.andThen (JR.int 0) (\jiN66470 -> (JR.aset (JR.lit jaN66470) (JR.lit jiN66470) (JR.aget (JR.aget (JR.local "framePoints") (JR.local "pointIndex")) (JR.int 0)))))), 
                            JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "pointIndex")) (\jaN66547 -> JR.andThen (JR.int 1) (\jiN66547 -> (JR.aset (JR.lit jaN66547) (JR.lit jiN66547) (JR.aget (JR.aget (JR.local "framePoints") (JR.local "pointIndex")) (JR.int 1)))))) ]) ] ]) ], 
                    JR.return (JR.local "points") ])
        (jregister jheap)
        jthis
        jargs


jm_toAnimationArrayFromListOfPointList_1 : JR.Method
jm_toAnimationArrayFromListOfPointList_1 jheap jthis jargs =
    JR.method [ ( "vector", "" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "vector") []), 
                    JR.declare "points" "" (JR.newArray "I" [ (JR.local "size"), (JR.int 0), (JR.int 0) ]), 
                    JR.declare "nextBasicArrayList" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "framePoints" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67514 -> (JR.setLocal "index" "I" (JR.lit jwN67514))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "nextBasicArrayList" "" (JR.aget (JR.field "objectArray" (JR.local "vector")) (JR.local "index"))), 
                        JR.exec (JR.setLocal "framePoints" "" (JR.invoke "toFrameArrayFromPointBasicArrayList_1" JR.this [ (JR.local "nextBasicArrayList") ])), 
                        JR.exec (JR.andThen (JR.local "points") (\jaN67158 -> JR.andThen (JR.local "index") (\jiN67158 -> (JR.aset (JR.lit jaN67158) (JR.lit jiN67158) (JR.newArray "I" [ (JR.alength (JR.local "framePoints")), (JR.int 2) ]))))), 
                        JR.run [ JR.declare "pointIndex" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "pointIndex") (JR.alength (JR.local "framePoints"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "pointIndex") (\jwN67448 -> (JR.setLocal "pointIndex" "I" (JR.lit jwN67448))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "pointIndex")) (\jaN67234 -> JR.andThen (JR.int 0) (\jiN67234 -> (JR.aset (JR.lit jaN67234) (JR.lit jiN67234) (JR.aget (JR.aget (JR.local "framePoints") (JR.local "pointIndex")) (JR.int 0)))))), 
                            JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "pointIndex")) (\jaN67315 -> JR.andThen (JR.int 1) (\jiN67315 -> (JR.aset (JR.lit jaN67315) (JR.lit jiN67315) (JR.aget (JR.aget (JR.local "framePoints") (JR.local "pointIndex")) (JR.int 1)))))) ]) ] ]) ], 
                    JR.return (JR.local "points") ])
        (jregister jheap)
        jthis
        jargs


jm_toFrameArrayFromPointBasicArrayList_1 : JR.Method
jm_toFrameArrayFromPointBasicArrayList_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] ""
        (JR.run [ 
                    JR.declare "points" "" (JR.newArray "I" [ (JR.invoke "size_0" (JR.local "list") []), (JR.int 2) ]), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67952 -> (JR.setLocal "index" "I" (JR.lit jwN67952))) JR.increment) ]) (JR.run [ 
                        JR.declare "nextPoint" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                        JR.exec (JR.andThen (JR.aget (JR.local "points") (JR.local "index")) (\jaN67798 -> JR.andThen (JR.int 0) (\jiN67798 -> (JR.aset (JR.lit jaN67798) (JR.lit jiN67798) (JR.invoke "getX_0" (JR.local "nextPoint") []))))), 
                        JR.exec (JR.andThen (JR.aget (JR.local "points") (JR.local "index")) (\jaN67851 -> JR.andThen (JR.int 1) (\jiN67851 -> (JR.aset (JR.lit jaN67851) (JR.lit jiN67851) (JR.invoke "getY_0" (JR.local "nextPoint") []))))) ]) ], 
                    JR.return (JR.local "points") ])
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

