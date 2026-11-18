module Org.Allbinary.Logic.Communication.Http.File.Upload.FileUploadData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.http.file.upload
-}

import JR



jclass : String
jclass =
    "FileUploadData"


jchain : List String
jchain =
    [ "FileUploadData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "FILE", JR.defaultOf "" ), ( "UPLOAD_TO_FILE_PATH", JR.defaultOf "" ), ( "FILE_DATA", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FileUploadData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FileUploadData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "FILE" "" JR.this (JR.str "download_file_permissions.xml")),
                JR.exec (JR.setField "UPLOAD_TO_FILE_PATH" "" JR.this (JR.str "FILE_UPLOAD_UPLOAD_TO_FILE_PATH")),
                JR.exec (JR.setField "FILE_DATA" "" JR.this (JR.str "FILE_UPLOAD_FILE_DATA")),
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

