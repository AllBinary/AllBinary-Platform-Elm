module Org.Allbinary.Graphics.Pipeline.BasicGraphicsPipeline exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.pipeline
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Math.NoDecimalTrigTable as NoDecimalTrigTable
import Org.Allbinary.Graphics.PointFactory as PointFactory


jclass : String
jclass =
    "BasicGraphicsPipeline"


jchain : List String
jchain =
    [ "BasicGraphicsPipeline" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "pointBasicArrayList", JR.defaultOf "" ), ( "noDecimalTrigTable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setInitMatrix_1", jm_setInitMatrix_1 )
        , ( "createMatrix_0", jm_createMatrix_0 )
        , ( "translate_2", jm_translate_2 )
        , ( "rotateToAngle_1", jm_rotateToAngle_1 )
        , ( "rotate_1", jm_rotate_1 )
        , ( "mirror_1", jm_mirror_1 )
        , ( "getMatrix_0", jm_getMatrix_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicGraphicsPipeline"
        [ ( "jm_setInitMatrix_1", jm_setInitMatrix_1 ), ( "jm_createMatrix_0", jm_createMatrix_0 ), ( "jm_translate_2", jm_translate_2 ), ( "jm_rotateToAngle_1", jm_rotateToAngle_1 ), ( "jm_rotate_1", jm_rotate_1 ), ( "jm_mirror_1", jm_mirror_1 ), ( "jm_getMatrix_0", jm_getMatrix_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "points", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "noDecimalTrigTable" "" JR.this (JR.callStatic NoDecimalTrigTable.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "pointBasicArrayList" "" JR.this (JR.local "points")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_setInitMatrix_1 : JR.Method
jm_setInitMatrix_1 jheap jthis jargs =
    JR.method [ ( "points", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "pointBasicArrayList" "" JR.this (JR.local "points")) ])
        (jregister jheap)
        jthis
        jargs


jm_createMatrix_0 : JR.Method
jm_createMatrix_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_translate_2 : JR.Method
jm_translate_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.declare "newBasicArrayList" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "pointBasicArrayList") []), 
                    JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                    JR.declare "secondPoint" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67039 -> (JR.setLocal "index" "I" (JR.lit jwN67039))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "secondPoint" "" (JR.aget (JR.field "objectArray" (JR.thisField "pointBasicArrayList")) (JR.local "index"))), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getX_0" (JR.local "secondPoint") []) (JR.int 1000)) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "newBasicArrayList") [ (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.map2 JR.add (JR.invoke "getX_0" (JR.local "secondPoint") []) (JR.local "x")), (JR.map2 JR.add (JR.invoke "getY_0" (JR.local "secondPoint") []) (JR.local "y")) ]) ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "newBasicArrayList") [ (JR.local "secondPoint") ]) ]) ]) ], 
                    JR.exec (JR.setField "pointBasicArrayList" "" JR.this (JR.local "newBasicArrayList")) ])
        (jregister jheap)
        jthis
        jargs


