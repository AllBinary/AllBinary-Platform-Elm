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
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66750 -> (JR.setLocal "index" "I" (JR.lit jwN66750))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "nextBasicArrayList" "" (JR.aget (JR.field "objectArray" (JR.local "vector")) (JR.local "index"))), 
                        JR.exec (JR.setLocal "framePoints" "" (JR.invoke "toFrameArrayFromPointBasicArrayList_1" JR.this [ (JR.local "nextBasicArrayList") ])), 
                        JR.run [ JR.declare "pointIndex" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "pointIndex") (JR.alength (JR.local "framePoints"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "pointIndex") (\jwN66684 -> (JR.setLocal "pointIndex" "I" (JR.lit jwN66684))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "pointIndex")) (\jaN66474 -> JR.andThen (JR.int 0) (\jiN66474 -> (JR.aset (JR.lit jaN66474) (JR.lit jiN66474) (JR.aget (JR.aget (JR.local "framePoints") (JR.local "pointIndex")) (JR.int 0)))))), 
                            JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "pointIndex")) (\jaN66551 -> JR.andThen (JR.int 1) (\jiN66551 -> (JR.aset (JR.lit jaN66551) (JR.lit jiN66551) (JR.aget (JR.aget (JR.local "framePoints") (JR.local "pointIndex")) (JR.int 1)))))) ]) ] ]) ], 
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
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67518 -> (JR.setLocal "index" "I" (JR.lit jwN67518))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "nextBasicArrayList" "" (JR.aget (JR.field "objectArray" (JR.local "vector")) (JR.local "index"))), 
                        JR.exec (JR.setLocal "framePoints" "" (JR.invoke "toFrameArrayFromPointBasicArrayList_1" JR.this [ (JR.local "nextBasicArrayList") ])), 
                        JR.exec (JR.andThen (JR.local "points") (\jaN67162 -> JR.andThen (JR.local "index") (\jiN67162 -> (JR.aset (JR.lit jaN67162) (JR.lit jiN67162) (JR.newArray "I" [ (JR.alength (JR.local "framePoints")), (JR.int 2) ]))))), 
                        JR.run [ JR.declare "pointIndex" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "pointIndex") (JR.alength (JR.local "framePoints"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "pointIndex") (\jwN67452 -> (JR.setLocal "pointIndex" "I" (JR.lit jwN67452))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "pointIndex")) (\jaN67238 -> JR.andThen (JR.int 0) (\jiN67238 -> (JR.aset (JR.lit jaN67238) (JR.lit jiN67238) (JR.aget (JR.aget (JR.local "framePoints") (JR.local "pointIndex")) (JR.int 0)))))), 
                            JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "pointIndex")) (\jaN67319 -> JR.andThen (JR.int 1) (\jiN67319 -> (JR.aset (JR.lit jaN67319) (JR.lit jiN67319) (JR.aget (JR.aget (JR.local "framePoints") (JR.local "pointIndex")) (JR.int 1)))))) ]) ] ]) ], 
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
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67956 -> (JR.setLocal "index" "I" (JR.lit jwN67956))) JR.increment) ]) (JR.run [ 
                        JR.declare "nextPoint" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                        JR.exec (JR.andThen (JR.aget (JR.local "points") (JR.local "index")) (\jaN67802 -> JR.andThen (JR.int 0) (\jiN67802 -> (JR.aset (JR.lit jaN67802) (JR.lit jiN67802) (JR.invoke "getX_0" (JR.local "nextPoint") []))))), 
                        JR.exec (JR.andThen (JR.aget (JR.local "points") (JR.local "index")) (\jaN67855 -> JR.andThen (JR.int 1) (\jiN67855 -> (JR.aset (JR.lit jaN67855) (JR.lit jiN67855) (JR.invoke "getY_0" (JR.local "nextPoint") []))))) ]) ], 
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

