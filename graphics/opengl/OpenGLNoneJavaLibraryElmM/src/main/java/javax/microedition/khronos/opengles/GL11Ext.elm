module Javax.Microedition.Khronos.Opengles.GL11Ext exposing (..)

{-| Generated Code Do Not Modify package javax.microedition.khronos.opengles
-}

import JR
import Javax.Microedition.Khronos.Opengles.GL as GL


jclass : String
jclass =
    "GL11Ext"


jchain : List String
jchain =
    [ "GL11Ext" ]
        ++ GL.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GL11Ext"
        []
        [ ( "jstatic_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES", jstatic_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES ), ( "jstatic_GL_MATRIX_INDEX_ARRAY_OES", jstatic_GL_MATRIX_INDEX_ARRAY_OES ), ( "jstatic_GL_MATRIX_INDEX_ARRAY_POINTER_OES", jstatic_GL_MATRIX_INDEX_ARRAY_POINTER_OES ), ( "jstatic_GL_MATRIX_INDEX_ARRAY_SIZE_OES", jstatic_GL_MATRIX_INDEX_ARRAY_SIZE_OES ), ( "jstatic_GL_MATRIX_INDEX_ARRAY_STRIDE_OES", jstatic_GL_MATRIX_INDEX_ARRAY_STRIDE_OES ), ( "jstatic_GL_MATRIX_INDEX_ARRAY_TYPE_OES", jstatic_GL_MATRIX_INDEX_ARRAY_TYPE_OES ), ( "jstatic_GL_MATRIX_PALETTE_OES", jstatic_GL_MATRIX_PALETTE_OES ), ( "jstatic_GL_MAX_PALETTE_MATRICES_OES", jstatic_GL_MAX_PALETTE_MATRICES_OES ), ( "jstatic_GL_MAX_VERTEX_UNITS_OES", jstatic_GL_MAX_VERTEX_UNITS_OES ), ( "jstatic_GL_TEXTURE_CROP_RECT_OES", jstatic_GL_TEXTURE_CROP_RECT_OES ), ( "jstatic_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES", jstatic_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES ), ( "jstatic_GL_WEIGHT_ARRAY_OES", jstatic_GL_WEIGHT_ARRAY_OES ), ( "jstatic_GL_WEIGHT_ARRAY_POINTER_OES", jstatic_GL_WEIGHT_ARRAY_POINTER_OES ), ( "jstatic_GL_WEIGHT_ARRAY_SIZE_OES", jstatic_GL_WEIGHT_ARRAY_SIZE_OES ), ( "jstatic_GL_WEIGHT_ARRAY_STRIDE_OES", jstatic_GL_WEIGHT_ARRAY_STRIDE_OES ), ( "jstatic_GL_WEIGHT_ARRAY_TYPE_OES", jstatic_GL_WEIGHT_ARRAY_TYPE_OES ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES : JR.M
jstatic_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES s =
    JR.static "GL11Ext" jclinit "GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES"
        (JR.int 35742)
        s


jstatic_GL_MATRIX_INDEX_ARRAY_OES : JR.M
jstatic_GL_MATRIX_INDEX_ARRAY_OES s =
    JR.static "GL11Ext" jclinit "GL_MATRIX_INDEX_ARRAY_OES"
        (JR.int 34884)
        s


jstatic_GL_MATRIX_INDEX_ARRAY_POINTER_OES : JR.M
jstatic_GL_MATRIX_INDEX_ARRAY_POINTER_OES s =
    JR.static "GL11Ext" jclinit "GL_MATRIX_INDEX_ARRAY_POINTER_OES"
        (JR.int 34889)
        s


jstatic_GL_MATRIX_INDEX_ARRAY_SIZE_OES : JR.M
jstatic_GL_MATRIX_INDEX_ARRAY_SIZE_OES s =
    JR.static "GL11Ext" jclinit "GL_MATRIX_INDEX_ARRAY_SIZE_OES"
        (JR.int 34886)
        s


jstatic_GL_MATRIX_INDEX_ARRAY_STRIDE_OES : JR.M
jstatic_GL_MATRIX_INDEX_ARRAY_STRIDE_OES s =
    JR.static "GL11Ext" jclinit "GL_MATRIX_INDEX_ARRAY_STRIDE_OES"
        (JR.int 34888)
        s


jstatic_GL_MATRIX_INDEX_ARRAY_TYPE_OES : JR.M
jstatic_GL_MATRIX_INDEX_ARRAY_TYPE_OES s =
    JR.static "GL11Ext" jclinit "GL_MATRIX_INDEX_ARRAY_TYPE_OES"
        (JR.int 34887)
        s


jstatic_GL_MATRIX_PALETTE_OES : JR.M
jstatic_GL_MATRIX_PALETTE_OES s =
    JR.static "GL11Ext" jclinit "GL_MATRIX_PALETTE_OES"
        (JR.int 34880)
        s


jstatic_GL_MAX_PALETTE_MATRICES_OES : JR.M
jstatic_GL_MAX_PALETTE_MATRICES_OES s =
    JR.static "GL11Ext" jclinit "GL_MAX_PALETTE_MATRICES_OES"
        (JR.int 34882)
        s


jstatic_GL_MAX_VERTEX_UNITS_OES : JR.M
jstatic_GL_MAX_VERTEX_UNITS_OES s =
    JR.static "GL11Ext" jclinit "GL_MAX_VERTEX_UNITS_OES"
        (JR.int 34468)
        s


jstatic_GL_TEXTURE_CROP_RECT_OES : JR.M
jstatic_GL_TEXTURE_CROP_RECT_OES s =
    JR.static "GL11Ext" jclinit "GL_TEXTURE_CROP_RECT_OES"
        (JR.int 35741)
        s


jstatic_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES : JR.M
jstatic_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES s =
    JR.static "GL11Ext" jclinit "GL_WEIGHT_ARRAY_BUFFER_BINDING_OES"
        (JR.int 34974)
        s


jstatic_GL_WEIGHT_ARRAY_OES : JR.M
jstatic_GL_WEIGHT_ARRAY_OES s =
    JR.static "GL11Ext" jclinit "GL_WEIGHT_ARRAY_OES"
        (JR.int 34477)
        s


jstatic_GL_WEIGHT_ARRAY_POINTER_OES : JR.M
jstatic_GL_WEIGHT_ARRAY_POINTER_OES s =
    JR.static "GL11Ext" jclinit "GL_WEIGHT_ARRAY_POINTER_OES"
        (JR.int 34476)
        s


jstatic_GL_WEIGHT_ARRAY_SIZE_OES : JR.M
jstatic_GL_WEIGHT_ARRAY_SIZE_OES s =
    JR.static "GL11Ext" jclinit "GL_WEIGHT_ARRAY_SIZE_OES"
        (JR.int 34475)
        s


jstatic_GL_WEIGHT_ARRAY_STRIDE_OES : JR.M
jstatic_GL_WEIGHT_ARRAY_STRIDE_OES s =
    JR.static "GL11Ext" jclinit "GL_WEIGHT_ARRAY_STRIDE_OES"
        (JR.int 34474)
        s


jstatic_GL_WEIGHT_ARRAY_TYPE_OES : JR.M
jstatic_GL_WEIGHT_ARRAY_TYPE_OES s =
    JR.static "GL11Ext" jclinit "GL_WEIGHT_ARRAY_TYPE_OES"
        (JR.int 34473)
        s


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

