module Org.Allbinary.Business.Context.Modules.Storefronts.BasicStoreFrontsEntity exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.context.modules.storefronts
-}

import JR
import Org.Allbinary.Business.Context.Modules.Storefronts.BasicStoreFront as BasicStoreFront
import Org.Allbinary.Business.Init.InitSql as InitSql
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Business.Context.Modules.Storefront.StoreFrontData as StoreFrontData
import Org.Allbinary.Business.Init.Db.UserDbInitInfo as UserDbInitInfo


jclass : String
jclass =
    "BasicStoreFrontsEntity"


jchain : List String
jchain =
    [ "BasicStoreFrontsEntity" ]
        ++ InitSql.jchain


jfields : List ( String, JR.JValue )
jfields =
    InitSql.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "tableName", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getStoreFrontInterface_1", jm_getStoreFrontInterface_1 ) ]
        InitSql.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicStoreFrontsEntity"
        [ ( "jm_getStoreFrontInterface_1", jm_getStoreFrontInterface_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect InitSql.jinit_1 JR.this [ (JR.new UserDbInitInfo.jnew_0 []) ]),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "tableName" "" JR.this (JR.str "storefronts")),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setTable_1" JR.this [ (JR.thisField "tableName") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getStoreFrontInterface_1 : JR.Method
jm_getStoreFrontInterface_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.declare "keysAndValues" "" (JR.invoke "createHashMap_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "put_2" (JR.local "keysAndValues") [ (JR.field "NAME" (JR.callStatic StoreFrontData.jm_getInstance_0 [])), (JR.local "name") ]), 
                    JR.declare "storeHashMap" "" (JR.callVia InitSql.jvtable "getRow_1" JR.this [ (JR.local "keysAndValues") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "storeHashMap") JR.null) (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.concat (JR.str "No Such Store: ") (JR.local "name")) ]) ]) identity, 
                    JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FACTORYERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "StoreFront: ") (JR.invoke "toString_0" (JR.local "storeHashMap") [])), JR.this, (JR.str "getStore()") ]) ]) identity, 
                    JR.return (JR.new BasicStoreFront.jnew_1 [ (JR.local "storeHashMap") ]) ])
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

