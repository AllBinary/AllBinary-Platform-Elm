module Org.Allbinary.Game.Input.Mapping.InputMapping exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.mapping
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.Mapping.InputToGameKeyMapping as InputToGameKeyMapping
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "InputMapping"


jchain : List String
jchain =
    [ "InputMapping" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "hashtable", JR.defaultOf "" ), ( "mappedList", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getTotalMapped_0", jm_getTotalMapped_0 )
        , ( "isDefaultNew_0", jm_isDefaultNew_0 )
        , ( "getDefault_0", jm_getDefault_0 )
        , ( "removeAll_0", jm_removeAll_0 )
        , ( "remove_2", jm_remove_2 )
        , ( "addMapping_1", jm_addMapping_1 )
        , ( "add_2", jm_add_2 )
        , ( "isMapped_1", jm_isMapped_1 )
        , ( "getMappedInput_1", jm_getMappedInput_1 )
        , ( "getHashtable_0", jm_getHashtable_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InputMapping"
        [ ( "jm_getTotalMapped_0", jm_getTotalMapped_0 ), ( "jm_isDefaultNew_0", jm_isDefaultNew_0 ), ( "jm_getDefault_0", jm_getDefault_0 ), ( "jm_removeAll_0", jm_removeAll_0 ), ( "jm_remove_2", jm_remove_2 ), ( "jm_addMapping_1", jm_addMapping_1 ), ( "jm_add_2", jm_add_2 ), ( "jm_isMapped_1", jm_isMapped_1 ), ( "jm_getMappedInput_1", jm_getMappedInput_1 ), ( "jm_getHashtable_0", jm_getHashtable_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "hashtable" "" JR.this (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])),
                JR.exec (JR.setField "mappedList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getTotalMapped_0 : JR.Method
jm_getTotalMapped_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "size_0" (JR.thisField "hashtable") []) ])
        (jregister jheap)
        jthis
        jargs


jm_isDefaultNew_0 : JR.Method
jm_isDefaultNew_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getDefault_0 : JR.Method
jm_getDefault_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic InputToGameKeyMapping.jm_getNullInstance_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_removeAll_0 : JR.Method
jm_removeAll_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "hashtable") []), 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "mappedList") []) ])
        (jregister jheap)
        jthis
        jargs


jm_remove_2 : JR.Method
jm_remove_2 jheap jthis jargs =
    JR.method [ ( "input", "" ), ( "mappedToInput", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.local "input") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " == ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.local "mappedToInput") ]) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "InputMapping::remove") ]), 
                    JR.declare "list" "" (JR.invoke "getMappedInput_1" JR.this [ (JR.local "input") ]), 
                    JR.ifElse (JR.invoke "contains_1" (JR.local "list") [ (JR.local "mappedToInput") ]) (JR.run [ 
                        JR.exec (JR.invoke "remove_1" (JR.local "list") [ (JR.local "mappedToInput") ]), 
                        JR.exec (JR.invoke "remove_1" (JR.thisField "mappedList") [ (JR.local "mappedToInput") ]), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Removed: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.local "input") ]) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " == ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.local "mappedToInput") ]) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "InputMapping::remove") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Not Deleted: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.local "input") ]) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " == ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.local "stringUtil") [ (JR.local "mappedToInput") ]) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "InputMapping::remove") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addMapping_1 : JR.Method
jm_addMapping_1 jheap jthis jargs =
    JR.method [ ( "inputToGameKeyMapping", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_add_2 : JR.Method
jm_add_2 jheap jthis jargs =
    JR.method [ ( "input", "" ), ( "mappedToInput", "" ) ] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.invoke "getMappedInput_1" JR.this [ (JR.local "input") ]), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.local "list") [ (JR.local "mappedToInput") ])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.local "mappedToInput") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "mappedList") [ (JR.local "mappedToInput") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isMapped_1 : JR.Method
jm_isMapped_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "contains_1" (JR.thisField "mappedList") [ (JR.local "input") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getMappedInput_1 : JR.Method
jm_getMappedInput_1 jheap jthis jargs =
    JR.method [ ( "id", "" ) ] ""
        (JR.run [ 
                    JR.declare "mappingInputCanBeNullList" "" (JR.invoke "get_1" (JR.thisField "hashtable") [ (JR.local "id") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "mappingInputCanBeNullList") JR.null) (JR.run [ 
                        JR.declare "list" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.exec (JR.invoke "put_2" (JR.thisField "hashtable") [ (JR.local "id"), (JR.local "list") ]), 
                        JR.return (JR.local "list") ]) identity, 
                    JR.return (JR.local "mappingInputCanBeNullList") ])
        (jregister jheap)
        jthis
        jargs


jm_getHashtable_0 : JR.Method
jm_getHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "hashtable") ])
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

