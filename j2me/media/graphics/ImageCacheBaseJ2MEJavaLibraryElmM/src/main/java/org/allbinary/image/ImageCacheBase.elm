module Org.Allbinary.Image.ImageCacheBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Image.ImageFactory as ImageFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Javax.Microedition.Lcdui.NullImage as NullImage
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "ImageCacheBase"


jchain : List String
jchain =
    [ "ImageCacheBase" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "imageFactory", JR.defaultOf "" ), ( "hashtable", JR.defaultOf "" ), ( "SIZE", JR.defaultOf "I" ), ( "widths", JR.defaultOf "" ), ( "heights", JR.defaultOf "" ), ( "listOfList", JR.defaultOf "" ), ( "availableListOfList", JR.defaultOf "" ), ( "volume", JR.defaultOf "I" ), ( "nextIndex", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getImage_1", jm_getImage_1 )
        , ( "releaseAll_0", jm_releaseAll_0 )
        , ( "getIndexWH_2", jm_getIndexWH_2 )
        , ( "getFromAvailable_3", jm_getFromAvailable_3 )
        , ( "get_3", jm_get_3 )
        , ( "getWithKey_1", jm_getWithKey_1 )
        , ( "createImage_3", jm_createImage_3 )
        , ( "createImageFromInputStream_2", jm_createImageFromInputStream_2 )
        , ( "toString_0", jm_toString_0 )
        , ( "getHashtableP_0", jm_getHashtableP_0 )
        , ( "init_1", jm_init_1 )
        , ( "initProgress_0", jm_initProgress_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageCacheBase"
        [ ( "jm_getImage_1", jm_getImage_1 ), ( "jm_releaseAll_0", jm_releaseAll_0 ), ( "jm_getIndexWH_2", jm_getIndexWH_2 ), ( "jm_getFromAvailable_3", jm_getFromAvailable_3 ), ( "jm_get_3", jm_get_3 ), ( "jm_getWithKey_1", jm_getWithKey_1 ), ( "jm_createImage_3", jm_createImage_3 ), ( "jm_createImageFromInputStream_2", jm_createImageFromInputStream_2 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_getHashtableP_0", jm_getHashtableP_0 ), ( "jm_init_1", jm_init_1 ), ( "jm_initProgress_0", jm_initProgress_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "imageFactory" "" JR.this (JR.callStatic ImageFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "hashtable" "" JR.this (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])),
                JR.exec (JR.setField "SIZE" "I" JR.this (JR.int 128)),
                JR.exec (JR.setField "widths" "" JR.this (JR.newArray "I" [ (JR.thisField "SIZE") ])),
                JR.exec (JR.setField "heights" "" JR.this (JR.newArray "I" [ (JR.thisField "SIZE") ])),
                JR.exec (JR.setField "listOfList" "" JR.this (JR.newArray "" [ (JR.thisField "SIZE") ])),
                JR.exec (JR.setField "availableListOfList" "" JR.this (JR.newArray "" [ (JR.thisField "SIZE") ])),
                JR.exec (JR.setField "volume" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "nextIndex" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "listOfList")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67631 -> (JR.setLocal "index" "I" (JR.lit jwN67631))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "listOfList") (\jaN67515 -> JR.andThen (JR.local "index") (\jiN67515 -> (JR.aset (JR.lit jaN67515) (JR.lit jiN67515) (JR.new BasicArrayListD.jnew_0 []))))) ]) ], 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "availableListOfList")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67769 -> (JR.setLocal "index" "I" (JR.lit jwN67769))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "availableListOfList") (\jaN67657 -> JR.andThen (JR.local "index") (\jiN67657 -> (JR.aset (JR.lit jaN67657) (JR.lit jiN67657) (JR.new BasicArrayListD.jnew_0 []))))) ]) ] ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getImage_1 : JR.Method
jm_getImage_1 jheap jthis jargs =
    JR.method [ ( "resourceId", "" ) ] ""
        (JR.run [ 
                    JR.declare "imageCanBeNull" "" (JR.invoke "get_1" (JR.thisField "hashtable") [ (JR.local "resourceId") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "imageCanBeNull") JR.null) (JR.run [ 
                        JR.return NullImage.jstatic_NULL_IMAGE ]) identity, 
                    JR.return (JR.local "imageCanBeNull") ])
        (jregister jheap)
        jthis
        jargs


