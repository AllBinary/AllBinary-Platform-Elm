module Org.Allbinary.Math.AngleFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.math
-}

import JR
import Org.Allbinary.Math.Angle as Angle
import Org.Allbinary.String.CommonPhoneStrings as CommonPhoneStrings
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Math.FrameUtil as FrameUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Math.NamedAngle as NamedAngle
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "AngleFactory"


jchain : List String
jchain =
    [ "AngleFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "TOTAL_ANGLE", JR.defaultOf "S" ), ( "QUARTER_TOTAL_ANGLE", JR.defaultOf "S" ), ( "angleArray", JR.defaultOf "" ), ( "NEGATIVE_ONE", JR.defaultOf "S" ), ( "NOT_ANGLE", JR.defaultOf "" ), ( "DOWN", JR.defaultOf "" ), ( "UP", JR.defaultOf "" ), ( "LEFT", JR.defaultOf "" ), ( "RIGHT", JR.defaultOf "" ), ( "frameUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getAt_1", jm_getAt_1 )
        , ( "getClosestDirection_1", jm_getClosestDirection_1 )
        , ( "getGeneralDirection_0", jm_getGeneralDirection_0 )
        , ( "main_1", jm_main_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AngleFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getAt_1", jm_getAt_1 ), ( "jm_getClosestDirection_1", jm_getClosestDirection_1 ), ( "jm_getGeneralDirection_0", jm_getGeneralDirection_0 ), ( "jm_main_1", jm_main_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AngleFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "TOTAL_ANGLE" "S" JR.this (JR.int 360)),
                JR.exec (JR.setField "QUARTER_TOTAL_ANGLE" "S" JR.this (JR.int 90)),
                JR.exec (JR.setField "angleArray" "" JR.this (JR.newArray "" [ (JR.cast "I" (JR.thisField "TOTAL_ANGLE")) ])),
                JR.exec (JR.setField "NEGATIVE_ONE" "S" JR.this (JR.cast "S" (JR.map JR.neg (JR.int 1)))),
                JR.exec (JR.setField "NOT_ANGLE" "" JR.this (JR.new NamedAngle.jnew_2 [ (JR.thisField "NEGATIVE_ONE"), (JR.field "EMPTY" (JR.callStatic CommonStrings.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "frameUtil" "" JR.this (JR.callStatic FrameUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "commonPhoneStrings" "" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 []), 
                    JR.declare "total" "S" (JR.cast "S" (JR.alength (JR.thisField "angleArray"))), 
                    JR.exec (JR.setField "UP" "" JR.this (JR.new NamedAngle.jnew_2 [ (JR.cast "S" (JR.int 0)), (JR.field "UP" (JR.local "commonPhoneStrings")) ])), 
                    JR.exec (JR.andThen (JR.thisField "angleArray") (\jaN67630 -> JR.andThen (JR.int 0) (\jiN67630 -> (JR.aset (JR.lit jaN67630) (JR.lit jiN67630) (JR.thisField "UP"))))), 
                    JR.run [ JR.declare "index" "I" (JR.int 1), JR.for (JR.map2 JR.less (JR.local "index") (JR.int 90)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67784 -> (JR.setLocal "index" "I" (JR.lit jwN67784))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "angleArray") (\jaN67677 -> JR.andThen (JR.local "index") (\jiN67677 -> (JR.aset (JR.lit jaN67677) (JR.lit jiN67677) (JR.new Angle.jnew_1 [ (JR.cast "S" (JR.local "index")) ]))))) ]) ], 
                    JR.exec (JR.setField "RIGHT" "" JR.this (JR.new NamedAngle.jnew_2 [ (JR.cast "S" (JR.int 90)), (JR.field "RIGHT" (JR.local "commonPhoneStrings")) ])), 
                    JR.exec (JR.andThen (JR.thisField "angleArray") (\jaN67865 -> JR.andThen (JR.int 90) (\jiN67865 -> (JR.aset (JR.lit jaN67865) (JR.lit jiN67865) (JR.thisField "RIGHT"))))), 
                    JR.run [ JR.declare "index" "I" (JR.int 91), JR.for (JR.map2 JR.less (JR.local "index") (JR.int 180)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68019 -> (JR.setLocal "index" "I" (JR.lit jwN68019))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "angleArray") (\jaN67912 -> JR.andThen (JR.local "index") (\jiN67912 -> (JR.aset (JR.lit jaN67912) (JR.lit jiN67912) (JR.new Angle.jnew_1 [ (JR.cast "S" (JR.local "index")) ]))))) ]) ], 
                    JR.exec (JR.setField "DOWN" "" JR.this (JR.new NamedAngle.jnew_2 [ (JR.cast "S" (JR.int 180)), (JR.field "DOWN" (JR.local "commonPhoneStrings")) ])), 
                    JR.exec (JR.andThen (JR.thisField "angleArray") (\jaN68100 -> JR.andThen (JR.int 180) (\jiN68100 -> (JR.aset (JR.lit jaN68100) (JR.lit jiN68100) (JR.thisField "DOWN"))))), 
                    JR.run [ JR.declare "index" "I" (JR.int 181), JR.for (JR.map2 JR.less (JR.local "index") (JR.int 270)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68254 -> (JR.setLocal "index" "I" (JR.lit jwN68254))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "angleArray") (\jaN68147 -> JR.andThen (JR.local "index") (\jiN68147 -> (JR.aset (JR.lit jaN68147) (JR.lit jiN68147) (JR.new Angle.jnew_1 [ (JR.cast "S" (JR.local "index")) ]))))) ]) ], 
                    JR.exec (JR.setField "LEFT" "" JR.this (JR.new NamedAngle.jnew_2 [ (JR.cast "S" (JR.int 270)), (JR.field "LEFT" (JR.local "commonPhoneStrings")) ])), 
                    JR.exec (JR.andThen (JR.thisField "angleArray") (\jaN68335 -> JR.andThen (JR.int 270) (\jiN68335 -> (JR.aset (JR.lit jaN68335) (JR.lit jiN68335) (JR.thisField "LEFT"))))), 
                    JR.run [ JR.declare "index" "I" (JR.int 271), JR.for (JR.map2 JR.less (JR.local "index") (JR.cast "I" (JR.local "total"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68493 -> (JR.setLocal "index" "I" (JR.lit jwN68493))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "angleArray") (\jaN68382 -> JR.andThen (JR.local "index") (\jiN68382 -> (JR.aset (JR.lit jaN68382) (JR.lit jiN68382) (JR.new Angle.jnew_1 [ (JR.cast "S" (JR.local "index")) ]))))) ]) ] ]) ])
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


