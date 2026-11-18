module Org.Allbinary.Util.HashtableUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.util
-}

import JR
import Org.Allbinary.Util.BasicArrayListS as BasicArrayListS
import Org.Allbinary.Util.EnumerationUtil as EnumerationUtil


jclass : String
jclass =
    "HashtableUtil"


jchain : List String
jchain =
    [ "HashtableUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "enumerationUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "putAll_2", jm_putAll_2 )
        , ( "getKeysAsArray_1", jm_getKeysAsArray_1 )
        , ( "getKeysAsList_1", jm_getKeysAsList_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HashtableUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_putAll_2", jm_putAll_2 ), ( "jm_getKeysAsArray_1", jm_getKeysAsArray_1 ), ( "jm_getKeysAsList_1", jm_getKeysAsList_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "HashtableUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "enumerationUtil" "" JR.this (JR.callStatic EnumerationUtil.jm_getInstance_0 [])),
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


jm_putAll_2 : JR.Method
jm_putAll_2 jheap jthis jargs =
    JR.method [ ( "fromHashtable", "" ), ( "hashtable", "" ) ] ""
        (JR.run [ 
                    JR.declare "enumeration" "" (JR.invoke "keys_0" (JR.local "fromHashtable") []), 
                    JR.declare "keyCanBeNull" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "valueCanBeNull" "" (JR.lit (JR.defaultOf "")), 
                    JR.while (JR.invoke "hasMoreElements_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ]) (JR.run [ 
                        JR.exec (JR.setLocal "keyCanBeNull" "" (JR.invoke "nextElement_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ])), 
                        JR.exec (JR.setLocal "valueCanBeNull" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.local "keyCanBeNull") ])), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "valueCanBeNull") JR.null) identity (JR.run [ 
                            JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.local "keyCanBeNull"), (JR.local "valueCanBeNull") ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getKeysAsArray_1 : JR.Method
jm_getKeysAsArray_1 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ) ] ""
        (JR.run [ 
                    JR.declare "objectArray" "" (JR.newArray "" [ (JR.invoke "size_0" (JR.local "hashtable") []) ]), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "enumeration" "" (JR.invoke "keys_0" (JR.local "hashtable") []), 
                    JR.while (JR.invoke "hasMoreElements_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "objectArray") (\jaN66749 -> JR.andThen (JR.postUpdate (JR.local "index") (\jwN66756 -> (JR.setLocal "index" "I" (JR.lit jwN66756))) JR.increment) (\jiN66749 -> (JR.aset (JR.lit jaN66749) (JR.lit jiN66749) (JR.invoke "nextElement_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ]))))) ]), 
                    JR.return (JR.local "objectArray") ])
        (jregister jheap)
        jthis
        jargs


jm_getKeysAsList_1 : JR.Method
jm_getKeysAsList_1 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ) ] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.new BasicArrayListS.jnew_1 [ (JR.invoke "size_0" (JR.local "hashtable") []) ]), 
                    JR.declare "enumeration" "" (JR.invoke "keys_0" (JR.local "hashtable") []), 
                    JR.while (JR.invoke "hasMoreElements_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ]) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.invoke "nextElement_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ]) ]) ]), 
                    JR.return (JR.local "list") ])
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

