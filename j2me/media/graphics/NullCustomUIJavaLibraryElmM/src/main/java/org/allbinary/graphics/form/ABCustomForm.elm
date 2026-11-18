module Org.Allbinary.Graphics.Form.ABCustomForm exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Form.Item.ABCustomItem as ABCustomItem
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Graphics.Form.CustomScreen as CustomScreen
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ABCustomForm"


jchain : List String
jchain =
    [ "ABCustomForm" ]
        ++ CustomScreen.jchain


jfields : List ( String, JR.JValue )
jfields =
    CustomScreen.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getAllitems_0", jm_getAllitems_0 )
        , ( "size_0", jm_size_0 )
        , ( "setSelectedIndex_1", jm_setSelectedIndex_1 )
        , ( "getSelectedIndex_0", jm_getSelectedIndex_0 )
        , ( "deleteAll_0", jm_deleteAll_0 )
        , ( "delete_1", jm_delete_1 )
        , ( "append_1", jm_append_1 )
        , ( "insert_2", jm_insert_2 )
        , ( "set_2", jm_set_2 )
        , ( "get_1", jm_get_1 )
        , ( "getWidth_0", jm_getWidth_0 )
        , ( "paint_1", jm_paint_1 )
        , ( "getTitle_0", jm_getTitle_0 ) ]
        CustomScreen.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ABCustomForm"
        [ ( "jm_getAllitems_0", jm_getAllitems_0 ), ( "jm_size_0", jm_size_0 ), ( "jm_setSelectedIndex_1", jm_setSelectedIndex_1 ), ( "jm_getSelectedIndex_0", jm_getSelectedIndex_0 ), ( "jm_deleteAll_0", jm_deleteAll_0 ), ( "jm_delete_1", jm_delete_1 ), ( "jm_append_1", jm_append_1 ), ( "jm_insert_2", jm_insert_2 ), ( "jm_set_2", jm_set_2 ), ( "jm_get_1", jm_get_1 ), ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_getTitle_0", jm_getTitle_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "title", "" ), ( "items", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CustomScreen.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getAllitems_0 : JR.Method
jm_getAllitems_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.newArray "" [ (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_size_0 : JR.Method
jm_size_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_setSelectedIndex_1 : JR.Method
jm_setSelectedIndex_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getSelectedIndex_0 : JR.Method
jm_getSelectedIndex_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_deleteAll_0 : JR.Method
jm_deleteAll_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_delete_1 : JR.Method
jm_delete_1 jheap jthis jargs =
    JR.method [ ( "itemNum", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_append_1 : JR.Method
jm_append_1 jheap jthis jargs =
    JR.method [ ( "item", "" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_insert_2 : JR.Method
jm_insert_2 jheap jthis jargs =
    JR.method [ ( "itemNum", "I" ), ( "item", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_set_2 : JR.Method
jm_set_2 jheap jthis jargs =
    JR.method [ ( "itemNum", "I" ), ( "item", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "itemNum", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic ABCustomItem.jm_getNullInstance_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getTitle_0 : JR.Method
jm_getTitle_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
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