jm_getAt_1 : JR.Method
jm_getAt_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.declare "adjustedIndex" "I" (JR.invoke "adjustAngleToFrameAngle_1" (JR.thisField "frameUtil") [ (JR.local "index") ]), 
                    JR.return (JR.aget (JR.thisField "angleArray") (JR.local "adjustedIndex")) ])
        (jregister jheap)
        jthis
        jargs


jm_getClosestDirection_1 : JR.Method
jm_getClosestDirection_1 jheap jthis jargs =
    JR.method [ ( "angle", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.or ((JR.and (JR.map2 JR.greaterEquals (JR.local "angle") (JR.int 315)) (JR.map2 JR.less (JR.local "angle") (JR.int 360)))) ((JR.and (JR.map2 JR.greaterEquals (JR.local "angle") (JR.int 0)) (JR.map2 JR.less (JR.local "angle") (JR.int 45))))) (JR.run [ 
                        JR.return (JR.thisField "UP") ]) (JR.run [ 
                    JR.ifElse (JR.and (JR.map2 JR.greaterEquals (JR.local "angle") (JR.int 45)) (JR.map2 JR.less (JR.local "angle") (JR.int 135))) (JR.run [ 
                        JR.return (JR.thisField "RIGHT") ]) (JR.run [ 
                    JR.ifElse (JR.and (JR.map2 JR.greaterEquals (JR.local "angle") (JR.int 135)) (JR.map2 JR.less (JR.local "angle") (JR.int 225))) (JR.run [ 
                        JR.return (JR.thisField "DOWN") ]) (JR.run [ 
                    JR.ifElse (JR.and (JR.map2 JR.greaterEquals (JR.local "angle") (JR.int 225)) (JR.map2 JR.less (JR.local "angle") (JR.int 315))) (JR.run [ 
                        JR.return (JR.thisField "LEFT") ]) identity ]) ]) ]), 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getGeneralDirection_0 : JR.Method
jm_getGeneralDirection_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "NOT_ANGLE") ])
        (jregister jheap)
        jthis
        jargs


jm_main_1 : JR.Method
jm_main_1 jheap jthis jargs =
    JR.method [ ( "args", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "angleFactory" "" (JR.callStatic jm_getInstance_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.int 360)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69493 -> (JR.setLocal "index" "I" (JR.lit jwN69493))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.invoke "appendshort_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.local "stringMaker") [ (JR.local "index") ]) [ (JR.field "FORWARD_SLASH" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.invoke "getValue_0" (JR.invoke "getClosestDirection_1" (JR.local "angleFactory") [ (JR.local "index") ]) []) ]) [ (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) ]) ], 
                    JR.exec (JR.invoke "putF_3" (JR.callStatic LogUtil.jm_getInstance_0 []) [ (JR.invoke "toString_0" (JR.local "stringMaker") []), (JR.str "main"), (JR.str "main") ]) ])
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

