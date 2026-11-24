module Org.Allbinary.Vector.PointsUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.vector
-}

import JR



jclass : String
jclass =
    "PointsUtil"


jchain : List String
jchain =
    [ "PointsUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "adjustXY_3", jm_adjustXY_3 )
        , ( "adjust_2", jm_adjust_2 )
        , ( "adjust_3", jm_adjust_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PointsUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_adjustXY_3", jm_adjustXY_3 ), ( "jm_adjust_2", jm_adjust_2 ), ( "jm_adjust_3", jm_adjust_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PointsUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
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


jm_adjustXY_3 : JR.Method
jm_adjustXY_3 jheap jthis jargs =
    JR.method [ ( "points", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.local "points")), 
                    JR.declare "newPoints" "" (JR.newArray "I" [ (JR.local "size"), (JR.int 0), (JR.int 0) ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66503 -> (JR.setLocal "index" "I" (JR.lit jwN66503))) JR.increment) ]) (JR.run [ 
                        JR.declare "size2" "I" (JR.alength (JR.aget (JR.local "points") (JR.local "index"))), 
                        JR.exec (JR.andThen (JR.local "newPoints") (\jaN65936 -> JR.andThen (JR.local "index") (\jiN65936 -> (JR.aset (JR.lit jaN65936) (JR.lit jiN65936) (JR.newArray "I" [ (JR.local "size2"), (JR.int 2) ]))))), 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN66433 -> (JR.setLocal "index2" "I" (JR.lit jwN66433))) JR.increment) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "index2")) (JR.int 0)) (JR.int 1000)) (JR.run [ 
                                JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "newPoints") (JR.local "index")) (JR.local "index2")) (\jaN66174 -> JR.andThen (JR.int 0) (\jiN66174 -> (JR.aset (JR.lit jaN66174) (JR.lit jiN66174) (JR.plus (JR.aget (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "index2")) (JR.int 0)) (JR.local "x")))))), 
                                JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "newPoints") (JR.local "index")) (JR.local "index2")) (\jaN66276 -> JR.andThen (JR.int 1) (\jiN66276 -> (JR.aset (JR.lit jaN66276) (JR.lit jiN66276) (JR.plus (JR.aget (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "index2")) (JR.int 1)) (JR.local "y")))))) ]) (JR.run [ 
                                JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "newPoints") (JR.local "index")) (JR.local "index2")) (\jaN66061 -> JR.andThen (JR.int 0) (\jiN66061 -> (JR.aset (JR.lit jaN66061) (JR.lit jiN66061) (JR.int 1000))))), 
                                JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "newPoints") (JR.local "index")) (JR.local "index2")) (\jaN66114 -> JR.andThen (JR.int 1) (\jiN66114 -> (JR.aset (JR.lit jaN66114) (JR.lit jiN66114) (JR.int 1000))))) ]) ]) ] ]) ], 
                    JR.return (JR.local "newPoints") ])
        (jregister jheap)
        jthis
        jargs


jm_adjust_2 : JR.Method
jm_adjust_2 jheap jthis jargs =
    JR.method [ ( "points", "" ), ( "both", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "adjust_3" JR.this [ (JR.local "points"), (JR.local "both"), (JR.local "both") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_adjust_3 : JR.Method
jm_adjust_3 jheap jthis jargs =
    JR.method [ ( "points", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.declare "newPoints" "" (JR.newArray "I" [ (JR.alength (JR.local "points")), (JR.int 2) ]), 
                    JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.alength (JR.local "points"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN67202 -> (JR.setLocal "index2" "I" (JR.lit jwN67202))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.aget (JR.local "points") (JR.local "index2")) (JR.int 0)) (JR.int 1000)) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.local "newPoints") (JR.local "index2")) (\jaN66987 -> JR.andThen (JR.int 0) (\jiN66987 -> (JR.aset (JR.lit jaN66987) (JR.lit jiN66987) (JR.plus (JR.aget (JR.aget (JR.local "points") (JR.local "index2")) (JR.int 0)) (JR.local "x")))))), 
                            JR.exec (JR.andThen (JR.aget (JR.local "newPoints") (JR.local "index2")) (\jaN67065 -> JR.andThen (JR.int 1) (\jiN67065 -> (JR.aset (JR.lit jaN67065) (JR.lit jiN67065) (JR.plus (JR.aget (JR.aget (JR.local "points") (JR.local "index2")) (JR.int 1)) (JR.local "y")))))) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.local "newPoints") (JR.local "index2")) (\jaN66898 -> JR.andThen (JR.int 0) (\jiN66898 -> (JR.aset (JR.lit jaN66898) (JR.lit jiN66898) (JR.int 1000))))), 
                            JR.exec (JR.andThen (JR.aget (JR.local "newPoints") (JR.local "index2")) (\jaN66939 -> JR.andThen (JR.int 1) (\jiN66939 -> (JR.aset (JR.lit jaN66939) (JR.lit jiN66939) (JR.int 1000))))) ]) ]) ], 
                    JR.return (JR.local "newPoints") ])
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

