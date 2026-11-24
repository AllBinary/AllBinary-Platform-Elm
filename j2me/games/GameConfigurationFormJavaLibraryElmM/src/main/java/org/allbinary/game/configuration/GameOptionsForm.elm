module Org.Allbinary.Game.Configuration.GameOptionsForm exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Javax.Microedition.Lcdui.Choice as Choice
import Org.Allbinary.Graphics.Displayable.Screen.CommandForm as CommandForm
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Game.Configuration.GameConfigurationCentral as GameConfigurationCentral
import Org.Allbinary.Game.Configuration.GameConfigurationGauge as GameConfigurationGauge
import Org.Allbinary.Game.Configuration.Persistance.GameConfigurationPersistanceSingleton as GameConfigurationPersistanceSingleton
import Org.Allbinary.Game.Configuration.GameConfigurationSingleton as GameConfigurationSingleton
import Org.Allbinary.Game.Configuration.GameConfigurationTextInput as GameConfigurationTextInput
import Org.Allbinary.Game.Configuration.GameConfigurationUtil as GameConfigurationUtil
import Org.Allbinary.Game.Configuration.Feature.GameFeatureChoiceGroups as GameFeatureChoiceGroups
import Org.Allbinary.Game.Configuration.Feature.GameFeatureFormUtil as GameFeatureFormUtil
import Org.Allbinary.Game.Configuration.Feature.GameFeatureItemCommandListener as GameFeatureItemCommandListener
import Org.Allbinary.Game.Configuration.Feature.GameFeatureItemStateListener as GameFeatureItemStateListener
import Org.Allbinary.Util.HashtableUtil as HashtableUtil
import JInteger
import Org.Allbinary.MIDPUtil as MIDPUtil
import Org.Allbinary.Graphics.Displayable.Command.MyCommandsFactory as MyCommandsFactory
import Org.Allbinary.Input.Gyro.OrientationData as OrientationData
import Org.Allbinary.Game.Configuration.Feature.SensorFeatureFactory as SensorFeatureFactory
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Javax.Microedition.Lcdui.TextField as TextField


jclass : String
jclass =
    "GameOptionsForm"


jchain : List String
jchain =
    [ "GameOptionsForm" ]
        ++ CommandForm.jchain


