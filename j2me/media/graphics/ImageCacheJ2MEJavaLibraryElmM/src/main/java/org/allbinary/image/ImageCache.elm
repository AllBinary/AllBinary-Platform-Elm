module Org.Allbinary.Image.ImageCache exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Gd.Resource.GDResources as GDResources
import Org.Allbinary.Image.ImageCacheBase as ImageCacheBase
import Org.Allbinary.J2MEUtil as J2MEUtil
import JThread
import Org.Allbinary.System.Memory as Memory
import Javax.Microedition.Lcdui.NullImage as NullImage
import Org.Allbinary.Data.Resource.ResourceUtil as ResourceUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "ImageCache"


jchain : List String
jchain =
    [ "ImageCache" ]
        ++ ImageCacheBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    ImageCacheBase.jfields ++ [ ( "commonStrings", JR.defaultOf "" ), ( "tsUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "addListener_1", jm_addListener_1 )
        , ( "getIndex_1", jm_getIndex_1 )
        , ( "get_3", jm_get_3 )
        , ( "getWithKey_1", jm_getWithKey_1 )
        , ( "loadImageForAnimation_0", jm_loadImageForAnimation_0 )
        , ( "progressEnded_0", jm_progressEnded_0 )
        , ( "runTask_0", jm_runTask_0 )
        , ( "isLazy_0", jm_isLazy_0 ) ]
        ImageCacheBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageCache"
        [ ( "jm_addListener_1", jm_addListener_1 ), ( "jm_getIndex_1", jm_getIndex_1 ), ( "jm_get_3", jm_get_3 ), ( "jm_getWithKey_1", jm_getWithKey_1 ), ( "jm_loadImageForAnimation_0", jm_loadImageForAnimation_0 ), ( "jm_progressEnded_0", jm_progressEnded_0 ), ( "jm_runTask_0", jm_runTask_0 ), ( "jm_isLazy_0", jm_isLazy_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_IMAGE_CACHE", jstatic_NULL_IMAGE_CACHE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_IMAGE_CACHE : JR.M
jstatic_NULL_IMAGE_CACHE s =
    JR.static "ImageCache" jclinit "NULL_IMAGE_CACHE"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect ImageCacheBase.jinit_0 JR.this []),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_addListener_1 : JR.Method
jm_addListener_1 jheap jthis jargs =
    JR.method [ ( "renderer", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getIndex_1 : JR.Method
jm_getIndex_1 jheap jthis jargs =
    JR.method [ ( "key", "" ) ] "I"
        (JR.run [ 
                    JR.declare "gdResources" "" (JR.callStatic GDResources.jm_getInstance_0 []), 
                    JR.declare "resourceStringArray" "" (JR.field "resourceStringArray" (JR.local "gdResources")), 
                    JR.declare "size" "I" (JR.alength (JR.local "resourceStringArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67641 -> (JR.setLocal "index" "I" (JR.lit jwN67641))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.aget (JR.local "resourceStringArray") (JR.local "index")) (JR.local "key")) (JR.run [ 
                            JR.return (JR.local "index") ]) identity ]) ], 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "unable to find key: ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "key") ]) ]) []), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_get_3 : JR.Method
jm_get_3 jheap jthis jargs =
    JR.method [ ( "caller", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.declare "foundIndex" "I" (JR.invoke "getIndexWH_2" JR.this [ (JR.local "width"), (JR.local "height") ]), 
                    JR.declare "image" "" (JR.invoke "getFromAvailable_3" JR.this [ (JR.local "foundIndex"), (JR.local "width"), (JR.local "height") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "image") NullImage.jstatic_NULL_IMAGE) (JR.run [ 
                        JR.exec (JR.setField "volume" "" JR.this (JR.plus (JR.thisField "volume") (JR.map2 JR.mul (JR.local "width") (JR.local "height")))), 
                        JR.ifElse (JR.map2 JR.greater (JR.thisField "volume") (JR.int 32000)) (JR.run [ 
                            JR.exec (JR.invoke "gc_0" (JR.thisField "tsUtil") []), 
                            JR.exec (JR.setField "volume" "" JR.this (JR.int 0)) ]) identity, 
                        JR.exec (JR.setLocal "image" "" (JR.invoke "createImage_3" JR.this [ (JR.local "caller"), (JR.local "width"), (JR.local "height") ])), 
                        JR.declare "widths" "" (JR.thisField "widths"), 
                        JR.ifElse (JR.map2 JR.greater (JR.thisField "nextIndex") (JR.map2 JR.sub (JR.alength (JR.local "widths")) (JR.int 1))) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.local "foundIndex") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                JR.exec (JR.setLocal "foundIndex" "I" (JR.thisField "nextIndex")), 
                                JR.exec (JR.andThen (JR.local "widths") (\jaN68351 -> JR.andThen (JR.thisField "nextIndex") (\jiN68351 -> (JR.aset (JR.lit jaN68351) (JR.lit jiN68351) (JR.local "width"))))), 
                                JR.exec (JR.andThen (JR.thisField "heights") (\jaN68391 -> JR.andThen (JR.thisField "nextIndex") (\jiN68391 -> (JR.aset (JR.lit jaN68391) (JR.lit jiN68391) (JR.local "height"))))), 
                                JR.exec (JR.postUpdate (JR.thisField "nextIndex") (\jwN68434 -> (JR.setField "nextIndex" "" JR.this (JR.lit jwN68434))) JR.increment) ]) identity, 
                            JR.exec (JR.invoke "add_1" (JR.aget (JR.thisField "listOfList") (JR.local "foundIndex")) [ (JR.local "image") ]) ]) identity ]) identity, 
                    JR.return (JR.local "image") ])
        (jregister jheap)
        jthis
        jargs


