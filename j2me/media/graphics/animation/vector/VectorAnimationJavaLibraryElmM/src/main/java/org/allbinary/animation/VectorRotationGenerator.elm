module Org.Allbinary.Animation.VectorRotationGenerator exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Util.BasicArrayListS as BasicArrayListS
import Org.Allbinary.Graphics.Pipeline.BasicGraphicsPipeline as BasicGraphicsPipeline
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Animation.VectorAnimationUtil as VectorAnimationUtil


jclass : String
jclass =
    "VectorRotationGenerator"


jchain : List String
jchain =
    [ "VectorRotationGenerator" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "vectorAnimationUtil", JR.defaultOf "" ), ( "angleFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "getInstanceFrames_4", jm_getInstanceFrames_4 )
        , ( "getListAtAngle_4", jm_getListAtAngle_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VectorRotationGenerator"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getInstanceFrames_4", jm_getInstanceFrames_4 ), ( "jm_getListAtAngle_4", jm_getListAtAngle_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "VectorRotationGenerator" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "vectorAnimationUtil" "" JR.this (JR.callStatic VectorAnimationUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "angleFactory" "" JR.this (JR.callStatic AngleFactory.jm_getInstance_0 [])),
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


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "vectorRotationInfo", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getInstanceFrames_4" JR.this [ (JR.invoke "getWidth_0" (JR.local "vectorRotationInfo") []), (JR.invoke "getHeight_0" (JR.local "vectorRotationInfo") []), (JR.invoke "getPoints_0" (JR.local "vectorRotationInfo") []), (JR.invoke "getTotalFrames_0" (JR.local "vectorRotationInfo") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceFrames_4 : JR.Method
jm_getInstanceFrames_4 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "points", "" ), ( "frames", "I" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "totalAngle" "S" (JR.field "TOTAL_ANGLE" (JR.thisField "angleFactory")), 
                        JR.declare "angleIncrement" "I" (JR.map2 JR.div (JR.cast "I" (JR.local "totalAngle")) (JR.local "frames")), 
                        JR.declare "pointsBasicArrayList" "" (JR.new BasicArrayListS.jnew_1 [ (JR.map2 JR.div (JR.cast "I" (JR.local "totalAngle")) (JR.local "angleIncrement")) ]), 
                        JR.declare "pointBasicArrayList" "" (JR.new BasicArrayListS.jnew_1 [ (JR.alength (JR.local "points")) ]), 
                        JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                        JR.declare "size" "I" (JR.alength (JR.local "points")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68172 -> (JR.setLocal "index" "I" (JR.lit jwN68172))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "pointBasicArrayList") [ (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.int 0)), (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.int 1)) ]) ]) ]) ], 
                        JR.declare "index" "I" (JR.int 0), 
                        JR.while (JR.map2 JR.less (JR.local "index") (JR.cast "I" (JR.local "totalAngle"))) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "pointsBasicArrayList") [ (JR.invoke "getListAtAngle_4" JR.this [ (JR.local "width"), (JR.local "height"), (JR.local "pointBasicArrayList"), (JR.invoke "getAt_1" (JR.thisField "angleFactory") [ (JR.local "index") ]) ]) ]), 
                            JR.exec (JR.setLocal "index" "I" (JR.map2 JR.add (JR.local "index") (JR.local "angleIncrement"))) ]), 
                        JR.declare "newPoints" "" (JR.invoke "toAnimationArrayFromListOfPointListWithPointsPerFrame_2" (JR.thisField "vectorAnimationUtil") [ (JR.local "pointsBasicArrayList"), (JR.invoke "size_0" (JR.local "pointBasicArrayList") []) ]), 
                        JR.return (JR.local "newPoints") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "GET_INSTANCE" (JR.local "commonStrings")), (JR.local "e") ]), 
                        JR.return (JR.field "NULL_INT_ARRAY_ARRAY_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getListAtAngle_4 : JR.Method
jm_getListAtAngle_4 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "pointBasicArrayList", "" ), ( "angle", "" ) ] ""
        (JR.run [ 
                    JR.declare "graphicsPipe" "" (JR.new BasicGraphicsPipeline.jnew_1 [ (JR.local "pointBasicArrayList") ]), 
                    JR.exec (JR.invoke "createMatrix_0" (JR.local "graphicsPipe") []), 
                    JR.exec (JR.invoke "translate_2" (JR.local "graphicsPipe") [ (JR.map JR.neg ((JR.map2 JR.shr (JR.local "width") (JR.int 1)))), (JR.map JR.neg ((JR.map2 JR.shr (JR.local "height") (JR.int 1)))) ]), 
                    JR.exec (JR.invoke "rotateToAngle_1" (JR.local "graphicsPipe") [ (JR.local "angle") ]), 
                    JR.exec (JR.invoke "translate_2" (JR.local "graphicsPipe") [ ((JR.map2 JR.shr (JR.local "width") (JR.int 1))), ((JR.map2 JR.shr (JR.local "height") (JR.int 1))) ]), 
                    JR.return (JR.invoke "getMatrix_0" (JR.local "graphicsPipe") []) ])
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

