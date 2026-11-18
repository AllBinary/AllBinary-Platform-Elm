module Org.Allbinary.Game.Configuration.GameConfiguration exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import Org.Allbinary.Game.Configuration.GameConfigurationSingleton as GameConfigurationSingleton
import Org.Allbinary.Game.Configuration.Event.GameFeatureEvent as GameFeatureEvent
import Org.Allbinary.Game.Configuration.Event.GameFeatureEventHandler as GameFeatureEventHandler
import JInteger
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameConfiguration"


jchain : List String
jchain =
    [ "GameConfiguration" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ), ( "defaultValue", JR.defaultOf "" ), ( "value", JR.defaultOf "" ), ( "minValue", JR.defaultOf "" ), ( "maxValue", JR.defaultOf "" ), ( "modifiable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setValue_1", jm_setValue_1 )
        , ( "getValue_0", jm_getValue_0 )
        , ( "setMaxValue_1", jm_setMaxValue_1 )
        , ( "getMaxValue_0", jm_getMaxValue_0 )
        , ( "setMinValue_1", jm_setMinValue_1 )
        , ( "getMinValue_0", jm_getMinValue_0 )
        , ( "setName_1", jm_setName_1 )
        , ( "getName_0", jm_getName_0 )
        , ( "setDefaultValue_1", jm_setDefaultValue_1 )
        , ( "getDefaultValue_0", jm_getDefaultValue_0 )
        , ( "setDefault_0", jm_setDefault_0 )
        , ( "toString_0", jm_toString_0 )
        , ( "setModifiable_1", jm_setModifiable_1 )
        , ( "isModifiable_0", jm_isModifiable_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameConfiguration"
        [ ( "jm_setValue_1", jm_setValue_1 ), ( "jm_getValue_0", jm_getValue_0 ), ( "jm_setMaxValue_1", jm_setMaxValue_1 ), ( "jm_getMaxValue_0", jm_getMaxValue_0 ), ( "jm_setMinValue_1", jm_setMinValue_1 ), ( "jm_getMinValue_0", jm_getMinValue_0 ), ( "jm_setName_1", jm_setName_1 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_setDefaultValue_1", jm_setDefaultValue_1 ), ( "jm_getDefaultValue_0", jm_getDefaultValue_0 ), ( "jm_setDefault_0", jm_setDefault_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_setModifiable_1", jm_setModifiable_1 ), ( "jm_isModifiable_0", jm_isModifiable_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_MIN_VALUE", jstatic_MIN_VALUE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_MIN_VALUE : JR.M
jstatic_MIN_VALUE s =
    JR.static "GameConfiguration" jclinit "MIN_VALUE"
        (JR.cast "I" JInteger.jstatic_MIN_VALUE)
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "defaultValue", "" ), ( "minValue", "" ), ( "maxValue", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "name" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "defaultValue" "" JR.this (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 0) ])),
                JR.exec (JR.setField "value" "" JR.this jstatic_MIN_VALUE),
                JR.exec (JR.setField "minValue" "" JR.this (JR.thisField "defaultValue")),
                JR.exec (JR.setField "maxValue" "" JR.this (JR.thisField "defaultValue")),
                JR.exec (JR.setField "modifiable" "" JR.this (JR.field "TRUE" (JR.callStatic BooleanFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setName_1" JR.this [ (JR.local "name") ]), 
                    JR.exec (JR.invoke "setDefaultValue_1" JR.this [ (JR.local "defaultValue") ]), 
                    JR.exec (JR.setField "value" "" JR.this (JR.invoke "getDefaultValue_0" JR.this [])), 
                    JR.exec (JR.invoke "setMinValue_1" JR.this [ (JR.local "minValue") ]), 
                    JR.exec (JR.invoke "setMaxValue_1" JR.this [ (JR.local "maxValue") ]), 
                    JR.exec (JR.invoke "put_2" (JR.invoke "getHashtable_0" (JR.callStatic GameConfigurationSingleton.jm_getInstance_0 []) []) [ (JR.invoke "getName_0" JR.this []), JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_setValue_1 : JR.Method
jm_setValue_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "value") (JR.local "value")) (JR.run [ 
                        JR.declare "oldValue" "" (JR.thisField "value"), 
                        JR.exec (JR.setField "value" "" JR.this (JR.local "value")), 
                        JR.exec (JR.invoke "fireEvent_1" (JR.callStatic GameFeatureEventHandler.jm_getInstance_0 []) [ (JR.new GameFeatureEvent.jnew_2 [ JR.this, (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "name") ]) [ (JR.str " value: from: ") ]) [ (JR.cast "I" (JR.invoke "intValue_0" (JR.local "oldValue") [])) ]) [ (JR.str " to ") ]) [ (JR.cast "I" (JR.invoke "intValue_0" (JR.thisField "value") [])) ]) []) ]) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getValue_0 : JR.Method
jm_getValue_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "value") ])
        (jregister jheap)
        jthis
        jargs


jm_setMaxValue_1 : JR.Method
jm_setMaxValue_1 jheap jthis jargs =
    JR.method [ ( "maxValue", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "maxValue" "" JR.this (JR.local "maxValue")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMaxValue_0 : JR.Method
jm_getMaxValue_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "maxValue") ])
        (jregister jheap)
        jthis
        jargs


jm_setMinValue_1 : JR.Method
jm_setMinValue_1 jheap jthis jargs =
    JR.method [ ( "minValue", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "minValue" "" JR.this (JR.local "minValue")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMinValue_0 : JR.Method
jm_getMinValue_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "minValue") ])
        (jregister jheap)
        jthis
        jargs


jm_setName_1 : JR.Method
jm_setName_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")) ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_setDefaultValue_1 : JR.Method
jm_setDefaultValue_1 jheap jthis jargs =
    JR.method [ ( "defaultValue", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "defaultValue" "" JR.this (JR.local "defaultValue")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDefaultValue_0 : JR.Method
jm_getDefaultValue_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "defaultValue") ])
        (jregister jheap)
        jthis
        jargs


jm_setDefault_0 : JR.Method
jm_setDefault_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setValue_1" JR.this [ (JR.invoke "getDefaultValue_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Name: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "name") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Min: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getMinValue_0" JR.this []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Max: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getMaxValue_0" JR.this []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Value: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" JR.this []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Default: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.invoke "getDefaultValue_0" JR.this []) [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Modifiable: ") ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "booleanValue_0" (JR.invoke "isModifiable_0" JR.this []) []) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setModifiable_1 : JR.Method
jm_setModifiable_1 jheap jthis jargs =
    JR.method [ ( "modifiable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "modifiable" "" JR.this (JR.local "modifiable")) ])
        (jregister jheap)
        jthis
        jargs


jm_isModifiable_0 : JR.Method
jm_isModifiable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "modifiable") ])
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

