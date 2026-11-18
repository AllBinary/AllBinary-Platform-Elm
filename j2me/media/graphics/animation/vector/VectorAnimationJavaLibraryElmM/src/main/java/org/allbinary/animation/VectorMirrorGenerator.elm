module Org.Allbinary.Animation.VectorMirrorGenerator exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Util.BasicArrayListS as BasicArrayListS
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Animation.VectorAnimationUtil as VectorAnimationUtil


jclass : String
jclass =
    "VectorMirrorGenerator"


jchain : List String
jchain =
    [ "VectorMirrorGenerator" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "vectorAnimationUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstance_2", jm_getInstance_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VectorMirrorGenerator"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstance_2", jm_getInstance_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "VectorMirrorGenerator" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "vectorAnimationUtil" "" JR.this (JR.callStatic VectorAnimationUtil.jm_getInstance_0 [])),
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


jm_getInstance_2 : JR.Method
jm_getInstance_2 jheap jthis jargs =
    JR.method [ ( "points", "" ), ( "width", "I" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                        JR.declare "pointBasicArrayList" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "nextPoints" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "size2" "I" (JR.lit (JR.defaultOf "I")), 
                        JR.declare "size" "I" (JR.alength (JR.local "points")), 
                        JR.declare "pointsBasicArrayList" "" (JR.new BasicArrayListS.jnew_1 [ (JR.local "size") ]), 
                        JR.run [ JR.declare "frame" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "frame") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "frame") (\jwN67773 -> (JR.setLocal "frame" "I" (JR.lit jwN67773))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "nextPoints" "" (JR.aget (JR.local "points") (JR.local "frame"))), 
                            JR.exec (JR.setLocal "size2" "I" (JR.alength (JR.local "nextPoints"))), 
                            JR.exec (JR.setLocal "pointBasicArrayList" "" (JR.new BasicArrayListS.jnew_1 [ (JR.local "size2") ])), 
                            JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67676 -> (JR.setLocal "index" "I" (JR.lit jwN67676))) JR.increment) ]) (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.local "pointBasicArrayList") [ (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.aget (JR.aget (JR.local "nextPoints") (JR.local "index")) (JR.int 0)), (JR.aget (JR.aget (JR.local "nextPoints") (JR.local "index")) (JR.int 1)) ]) ]) ]) ], 
                            JR.exec (JR.invoke "add_1" (JR.local "pointsBasicArrayList") [ (JR.local "pointBasicArrayList") ]) ]) ], 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "points"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67940 -> (JR.setLocal "index" "I" (JR.lit jwN67940))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "pointsBasicArrayList") [ (JR.invoke "getInstance_2" JR.this [ (JR.aget (JR.field "objectArray" (JR.local "pointsBasicArrayList")) (JR.local "index")), (JR.local "width") ]) ]) ]) ], 
                        JR.declare "newPoints" "" (JR.invoke "toAnimationArrayFromListOfPointList_1" (JR.thisField "vectorAnimationUtil") [ (JR.local "pointsBasicArrayList") ]), 
                        JR.return (JR.local "newPoints") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "GET_INSTANCE" (JR.local "commonStrings")), (JR.local "e") ]), 
                        JR.return (JR.field "NULL_INT_ARRAY_ARRAY_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]) ) ] identity ])
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

