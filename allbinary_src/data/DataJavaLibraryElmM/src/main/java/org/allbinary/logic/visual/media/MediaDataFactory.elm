module Org.Allbinary.Logic.Visual.Media.MediaDataFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.media
-}

import JR
import Org.Allbinary.Logic.Visual.Media.MediaData as MediaData


jclass : String
jclass =
    "MediaDataFactory"


jchain : List String
jchain =
    [ "MediaDataFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "AVI", JR.defaultOf "" ), ( "BMP", JR.defaultOf "" ), ( "CEL", JR.defaultOf "" ), ( "FITS", JR.defaultOf "" ), ( "FLI", JR.defaultOf "" ), ( "GBR", JR.defaultOf "" ), ( "GIF", JR.defaultOf "" ), ( "GIH", JR.defaultOf "" ), ( "JPG", JR.defaultOf "" ), ( "PIX", JR.defaultOf "" ), ( "PNG", JR.defaultOf "" ), ( "PNM", JR.defaultOf "" ), ( "PSD", JR.defaultOf "" ), ( "PSP", JR.defaultOf "" ), ( "PS", JR.defaultOf "" ), ( "SGI", JR.defaultOf "" ), ( "SWF", JR.defaultOf "" ), ( "TGA", JR.defaultOf "" ), ( "TIFF", JR.defaultOf "" ), ( "WMF", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MediaDataFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MediaDataFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "AVI" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "avi") ])),
                JR.exec (JR.setField "BMP" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "bmp") ])),
                JR.exec (JR.setField "CEL" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "cel") ])),
                JR.exec (JR.setField "FITS" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "fits") ])),
                JR.exec (JR.setField "FLI" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "fli") ])),
                JR.exec (JR.setField "GBR" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "gbr") ])),
                JR.exec (JR.setField "GIF" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "gif") ])),
                JR.exec (JR.setField "GIH" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "gih") ])),
                JR.exec (JR.setField "JPG" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "jpg") ])),
                JR.exec (JR.setField "PIX" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "pix") ])),
                JR.exec (JR.setField "PNG" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "png") ])),
                JR.exec (JR.setField "PNM" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "pnm") ])),
                JR.exec (JR.setField "PSD" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "psd") ])),
                JR.exec (JR.setField "PSP" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "psp") ])),
                JR.exec (JR.setField "PS" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "ps") ])),
                JR.exec (JR.setField "SGI" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "SGI") ])),
                JR.exec (JR.setField "SWF" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "swf") ])),
                JR.exec (JR.setField "TGA" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "tga") ])),
                JR.exec (JR.setField "TIFF" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "tiff") ])),
                JR.exec (JR.setField "WMF" "" JR.this (JR.new MediaData.jnew_1 [ (JR.str "wmf") ])),
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

