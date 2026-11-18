module Javax.Microedition.Khronos.Opengles.GL11 exposing (..)

{-| Generated Code Do Not Modify package javax.microedition.khronos.opengles
-}

import JR
import Javax.Microedition.Khronos.Opengles.GL10 as GL10


jclass : String
jclass =
    "GL11"


jchain : List String
jchain =
    [ "GL11" ]
        ++ GL10.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GL11"
        []
        [ ( "jstatic_GL_ACTIVE_TEXTURE", jstatic_GL_ACTIVE_TEXTURE ), ( "jstatic_GL_ADD_SIGNED", jstatic_GL_ADD_SIGNED ), ( "jstatic_GL_ALPHA_SCALE", jstatic_GL_ALPHA_SCALE ), ( "jstatic_GL_ALPHA_TEST_FUNC", jstatic_GL_ALPHA_TEST_FUNC ), ( "jstatic_GL_ALPHA_TEST_REF", jstatic_GL_ALPHA_TEST_REF ), ( "jstatic_GL_ARRAY_BUFFER", jstatic_GL_ARRAY_BUFFER ), ( "jstatic_GL_ARRAY_BUFFER_BINDING", jstatic_GL_ARRAY_BUFFER_BINDING ), ( "jstatic_GL_BLEND_DST", jstatic_GL_BLEND_DST ), ( "jstatic_GL_BLEND_SRC", jstatic_GL_BLEND_SRC ), ( "jstatic_GL_BUFFER_ACCESS", jstatic_GL_BUFFER_ACCESS ), ( "jstatic_GL_BUFFER_SIZE", jstatic_GL_BUFFER_SIZE ), ( "jstatic_GL_BUFFER_USAGE", jstatic_GL_BUFFER_USAGE ), ( "jstatic_GL_CLIENT_ACTIVE_TEXTURE", jstatic_GL_CLIENT_ACTIVE_TEXTURE ), ( "jstatic_GL_CLIP_PLANE0", jstatic_GL_CLIP_PLANE0 ), ( "jstatic_GL_CLIP_PLANE1", jstatic_GL_CLIP_PLANE1 ), ( "jstatic_GL_CLIP_PLANE2", jstatic_GL_CLIP_PLANE2 ), ( "jstatic_GL_CLIP_PLANE3", jstatic_GL_CLIP_PLANE3 ), ( "jstatic_GL_CLIP_PLANE4", jstatic_GL_CLIP_PLANE4 ), ( "jstatic_GL_CLIP_PLANE5", jstatic_GL_CLIP_PLANE5 ), ( "jstatic_GL_COLOR_ARRAY_BUFFER_BINDING", jstatic_GL_COLOR_ARRAY_BUFFER_BINDING ), ( "jstatic_GL_COLOR_ARRAY_POINTER", jstatic_GL_COLOR_ARRAY_POINTER ), ( "jstatic_GL_COLOR_ARRAY_SIZE", jstatic_GL_COLOR_ARRAY_SIZE ), ( "jstatic_GL_COLOR_ARRAY_STRIDE", jstatic_GL_COLOR_ARRAY_STRIDE ), ( "jstatic_GL_COLOR_ARRAY_TYPE", jstatic_GL_COLOR_ARRAY_TYPE ), ( "jstatic_GL_COLOR_CLEAR_VALUE", jstatic_GL_COLOR_CLEAR_VALUE ), ( "jstatic_GL_COLOR_WRITEMASK", jstatic_GL_COLOR_WRITEMASK ), ( "jstatic_GL_COMBINE", jstatic_GL_COMBINE ), ( "jstatic_GL_COMBINE_ALPHA", jstatic_GL_COMBINE_ALPHA ), ( "jstatic_GL_COMBINE_RGB", jstatic_GL_COMBINE_RGB ), ( "jstatic_GL_CONSTANT", jstatic_GL_CONSTANT ), ( "jstatic_GL_COORD_REPLACE_OES", jstatic_GL_COORD_REPLACE_OES ), ( "jstatic_GL_CULL_FACE_MODE", jstatic_GL_CULL_FACE_MODE ), ( "jstatic_GL_CURRENT_COLOR", jstatic_GL_CURRENT_COLOR ), ( "jstatic_GL_CURRENT_NORMAL", jstatic_GL_CURRENT_NORMAL ), ( "jstatic_GL_CURRENT_TEXTURE_COORDS", jstatic_GL_CURRENT_TEXTURE_COORDS ), ( "jstatic_GL_DEPTH_CLEAR_VALUE", jstatic_GL_DEPTH_CLEAR_VALUE ), ( "jstatic_GL_DEPTH_FUNC", jstatic_GL_DEPTH_FUNC ), ( "jstatic_GL_DEPTH_RANGE", jstatic_GL_DEPTH_RANGE ), ( "jstatic_GL_DEPTH_WRITEMASK", jstatic_GL_DEPTH_WRITEMASK ), ( "jstatic_GL_DOT3_RGB", jstatic_GL_DOT3_RGB ), ( "jstatic_GL_DOT3_RGBA", jstatic_GL_DOT3_RGBA ), ( "jstatic_GL_DYNAMIC_DRAW", jstatic_GL_DYNAMIC_DRAW ), ( "jstatic_GL_ELEMENT_ARRAY_BUFFER", jstatic_GL_ELEMENT_ARRAY_BUFFER ), ( "jstatic_GL_ELEMENT_ARRAY_BUFFER_BINDING", jstatic_GL_ELEMENT_ARRAY_BUFFER_BINDING ), ( "jstatic_GL_FRONT_FACE", jstatic_GL_FRONT_FACE ), ( "jstatic_GL_GENERATE_MIPMAP", jstatic_GL_GENERATE_MIPMAP ), ( "jstatic_GL_GENERATE_MIPMAP_HINT", jstatic_GL_GENERATE_MIPMAP_HINT ), ( "jstatic_GL_INTERPOLATE", jstatic_GL_INTERPOLATE ), ( "jstatic_GL_LINE_WIDTH", jstatic_GL_LINE_WIDTH ), ( "jstatic_GL_LOGIC_OP_MODE", jstatic_GL_LOGIC_OP_MODE ), ( "jstatic_GL_MATRIX_MODE", jstatic_GL_MATRIX_MODE ), ( "jstatic_GL_MAX_CLIP_PLANES", jstatic_GL_MAX_CLIP_PLANES ), ( "jstatic_GL_MODELVIEW_MATRIX", jstatic_GL_MODELVIEW_MATRIX ), ( "jstatic_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES", jstatic_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES ), ( "jstatic_GL_MODELVIEW_STACK_DEPTH", jstatic_GL_MODELVIEW_STACK_DEPTH ), ( "jstatic_GL_NORMAL_ARRAY_BUFFER_BINDING", jstatic_GL_NORMAL_ARRAY_BUFFER_BINDING ), ( "jstatic_GL_NORMAL_ARRAY_POINTER", jstatic_GL_NORMAL_ARRAY_POINTER ), ( "jstatic_GL_NORMAL_ARRAY_STRIDE", jstatic_GL_NORMAL_ARRAY_STRIDE ), ( "jstatic_GL_NORMAL_ARRAY_TYPE", jstatic_GL_NORMAL_ARRAY_TYPE ), ( "jstatic_GL_OPERAND0_ALPHA", jstatic_GL_OPERAND0_ALPHA ), ( "jstatic_GL_OPERAND0_RGB", jstatic_GL_OPERAND0_RGB ), ( "jstatic_GL_OPERAND1_ALPHA", jstatic_GL_OPERAND1_ALPHA ), ( "jstatic_GL_OPERAND1_RGB", jstatic_GL_OPERAND1_RGB ), ( "jstatic_GL_OPERAND2_ALPHA", jstatic_GL_OPERAND2_ALPHA ), ( "jstatic_GL_OPERAND2_RGB", jstatic_GL_OPERAND2_RGB ), ( "jstatic_GL_POINT_DISTANCE_ATTENUATION", jstatic_GL_POINT_DISTANCE_ATTENUATION ), ( "jstatic_GL_POINT_FADE_THRESHOLD_SIZE", jstatic_GL_POINT_FADE_THRESHOLD_SIZE ), ( "jstatic_GL_POINT_SIZE", jstatic_GL_POINT_SIZE ), ( "jstatic_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES", jstatic_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES ), ( "jstatic_GL_POINT_SIZE_ARRAY_OES", jstatic_GL_POINT_SIZE_ARRAY_OES ), ( "jstatic_GL_POINT_SIZE_ARRAY_POINTER_OES", jstatic_GL_POINT_SIZE_ARRAY_POINTER_OES ), ( "jstatic_GL_POINT_SIZE_ARRAY_STRIDE_OES", jstatic_GL_POINT_SIZE_ARRAY_STRIDE_OES ), ( "jstatic_GL_POINT_SIZE_ARRAY_TYPE_OES", jstatic_GL_POINT_SIZE_ARRAY_TYPE_OES ), ( "jstatic_GL_POINT_SIZE_MAX", jstatic_GL_POINT_SIZE_MAX ), ( "jstatic_GL_POINT_SIZE_MIN", jstatic_GL_POINT_SIZE_MIN ), ( "jstatic_GL_POINT_SPRITE_OES", jstatic_GL_POINT_SPRITE_OES ), ( "jstatic_GL_POLYGON_OFFSET_FACTOR", jstatic_GL_POLYGON_OFFSET_FACTOR ), ( "jstatic_GL_POLYGON_OFFSET_UNITS", jstatic_GL_POLYGON_OFFSET_UNITS ), ( "jstatic_GL_PREVIOUS", jstatic_GL_PREVIOUS ), ( "jstatic_GL_PRIMARY_COLOR", jstatic_GL_PRIMARY_COLOR ), ( "jstatic_GL_PROJECTION_MATRIX", jstatic_GL_PROJECTION_MATRIX ), ( "jstatic_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES", jstatic_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES ), ( "jstatic_GL_PROJECTION_STACK_DEPTH", jstatic_GL_PROJECTION_STACK_DEPTH ), ( "jstatic_GL_RGB_SCALE", jstatic_GL_RGB_SCALE ), ( "jstatic_GL_SAMPLE_BUFFERS", jstatic_GL_SAMPLE_BUFFERS ), ( "jstatic_GL_SAMPLE_COVERAGE_INVERT", jstatic_GL_SAMPLE_COVERAGE_INVERT ), ( "jstatic_GL_SAMPLE_COVERAGE_VALUE", jstatic_GL_SAMPLE_COVERAGE_VALUE ), ( "jstatic_GL_SAMPLES", jstatic_GL_SAMPLES ), ( "jstatic_GL_SCISSOR_BOX", jstatic_GL_SCISSOR_BOX ), ( "jstatic_GL_SHADE_MODEL", jstatic_GL_SHADE_MODEL ), ( "jstatic_GL_SRC0_ALPHA", jstatic_GL_SRC0_ALPHA ), ( "jstatic_GL_SRC0_RGB", jstatic_GL_SRC0_RGB ), ( "jstatic_GL_SRC1_ALPHA", jstatic_GL_SRC1_ALPHA ), ( "jstatic_GL_SRC1_RGB", jstatic_GL_SRC1_RGB ), ( "jstatic_GL_SRC2_ALPHA", jstatic_GL_SRC2_ALPHA ), ( "jstatic_GL_SRC2_RGB", jstatic_GL_SRC2_RGB ), ( "jstatic_GL_STATIC_DRAW", jstatic_GL_STATIC_DRAW ), ( "jstatic_GL_STENCIL_CLEAR_VALUE", jstatic_GL_STENCIL_CLEAR_VALUE ), ( "jstatic_GL_STENCIL_FAIL", jstatic_GL_STENCIL_FAIL ), ( "jstatic_GL_STENCIL_FUNC", jstatic_GL_STENCIL_FUNC ), ( "jstatic_GL_STENCIL_PASS_DEPTH_FAIL", jstatic_GL_STENCIL_PASS_DEPTH_FAIL ), ( "jstatic_GL_STENCIL_PASS_DEPTH_PASS", jstatic_GL_STENCIL_PASS_DEPTH_PASS ), ( "jstatic_GL_STENCIL_REF", jstatic_GL_STENCIL_REF ), ( "jstatic_GL_STENCIL_VALUE_MASK", jstatic_GL_STENCIL_VALUE_MASK ), ( "jstatic_GL_STENCIL_WRITEMASK", jstatic_GL_STENCIL_WRITEMASK ), ( "jstatic_GL_SUBTRACT", jstatic_GL_SUBTRACT ), ( "jstatic_GL_TEXTURE_BINDING_2D", jstatic_GL_TEXTURE_BINDING_2D ), ( "jstatic_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING", jstatic_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING ), ( "jstatic_GL_TEXTURE_COORD_ARRAY_POINTER", jstatic_GL_TEXTURE_COORD_ARRAY_POINTER ), ( "jstatic_GL_TEXTURE_COORD_ARRAY_SIZE", jstatic_GL_TEXTURE_COORD_ARRAY_SIZE ), ( "jstatic_GL_TEXTURE_COORD_ARRAY_STRIDE", jstatic_GL_TEXTURE_COORD_ARRAY_STRIDE ), ( "jstatic_GL_TEXTURE_COORD_ARRAY_TYPE", jstatic_GL_TEXTURE_COORD_ARRAY_TYPE ), ( "jstatic_GL_TEXTURE_MATRIX", jstatic_GL_TEXTURE_MATRIX ), ( "jstatic_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES", jstatic_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES ), ( "jstatic_GL_TEXTURE_STACK_DEPTH", jstatic_GL_TEXTURE_STACK_DEPTH ), ( "jstatic_GL_VERTEX_ARRAY_BUFFER_BINDING", jstatic_GL_VERTEX_ARRAY_BUFFER_BINDING ), ( "jstatic_GL_VERTEX_ARRAY_POINTER", jstatic_GL_VERTEX_ARRAY_POINTER ), ( "jstatic_GL_VERTEX_ARRAY_SIZE", jstatic_GL_VERTEX_ARRAY_SIZE ), ( "jstatic_GL_VERTEX_ARRAY_STRIDE", jstatic_GL_VERTEX_ARRAY_STRIDE ), ( "jstatic_GL_VERTEX_ARRAY_TYPE", jstatic_GL_VERTEX_ARRAY_TYPE ), ( "jstatic_GL_VIEWPORT", jstatic_GL_VIEWPORT ), ( "jstatic_GL_WRITE_ONLY", jstatic_GL_WRITE_ONLY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_GL_ACTIVE_TEXTURE : JR.M
jstatic_GL_ACTIVE_TEXTURE s =
    JR.static "GL11" jclinit "GL_ACTIVE_TEXTURE"
        (JR.int 34016)
        s


jstatic_GL_ADD_SIGNED : JR.M
jstatic_GL_ADD_SIGNED s =
    JR.static "GL11" jclinit "GL_ADD_SIGNED"
        (JR.int 34164)
        s


jstatic_GL_ALPHA_SCALE : JR.M
jstatic_GL_ALPHA_SCALE s =
    JR.static "GL11" jclinit "GL_ALPHA_SCALE"
        (JR.int 3356)
        s


jstatic_GL_ALPHA_TEST_FUNC : JR.M
jstatic_GL_ALPHA_TEST_FUNC s =
    JR.static "GL11" jclinit "GL_ALPHA_TEST_FUNC"
        (JR.int 3009)
        s


jstatic_GL_ALPHA_TEST_REF : JR.M
jstatic_GL_ALPHA_TEST_REF s =
    JR.static "GL11" jclinit "GL_ALPHA_TEST_REF"
        (JR.int 3010)
        s


jstatic_GL_ARRAY_BUFFER : JR.M
jstatic_GL_ARRAY_BUFFER s =
    JR.static "GL11" jclinit "GL_ARRAY_BUFFER"
        (JR.int 34962)
        s


jstatic_GL_ARRAY_BUFFER_BINDING : JR.M
jstatic_GL_ARRAY_BUFFER_BINDING s =
    JR.static "GL11" jclinit "GL_ARRAY_BUFFER_BINDING"
        (JR.int 34964)
        s


jstatic_GL_BLEND_DST : JR.M
jstatic_GL_BLEND_DST s =
    JR.static "GL11" jclinit "GL_BLEND_DST"
        (JR.int 3040)
        s


jstatic_GL_BLEND_SRC : JR.M
jstatic_GL_BLEND_SRC s =
    JR.static "GL11" jclinit "GL_BLEND_SRC"
        (JR.int 3041)
        s


jstatic_GL_BUFFER_ACCESS : JR.M
jstatic_GL_BUFFER_ACCESS s =
    JR.static "GL11" jclinit "GL_BUFFER_ACCESS"
        (JR.int 35003)
        s


jstatic_GL_BUFFER_SIZE : JR.M
jstatic_GL_BUFFER_SIZE s =
    JR.static "GL11" jclinit "GL_BUFFER_SIZE"
        (JR.int 34660)
        s


jstatic_GL_BUFFER_USAGE : JR.M
jstatic_GL_BUFFER_USAGE s =
    JR.static "GL11" jclinit "GL_BUFFER_USAGE"
        (JR.int 34661)
        s


jstatic_GL_CLIENT_ACTIVE_TEXTURE : JR.M
jstatic_GL_CLIENT_ACTIVE_TEXTURE s =
    JR.static "GL11" jclinit "GL_CLIENT_ACTIVE_TEXTURE"
        (JR.int 34017)
        s


jstatic_GL_CLIP_PLANE0 : JR.M
jstatic_GL_CLIP_PLANE0 s =
    JR.static "GL11" jclinit "GL_CLIP_PLANE0"
        (JR.int 12288)
        s


jstatic_GL_CLIP_PLANE1 : JR.M
jstatic_GL_CLIP_PLANE1 s =
    JR.static "GL11" jclinit "GL_CLIP_PLANE1"
        (JR.int 12289)
        s


jstatic_GL_CLIP_PLANE2 : JR.M
jstatic_GL_CLIP_PLANE2 s =
    JR.static "GL11" jclinit "GL_CLIP_PLANE2"
        (JR.int 12290)
        s


jstatic_GL_CLIP_PLANE3 : JR.M
jstatic_GL_CLIP_PLANE3 s =
    JR.static "GL11" jclinit "GL_CLIP_PLANE3"
        (JR.int 12291)
        s


jstatic_GL_CLIP_PLANE4 : JR.M
jstatic_GL_CLIP_PLANE4 s =
    JR.static "GL11" jclinit "GL_CLIP_PLANE4"
        (JR.int 12292)
        s


jstatic_GL_CLIP_PLANE5 : JR.M
jstatic_GL_CLIP_PLANE5 s =
    JR.static "GL11" jclinit "GL_CLIP_PLANE5"
        (JR.int 12293)
        s


jstatic_GL_COLOR_ARRAY_BUFFER_BINDING : JR.M
jstatic_GL_COLOR_ARRAY_BUFFER_BINDING s =
    JR.static "GL11" jclinit "GL_COLOR_ARRAY_BUFFER_BINDING"
        (JR.int 34968)
        s


jstatic_GL_COLOR_ARRAY_POINTER : JR.M
jstatic_GL_COLOR_ARRAY_POINTER s =
    JR.static "GL11" jclinit "GL_COLOR_ARRAY_POINTER"
        (JR.int 32912)
        s


jstatic_GL_COLOR_ARRAY_SIZE : JR.M
jstatic_GL_COLOR_ARRAY_SIZE s =
    JR.static "GL11" jclinit "GL_COLOR_ARRAY_SIZE"
        (JR.int 32897)
        s


jstatic_GL_COLOR_ARRAY_STRIDE : JR.M
jstatic_GL_COLOR_ARRAY_STRIDE s =
    JR.static "GL11" jclinit "GL_COLOR_ARRAY_STRIDE"
        (JR.int 32899)
        s


jstatic_GL_COLOR_ARRAY_TYPE : JR.M
jstatic_GL_COLOR_ARRAY_TYPE s =
    JR.static "GL11" jclinit "GL_COLOR_ARRAY_TYPE"
        (JR.int 32898)
        s


jstatic_GL_COLOR_CLEAR_VALUE : JR.M
jstatic_GL_COLOR_CLEAR_VALUE s =
    JR.static "GL11" jclinit "GL_COLOR_CLEAR_VALUE"
        (JR.int 3106)
        s


jstatic_GL_COLOR_WRITEMASK : JR.M
jstatic_GL_COLOR_WRITEMASK s =
    JR.static "GL11" jclinit "GL_COLOR_WRITEMASK"
        (JR.int 3107)
        s


jstatic_GL_COMBINE : JR.M
jstatic_GL_COMBINE s =
    JR.static "GL11" jclinit "GL_COMBINE"
        (JR.int 34160)
        s


jstatic_GL_COMBINE_ALPHA : JR.M
jstatic_GL_COMBINE_ALPHA s =
    JR.static "GL11" jclinit "GL_COMBINE_ALPHA"
        (JR.int 34162)
        s


jstatic_GL_COMBINE_RGB : JR.M
jstatic_GL_COMBINE_RGB s =
    JR.static "GL11" jclinit "GL_COMBINE_RGB"
        (JR.int 34161)
        s


jstatic_GL_CONSTANT : JR.M
jstatic_GL_CONSTANT s =
    JR.static "GL11" jclinit "GL_CONSTANT"
        (JR.int 34166)
        s


jstatic_GL_COORD_REPLACE_OES : JR.M
jstatic_GL_COORD_REPLACE_OES s =
    JR.static "GL11" jclinit "GL_COORD_REPLACE_OES"
        (JR.int 34914)
        s


jstatic_GL_CULL_FACE_MODE : JR.M
jstatic_GL_CULL_FACE_MODE s =
    JR.static "GL11" jclinit "GL_CULL_FACE_MODE"
        (JR.int 2885)
        s


jstatic_GL_CURRENT_COLOR : JR.M
jstatic_GL_CURRENT_COLOR s =
    JR.static "GL11" jclinit "GL_CURRENT_COLOR"
        (JR.int 2816)
        s


jstatic_GL_CURRENT_NORMAL : JR.M
jstatic_GL_CURRENT_NORMAL s =
    JR.static "GL11" jclinit "GL_CURRENT_NORMAL"
        (JR.int 2818)
        s


jstatic_GL_CURRENT_TEXTURE_COORDS : JR.M
jstatic_GL_CURRENT_TEXTURE_COORDS s =
    JR.static "GL11" jclinit "GL_CURRENT_TEXTURE_COORDS"
        (JR.int 2819)
        s


jstatic_GL_DEPTH_CLEAR_VALUE : JR.M
jstatic_GL_DEPTH_CLEAR_VALUE s =
    JR.static "GL11" jclinit "GL_DEPTH_CLEAR_VALUE"
        (JR.int 2931)
        s


jstatic_GL_DEPTH_FUNC : JR.M
jstatic_GL_DEPTH_FUNC s =
    JR.static "GL11" jclinit "GL_DEPTH_FUNC"
        (JR.int 2932)
        s


jstatic_GL_DEPTH_RANGE : JR.M
jstatic_GL_DEPTH_RANGE s =
    JR.static "GL11" jclinit "GL_DEPTH_RANGE"
        (JR.int 2928)
        s


jstatic_GL_DEPTH_WRITEMASK : JR.M
jstatic_GL_DEPTH_WRITEMASK s =
    JR.static "GL11" jclinit "GL_DEPTH_WRITEMASK"
        (JR.int 2930)
        s


jstatic_GL_DOT3_RGB : JR.M
jstatic_GL_DOT3_RGB s =
    JR.static "GL11" jclinit "GL_DOT3_RGB"
        (JR.int 34478)
        s


jstatic_GL_DOT3_RGBA : JR.M
jstatic_GL_DOT3_RGBA s =
    JR.static "GL11" jclinit "GL_DOT3_RGBA"
        (JR.int 34479)
        s


jstatic_GL_DYNAMIC_DRAW : JR.M
jstatic_GL_DYNAMIC_DRAW s =
    JR.static "GL11" jclinit "GL_DYNAMIC_DRAW"
        (JR.int 35048)
        s


jstatic_GL_ELEMENT_ARRAY_BUFFER : JR.M
jstatic_GL_ELEMENT_ARRAY_BUFFER s =
    JR.static "GL11" jclinit "GL_ELEMENT_ARRAY_BUFFER"
        (JR.int 34963)
        s


jstatic_GL_ELEMENT_ARRAY_BUFFER_BINDING : JR.M
jstatic_GL_ELEMENT_ARRAY_BUFFER_BINDING s =
    JR.static "GL11" jclinit "GL_ELEMENT_ARRAY_BUFFER_BINDING"
        (JR.int 34965)
        s


jstatic_GL_FRONT_FACE : JR.M
jstatic_GL_FRONT_FACE s =
    JR.static "GL11" jclinit "GL_FRONT_FACE"
        (JR.int 2886)
        s


jstatic_GL_GENERATE_MIPMAP : JR.M
jstatic_GL_GENERATE_MIPMAP s =
    JR.static "GL11" jclinit "GL_GENERATE_MIPMAP"
        (JR.int 33169)
        s


jstatic_GL_GENERATE_MIPMAP_HINT : JR.M
jstatic_GL_GENERATE_MIPMAP_HINT s =
    JR.static "GL11" jclinit "GL_GENERATE_MIPMAP_HINT"
        (JR.int 33170)
        s


jstatic_GL_INTERPOLATE : JR.M
jstatic_GL_INTERPOLATE s =
    JR.static "GL11" jclinit "GL_INTERPOLATE"
        (JR.int 34165)
        s


jstatic_GL_LINE_WIDTH : JR.M
jstatic_GL_LINE_WIDTH s =
    JR.static "GL11" jclinit "GL_LINE_WIDTH"
        (JR.int 2849)
        s


jstatic_GL_LOGIC_OP_MODE : JR.M
jstatic_GL_LOGIC_OP_MODE s =
    JR.static "GL11" jclinit "GL_LOGIC_OP_MODE"
        (JR.int 3056)
        s


jstatic_GL_MATRIX_MODE : JR.M
jstatic_GL_MATRIX_MODE s =
    JR.static "GL11" jclinit "GL_MATRIX_MODE"
        (JR.int 2976)
        s


jstatic_GL_MAX_CLIP_PLANES : JR.M
jstatic_GL_MAX_CLIP_PLANES s =
    JR.static "GL11" jclinit "GL_MAX_CLIP_PLANES"
        (JR.int 3378)
        s


jstatic_GL_MODELVIEW_MATRIX : JR.M
jstatic_GL_MODELVIEW_MATRIX s =
    JR.static "GL11" jclinit "GL_MODELVIEW_MATRIX"
        (JR.int 2982)
        s


jstatic_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES : JR.M
jstatic_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES s =
    JR.static "GL11" jclinit "GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES"
        (JR.int 35213)
        s


jstatic_GL_MODELVIEW_STACK_DEPTH : JR.M
jstatic_GL_MODELVIEW_STACK_DEPTH s =
    JR.static "GL11" jclinit "GL_MODELVIEW_STACK_DEPTH"
        (JR.int 2979)
        s


jstatic_GL_NORMAL_ARRAY_BUFFER_BINDING : JR.M
jstatic_GL_NORMAL_ARRAY_BUFFER_BINDING s =
    JR.static "GL11" jclinit "GL_NORMAL_ARRAY_BUFFER_BINDING"
        (JR.int 34967)
        s


jstatic_GL_NORMAL_ARRAY_POINTER : JR.M
jstatic_GL_NORMAL_ARRAY_POINTER s =
    JR.static "GL11" jclinit "GL_NORMAL_ARRAY_POINTER"
        (JR.int 32911)
        s


jstatic_GL_NORMAL_ARRAY_STRIDE : JR.M
jstatic_GL_NORMAL_ARRAY_STRIDE s =
    JR.static "GL11" jclinit "GL_NORMAL_ARRAY_STRIDE"
        (JR.int 32895)
        s


jstatic_GL_NORMAL_ARRAY_TYPE : JR.M
jstatic_GL_NORMAL_ARRAY_TYPE s =
    JR.static "GL11" jclinit "GL_NORMAL_ARRAY_TYPE"
        (JR.int 32894)
        s


jstatic_GL_OPERAND0_ALPHA : JR.M
jstatic_GL_OPERAND0_ALPHA s =
    JR.static "GL11" jclinit "GL_OPERAND0_ALPHA"
        (JR.int 34200)
        s


jstatic_GL_OPERAND0_RGB : JR.M
jstatic_GL_OPERAND0_RGB s =
    JR.static "GL11" jclinit "GL_OPERAND0_RGB"
        (JR.int 34192)
        s


jstatic_GL_OPERAND1_ALPHA : JR.M
jstatic_GL_OPERAND1_ALPHA s =
    JR.static "GL11" jclinit "GL_OPERAND1_ALPHA"
        (JR.int 34201)
        s


jstatic_GL_OPERAND1_RGB : JR.M
jstatic_GL_OPERAND1_RGB s =
    JR.static "GL11" jclinit "GL_OPERAND1_RGB"
        (JR.int 34193)
        s


jstatic_GL_OPERAND2_ALPHA : JR.M
jstatic_GL_OPERAND2_ALPHA s =
    JR.static "GL11" jclinit "GL_OPERAND2_ALPHA"
        (JR.int 34202)
        s


jstatic_GL_OPERAND2_RGB : JR.M
jstatic_GL_OPERAND2_RGB s =
    JR.static "GL11" jclinit "GL_OPERAND2_RGB"
        (JR.int 34194)
        s


jstatic_GL_POINT_DISTANCE_ATTENUATION : JR.M
jstatic_GL_POINT_DISTANCE_ATTENUATION s =
    JR.static "GL11" jclinit "GL_POINT_DISTANCE_ATTENUATION"
        (JR.int 33065)
        s


jstatic_GL_POINT_FADE_THRESHOLD_SIZE : JR.M
jstatic_GL_POINT_FADE_THRESHOLD_SIZE s =
    JR.static "GL11" jclinit "GL_POINT_FADE_THRESHOLD_SIZE"
        (JR.int 33064)
        s


jstatic_GL_POINT_SIZE : JR.M
jstatic_GL_POINT_SIZE s =
    JR.static "GL11" jclinit "GL_POINT_SIZE"
        (JR.int 2833)
        s


jstatic_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES : JR.M
jstatic_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES s =
    JR.static "GL11" jclinit "GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES"
        (JR.int 35743)
        s


jstatic_GL_POINT_SIZE_ARRAY_OES : JR.M
jstatic_GL_POINT_SIZE_ARRAY_OES s =
    JR.static "GL11" jclinit "GL_POINT_SIZE_ARRAY_OES"
        (JR.int 35740)
        s


jstatic_GL_POINT_SIZE_ARRAY_POINTER_OES : JR.M
jstatic_GL_POINT_SIZE_ARRAY_POINTER_OES s =
    JR.static "GL11" jclinit "GL_POINT_SIZE_ARRAY_POINTER_OES"
        (JR.int 35212)
        s


jstatic_GL_POINT_SIZE_ARRAY_STRIDE_OES : JR.M
jstatic_GL_POINT_SIZE_ARRAY_STRIDE_OES s =
    JR.static "GL11" jclinit "GL_POINT_SIZE_ARRAY_STRIDE_OES"
        (JR.int 35211)
        s


jstatic_GL_POINT_SIZE_ARRAY_TYPE_OES : JR.M
jstatic_GL_POINT_SIZE_ARRAY_TYPE_OES s =
    JR.static "GL11" jclinit "GL_POINT_SIZE_ARRAY_TYPE_OES"
        (JR.int 35210)
        s


jstatic_GL_POINT_SIZE_MAX : JR.M
jstatic_GL_POINT_SIZE_MAX s =
    JR.static "GL11" jclinit "GL_POINT_SIZE_MAX"
        (JR.int 33063)
        s


jstatic_GL_POINT_SIZE_MIN : JR.M
jstatic_GL_POINT_SIZE_MIN s =
    JR.static "GL11" jclinit "GL_POINT_SIZE_MIN"
        (JR.int 33062)
        s


jstatic_GL_POINT_SPRITE_OES : JR.M
jstatic_GL_POINT_SPRITE_OES s =
    JR.static "GL11" jclinit "GL_POINT_SPRITE_OES"
        (JR.int 34913)
        s


jstatic_GL_POLYGON_OFFSET_FACTOR : JR.M
jstatic_GL_POLYGON_OFFSET_FACTOR s =
    JR.static "GL11" jclinit "GL_POLYGON_OFFSET_FACTOR"
        (JR.int 32824)
        s


jstatic_GL_POLYGON_OFFSET_UNITS : JR.M
jstatic_GL_POLYGON_OFFSET_UNITS s =
    JR.static "GL11" jclinit "GL_POLYGON_OFFSET_UNITS"
        (JR.int 10752)
        s


jstatic_GL_PREVIOUS : JR.M
jstatic_GL_PREVIOUS s =
    JR.static "GL11" jclinit "GL_PREVIOUS"
        (JR.int 34168)
        s


jstatic_GL_PRIMARY_COLOR : JR.M
jstatic_GL_PRIMARY_COLOR s =
    JR.static "GL11" jclinit "GL_PRIMARY_COLOR"
        (JR.int 34167)
        s


jstatic_GL_PROJECTION_MATRIX : JR.M
jstatic_GL_PROJECTION_MATRIX s =
    JR.static "GL11" jclinit "GL_PROJECTION_MATRIX"
        (JR.int 2983)
        s


jstatic_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES : JR.M
jstatic_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES s =
    JR.static "GL11" jclinit "GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES"
        (JR.int 35214)
        s


jstatic_GL_PROJECTION_STACK_DEPTH : JR.M
jstatic_GL_PROJECTION_STACK_DEPTH s =
    JR.static "GL11" jclinit "GL_PROJECTION_STACK_DEPTH"
        (JR.int 2980)
        s


jstatic_GL_RGB_SCALE : JR.M
jstatic_GL_RGB_SCALE s =
    JR.static "GL11" jclinit "GL_RGB_SCALE"
        (JR.int 34163)
        s


jstatic_GL_SAMPLE_BUFFERS : JR.M
jstatic_GL_SAMPLE_BUFFERS s =
    JR.static "GL11" jclinit "GL_SAMPLE_BUFFERS"
        (JR.int 32936)
        s


jstatic_GL_SAMPLE_COVERAGE_INVERT : JR.M
jstatic_GL_SAMPLE_COVERAGE_INVERT s =
    JR.static "GL11" jclinit "GL_SAMPLE_COVERAGE_INVERT"
        (JR.int 32939)
        s


jstatic_GL_SAMPLE_COVERAGE_VALUE : JR.M
jstatic_GL_SAMPLE_COVERAGE_VALUE s =
    JR.static "GL11" jclinit "GL_SAMPLE_COVERAGE_VALUE"
        (JR.int 32938)
        s


jstatic_GL_SAMPLES : JR.M
jstatic_GL_SAMPLES s =
    JR.static "GL11" jclinit "GL_SAMPLES"
        (JR.int 32937)
        s


jstatic_GL_SCISSOR_BOX : JR.M
jstatic_GL_SCISSOR_BOX s =
    JR.static "GL11" jclinit "GL_SCISSOR_BOX"
        (JR.int 3088)
        s


jstatic_GL_SHADE_MODEL : JR.M
jstatic_GL_SHADE_MODEL s =
    JR.static "GL11" jclinit "GL_SHADE_MODEL"
        (JR.int 2900)
        s


jstatic_GL_SRC0_ALPHA : JR.M
jstatic_GL_SRC0_ALPHA s =
    JR.static "GL11" jclinit "GL_SRC0_ALPHA"
        (JR.int 34184)
        s


jstatic_GL_SRC0_RGB : JR.M
jstatic_GL_SRC0_RGB s =
    JR.static "GL11" jclinit "GL_SRC0_RGB"
        (JR.int 34176)
        s


jstatic_GL_SRC1_ALPHA : JR.M
jstatic_GL_SRC1_ALPHA s =
    JR.static "GL11" jclinit "GL_SRC1_ALPHA"
        (JR.int 34185)
        s


jstatic_GL_SRC1_RGB : JR.M
jstatic_GL_SRC1_RGB s =
    JR.static "GL11" jclinit "GL_SRC1_RGB"
        (JR.int 34177)
        s


jstatic_GL_SRC2_ALPHA : JR.M
jstatic_GL_SRC2_ALPHA s =
    JR.static "GL11" jclinit "GL_SRC2_ALPHA"
        (JR.int 34186)
        s


jstatic_GL_SRC2_RGB : JR.M
jstatic_GL_SRC2_RGB s =
    JR.static "GL11" jclinit "GL_SRC2_RGB"
        (JR.int 34178)
        s


jstatic_GL_STATIC_DRAW : JR.M
jstatic_GL_STATIC_DRAW s =
    JR.static "GL11" jclinit "GL_STATIC_DRAW"
        (JR.int 35044)
        s


jstatic_GL_STENCIL_CLEAR_VALUE : JR.M
jstatic_GL_STENCIL_CLEAR_VALUE s =
    JR.static "GL11" jclinit "GL_STENCIL_CLEAR_VALUE"
        (JR.int 2961)
        s


jstatic_GL_STENCIL_FAIL : JR.M
jstatic_GL_STENCIL_FAIL s =
    JR.static "GL11" jclinit "GL_STENCIL_FAIL"
        (JR.int 2964)
        s


jstatic_GL_STENCIL_FUNC : JR.M
jstatic_GL_STENCIL_FUNC s =
    JR.static "GL11" jclinit "GL_STENCIL_FUNC"
        (JR.int 2962)
        s


jstatic_GL_STENCIL_PASS_DEPTH_FAIL : JR.M
jstatic_GL_STENCIL_PASS_DEPTH_FAIL s =
    JR.static "GL11" jclinit "GL_STENCIL_PASS_DEPTH_FAIL"
        (JR.int 2965)
        s


jstatic_GL_STENCIL_PASS_DEPTH_PASS : JR.M
jstatic_GL_STENCIL_PASS_DEPTH_PASS s =
    JR.static "GL11" jclinit "GL_STENCIL_PASS_DEPTH_PASS"
        (JR.int 2966)
        s


jstatic_GL_STENCIL_REF : JR.M
jstatic_GL_STENCIL_REF s =
    JR.static "GL11" jclinit "GL_STENCIL_REF"
        (JR.int 2967)
        s


jstatic_GL_STENCIL_VALUE_MASK : JR.M
jstatic_GL_STENCIL_VALUE_MASK s =
    JR.static "GL11" jclinit "GL_STENCIL_VALUE_MASK"
        (JR.int 2963)
        s


jstatic_GL_STENCIL_WRITEMASK : JR.M
jstatic_GL_STENCIL_WRITEMASK s =
    JR.static "GL11" jclinit "GL_STENCIL_WRITEMASK"
        (JR.int 2968)
        s


jstatic_GL_SUBTRACT : JR.M
jstatic_GL_SUBTRACT s =
    JR.static "GL11" jclinit "GL_SUBTRACT"
        (JR.int 34023)
        s


jstatic_GL_TEXTURE_BINDING_2D : JR.M
jstatic_GL_TEXTURE_BINDING_2D s =
    JR.static "GL11" jclinit "GL_TEXTURE_BINDING_2D"
        (JR.int 32873)
        s


jstatic_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING : JR.M
jstatic_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING s =
    JR.static "GL11" jclinit "GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING"
        (JR.int 34970)
        s


jstatic_GL_TEXTURE_COORD_ARRAY_POINTER : JR.M
jstatic_GL_TEXTURE_COORD_ARRAY_POINTER s =
    JR.static "GL11" jclinit "GL_TEXTURE_COORD_ARRAY_POINTER"
        (JR.int 32914)
        s


jstatic_GL_TEXTURE_COORD_ARRAY_SIZE : JR.M
jstatic_GL_TEXTURE_COORD_ARRAY_SIZE s =
    JR.static "GL11" jclinit "GL_TEXTURE_COORD_ARRAY_SIZE"
        (JR.int 32904)
        s


jstatic_GL_TEXTURE_COORD_ARRAY_STRIDE : JR.M
jstatic_GL_TEXTURE_COORD_ARRAY_STRIDE s =
    JR.static "GL11" jclinit "GL_TEXTURE_COORD_ARRAY_STRIDE"
        (JR.int 32906)
        s


jstatic_GL_TEXTURE_COORD_ARRAY_TYPE : JR.M
jstatic_GL_TEXTURE_COORD_ARRAY_TYPE s =
    JR.static "GL11" jclinit "GL_TEXTURE_COORD_ARRAY_TYPE"
        (JR.int 32905)
        s


jstatic_GL_TEXTURE_MATRIX : JR.M
jstatic_GL_TEXTURE_MATRIX s =
    JR.static "GL11" jclinit "GL_TEXTURE_MATRIX"
        (JR.int 2984)
        s


jstatic_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES : JR.M
jstatic_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES s =
    JR.static "GL11" jclinit "GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES"
        (JR.int 35215)
        s


jstatic_GL_TEXTURE_STACK_DEPTH : JR.M
jstatic_GL_TEXTURE_STACK_DEPTH s =
    JR.static "GL11" jclinit "GL_TEXTURE_STACK_DEPTH"
        (JR.int 2981)
        s


jstatic_GL_VERTEX_ARRAY_BUFFER_BINDING : JR.M
jstatic_GL_VERTEX_ARRAY_BUFFER_BINDING s =
    JR.static "GL11" jclinit "GL_VERTEX_ARRAY_BUFFER_BINDING"
        (JR.int 34966)
        s


jstatic_GL_VERTEX_ARRAY_POINTER : JR.M
jstatic_GL_VERTEX_ARRAY_POINTER s =
    JR.static "GL11" jclinit "GL_VERTEX_ARRAY_POINTER"
        (JR.int 32910)
        s


jstatic_GL_VERTEX_ARRAY_SIZE : JR.M
jstatic_GL_VERTEX_ARRAY_SIZE s =
    JR.static "GL11" jclinit "GL_VERTEX_ARRAY_SIZE"
        (JR.int 32890)
        s


jstatic_GL_VERTEX_ARRAY_STRIDE : JR.M
jstatic_GL_VERTEX_ARRAY_STRIDE s =
    JR.static "GL11" jclinit "GL_VERTEX_ARRAY_STRIDE"
        (JR.int 32892)
        s


jstatic_GL_VERTEX_ARRAY_TYPE : JR.M
jstatic_GL_VERTEX_ARRAY_TYPE s =
    JR.static "GL11" jclinit "GL_VERTEX_ARRAY_TYPE"
        (JR.int 32891)
        s


jstatic_GL_VIEWPORT : JR.M
jstatic_GL_VIEWPORT s =
    JR.static "GL11" jclinit "GL_VIEWPORT"
        (JR.int 2978)
        s


jstatic_GL_WRITE_ONLY : JR.M
jstatic_GL_WRITE_ONLY s =
    JR.static "GL11" jclinit "GL_WRITE_ONLY"
        (JR.int 35001)
        s


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

