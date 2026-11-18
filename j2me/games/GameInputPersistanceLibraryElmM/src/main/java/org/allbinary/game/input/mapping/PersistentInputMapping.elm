module Org.Allbinary.Game.Input.Mapping.PersistentInputMapping exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.mapping
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Util.EnumerationUtil as EnumerationUtil
import Org.Allbinary.Game.Configuration.Persistance.GamePersistanceStrings as GamePersistanceStrings
import Org.Allbinary.Game.Input.Mapping.Event.InputMappingEvent as InputMappingEvent
import Org.Allbinary.Game.Input.InputPersistance as InputPersistance
import Org.Allbinary.Game.Input.Mapping.InputToGameKeyMapping as InputToGameKeyMapping
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Input.Mapping.Event.NullInputMappingEventListener as NullInputMappingEventListener
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "PersistentInputMapping"


jchain : List String
jchain =
    [ "PersistentInputMapping" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "enumerationUtil", JR.defaultOf "" ), ( "inputMapping", JR.defaultOf "" ), ( "inputMappingEventListenerInterface", JR.defaultOf "" ), ( "inputPersistance", JR.defaultOf "" ), ( "inputMappingEvent", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getNullInstance_0", jm_getNullInstance_0 )
        , ( "getTotalMapped_0", jm_getTotalMapped_0 )
        , ( "isDefaultNew_0", jm_isDefaultNew_0 )
        , ( "getDefault_0", jm_getDefault_0 )
        , ( "setDefault_1", jm_setDefault_1 )
        , ( "update_1", jm_update_1 )
        , ( "save_1", jm_save_1 )
        , ( "init_1", jm_init_1 )
        , ( "setInputMappingEventListenerInterface_1", jm_setInputMappingEventListenerInterface_1 )
        , ( "getInputMappingEventListenerInterface_0", jm_getInputMappingEventListenerInterface_0 )
        , ( "getInputMapping_0", jm_getInputMapping_0 )
        , ( "isDelete_1", jm_isDelete_1 )
        , ( "isSystemInput_1", jm_isSystemInput_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PersistentInputMapping"
        [ ( "jm_getNullInstance_0", jm_getNullInstance_0 ), ( "jm_getTotalMapped_0", jm_getTotalMapped_0 ), ( "jm_isDefaultNew_0", jm_isDefaultNew_0 ), ( "jm_getDefault_0", jm_getDefault_0 ), ( "jm_setDefault_1", jm_setDefault_1 ), ( "jm_update_1", jm_update_1 ), ( "jm_save_1", jm_save_1 ), ( "jm_init_1", jm_init_1 ), ( "jm_setInputMappingEventListenerInterface_1", jm_setInputMappingEventListenerInterface_1 ), ( "jm_getInputMappingEventListenerInterface_0", jm_getInputMappingEventListenerInterface_0 ), ( "jm_getInputMapping_0", jm_getInputMapping_0 ), ( "jm_isDelete_1", jm_isDelete_1 ), ( "jm_isSystemInput_1", jm_isSystemInput_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PersistentInputMapping" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "enumerationUtil" "" JR.this (JR.callStatic EnumerationUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "inputMapping" "" JR.this (JR.new InputToGameKeyMapping.jnew_0 [])),
                JR.exec (JR.setField "inputMappingEventListenerInterface" "" JR.this NullInputMappingEventListener.jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER),
                JR.exec (JR.setField "inputMappingEvent" "" JR.this (JR.new InputMappingEvent.jnew_1 [ JR.this ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "inputPersistance" "" JR.this (JR.new InputPersistance.jnew_1 [ (JR.local "name") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getNullInstance_0 : JR.Method
jm_getNullInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "PersistentInputMapping.instance" "" (JR.new jnew_1 [ (JR.field "SAVED_INPUT_CONFIGURATION_RECORD_ID" (JR.callStatic GamePersistanceStrings.jm_getInstance_0 [])) ])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getTotalMapped_0 : JR.Method
jm_getTotalMapped_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "size_0" (JR.invoke "getHashtable_0" (JR.invoke "getInputMapping_0" JR.this []) []) []) ])
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


jm_setDefault_1 : JR.Method
jm_setDefault_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAll_0" (JR.invoke "getInputMapping_0" JR.this []) []), 
                    JR.exec (JR.invoke "addMapping_1" (JR.invoke "getInputMapping_0" JR.this []) [ (JR.invoke "getDefault_0" JR.this []) ]), 
                    JR.exec (JR.invoke "save_1" JR.this [ (JR.local "abeClientInformation") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_1 : JR.Method
jm_update_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "deleteAll_1" (JR.thisField "inputPersistance") [ (JR.local "abeClientInformation") ]), 
                    JR.exec (JR.invoke "save_1" JR.this [ (JR.local "abeClientInformation") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_save_1 : JR.Method
jm_save_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "save_2" (JR.thisField "inputPersistance") [ (JR.local "abeClientInformation"), (JR.invoke "getHashtable_0" (JR.invoke "getInputMapping_0" JR.this []) []) ]), 
                    JR.exec (JR.invoke "setInputToGameKeyMapping_1" (JR.thisField "inputMappingEvent") [ (JR.invoke "getInputMapping_0" JR.this []) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getInputMappingEventListenerInterface_0" JR.this []) JR.null) (JR.run [ 
                        JR.exec (JR.invoke "onInputMappingEvent_1" (JR.invoke "getInputMappingEventListenerInterface_0" JR.this []) [ (JR.thisField "inputMappingEvent") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]), 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "loadAll_1" (JR.thisField "inputPersistance") [ (JR.local "abeClientInformation") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                        JR.exec (JR.invoke "deleteRecoreStore_1" (JR.thisField "inputPersistance") [ (JR.local "abeClientInformation") ]), 
                        JR.exec (JR.invoke "setDefault_1" JR.this [ (JR.local "abeClientInformation") ]), 
                        JR.exec (JR.invoke "loadAll_1" (JR.thisField "inputPersistance") [ (JR.local "abeClientInformation") ]) ]) ) ] identity, 
                    JR.declare "list" "" (JR.invoke "getList_0" (JR.thisField "inputPersistance") []), 
                    JR.declare "totalMappedTo" "I" (JR.int 0), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "hashtable" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "enumeration" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "mappedToInput" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "gameActionInput" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70702 -> (JR.setLocal "index" "I" (JR.lit jwN70702))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "hashtable" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.exec (JR.setLocal "enumeration" "" (JR.invoke "keys_0" (JR.local "hashtable") [])), 
                        JR.while (JR.invoke "hasMoreElements_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ]) (JR.run [ 
                            JR.exec (JR.setLocal "mappedToInput" "" (JR.invoke "nextElement_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ])), 
                            JR.exec (JR.setLocal "gameActionInput" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.local "mappedToInput") ])), 
                            JR.exec (JR.postUpdate (JR.local "totalMappedTo") (\jwN70558 -> (JR.setLocal "totalMappedTo" "I" (JR.lit jwN70558))) JR.increment), 
                            JR.exec (JR.invoke "add_2" (JR.invoke "getInputMapping_0" JR.this []) [ (JR.local "gameActionInput"), (JR.local "mappedToInput") ]) ]) ]) ], 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "End - Total Loaded Keys Mapped: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getTotalMapped_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " to: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "totalMappedTo") ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setInputMappingEventListenerInterface_1 : JR.Method
jm_setInputMappingEventListenerInterface_1 jheap jthis jargs =
    JR.method [ ( "inputMappingEventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "inputMappingEventListenerInterface" "" JR.this (JR.local "inputMappingEventListenerInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_getInputMappingEventListenerInterface_0 : JR.Method
jm_getInputMappingEventListenerInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "inputMappingEventListenerInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_getInputMapping_0 : JR.Method
jm_getInputMapping_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "inputMapping") ])
        (jregister jheap)
        jthis
        jargs


jm_isDelete_1 : JR.Method
jm_isDelete_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isSystemInput_1 : JR.Method
jm_isSystemInput_1 jheap jthis jargs =
    JR.method [ ( "input", "" ) ] "Z"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
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