jm_rotateToAngle_1 : JR.Method
jm_rotateToAngle_1 jheap jthis jargs =
    JR.method [ ( "angle", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "rotate_1" JR.this [ (JR.cast "I" (JR.invoke "getValue_0" (JR.local "angle") [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_rotate_1 : JR.Method
jm_rotate_1 jheap jthis jargs =
    JR.method [ ( "angle", "I" ) ] ""
        (JR.run [ 
                    JR.declare "newBasicArrayList" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "secondPoint" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "y" "J" (JR.lit (JR.defaultOf "J")), 
                    JR.declare "secondX" "J" (JR.lit (JR.defaultOf "J")), 
                    JR.declare "secondY" "J" (JR.lit (JR.defaultOf "J")), 
                    JR.declare "point" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "pointBasicArrayList") []), 
                    JR.declare "sin" "J" (JR.lit (JR.defaultOf "J")), 
                    JR.declare "cos" "J" (JR.lit (JR.defaultOf "J")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68201 -> (JR.setLocal "index" "I" (JR.lit jwN68201))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "secondPoint" "" (JR.aget (JR.field "objectArray" (JR.thisField "pointBasicArrayList")) (JR.local "index"))), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getX_0" (JR.local "secondPoint") []) (JR.int 1000)) (JR.run [ 
                            JR.exec (JR.setLocal "sin" "J" (JR.invoke "sin_1" (JR.thisField "noDecimalTrigTable") [ (JR.local "angle") ])), 
                            JR.exec (JR.setLocal "cos" "J" (JR.invoke "cos_1" (JR.thisField "noDecimalTrigTable") [ (JR.local "angle") ])), 
                            JR.exec (JR.setLocal "y" "J" (JR.map2 JR.mul (JR.cast "J" (JR.invoke "getY_0" (JR.local "secondPoint") [])) (JR.local "sin"))), 
                            JR.exec (JR.setLocal "secondX" "J" (JR.map2 JR.sub ((JR.map2 JR.mul (JR.cast "J" (JR.invoke "getX_0" (JR.local "secondPoint") [])) (JR.local "cos"))) (JR.local "y"))), 
                            JR.exec (JR.setLocal "secondY" "J" (JR.map2 JR.add ((JR.map2 JR.mul (JR.cast "J" (JR.invoke "getX_0" (JR.local "secondPoint") [])) (JR.local "sin"))) ((JR.map2 JR.mul (JR.cast "J" (JR.invoke "getY_0" (JR.local "secondPoint") [])) (JR.local "cos"))))), 
                            JR.exec (JR.setLocal "point" "" (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.map2 JR.div (JR.cast "I" (JR.local "secondX")) (JR.int 10000)), (JR.map2 JR.div (JR.cast "I" (JR.local "secondY")) (JR.int 10000)) ])), 
                            JR.exec (JR.invoke "add_1" (JR.local "newBasicArrayList") [ (JR.local "point") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "newBasicArrayList") [ (JR.local "secondPoint") ]) ]) ]) ], 
                    JR.exec (JR.setField "pointBasicArrayList" "" JR.this (JR.local "newBasicArrayList")) ])
        (jregister jheap)
        jthis
        jargs


jm_mirror_1 : JR.Method
jm_mirror_1 jheap jthis jargs =
    JR.method [ ( "width", "I" ) ] ""
        (JR.run [ 
                    JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                    JR.declare "halfWidth" "I" ((JR.map2 JR.shr (JR.local "width") (JR.int 1))), 
                    JR.declare "newBasicArrayList" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "secondPoint" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "newX" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "point" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "pointBasicArrayList") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69055 -> (JR.setLocal "index" "I" (JR.lit jwN69055))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "secondPoint" "" (JR.aget (JR.field "objectArray" (JR.thisField "pointBasicArrayList")) (JR.local "index"))), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getX_0" (JR.local "secondPoint") []) (JR.int 1000)) (JR.run [ 
                            JR.exec (JR.setLocal "newX" "I" (JR.int 0)), 
                            JR.ifElse (JR.map2 JR.greater (JR.invoke "getX_0" (JR.local "secondPoint") []) (JR.local "halfWidth")) (JR.run [ 
                                JR.exec (JR.setLocal "newX" "I" (JR.map2 JR.sub (JR.local "halfWidth") ((JR.map2 JR.sub (JR.invoke "getX_0" (JR.local "secondPoint") []) (JR.local "halfWidth"))))) ]) (JR.run [ 
                                JR.exec (JR.setLocal "newX" "I" (JR.map2 JR.add (JR.local "halfWidth") ((JR.map2 JR.sub (JR.local "halfWidth") (JR.invoke "getX_0" (JR.local "secondPoint") []))))) ]), 
                            JR.exec (JR.setLocal "point" "" (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.local "newX"), (JR.invoke "getY_0" (JR.local "secondPoint") []) ])), 
                            JR.exec (JR.invoke "add_1" (JR.local "newBasicArrayList") [ (JR.local "point") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "newBasicArrayList") [ (JR.local "secondPoint") ]) ]) ]) ], 
                    JR.exec (JR.setField "pointBasicArrayList" "" JR.this (JR.local "newBasicArrayList")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMatrix_0 : JR.Method
jm_getMatrix_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "pointBasicArrayList") ])
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

