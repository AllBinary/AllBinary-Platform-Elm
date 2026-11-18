module Org.Allbinary.Data.Resource.ResourceUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.resource
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import JThread
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "ResourceUtil"


jchain : List String
jchain =
    [ "ResourceUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setLoadingPaths_2", jm_setLoadingPaths_2 )
        , ( "setClassLoader_1", jm_setClassLoader_1 )
        , ( "getResourceAsStream_1", jm_getResourceAsStream_1 )
        , ( "getResourceAsStreamAtStart_2", jm_getResourceAsStreamAtStart_2 )
        , ( "addResource_2", jm_addResource_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ResourceUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setLoadingPaths_2", jm_setLoadingPaths_2 ), ( "jm_setClassLoader_1", jm_setClassLoader_1 ), ( "jm_getResourceAsStream_1", jm_getResourceAsStream_1 ), ( "jm_getResourceAsStreamAtStart_2", jm_getResourceAsStreamAtStart_2 ), ( "jm_addResource_2", jm_addResource_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_classLoader", jstatic_classLoader ), ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_classLoader : JR.M
jstatic_classLoader s =
    JR.static "ResourceUtil" jclinit "classLoader"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ResourceUtil" jclinit "instance"
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


jm_setLoadingPaths_2 : JR.Method
jm_setLoadingPaths_2 jheap jthis jargs =
    JR.method [ ( "path", "" ), ( "ext", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "NOT_IMPLEMENTED" (JR.callStatic CommonStrings.jm_getInstance_0 [])), JR.this, (JR.str "setLoadingPaths") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setClassLoader_1 : JR.Method
jm_setClassLoader_1 jheap jthis jargs =
    JR.method [ ( "classLoader", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Resource Loader: ") ]) [ (JR.invoke "getName_0" (JR.getClass (JR.local "classLoader")) []) ]) []), JR.this, (JR.str "setClassLoader") ]), 
                    JR.exec (JR.setStatic "ResourceUtil.classLoader" "" (JR.local "classLoader")) ])
        (jregister jheap)
        jthis
        jargs


jm_getResourceAsStream_1 : JR.Method
jm_getResourceAsStream_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ 
                    JR.declare "inputStream" "" (JR.invoke "getResourceAsStreamAtStart_2" JR.this [ (JR.local "resource"), (JR.int 2) ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "inputStream") JR.null) (JR.run [ 
                        JR.exec (JR.setLocal "inputStream" "" (JR.invoke "getResourceAsStreamAtStart_2" JR.this [ (JR.local "resource"), (JR.int 1) ])), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "inputStream") JR.null) (JR.run [ 
                            JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Unable to obtain: ") ]) [ (JR.local "resource") ]) []) ]) ]) identity ]) identity, 
                    JR.return (JR.local "inputStream") ])
        (jregister jheap)
        jthis
        jargs


jm_getResourceAsStreamAtStart_2 : JR.Method
jm_getResourceAsStreamAtStart_2 jheap jthis jargs =
    JR.method [ ( "resource", "" ), ( "startIndex", "I" ) ] ""
        (JR.run [ 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.declare "index" "I" (JR.invoke "indexOf_1" (JR.local "resource") [ (JR.field "COLON" (JR.local "commonSeps")) ]), 
                    JR.declare "resourcePath" "" (JR.invoke "substring_1" (JR.local "resource") [ (JR.map2 JR.add (JR.local "index") (JR.local "startIndex")) ]), 
                    JR.declare "inputStream" "" (JR.invoke "getResourceAsStream_1" (JR.getClass (JR.local "resource")) [ (JR.local "resourcePath") ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "inputStream") JR.null) (JR.run [ 
                        JR.return (JR.local "inputStream") ]) identity, 
                    JR.declare "classLoader" "" jstatic_classLoader, 
                    JR.exec (JR.setLocal "inputStream" "" (JR.invoke "getResourceAsStream_1" (JR.local "classLoader") [ (JR.local "resourcePath") ])), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "inputStream") JR.null) (JR.run [ 
                        JR.return (JR.local "inputStream") ]) identity, 
                    JR.exec (JR.setLocal "inputStream" "" (JR.invoke "getResourceAsStream_1" (JR.invoke "getContextClassLoader_0" (JR.callStatic JThread.jm_currentThread_0 []) []) [ (JR.local "resourcePath") ])), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "inputStream") JR.null) (JR.run [ 
                        JR.return (JR.local "inputStream") ]) identity, 
                    JR.return (JR.local "inputStream") ])
        (jregister jheap)
        jthis
        jargs


jm_addResource_2 : JR.Method
jm_addResource_2 jheap jthis jargs =
    JR.method [ ( "resource", "" ), ( "value", "" ) ] ""
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

