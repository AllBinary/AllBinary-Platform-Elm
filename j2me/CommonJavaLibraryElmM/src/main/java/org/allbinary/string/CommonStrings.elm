module CommonStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.string
-}

import JR



jclass : String
jclass =
    "CommonStrings"


jchain : List String
jchain =
    [ "CommonStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "EMPTY", JR.defaultOf "" ), ( "CREATE_IMAGE", JR.defaultOf "" ), ( "PLEASE_WAIT", JR.defaultOf "" ), ( "PLEASE_WAIT_FOR_SERVER", JR.defaultOf "" ), ( "PERIODS", JR.defaultOf "" ), ( "LOADING", JR.defaultOf "" ), ( "CONSTRUCTOR", JR.defaultOf "" ), ( "START", JR.defaultOf "" ), ( "END", JR.defaultOf "" ), ( "EXCEPTION", JR.defaultOf "" ), ( "EXCEPTION_LABEL", JR.defaultOf "" ), ( "CLEANUP", JR.defaultOf "" ), ( "INIT", JR.defaultOf "" ), ( "CLOSE", JR.defaultOf "" ), ( "UP", JR.defaultOf "" ), ( "DOWN", JR.defaultOf "" ), ( "LEFT", JR.defaultOf "" ), ( "RIGHT", JR.defaultOf "" ), ( "DIRECTION_NAME", JR.defaultOf "" ), ( "CREATE", JR.defaultOf "" ), ( "REMOVE", JR.defaultOf "" ), ( "UPDATE", JR.defaultOf "" ), ( "DELETE", JR.defaultOf "" ), ( "delete", JR.defaultOf "" ), ( "LOAD", JR.defaultOf "" ), ( "SAVE", JR.defaultOf "" ), ( "ADD", JR.defaultOf "" ), ( "DROP", JR.defaultOf "" ), ( "INSERT", JR.defaultOf "" ), ( "VISIT", JR.defaultOf "" ), ( "START_METHOD_NAME", JR.defaultOf "" ), ( "END_METHOD_NAME", JR.defaultOf "" ), ( "GET", JR.defaultOf "" ), ( "PROCESS", JR.defaultOf "" ), ( "GET_INSTANCE", JR.defaultOf "" ), ( "GET_LIST", JR.defaultOf "" ), ( "RUN", JR.defaultOf "" ), ( "START_RUNNABLE", JR.defaultOf "" ), ( "RUNNING", JR.defaultOf "" ), ( "END_RUNNABLE", JR.defaultOf "" ), ( "DISABLE", JR.defaultOf "" ), ( "ENABLE", JR.defaultOf "" ), ( "SUCCESS", JR.defaultOf "" ), ( "FAILURE", JR.defaultOf "" ), ( "NOT_IMPLEMENTED", JR.defaultOf "" ), ( "UNKNOWN", JR.defaultOf "" ), ( "ON_EVENT", JR.defaultOf "" ), ( "IS_VALID", JR.defaultOf "" ), ( "TOSTRING", JR.defaultOf "" ), ( "ADD_LISTENER", JR.defaultOf "" ), ( "REMOVE_LISTENER", JR.defaultOf "" ), ( "SIZE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommonStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CommonStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "EMPTY" "" JR.this (JR.str "Empty")),
                JR.exec (JR.setField "CREATE_IMAGE" "" JR.this (JR.str "createImage")),
                JR.exec (JR.setField "PLEASE_WAIT" "" JR.this (JR.str "Please Wait")),
                JR.exec (JR.setField "PLEASE_WAIT_FOR_SERVER" "" JR.this (JR.str "Please Wait Getting Data From Server...")),
                JR.exec (JR.setField "PERIODS" "" JR.this (JR.str "...")),
                JR.exec (JR.setField "LOADING" "" JR.this (JR.str "Loading...")),
                JR.exec (JR.setField "CONSTRUCTOR" "" JR.this (JR.str "Constructor")),
                JR.exec (JR.setField "START" "" JR.this (JR.str "Start")),
                JR.exec (JR.setField "END" "" JR.this (JR.str "End")),
                JR.exec (JR.setField "EXCEPTION" "" JR.this (JR.str "Exception")),
                JR.exec (JR.setField "EXCEPTION_LABEL" "" JR.this (JR.str "Exception: ")),
                JR.exec (JR.setField "CLEANUP" "" JR.this (JR.str "cleanup")),
                JR.exec (JR.setField "INIT" "" JR.this (JR.str "init")),
                JR.exec (JR.setField "CLOSE" "" JR.this (JR.str "close")),
                JR.exec (JR.setField "UP" "" JR.this (JR.str "up")),
                JR.exec (JR.setField "DOWN" "" JR.this (JR.str "down")),
                JR.exec (JR.setField "LEFT" "" JR.this (JR.str "left")),
                JR.exec (JR.setField "RIGHT" "" JR.this (JR.str "right")),
                JR.exec (JR.setField "DIRECTION_NAME" "" JR.this (JR.arrayOf "" [ (JR.thisField "DOWN"), (JR.thisField "LEFT"), (JR.thisField "RIGHT"), (JR.thisField "UP") ])),
                JR.exec (JR.setField "CREATE" "" JR.this (JR.str "Create")),
                JR.exec (JR.setField "REMOVE" "" JR.this (JR.str "Remove")),
                JR.exec (JR.setField "UPDATE" "" JR.this (JR.str "Update")),
                JR.exec (JR.setField "DELETE" "" JR.this (JR.str "Delete")),
                JR.exec (JR.setField "delete" "" JR.this (JR.str "delete")),
                JR.exec (JR.setField "LOAD" "" JR.this (JR.str "load")),
                JR.exec (JR.setField "SAVE" "" JR.this (JR.str "save")),
                JR.exec (JR.setField "ADD" "" JR.this (JR.str "Add")),
                JR.exec (JR.setField "DROP" "" JR.this (JR.str "Drop")),
                JR.exec (JR.setField "INSERT" "" JR.this (JR.str "Insert")),
                JR.exec (JR.setField "VISIT" "" JR.this (JR.str "visit")),
                JR.exec (JR.setField "START_METHOD_NAME" "" JR.this (JR.thisField "START")),
                JR.exec (JR.setField "END_METHOD_NAME" "" JR.this (JR.str "end")),
                JR.exec (JR.setField "GET" "" JR.this (JR.str "get")),
                JR.exec (JR.setField "PROCESS" "" JR.this (JR.str "process")),
                JR.exec (JR.setField "GET_INSTANCE" "" JR.this (JR.str "getInstance")),
                JR.exec (JR.setField "GET_LIST" "" JR.this (JR.str "getList")),
                JR.exec (JR.setField "RUN" "" JR.this (JR.str "run")),
                JR.exec (JR.setField "START_RUNNABLE" "" JR.this (JR.str "Start Runnable")),
                JR.exec (JR.setField "RUNNING" "" JR.this (JR.str "Running")),
                JR.exec (JR.setField "END_RUNNABLE" "" JR.this (JR.str "End Runnable")),
                JR.exec (JR.setField "DISABLE" "" JR.this (JR.str "disable")),
                JR.exec (JR.setField "ENABLE" "" JR.this (JR.str "enable")),
                JR.exec (JR.setField "SUCCESS" "" JR.this (JR.str "Command Success")),
                JR.exec (JR.setField "FAILURE" "" JR.this (JR.str "Command Failed")),
                JR.exec (JR.setField "NOT_IMPLEMENTED" "" JR.this (JR.str "Not Implemented")),
                JR.exec (JR.setField "UNKNOWN" "" JR.this (JR.str "Unknown")),
                JR.exec (JR.setField "ON_EVENT" "" JR.this (JR.str "onEvent")),
                JR.exec (JR.setField "IS_VALID" "" JR.this (JR.str "isValid")),
                JR.exec (JR.setField "TOSTRING" "" JR.this (JR.str "toString")),
                JR.exec (JR.setField "ADD_LISTENER" "" JR.this (JR.str "addListener")),
                JR.exec (JR.setField "REMOVE_LISTENER" "" JR.this (JR.str "removeListener")),
                JR.exec (JR.setField "SIZE" "" JR.this (JR.str "size")),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

