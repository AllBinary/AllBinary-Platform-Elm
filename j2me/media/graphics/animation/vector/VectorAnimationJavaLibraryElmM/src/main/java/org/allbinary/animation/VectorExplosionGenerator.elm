module Org.Allbinary.Animation.VectorExplosionGenerator exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Util.BasicArrayListS as BasicArrayListS
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Pipeline.RandomRotationFactory as RandomRotationFactory
import Org.Allbinary.Graphics.Pipeline.RandomTranslation as RandomTranslation
import Org.Allbinary.Animation.VectorAnimationUtil as VectorAnimationUtil
import Org.Allbinary.Animation.VectorExplosionType as VectorExplosionType


jclass : String
jclass =
    "VectorExplosionGenerator"


jchain : List String
jchain =
    [ "VectorExplosionGenerator" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "RANDOM", JR.defaultOf "" ), ( "ROTATION", JR.defaultOf "" ), ( "vectorAnimationUtil", JR.defaultOf "" ), ( "randomRotationFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createList_3", jm_createList_3 )
        , ( "getInstance_3", jm_getInstance_3 )
        , ( "getInstanceStartFrame_4", jm_getInstanceStartFrame_4 )
        , ( "createListFromPoints_4", jm_createListFromPoints_4 )
        , ( "createPointsBasicArrayList_1", jm_createPointsBasicArrayList_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VectorExplosionGenerator"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createList_3", jm_createList_3 ), ( "jm_getInstance_3", jm_getInstance_3 ), ( "jm_getInstanceStartFrame_4", jm_getInstanceStartFrame_4 ), ( "jm_createListFromPoints_4", jm_createListFromPoints_4 ), ( "jm_createPointsBasicArrayList_1", jm_createPointsBasicArrayList_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "VectorExplosionGenerator" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "RANDOM" "" JR.this (JR.new VectorExplosionType.jnew_0 [])),
                JR.exec (JR.setField "ROTATION" "" JR.this (JR.new VectorExplosionType.jnew_0 [])),
                JR.exec (JR.setField "vectorAnimationUtil" "" JR.this (JR.callStatic VectorAnimationUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "randomRotationFactory" "" JR.this (JR.callStatic RandomRotationFactory.jm_getInstance_0 [])),
                identity,
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


jm_createList_3 : JR.Method
jm_createList_3 jheap jthis jargs =
    JR.method [ ( "list", "" ), ( "howMuch", "I" ), ( "type", "" ) ] ""
        (JR.run [ 
                    JR.declare "point" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "points" "" (JR.newArray "I" [ (JR.local "size"), (JR.int 2) ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67201 -> (JR.setLocal "index" "I" (JR.lit jwN67201))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "point" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.exec (JR.andThen (JR.aget (JR.local "points") (JR.local "index")) (\jaN67047 -> JR.andThen (JR.int 0) (\jiN67047 -> (JR.aset (JR.lit jaN67047) (JR.lit jiN67047) (JR.invoke "getX_0" (JR.local "point") []))))), 
                        JR.exec (JR.andThen (JR.aget (JR.local "points") (JR.local "index")) (\jaN67100 -> JR.andThen (JR.int 1) (\jiN67100 -> (JR.aset (JR.lit jaN67100) (JR.lit jiN67100) (JR.invoke "getY_0" (JR.local "point") []))))) ]) ], 
                    JR.return (JR.invoke "createListFromPoints_4" JR.this [ (JR.local "list"), (JR.local "points"), (JR.local "howMuch"), (JR.local "type") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_3 : JR.Method
jm_getInstance_3 jheap jthis jargs =
    JR.method [ ( "points", "" ), ( "howMuch", "I" ), ( "type", "" ) ] ""
        (JR.run [ 
                    JR.declare "pointsBasicArrayList" "" (JR.invoke "getInstanceStartFrame_4" JR.this [ (JR.local "points"), (JR.local "howMuch"), (JR.local "type"), (JR.bool True) ]), 
                    JR.declare "tempBasicArrayList" "" (JR.aget (JR.field "objectArray" (JR.local "pointsBasicArrayList")) (JR.int 0)), 
                    JR.declare "newPoints" "" (JR.invoke "toAnimationArrayFromListOfPointListWithPointsPerFrame_2" (JR.thisField "vectorAnimationUtil") [ (JR.local "pointsBasicArrayList"), (JR.invoke "size_0" (JR.local "tempBasicArrayList") []) ]), 
                    JR.return (JR.local "newPoints") ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceStartFrame_4 : JR.Method
jm_getInstanceStartFrame_4 jheap jthis jargs =
    JR.method [ ( "points", "" ), ( "howMuch", "I" ), ( "type", "" ), ( "startFrame", "Z" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "pointsBasicArrayList" "" (JR.new BasicArrayListS.jnew_1 [ (JR.local "howMuch") ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "pointsBasicArrayList") [ (JR.invoke "createPointsBasicArrayList_1" JR.this [ (JR.local "points") ]) ]), 
                        JR.declare "frameIndex" "I" (JR.int 0), 
                        JR.declare "tempBasicArrayList" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "pointBasicArrayList" "" (JR.lit (JR.defaultOf "")), 
                        JR.while (JR.map2 JR.less (JR.local "frameIndex") (JR.local "howMuch")) (JR.run [ 
                            JR.exec (JR.setLocal "tempBasicArrayList" "" (JR.aget (JR.field "objectArray" (JR.local "pointsBasicArrayList")) (JR.local "frameIndex"))), 
                            JR.exec (JR.setLocal "pointBasicArrayList" "" (JR.invoke "createListFromPoints_4" JR.this [ (JR.local "tempBasicArrayList"), (JR.local "points"), (JR.local "howMuch"), (JR.local "type") ])), 
                            JR.exec (JR.invoke "add_1" (JR.local "pointsBasicArrayList") [ (JR.local "pointBasicArrayList") ]), 
                            JR.exec (JR.postUpdate (JR.local "frameIndex") (\jwN68113 -> (JR.setLocal "frameIndex" "I" (JR.lit jwN68113))) JR.increment) ]), 
                        JR.ifElse (JR.map JR.not_ (JR.local "startFrame")) (JR.run [ 
                            JR.exec (JR.invoke "removeAt_1" (JR.local "pointsBasicArrayList") [ (JR.int 0) ]) ]) identity, 
                        JR.return (JR.local "pointsBasicArrayList") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_createListFromPoints_4 : JR.Method
jm_createListFromPoints_4 jheap jthis jargs =
    JR.method [ ( "tempBasicArrayList", "" ), ( "points", "" ), ( "howMuch", "I" ), ( "type", "" ) ] ""
        (JR.run [ 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "pointBasicArrayList" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "sectionBasicArrayList" "" (JR.lit (JR.defaultOf "")), 
                    JR.while (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "points"))) (JR.run [ 
                        JR.exec (JR.setLocal "sectionBasicArrayList" "" (JR.new BasicArrayListD.jnew_0 [])), 
                        JR.while (JR.map2 JR.notEquals (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.int 0)) (JR.int 1000)) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "sectionBasicArrayList") [ (JR.aget (JR.field "objectArray" (JR.local "tempBasicArrayList")) (JR.local "index")) ]), 
                            JR.exec (JR.postUpdate (JR.local "index") (\jwN68655 -> (JR.setLocal "index" "I" (JR.lit jwN68655))) JR.increment), 
                            JR.ifElse (JR.map2 JR.greaterEquals (JR.local "index") (JR.alength (JR.local "points"))) (JR.run [ 
                                JR.break ]) identity ]), 
                        JR.exec (JR.setLocal "sectionBasicArrayList" "" (JR.callStatic RandomTranslation.jm_getInstance_2 [ (JR.local "sectionBasicArrayList"), (JR.local "howMuch") ])), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "type") (JR.thisField "ROTATION")) (JR.run [ 
                            JR.exec (JR.setLocal "sectionBasicArrayList" "" (JR.invoke "getInstanceList_2" (JR.thisField "randomRotationFactory") [ (JR.local "sectionBasicArrayList"), (JR.local "howMuch") ])) ]) identity, 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "sectionBasicArrayList") []), 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN69051 -> (JR.setLocal "index2" "I" (JR.lit jwN69051))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "pointBasicArrayList") [ (JR.aget (JR.field "objectArray" (JR.local "sectionBasicArrayList")) (JR.local "index2")) ]) ]) ], 
                        JR.ifElse (JR.map2 JR.greaterEquals (JR.local "index") (JR.alength (JR.local "points"))) (JR.run [ 
                            JR.break ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.int 0)) (JR.int 1000)) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "pointBasicArrayList") [ (JR.aget (JR.field "objectArray" (JR.local "tempBasicArrayList")) (JR.local "index")) ]), 
                            JR.exec (JR.postUpdate (JR.local "index") (\jwN69197 -> (JR.setLocal "index" "I" (JR.lit jwN69197))) JR.increment) ]) identity ]) ]), 
                    JR.return (JR.local "pointBasicArrayList") ])
        (jregister jheap)
        jthis
        jargs


jm_createPointsBasicArrayList_1 : JR.Method
jm_createPointsBasicArrayList_1 jheap jthis jargs =
    JR.method [ ( "points", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.alength (JR.local "points")) (JR.int 0)) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Not Points Provided") ]) ]) identity, 
                    JR.declare "firstPointBasicArrayList" "" (JR.new BasicArrayListS.jnew_1 [ (JR.alength (JR.local "points")) ]), 
                    JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "points"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69754 -> (JR.setLocal "index" "I" (JR.lit jwN69754))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.local "firstPointBasicArrayList") [ (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.int 0)), (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.int 1)) ]) ]) ]) ], 
                    JR.return (JR.local "firstPointBasicArrayList") ])
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

