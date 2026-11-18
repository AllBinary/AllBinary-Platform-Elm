module Org.Allbinary.Logic.Communication.Ftp.Configuration.FtpConfigurationData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.ftp.configuration
-}

import JR



jclass : String
jclass =
    "FtpConfigurationData"


jchain : List String
jchain =
    [ "FtpConfigurationData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FtpConfigurationData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_SERVER", jstatic_SERVER ), ( "jstatic_PATH", jstatic_PATH ), ( "jstatic_USERNAME", jstatic_USERNAME ), ( "jstatic_PASSWORD", jstatic_PASSWORD ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "FtpConfigurationData" jclinit "NAME"
        (JR.str "FTP_NAME")
        s


jstatic_SERVER : JR.M
jstatic_SERVER s =
    JR.static "FtpConfigurationData" jclinit "SERVER"
        (JR.str "FTP_SERVER")
        s


jstatic_PATH : JR.M
jstatic_PATH s =
    JR.static "FtpConfigurationData" jclinit "PATH"
        (JR.str "FTP_PATH")
        s


jstatic_USERNAME : JR.M
jstatic_USERNAME s =
    JR.static "FtpConfigurationData" jclinit "USERNAME"
        (JR.str "FTP_USERNAME")
        s


jstatic_PASSWORD : JR.M
jstatic_PASSWORD s =
    JR.static "FtpConfigurationData" jclinit "PASSWORD"
        (JR.str "FTP_PASSWORD")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