jfields : List ( String, JR.JValue )
jfields =
    CommandForm.jfields ++ [ ( "meUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "closeClientInformation_1", jm_closeClientInformation_1 )
        , ( "addTextFieldsIfSimulated_0", jm_addTextFieldsIfSimulated_0 )
        , ( "addTextFields_0", jm_addTextFields_0 )
        , ( "addConfiguration_0", jm_addConfiguration_0 )
        , ( "initCommands_1", jm_initCommands_1 )
        , ( "save_1", jm_save_1 ) ]
        CommandForm.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameOptionsForm"
        [ ( "jm_closeClientInformation_1", jm_closeClientInformation_1 ), ( "jm_addTextFieldsIfSimulated_0", jm_addTextFieldsIfSimulated_0 ), ( "jm_addTextFields_0", jm_addTextFields_0 ), ( "jm_addConfiguration_0", jm_addConfiguration_0 ), ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_save_1", jm_save_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "title", "" ), ( "backgrounBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CommandForm.jinit_4 JR.this [ (JR.local "commandListener"), (JR.local "title"), (JR.local "backgrounBasicColor"), (JR.local "foregroundBasicColor") ]),
                JR.exec (JR.setField "meUtil" "" JR.this (JR.callStatic MIDPUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "addConfiguration_0" JR.this []), 
                    JR.declare "gameFeatureFormUtil" "" (JR.callStatic GameFeatureFormUtil.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "addChoiceGroup_3" (JR.local "gameFeatureFormUtil") [ JR.this, (JR.invoke "get_0" (JR.callStatic GameFeatureChoiceGroups.jm_getExclusiveInstance_0 []) []), Choice.jstatic_EXCLUSIVE ]), 
                    JR.exec (JR.invoke "addChoiceGroup_3" (JR.local "gameFeatureFormUtil") [ JR.this, (JR.invoke "get_0" (JR.callStatic GameFeatureChoiceGroups.jm_getMultipleInstance_0 []) []), Choice.jstatic_MULTIPLE ]), 
                    JR.exec (JR.invoke "initCommands_1" JR.this [ (JR.local "commandListener") ]), 
                    JR.exec (JR.invoke "setItemStateListener_1" JR.this [ (JR.new GameFeatureItemStateListener.jnew_1 [ JR.this ]) ]), 
                    JR.exec (JR.invoke "addTextFieldsIfSimulated_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_closeClientInformation_1 : JR.Method
jm_closeClientInformation_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia CommandForm.jvtable "close_0" JR.this []), 
                    JR.exec (JR.invoke "save_1" JR.this [ (JR.local "abeClientInformation") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addTextFieldsIfSimulated_0 : JR.Method
jm_addTextFieldsIfSimulated_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "key" "" (JR.field "ORIENTATION_SENSOR_INPUT" (JR.callStatic OrientationData.jm_getInstance_0 [])), 
                    JR.declare "hashtable" "" (JR.invoke "get_0" (JR.callStatic GameFeatureChoiceGroups.jm_getExclusiveInstance_0 []) []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "hashtable") JR.null) (JR.run [ 
                        JR.declare "listCanBeNull" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.local "key") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "listCanBeNull") JR.null) (JR.run [ 
                            JR.declare "list" "" (JR.local "listCanBeNull"), 
                            JR.ifElse (JR.invoke "contains_1" (JR.local "list") [ (JR.field "SIMULATED_ORIENTATION_SENSORS" (JR.callStatic SensorFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                JR.exec (JR.invoke "addTextFields_0" JR.this []) ]) identity ]) identity ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_addTextFields_0 : JR.Method
jm_addTextFields_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "hashtable" "" (JR.callStatic GameConfigurationTextInput.jm_getHashtable_0 []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "hashtable") []), 
                    JR.declare "objectArray" "" (JR.invoke "getKeysAsArray_1" (JR.callStatic HashtableUtil.jm_getInstance_0 []) [ (JR.local "hashtable") ]), 
                    JR.declare "gameConfigurationTextInput" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "textField" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70792 -> (JR.setLocal "index" "I" (JR.lit jwN70792))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "gameConfigurationTextInput" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.aget (JR.local "objectArray") (JR.local "index")) ])), 
                        JR.exec (JR.setLocal "textField" "" (JR.new TextField.jnew_4 [ (JR.invoke "getLabel_0" (JR.local "gameConfigurationTextInput") []), (JR.invoke "getText_0" (JR.local "gameConfigurationTextInput") []), (JR.int 30), TextField.jstatic_ANY ])), 
                        JR.exec (JR.invoke "appendItem_2" (JR.thisField "meUtil") [ JR.this, (JR.local "textField") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_addConfiguration_0 : JR.Method
jm_addConfiguration_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "METHOD_NAME" "" (JR.str "addConfiguration"), 
                    JR.declare "NAME" "" (JR.str "Name: "), 
                    JR.declare "list" "" (JR.invoke "getOptionsBasicArrayList_0" (JR.callStatic GameConfigurationSingleton.jm_getInstance_0 []) []), 
                    JR.declare "GAUGE_CHANGE" "" (JR.field "GAUGE_CHANGE" (JR.callStatic MyCommandsFactory.jm_getInstance_0 [])), 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "gameConfiguration" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "gauge" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71581 -> (JR.setLocal "index" "I" (JR.lit jwN71581))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "gameConfiguration" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.local "NAME") ]) [ (JR.invoke "toString_0" (JR.local "gameConfiguration") []) ]) []), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.exec (JR.setLocal "gauge" "" (JR.new GameConfigurationGauge.jnew_1 [ (JR.local "gameConfiguration") ])), 
                        JR.exec (JR.invoke "setDefaultCommand_1" (JR.local "gauge") [ (JR.local "GAUGE_CHANGE") ]), 
                        JR.exec (JR.invoke "setItemCommandListener_1" (JR.local "gauge") [ (JR.new GameFeatureItemCommandListener.jnew_1 [ JR.this ]) ]), 
                        JR.exec (JR.invoke "appendItem_2" (JR.thisField "meUtil") [ JR.this, (JR.local "gauge") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        (JR.run [ 
                    JR.declare "gameCommandsFactory" "" (JR.callStatic GameCommandsFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "CLOSE_OPTIONS" (JR.local "gameCommandsFactory")) ]), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "DEFAULT_OPTIONS" (JR.local "gameCommandsFactory")) ]), 
                    JR.exec (JR.invoke "setCommandListener_1" JR.this [ (JR.local "cmdListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_save_1 : JR.Method
jm_save_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" JR.this []), 
                    JR.declare "item" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72165 -> (JR.setLocal "index" "I" (JR.lit jwN72165))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "item" "" (JR.invoke "get_1" JR.this [ (JR.local "index") ])), 
                        JR.ifElse (JR.instanceOf "GameConfigurationGauge" (JR.local "item")) (JR.run [ 
                            JR.exec (JR.invoke "update_1" (JR.callStatic GameConfigurationUtil.jm_getInstance_0 []) [ (JR.local "item") ]) ]) (JR.run [ 
                        JR.ifElse (JR.instanceOf "TextField" (JR.local "item")) (JR.run [ 
                            JR.exec (JR.callStatic GameConfigurationTextInput.jm_update_1 [ (JR.local "item") ]) ]) identity ]) ]) ], 
                    JR.exec (JR.invoke "updateCompetitionValue_0" (JR.callStatic GameConfigurationUtil.jm_getInstance_0 []) []), 
                    JR.declare "hashtable" "" (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                    JR.declare "SCALE" "" (JR.field "SCALE" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 [])), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.invoke "getName_0" (JR.local "SCALE") []), (JR.callStatic JInteger.jm_toString_1 [ (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.local "SCALE") []) []) ]) ]), 
                    JR.declare "keyValuePersistance" "" (JR.callStatic GameConfigurationPersistanceSingleton.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "clear_0" (JR.local "keyValuePersistance") []), 
                    JR.exec (JR.invoke "loadAll_1" (JR.local "keyValuePersistance") [ (JR.local "abeClientInformation") ]), 
                    JR.declare "list" "" (JR.invoke "getIds_0" (JR.local "keyValuePersistance") []), 
                    JR.exec (JR.invoke "save_2" (JR.local "keyValuePersistance") [ (JR.local "abeClientInformation"), (JR.local "hashtable") ]), 
                    JR.declare "size2" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "integer" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72851 -> (JR.setLocal "index" "I" (JR.lit jwN72851))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "integer" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.exec (JR.invoke "delete_2" (JR.local "keyValuePersistance") [ (JR.local "abeClientInformation"), (JR.invoke "intValue_0" (JR.local "integer") []) ]) ]) ] ])
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

