module Org.Allbinary.Logic.Io.File.FileLockUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR
import Org.Allbinary.Logic.Io.AbFileOutputStream as AbFileOutputStream
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "FileLockUtil"


jchain : List String
jchain =
    [ "FileLockUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getAll_2", jm_getAll_2 )
        , ( "getAllPossible_1", jm_getAllPossible_1 )
        , ( "getAllOrNone_1", jm_getAllOrNone_1 )
        , ( "getLock_1", jm_getLock_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FileLockUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getAll_2", jm_getAll_2 ), ( "jm_getAllPossible_1", jm_getAllPossible_1 ), ( "jm_getAllOrNone_1", jm_getAllOrNone_1 ), ( "jm_getLock_1", jm_getLock_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FileLockUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
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


jm_getAll_2 : JR.Method
jm_getAll_2 jheap jthis jargs =
    JR.method [ ( "vector", "" ), ( "isReturnOnFailure", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "fileLockVector" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "vector") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67631 -> (JR.setLocal "index" "I" (JR.lit jwN67631))) JR.increment) ]) (JR.run [ 
                        JR.declare "file" "" (JR.invoke "get_1" (JR.local "vector") [ (JR.local "index") ]), 
                        JR.declare "fileLock" "" (JR.invoke "getLock_1" JR.this [ (JR.local "file") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "fileLock") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "File Lock Obtained: ") (JR.invoke "getAbsolutePath_0" (JR.local "file") [])), JR.this, (JR.str "getAll") ]), 
                            JR.exec (JR.invoke "add_1" (JR.local "fileLockVector") [ (JR.local "fileLock") ]) ]) (JR.run [ 
                        JR.ifElse (JR.local "isReturnOnFailure") (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "Total Locks Obtained: ") (JR.invoke "size_0" (JR.local "fileLockVector") [])), JR.this, (JR.str "getAll") ]), 
                            JR.return (JR.local "fileLockVector") ]) identity ]) ]) ], 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "Total Locks Obtained: ") (JR.invoke "size_0" (JR.local "fileLockVector") [])), JR.this, (JR.str "getAll") ]), 
                    JR.return (JR.local "fileLockVector") ])
        (jregister jheap)
        jthis
        jargs


jm_getAllPossible_1 : JR.Method
jm_getAllPossible_1 jheap jthis jargs =
    JR.method [ ( "vector", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getAll_2" JR.this [ (JR.local "vector"), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAllOrNone_1 : JR.Method
jm_getAllOrNone_1 jheap jthis jargs =
    JR.method [ ( "vector", "" ) ] ""
        (JR.run [ 
                    JR.declare "fileLockVector" "" (JR.invoke "getAll_2" JR.this [ (JR.local "vector"), (JR.bool True) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "size_0" (JR.local "vector") []) (JR.invoke "size_0" (JR.local "fileLockVector") [])) (JR.run [ 
                        JR.return (JR.new BasicArrayListD.jnew_0 []) ]) (JR.run [ 
                        JR.return (JR.local "fileLockVector") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getLock_1 : JR.Method
jm_getLock_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.invoke "getLock_1" JR.this [ (JR.callStatic AbFileOutputStream.jm_createFromAbFileAppend_2 [ (JR.local "file"), (JR.bool True) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Exception returns null"), JR.this, (JR.str "getLock"), (JR.local "e") ]), 
                        JR.return JR.null ]) ) ] identity ])
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