jm_releaseAll_0 : JR.Method
jm_releaseAll_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "listOfList")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68177 -> (JR.setLocal "index" "I" (JR.lit jwN68177))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.invoke "clear_0" (JR.aget (JR.thisField "availableListOfList") (JR.local "index")) []), 
                        JR.exec (JR.invoke "addAllList_1" (JR.aget (JR.thisField "availableListOfList") (JR.local "index")) [ (JR.aget (JR.thisField "listOfList") (JR.local "index")) ]) ]) ], 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "ImageCache: ") ]) [ (JR.invoke "toString_0" JR.this []) ]) []), JR.this, (JR.str "releaseAll") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getIndexWH_2 : JR.Method
jm_getIndexWH_2 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "foundIndex" "I" (JR.map JR.neg (JR.int 1)), 
                    JR.declare "size" "I" (JR.alength (JR.thisField "widths")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68565 -> (JR.setLocal "index" "I" (JR.lit jwN68565))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.and (JR.map2 JR.equals (JR.aget (JR.thisField "widths") (JR.local "index")) (JR.local "width")) (JR.map2 JR.equals (JR.aget (JR.thisField "heights") (JR.local "index")) (JR.local "height"))) (JR.run [ 
                            JR.exec (JR.setLocal "foundIndex" "I" (JR.local "index")), 
                            JR.return (JR.local "foundIndex") ]) identity ]) ], 
                    JR.return (JR.local "foundIndex") ])
        (jregister jheap)
        jthis
        jargs


jm_getFromAvailable_3 : JR.Method
jm_getFromAvailable_3 jheap jthis jargs =
    JR.method [ ( "foundIndex", "I" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "foundIndex") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "size_0" (JR.aget (JR.thisField "availableListOfList") (JR.local "foundIndex")) []) (JR.int 0)) (JR.run [ 
                            JR.declare "list" "" (JR.aget (JR.thisField "availableListOfList") (JR.local "foundIndex")), 
                            JR.return (JR.invoke "removeAt_1" (JR.local "list") [ (JR.map2 JR.sub (JR.invoke "size_0" (JR.local "list") []) (JR.int 1)) ]) ]) identity ]) identity, 
                    JR.return NullImage.jstatic_NULL_IMAGE ])
        (jregister jheap)
        jthis
        jargs


jm_get_3 : JR.Method
jm_get_3 jheap jthis jargs =
    JR.method [ ( "caller", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getWithKey_1 : JR.Method
jm_getWithKey_1 jheap jthis jargs =
    JR.method [ ( "key", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_createImage_3 : JR.Method
jm_createImage_3 jheap jthis jargs =
    JR.method [ ( "caller", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "createImage_3" (JR.thisField "imageFactory") [ (JR.local "caller"), (JR.local "width"), (JR.local "height") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createImageFromInputStream_2 : JR.Method
jm_createImageFromInputStream_2 jheap jthis jargs =
    JR.method [ ( "key", "" ), ( "inputStream", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "createImageFromInputStream_2" (JR.thisField "imageFactory") [ (JR.local "key"), (JR.local "inputStream") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.thisField "nextIndex") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70120 -> (JR.setLocal "index" "I" (JR.lit jwN70120))) JR.decrement) ]) (JR.run [ 
                        JR.declare "width" "I" (JR.aget (JR.thisField "widths") (JR.local "index")), 
                        JR.declare "height" "I" (JR.aget (JR.thisField "heights") (JR.local "index")), 
                        JR.declare "total" "I" (JR.invoke "size_0" (JR.aget (JR.thisField "listOfList") (JR.local "index")) []), 
                        JR.declare "totalAvailable" "I" (JR.invoke "size_0" (JR.aget (JR.thisField "availableListOfList") (JR.local "index")) []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " w: ") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "width") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " h: ") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "height") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "TOTAL_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "total") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " available: ") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "totalAvailable") ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getHashtableP_0 : JR.Method
jm_getHashtableP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "hashtable") ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "image", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_initProgress_0 : JR.Method
jm_initProgress_0 jheap jthis jargs =
    JR.method [] ""
        identity
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

