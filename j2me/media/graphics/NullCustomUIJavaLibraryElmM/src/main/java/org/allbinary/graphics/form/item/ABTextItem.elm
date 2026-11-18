module Org.Allbinary.Graphics.Form.Item.ABTextItem exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item
-}

import JR
import Org.Allbinary.Graphics.Form.Item.ABCustomItemInterface as ABCustomItemInterface
import Org.Allbinary.Graphics.Form.Item.ABStringComponent as ABStringComponent
import Org.Allbinary.Graphics.Form.Item.CustomCustomItem as CustomCustomItem


jclass : String
jclass =
    "ABTextItem"


jchain : List String
jchain =
    [ "ABTextItem" ]
        ++ CustomCustomItem.jchain
        ++ ABCustomItemInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    CustomCustomItem.jfields ++ []


jvtable =
    JR.vtable
        [ ( "keyPressed_1", jm_keyPressed_1 )
        , ( "paintUnselected_3", jm_paintUnselected_3 )
        , ( "getLabelStringComponent_0", jm_getLabelStringComponent_0 )
        , ( "getMinimumWidth_0", jm_getMinimumWidth_0 )
        , ( "getMinimumHeight_0", jm_getMinimumHeight_0 )
        , ( "getLabel_0", jm_getLabel_0 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        CustomCustomItem.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ABTextItem"
        [ ( "jm_keyPressed_1", jm_keyPressed_1 ), ( "jm_paintUnselected_3", jm_paintUnselected_3 ), ( "jm_getLabelStringComponent_0", jm_getLabelStringComponent_0 ), ( "jm_getMinimumWidth_0", jm_getMinimumWidth_0 ), ( "jm_getMinimumHeight_0", jm_getMinimumHeight_0 ), ( "jm_getLabel_0", jm_getLabel_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "label", "" ), ( "layout", "I" ), ( "altText", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CustomCustomItem.jinit_3 JR.this [ (JR.local "label"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_keyPressed_1 : JR.Method
jm_keyPressed_1 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paintUnselected_3 : JR.Method
jm_paintUnselected_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getLabelStringComponent_0 : JR.Method
jm_getLabelStringComponent_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return ABStringComponent.jstatic_NULL_STRING_COMPONENT ])
        (jregister jheap)
        jthis
        jargs


jm_getMinimumWidth_0 : JR.Method
jm_getMinimumWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callVia CustomCustomItem.jvtable "getMinimumWidth_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getMinimumHeight_0 : JR.Method
jm_getMinimumHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callVia CustomCustomItem.jvtable "getMinimumHeight_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getLabel_0 : JR.Method
jm_getLabel_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callVia CustomCustomItem.jvtable "getLabel_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia CustomCustomItem.jvtable "paintXY_3" JR.this [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]) ])
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

