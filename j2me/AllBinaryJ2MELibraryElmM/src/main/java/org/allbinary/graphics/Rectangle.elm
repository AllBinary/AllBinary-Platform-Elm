module Org.Allbinary.Graphics.Rectangle exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "Rectangle"


jchain : List String
jchain =
    [ "Rectangle" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "point", JR.defaultOf "" ), ( "width", JR.defaultOf "I" ), ( "height", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getPoint_0", jm_getPoint_0 )
        , ( "setPoint_1", jm_setPoint_1 )
        , ( "getMaxX_0", jm_getMaxX_0 )
        , ( "getMaxY_0", jm_getMaxY_0 )
        , ( "getWidth_0", jm_getWidth_0 )
        , ( "setWidth_1", jm_setWidth_1 )
        , ( "getHeight_0", jm_getHeight_0 )
        , ( "setHeight_1", jm_setHeight_1 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Rectangle"
        [ ( "jm_getPoint_0", jm_getPoint_0 ), ( "jm_setPoint_1", jm_setPoint_1 ), ( "jm_getMaxX_0", jm_getMaxX_0 ), ( "jm_getMaxY_0", jm_getMaxY_0 ), ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_setWidth_1", jm_setWidth_1 ), ( "jm_getHeight_0", jm_getHeight_0 ), ( "jm_setHeight_1", jm_setHeight_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "point", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "point" "" JR.this (JR.local "point")), 
                    JR.exec (JR.setField "width" "I" JR.this (JR.local "width")), 
                    JR.exec (JR.setField "height" "I" JR.this (JR.local "height")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getPoint_0 : JR.Method
jm_getPoint_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "point") ])
        (jregister jheap)
        jthis
        jargs


jm_setPoint_1 : JR.Method
jm_setPoint_1 jheap jthis jargs =
    JR.method [ ( "point", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "point" "" JR.this (JR.local "point")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMaxX_0 : JR.Method
jm_getMaxX_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.add (JR.invoke "getX_0" (JR.thisField "point") []) (JR.thisField "width")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMaxY_0 : JR.Method
jm_getMaxY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.add (JR.invoke "getY_0" (JR.thisField "point") []) (JR.thisField "height")) ])
        (jregister jheap)
        jthis
        jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "width") ])
        (jregister jheap)
        jthis
        jargs


jm_setWidth_1 : JR.Method
jm_setWidth_1 jheap jthis jargs =
    JR.method [ ( "width", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "width" "I" JR.this (JR.local "width")) ])
        (jregister jheap)
        jthis
        jargs


jm_getHeight_0 : JR.Method
jm_getHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "height") ])
        (jregister jheap)
        jthis
        jargs


jm_setHeight_1 : JR.Method
jm_setHeight_1 jheap jthis jargs =
    JR.method [ ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "height" "I" JR.this (JR.local "height")) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.invoke "getPoint_0" JR.this []) []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "WIDTH_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getWidth_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "HEIGHT_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getHeight_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " MaxX: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getMaxX_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " MaxY: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getMaxY_0" JR.this []) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

