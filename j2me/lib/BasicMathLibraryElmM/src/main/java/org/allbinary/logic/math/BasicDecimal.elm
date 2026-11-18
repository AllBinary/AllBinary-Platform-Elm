module Org.Allbinary.Logic.Math.BasicDecimal exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math
-}

import JR
import JLong
import Org.Allbinary.Logic.Math.ScaleFactorFactory as ScaleFactorFactory


jclass : String
jclass =
    "BasicDecimal"


jchain : List String
jchain =
    [ "BasicDecimal" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "units", JR.defaultOf "J" ), ( "scaled", JR.defaultOf "I" ), ( "factor", JR.defaultOf "I" ), ( "factorValue", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "createBigDecimal_1", jm_createBigDecimal_1 )
        , ( "setint_1", jm_setint_1 )
        , ( "setlong_1", jm_setlong_1 )
        , ( "set_1", jm_set_1 )
        , ( "addint_1", jm_addint_1 )
        , ( "addlong_1", jm_addlong_1 )
        , ( "add_1", jm_add_1 )
        , ( "subtractint_1", jm_subtractint_1 )
        , ( "subtractlong_1", jm_subtractlong_1 )
        , ( "subtract_1", jm_subtract_1 )
        , ( "multiplyint_1", jm_multiplyint_1 )
        , ( "multiplylong_1", jm_multiplylong_1 )
        , ( "multiply_1", jm_multiply_1 )
        , ( "divideint_1", jm_divideint_1 )
        , ( "dividelong_1", jm_dividelong_1 )
        , ( "divide_1", jm_divide_1 )
        , ( "getUnscaled_0", jm_getUnscaled_0 )
        , ( "updateScaled_0", jm_updateScaled_0 )
        , ( "getScaled_0", jm_getScaled_0 )
        , ( "toString_0", jm_toString_0 )
        , ( "getScaledFactor_0", jm_getScaledFactor_0 )
        , ( "getScaledFactorValue_0", jm_getScaledFactorValue_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicDecimal"
        [ ( "jm_createBigDecimal_1", jm_createBigDecimal_1 ), ( "jm_setint_1", jm_setint_1 ), ( "jm_setlong_1", jm_setlong_1 ), ( "jm_set_1", jm_set_1 ), ( "jm_addint_1", jm_addint_1 ), ( "jm_addlong_1", jm_addlong_1 ), ( "jm_add_1", jm_add_1 ), ( "jm_subtractint_1", jm_subtractint_1 ), ( "jm_subtractlong_1", jm_subtractlong_1 ), ( "jm_subtract_1", jm_subtract_1 ), ( "jm_multiplyint_1", jm_multiplyint_1 ), ( "jm_multiplylong_1", jm_multiplylong_1 ), ( "jm_multiply_1", jm_multiply_1 ), ( "jm_divideint_1", jm_divideint_1 ), ( "jm_dividelong_1", jm_dividelong_1 ), ( "jm_divide_1", jm_divide_1 ), ( "jm_getUnscaled_0", jm_getUnscaled_0 ), ( "jm_updateScaled_0", jm_updateScaled_0 ), ( "jm_getScaled_0", jm_getScaled_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_getScaledFactor_0", jm_getScaledFactor_0 ), ( "jm_getScaledFactorValue_0", jm_getScaledFactorValue_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_ZERO_BIGDECIMAL", jstatic_ZERO_BIGDECIMAL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_ZERO_BIGDECIMAL : JR.M
jstatic_ZERO_BIGDECIMAL s =
    JR.static "BasicDecimal" jclinit "ZERO_BIGDECIMAL"
        (JR.new jnew_1 [ (JR.int 0) ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "units", "J" ) ] ""
        (JR.run [ JR.exec (JR.setField "factor" "I" JR.this (JR.field "DEFAULT_SCALE_FACTOR" (JR.callStatic ScaleFactorFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "factorValue" "I" JR.this (JR.field "DEFAULT_SCALE_VALUE" (JR.callStatic ScaleFactorFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.local "units")), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_createBigDecimal_1 : JR.Method
jm_createBigDecimal_1 jheap jthis jargs =
    JR.method [ ( "bigDecimal", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_1 [ (JR.invoke "getUnscaled_0" (JR.local "bigDecimal") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setint_1 : JR.Method
jm_setint_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.cast "J" (JR.local "value"))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setlong_1 : JR.Method
jm_setlong_1 jheap jthis jargs =
    JR.method [ ( "value", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.local "value")), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_set_1 : JR.Method
jm_set_1 jheap jthis jargs =
    JR.method [ ( "bigDecimal", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.invoke "getUnscaled_0" (JR.local "bigDecimal") [])), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_addint_1 : JR.Method
jm_addint_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.map2 JR.add (JR.thisField "units") (JR.cast "J" (JR.local "value")))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_addlong_1 : JR.Method
jm_addlong_1 jheap jthis jargs =
    JR.method [ ( "value", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.map2 JR.add (JR.thisField "units") (JR.local "value"))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "bigDecimal", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.map2 JR.add (JR.thisField "units") (JR.invoke "getUnscaled_0" (JR.local "bigDecimal") []))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_subtractint_1 : JR.Method
jm_subtractint_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.map2 JR.sub (JR.thisField "units") (JR.cast "J" (JR.local "value")))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_subtractlong_1 : JR.Method
jm_subtractlong_1 jheap jthis jargs =
    JR.method [ ( "value", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.map2 JR.sub (JR.thisField "units") (JR.local "value"))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_subtract_1 : JR.Method
jm_subtract_1 jheap jthis jargs =
    JR.method [ ( "bigDecimal", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.map2 JR.sub (JR.thisField "units") (JR.invoke "getUnscaled_0" (JR.local "bigDecimal") []))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_multiplyint_1 : JR.Method
jm_multiplyint_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.map2 JR.mul (JR.thisField "units") (JR.cast "J" (JR.local "value")))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_multiplylong_1 : JR.Method
jm_multiplylong_1 jheap jthis jargs =
    JR.method [ ( "value", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.map2 JR.mul (JR.thisField "units") (JR.local "value"))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_multiply_1 : JR.Method
jm_multiply_1 jheap jthis jargs =
    JR.method [ ( "bigDecimal", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.map2 JR.mul (JR.thisField "units") (JR.invoke "getUnscaled_0" (JR.local "bigDecimal") []))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_divideint_1 : JR.Method
jm_divideint_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.map2 JR.div (JR.thisField "units") (JR.cast "J" (JR.local "value")))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_dividelong_1 : JR.Method
jm_dividelong_1 jheap jthis jargs =
    JR.method [ ( "value", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.map2 JR.div (JR.thisField "units") (JR.local "value"))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_divide_1 : JR.Method
jm_divide_1 jheap jthis jargs =
    JR.method [ ( "bigDecimal", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "units" "J" JR.this (JR.map2 JR.div (JR.thisField "units") (JR.invoke "getUnscaled_0" (JR.local "bigDecimal") []))), 
                    JR.exec (JR.invoke "updateScaled_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getUnscaled_0 : JR.Method
jm_getUnscaled_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.thisField "units") ])
        (jregister jheap)
        jthis
        jargs


jm_updateScaled_0 : JR.Method
jm_updateScaled_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "scaled" "I" JR.this (JR.cast "I" ((JR.map2 JR.div (JR.thisField "units") (JR.cast "J" (JR.thisField "factorValue")))))) ])
        (jregister jheap)
        jthis
        jargs


jm_getScaled_0 : JR.Method
jm_getScaled_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "scaled") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic JLong.jm_toString_1 [ (JR.thisField "units") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getScaledFactor_0 : JR.Method
jm_getScaledFactor_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "factor") ])
        (jregister jheap)
        jthis
        jargs


jm_getScaledFactorValue_0 : JR.Method
jm_getScaledFactorValue_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "factorValue") ])
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

