module Org.Allbinary.Logic.System.Loader.AbeFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.loader
-}

import JR
import Org.Allbinary.Logic.System.Security.AbKeys as AbKeys
import Org.Allbinary.Logic.System.Loader.AbeClassLoader as AbeClassLoader
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.Java.AnyType.ConstructorUtil as ConstructorUtil
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.System.Loader.WebappClassLoaderInfo as WebappClassLoaderInfo


jclass : String
jclass =
    "AbeFactory"


jchain : List String
jchain =
    [ "AbeFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "useCustomLoader", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstance_2", jm_getInstance_2 )
        , ( "getInstance_4", jm_getInstance_4 )
        , ( "getClass_2", jm_getClass_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbeFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstance_2", jm_getInstance_2 ), ( "jm_getInstance_4", jm_getInstance_4 ), ( "jm_getClass_2", jm_getClass_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AbeFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "useCustomLoader" "Z" JR.this (JR.bool False)),
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


jm_getInstance_2 : JR.Method
jm_getInstance_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "className", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.invoke "newInstance_0" (JR.invoke "getClass_2" JR.this [ (JR.local "abeClientInformation"), (JR.local "className") ]) []) ]) [ ( [ "LicensingException" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.concat (JR.str "Failure for: ") (JR.local "className")), JR.this, (JR.str "getInstance(classname)"), (JR.local "e") ]) ]) identity, 
                        JR.throw (JR.local "e") ]) ), ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.concat (JR.str "Failure for: ") (JR.local "className")), JR.this, (JR.str "getInstance(classname)"), (JR.local "e") ]) ]) identity, 
                        JR.return JR.null ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_4 : JR.Method
jm_getInstance_4 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "className", "" ), ( "classes", "" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.declare "constructor" "" JR.null, 
                    JR.try (JR.run [ 
                        JR.declare "parent" "" (JR.callStatic WebappClassLoaderInfo.jm_getLoader_0 []), 
                        JR.ifElse (JR.thisField "useCustomLoader") (JR.run [ 
                            JR.declare "loader" "" (JR.new AbeClassLoader.jnew_2 [ (JR.local "parent"), (JR.invoke "getKey_2" (JR.callStatic AbKeys.jm_getInstance_0 []) [ (JR.local "abeClientInformation"), (JR.local "className") ]) ]), 
                            JR.declare "myClass" "" (JR.invoke "loadClass_1" (JR.local "loader") [ (JR.local "className") ]), 
                            JR.exec (JR.setLocal "constructor" "" (JR.invoke "getConstructor_1" (JR.local "myClass") [ (JR.local "classes") ])), 
                            JR.return (JR.invoke "newInstance_1" (JR.local "constructor") [ (JR.local "params") ]) ]) (JR.run [ 
                            JR.declare "myClass" "" (JR.invoke "loadClass_1" (JR.local "parent") [ (JR.local "className") ]), 
                            JR.exec (JR.setLocal "constructor" "" (JR.invoke "getConstructor_1" (JR.local "myClass") [ (JR.local "classes") ])), 
                            JR.return (JR.invoke "newInstance_1" (JR.local "constructor") [ (JR.local "params") ]) ]) ]) [ ( [ "LicensingException" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Failure for: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "className") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callStatic ConstructorUtil.jm_view_2 [ (JR.local "constructor"), (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) ]), 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "getInstance(className,params)"), (JR.local "e") ]) ]) identity, 
                        JR.throw (JR.local "e") ]) ), ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Failure for: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "className") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callStatic ConstructorUtil.jm_view_2 [ (JR.local "constructor"), (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) ]), 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "getInstance(className,params)"), (JR.local "e") ]) ]) identity, 
                        JR.return JR.null ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getClass_2 : JR.Method
jm_getClass_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "className", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "parent" "" (JR.callStatic WebappClassLoaderInfo.jm_getLoader_0 []), 
                        JR.ifElse (JR.thisField "useCustomLoader") (JR.run [ 
                            JR.declare "loader" "" (JR.new AbeClassLoader.jnew_2 [ (JR.local "parent"), (JR.invoke "getKey_2" (JR.callStatic AbKeys.jm_getInstance_0 []) [ (JR.local "abeClientInformation"), (JR.local "className") ]) ]), 
                            JR.declare "c" "" (JR.invoke "loadClass_1" (JR.local "loader") [ (JR.local "className") ]), 
                            JR.return (JR.local "c") ]) (JR.run [ 
                            JR.declare "c" "" (JR.invoke "loadClass_1" (JR.local "parent") [ (JR.local "className") ]), 
                            JR.return (JR.local "c") ]) ]) [ ( [ "LicensingException" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.concat (JR.str "Failure for: ") (JR.local "className")), JR.this, (JR.str "getClass(className)"), (JR.local "e") ]) ]) identity, 
                        JR.throw (JR.local "e") ]) ), ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "LOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.concat (JR.str "Failure for: ") (JR.local "className")), JR.this, (JR.str "getClass(className)"), (JR.local "e") ]) ]) identity, 
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

