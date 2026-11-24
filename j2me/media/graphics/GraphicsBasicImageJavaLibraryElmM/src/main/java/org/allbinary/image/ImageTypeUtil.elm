module Org.Allbinary.Image.ImageTypeUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD


jclass : String
jclass =
    "ImageTypeUtil"


jchain : List String
jchain =
    [ "ImageTypeUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "PNG", JR.defaultOf "" ), ( "JPG", JR.defaultOf "" ), ( "GIF", JR.defaultOf "" ), ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "isSupported_1", jm_isSupported_1 )
        , ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageTypeUtil"
        [ ( "jm_isSupported_1", jm_isSupported_1 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "ImageTypeUtil" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "PNG" "" JR.this (JR.str "png")),
                JR.exec (JR.setField "JPG" "" JR.this (JR.str "jpg")),
                JR.exec (JR.setField "GIF" "" JR.this (JR.str "gif")),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "JPG") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "GIF") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.thisField "PNG") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_isSupported_1 : JR.Method
jm_isSupported_1 jheap jthis jargs =
    JR.method [ ( "mediaFileType", "" ) ] "Z"
        (JR.run [ 
                    JR.exec (JR.setLocal "mediaFileType" "" (JR.invoke "toLowerCase_0" (JR.local "mediaFileType") [])), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.thisField "list") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66554 -> (JR.setLocal "index" "I" (JR.lit jwN66554))) JR.decrement) ]) (JR.run [ 
                        JR.declare "name" "" (JR.invoke "get_1" (JR.thisField "list") [ (JR.local "index") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.local "mediaFileType") [ (JR.local "name") ]) (JR.int 0)) (JR.run [ 
                            JR.return (JR.bool True) ]) identity ]) ], 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_SINGLETON ])
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

