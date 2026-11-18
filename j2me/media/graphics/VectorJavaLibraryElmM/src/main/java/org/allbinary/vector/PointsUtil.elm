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
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66502 -> (JR.setLocal "index" "I" (JR.lit jwN66502))) JR.increment) ]) (JR.run [ 
                        JR.declare "size2" "I" (JR.alength (JR.aget (JR.local "points") (JR.local "index"))), 
                        JR.exec (JR.andThen (JR.local "newPoints") (\jaN65935 -> JR.andThen (JR.local "index") (\jiN65935 -> (JR.aset (JR.lit jaN65935) (JR.lit jiN65935) (JR.newArray "I" [ (JR.local "size2"), (JR.int 2) ]))))), 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN66432 -> (JR.setLocal "index2" "I" (JR.lit jwN66432))) JR.increment) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "index2")) (JR.int 0)) (JR.int 1000)) (JR.run [ 
                                JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "newPoints") (JR.local "index")) (JR.local "index2")) (\jaN66173 -> JR.andThen (JR.int 0) (\jiN66173 -> (JR.aset (JR.lit jaN66173) (JR.lit jiN66173) (JR.plus (JR.aget (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "index2")) (JR.int 0)) (JR.local "x")))))), 
                                JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "newPoints") (JR.local "index")) (JR.local "index2")) (\jaN66275 -> JR.andThen (JR.int 1) (\jiN66275 -> (JR.aset (JR.lit jaN66275) (JR.lit jiN66275) (JR.plus (JR.aget (JR.aget (JR.aget (JR.local "points") (JR.local "index")) (JR.local "index2")) (JR.int 1)) (JR.local "y")))))) ]) (JR.run [ 
                                JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "newPoints") (JR.local "index")) (JR.local "index2")) (\jaN66060 -> JR.andThen (JR.int 0) (\jiN66060 -> (JR.aset (JR.lit jaN66060) (JR.lit jiN66060) (JR.int 1000))))), 
                                JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "newPoints") (JR.local "index")) (JR.local "index2")) (\jaN66113 -> JR.andThen (JR.int 1) (\jiN66113 -> (JR.aset (JR.lit jaN66113) (JR.lit jiN66113) (JR.int 1000))))) ]) ]) ] ]) ], 
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
                    JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.alength (JR.local "points"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN67201 -> (JR.setLocal "index2" "I" (JR.lit jwN67201))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.aget (JR.local "points") (JR.local "index2")) (JR.int 0)) (JR.int 1000)) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.local "newPoints") (JR.local "index2")) (\jaN66986 -> JR.andThen (JR.int 0) (\jiN66986 -> (JR.aset (JR.lit jaN66986) (JR.lit jiN66986) (JR.plus (JR.aget (JR.aget (JR.local "points") (JR.local "index2")) (JR.int 0)) (JR.local "x")))))), 
                            JR.exec (JR.andThen (JR.aget (JR.local "newPoints") (JR.local "index2")) (\jaN67064 -> JR.andThen (JR.int 1) (\jiN67064 -> (JR.aset (JR.lit jaN67064) (JR.lit jiN67064) (JR.plus (JR.aget (JR.aget (JR.local "points") (JR.local "index2")) (JR.int 1)) (JR.local "y")))))) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.local "newPoints") (JR.local "index2")) (\jaN66897 -> JR.andThen (JR.int 0) (\jiN66897 -> (JR.aset (JR.lit jaN66897) (JR.lit jiN66897) (JR.int 1000))))), 
                            JR.exec (JR.andThen (JR.aget (JR.local "newPoints") (JR.local "index2")) (\jaN66938 -> JR.andThen (JR.int 1) (\jiN66938 -> (JR.aset (JR.lit jaN66938) (JR.lit jiN66938) (JR.int 1000))))) ]) ]) ], 
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

