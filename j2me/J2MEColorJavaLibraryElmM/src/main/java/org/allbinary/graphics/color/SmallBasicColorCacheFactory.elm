module Org.Allbinary.Graphics.Color.SmallBasicColorCacheFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.color
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "SmallBasicColorCacheFactory"


jchain : List String
jchain =
    [ "SmallBasicColorCacheFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "SIZE", JR.defaultOf "I" ), ( "INDEX_TO_COLOR", JR.defaultOf "" ), ( "BASIC_COLOR_ARRAY", JR.defaultOf "" ), ( "colorIndex", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "add_1", jm_add_1 )
        , ( "getAndOrCreate_1", jm_getAndOrCreate_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SmallBasicColorCacheFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_getAndOrCreate_1", jm_getAndOrCreate_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SmallBasicColorCacheFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "SIZE" "I" JR.this (JR.int 255)),
                JR.exec (JR.setField "INDEX_TO_COLOR" "" JR.this (JR.newArray "I" [ (JR.thisField "SIZE") ])),
                JR.exec (JR.setField "BASIC_COLOR_ARRAY" "" JR.this (JR.newArray "" [ (JR.thisField "SIZE") ])),
                JR.exec (JR.setField "colorIndex" "I" JR.this (JR.int 0)),
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


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "basicDefaultColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "BASIC_COLOR_ARRAY") (\jaN66368 -> JR.andThen (JR.thisField "colorIndex") (\jiN66368 -> (JR.aset (JR.lit jaN66368) (JR.lit jiN66368) (JR.local "basicDefaultColor"))))), 
                    JR.exec (JR.andThen (JR.thisField "INDEX_TO_COLOR") (\jaN66411 -> JR.andThen (JR.thisField "colorIndex") (\jiN66411 -> (JR.aset (JR.lit jaN66411) (JR.lit jiN66411) (JR.invoke "intValue_0" (JR.local "basicDefaultColor") []))))), 
                    JR.exec (JR.postUpdate (JR.thisField "colorIndex") (\jwN66462 -> (JR.setField "colorIndex" "I" JR.this (JR.lit jwN66462))) JR.increment) ])
        (jregister jheap)
        jthis
        jargs


jm_getAndOrCreate_1 : JR.Method
jm_getAndOrCreate_1 jheap jthis jargs =
    JR.method [ ( "colorAsInt", "I" ) ] ""
        (JR.run [ 
                    JR.declare "basicColor" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.thisField "SIZE")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66694 -> (JR.setLocal "index" "I" (JR.lit jwN66694))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.aget (JR.thisField "INDEX_TO_COLOR") (JR.local "index")) (JR.local "colorAsInt")) (JR.run [ 
                            JR.return (JR.aget (JR.thisField "BASIC_COLOR_ARRAY") (JR.local "index")) ]) identity ]) ], 
                    JR.declare "ALPHA_MASK" "I" (JR.int (JR.i32 0xFF000000)), 
                    JR.exec (JR.setLocal "basicColor" "" (JR.invoke "createInstanceAN_3" (JR.callStatic BasicColorFactory.jm_getInstance_0 []) [ (JR.map2 JR.band (JR.local "colorAsInt") (JR.local "ALPHA_MASK")), (JR.map2 JR.band (JR.local "colorAsInt") (JR.int (JR.i32 0x00FFFFFF))), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])), 
                    JR.exec (JR.invoke "add_1" JR.this [ (JR.local "basicColor") ]), 
                    JR.return (JR.local "basicColor") ])
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

