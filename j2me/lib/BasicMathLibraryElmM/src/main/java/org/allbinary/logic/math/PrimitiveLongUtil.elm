module Org.Allbinary.Logic.Math.PrimitiveLongUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Math.MathUtil as MathUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Math.PrimitiveLongSingleton as PrimitiveLongSingleton


jclass : String
jclass =
    "PrimitiveLongUtil"


jchain : List String
jchain =
    [ "PrimitiveLongUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "powerOfTen", JR.defaultOf "I" ), ( "maxValue", JR.defaultOf "I" ), ( "maxDigits", JR.defaultOf "I" ), ( "charArray", JR.defaultOf "" ), ( "currentTotalDigits", JR.defaultOf "I" ), ( "primitiveLongSingleton", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createPowerOfTen_1", jm_createPowerOfTen_1 )
        , ( "getCharArray_1", jm_getCharArray_1 )
        , ( "setCurrentTotalDigits_1", jm_setCurrentTotalDigits_1 )
        , ( "getCurrentTotalDigits_0", jm_getCurrentTotalDigits_0 )
        , ( "getMaxDigits_0", jm_getMaxDigits_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PrimitiveLongUtil"
        [ ( "jm_createPowerOfTen_1", jm_createPowerOfTen_1 ), ( "jm_getCharArray_1", jm_getCharArray_1 ), ( "jm_setCurrentTotalDigits_1", jm_setCurrentTotalDigits_1 ), ( "jm_getCurrentTotalDigits_0", jm_getCurrentTotalDigits_0 ), ( "jm_getMaxDigits_0", jm_getMaxDigits_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "powerOfTen", "I" ), ( "unused", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "primitiveLongSingleton" "" JR.this (JR.callStatic PrimitiveLongSingleton.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "maxDigits" "I" JR.this (JR.invoke "getTotalDigits_1" (JR.callStatic MathUtil.jm_getInstance_0 []) [ (JR.local "powerOfTen") ])), 
                    JR.exec (JR.setField "powerOfTen" "I" JR.this (JR.local "powerOfTen")), 
                    JR.exec (JR.setField "maxValue" "I" JR.this (JR.map2 JR.sub ((JR.map2 JR.mul (JR.local "powerOfTen") (JR.int 10))) (JR.int 1))), 
                    JR.exec (JR.setField "charArray" "" JR.this (JR.newArray "C" [ (JR.thisField "maxDigits") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_createPowerOfTen_1 : JR.Method
jm_createPowerOfTen_1 jheap jthis jargs =
    JR.method [ ( "powerOfTen", "I" ) ] ""
        (JR.run [ 
                    JR.declare "primitiveLongUtil" "" (JR.new jnew_2 [ (JR.local "powerOfTen"), (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.map2 JR.rem (JR.local "powerOfTen") (JR.int 10)) (JR.int 0)) (JR.run [ 
                        JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.local "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), (JR.local "primitiveLongUtil"), (JR.field "CONSTRUCTOR" (JR.local "commonStrings")), (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Max must be power of 10") ]) ]) ]) identity, 
                    JR.return (JR.local "primitiveLongUtil") ])
        (jregister jheap)
        jthis
        jargs


jm_getCharArray_1 : JR.Method
jm_getCharArray_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.local "value") (JR.int 10)) (JR.run [ 
                        JR.exec (JR.invoke "setCurrentTotalDigits_1" JR.this [ (JR.int 1) ]), 
                        JR.return (JR.aget (JR.field "NUMBER_CHAR_ARRAYS" (JR.thisField "primitiveLongSingleton")) (JR.local "value")) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.local "value") (JR.thisField "maxValue")) (JR.run [ 
                        JR.exec (JR.invoke "setCurrentTotalDigits_1" JR.this [ (JR.int 3) ]), 
                        JR.return (JR.field "UNK" (JR.thisField "primitiveLongSingleton")) ]) identity, 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "div" "I" (JR.thisField "powerOfTen"), 
                    JR.declare "lastValue" "I" (JR.int 0), 
                    JR.while (JR.map2 JR.greaterEquals (JR.local "div") (JR.int 1)) (JR.run [ 
                        JR.declare "digit" "I" (JR.map2 JR.div ((JR.map2 JR.sub (JR.local "value") (JR.local "lastValue"))) (JR.local "div")), 
                        JR.ifElse (JR.and (JR.map2 JR.greaterEquals (JR.local "digit") (JR.int 0)) (JR.map2 JR.less (JR.local "digit") (JR.int 10))) (JR.run [ 
                            JR.ifElse (JR.and (JR.map2 JR.equals (JR.local "digit") (JR.int 0)) (JR.map2 JR.equals (JR.local "index") (JR.int 0))) identity (JR.run [ 
                                JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67645 -> JR.andThen (JR.postUpdate (JR.local "index") (\jwN67652 -> (JR.setLocal "index" "I" (JR.lit jwN67652))) JR.increment) (\jiN67645 -> (JR.aset (JR.lit jaN67645) (JR.lit jiN67645) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.local "digit")))))) ]), 
                            JR.exec (JR.setLocal "lastValue" "I" (JR.map2 JR.add (JR.local "lastValue") (JR.map2 JR.mul (JR.local "digit") (JR.local "div")))) ]) identity, 
                        JR.exec (JR.setLocal "div" "I" (JR.map2 JR.div (JR.local "div") (JR.int 10))) ]), 
                    JR.exec (JR.invoke "setCurrentTotalDigits_1" JR.this [ (JR.local "index") ]), 
                    JR.return (JR.thisField "charArray") ])
        (jregister jheap)
        jthis
        jargs


jm_setCurrentTotalDigits_1 : JR.Method
jm_setCurrentTotalDigits_1 jheap jthis jargs =
    JR.method [ ( "currentTotalDigits", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "currentTotalDigits" "I" JR.this (JR.local "currentTotalDigits")) ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentTotalDigits_0 : JR.Method
jm_getCurrentTotalDigits_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "currentTotalDigits") ])
        (jregister jheap)
        jthis
        jargs


jm_getMaxDigits_0 : JR.Method
jm_getMaxDigits_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "maxDigits") ])
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