jm_getWithKey_1 : JR.Method
jm_getWithKey_1 jheap jthis jargs =
    JR.method [ ( "key", "" ) ] ""
        (JR.run [ 
                    JR.declare "image" "" (JR.invoke "getImage_1" JR.this [ (JR.local "key") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "image") NullImage.jstatic_NULL_IMAGE) (JR.run [ 
                        JR.declare "resourceUtil" "" (JR.callStatic ResourceUtil.jm_getInstance_0 []), 
                        JR.declare "resourceInputStream" "" (JR.invoke "getResourceAsStream_1" (JR.local "resourceUtil") [ (JR.local "key") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "resourceInputStream") JR.null) (JR.run [ 
                            JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Image resource is not available for key: ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "key") ]) ]) []) ]) ]) identity, 
                        JR.try (JR.run [ 
                            JR.exec (JR.setLocal "image" "" (JR.invoke "createImageFromInputStream_2" JR.this [ (JR.local "key"), (JR.local "resourceInputStream") ])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Exception: Trying Again After GC"), JR.this, (JR.field "GET" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "InputStream: ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "resourceInputStream") ]) ]) []), JR.this, (JR.field "GET" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "gc_0" (JR.thisField "tsUtil") []), 
                            JR.exec (JR.invoke "gc_0" (JR.thisField "tsUtil") []), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.callStatic Memory.jm_getInfo_0 []), JR.this, (JR.field "GET" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.callStatic JThread.jm_sleep_1 [ (JR.int 100) ]), 
                            JR.exec (JR.setLocal "image" "" (JR.invoke "createImageFromInputStream_2" JR.this [ (JR.local "key"), (JR.local "resourceInputStream") ])) ]) ) ] identity, 
                        JR.ifElse (JR.callStatic J2MEUtil.jm_isHTML_0 []) identity (JR.run [ 
                            JR.exec (JR.invoke "close_0" (JR.local "resourceInputStream") []) ]), 
                        JR.exec (JR.invoke "put_2" (JR.thisField "hashtable") [ (JR.local "key"), (JR.local "image") ]) ]) identity, 
                    JR.return (JR.local "image") ])
        (jregister jheap)
        jthis
        jargs


jm_loadImageForAnimation_0 : JR.Method
jm_loadImageForAnimation_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_progressEnded_0 : JR.Method
jm_progressEnded_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_runTask_0 : JR.Method
jm_runTask_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isLazy_0 : JR.Method
jm_isLazy_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
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

