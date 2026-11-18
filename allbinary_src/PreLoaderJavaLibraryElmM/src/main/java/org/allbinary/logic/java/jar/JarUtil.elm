module Org.Allbinary.Logic.Java.Jar.JarUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.jar
-}

import JR
import JSystem


jclass : String
jclass =
    "JarUtil"


jchain : List String
jchain =
    [ "JarUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "jarURL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "show_0", jm_show_0 )
        , ( "main_1", jm_main_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "JarUtil"
        [ ( "jm_show_0", jm_show_0 ), ( "jm_main_1", jm_main_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "jarURL", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "jarURL" "" JR.this (JR.local "jarURL")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_show_0 : JR.Method
jm_show_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "cache" "" (JR.newArray "B" [ (JR.int 1024) ]), 
                    JR.try (JR.run [ 
                        JR.declare "conn" "" (JR.invoke "openConnection_0" (JR.thisField "jarURL") []), 
                        JR.declare "jis" "" (JR.new (JR.namedMethod "JarInputStream.jnew_1") [ (JR.invoke "getInputStream_0" (JR.local "conn") []) ]), 
                        JR.while (JR.bool True) (JR.run [ 
                            JR.declare "entry" "" (JR.invoke "getNextJarEntry_0" (JR.local "jis") []), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "entry") JR.null) (JR.run [ 
                                JR.ifElse (JR.map JR.not_ (JR.invoke "isDirectory_0" (JR.local "entry") [])) (JR.run [ 
                                    JR.declare "offset" "I" (JR.int 0), 
                                    JR.declare "i" "I" (JR.int 0), 
                                    JR.while (JR.map2 JR.notEquals ((JR.setLocal "i" "I" (JR.invoke "read_3" (JR.local "jis") [ (JR.local "cache"), (JR.local "offset"), (JR.map2 JR.sub (JR.alength (JR.local "cache")) (JR.local "offset")) ]))) (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                        JR.exec (JR.setLocal "offset" "I" (JR.map2 JR.add (JR.local "offset") (JR.local "i"))), 
                                        JR.ifElse (JR.map2 JR.greaterEquals (JR.local "offset") (JR.alength (JR.local "cache"))) (JR.run [ 
                                            JR.declare "newcache" "" (JR.newArray "B" [ (JR.map2 JR.add (JR.alength (JR.local "cache")) (JR.int 1024)) ]), 
                                            JR.exec (JR.withState JR.arraycopy [ (JR.local "cache"), (JR.int 0), (JR.local "newcache"), (JR.int 0), (JR.alength (JR.local "cache")) ]), 
                                            JR.exec (JR.setLocal "cache" "" (JR.local "newcache")) ]) identity ]), 
                                    JR.declare "tmp" "" (JR.newArray "B" [ (JR.local "offset") ]), 
                                    JR.exec (JR.withState JR.arraycopy [ (JR.local "cache"), (JR.int 0), (JR.local "tmp"), (JR.int 0), (JR.local "offset") ]), 
                                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.invoke "getName_0" (JR.local "entry") []) ]) ]) identity ]) (JR.run [ 
                                JR.break ]) ]) ]) [ ( [ "IOException" ], "ex", (JR.run [ 
                        JR.exec (JR.invoke "println_1" JSystem.jstatic_err [ (JR.local "ex") ]), 
                        JR.exec (JR.invoke "printStackTrace_0" (JR.local "ex") []) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_main_1 : JR.Method
jm_main_1 jheap jthis jargs =
    JR.method [ ( "args", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "show_0" (JR.new jnew_1 [ (JR.new (JR.namedMethod "URL.jnew_1") [ (JR.str "file:///G:/mnt/bc/mydev/working/j2me/MiniSpaceWars/MiniSpaceWars/dist/MiniSpaceWars.jar") ]) ]) []) ])
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

