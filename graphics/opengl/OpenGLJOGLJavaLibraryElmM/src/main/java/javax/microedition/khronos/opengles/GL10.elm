module Javax.Microedition.Khronos.Opengles.GL10 exposing (..)

{-| Generated Code Do Not Modify package javax.microedition.khronos.opengles
-}

import JR
import Javax.Microedition.Khronos.Opengles.GL as GL


jclass : String
jclass =
    "GL10"


jchain : List String
jchain =
    [ "GL10" ]
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
    JR.register "GL10"
        []
        [ ( "jstatic_GL_ADD", jstatic_GL_ADD ), ( "jstatic_GL_ALIASED_LINE_WIDTH_RANGE", jstatic_GL_ALIASED_LINE_WIDTH_RANGE ), ( "jstatic_GL_ALIASED_POINT_SIZE_RANGE", jstatic_GL_ALIASED_POINT_SIZE_RANGE ), ( "jstatic_GL_ALPHA", jstatic_GL_ALPHA ), ( "jstatic_GL_ALPHA_BITS", jstatic_GL_ALPHA_BITS ), ( "jstatic_GL_ALPHA_TEST", jstatic_GL_ALPHA_TEST ), ( "jstatic_GL_ALWAYS", jstatic_GL_ALWAYS ), ( "jstatic_GL_AMBIENT", jstatic_GL_AMBIENT ), ( "jstatic_GL_AMBIENT_AND_DIFFUSE", jstatic_GL_AMBIENT_AND_DIFFUSE ), ( "jstatic_GL_AND", jstatic_GL_AND ), ( "jstatic_GL_AND_INVERTED", jstatic_GL_AND_INVERTED ), ( "jstatic_GL_AND_REVERSE", jstatic_GL_AND_REVERSE ), ( "jstatic_GL_BACK", jstatic_GL_BACK ), ( "jstatic_GL_BLEND", jstatic_GL_BLEND ), ( "jstatic_GL_BLUE_BITS", jstatic_GL_BLUE_BITS ), ( "jstatic_GL_BYTE", jstatic_GL_BYTE ), ( "jstatic_GL_CCW", jstatic_GL_CCW ), ( "jstatic_GL_CLAMP_TO_EDGE", jstatic_GL_CLAMP_TO_EDGE ), ( "jstatic_GL_CLEAR", jstatic_GL_CLEAR ), ( "jstatic_GL_COLOR_ARRAY", jstatic_GL_COLOR_ARRAY ), ( "jstatic_GL_COLOR_BUFFER_BIT", jstatic_GL_COLOR_BUFFER_BIT ), ( "jstatic_GL_COLOR_LOGIC_OP", jstatic_GL_COLOR_LOGIC_OP ), ( "jstatic_GL_COLOR_MATERIAL", jstatic_GL_COLOR_MATERIAL ), ( "jstatic_GL_COMPRESSED_TEXTURE_FORMATS", jstatic_GL_COMPRESSED_TEXTURE_FORMATS ), ( "jstatic_GL_CONSTANT_ATTENUATION", jstatic_GL_CONSTANT_ATTENUATION ), ( "jstatic_GL_COPY", jstatic_GL_COPY ), ( "jstatic_GL_COPY_INVERTED", jstatic_GL_COPY_INVERTED ), ( "jstatic_GL_CULL_FACE", jstatic_GL_CULL_FACE ), ( "jstatic_GL_CW", jstatic_GL_CW ), ( "jstatic_GL_DECAL", jstatic_GL_DECAL ), ( "jstatic_GL_DECR", jstatic_GL_DECR ), ( "jstatic_GL_DEPTH_BITS", jstatic_GL_DEPTH_BITS ), ( "jstatic_GL_DEPTH_BUFFER_BIT", jstatic_GL_DEPTH_BUFFER_BIT ), ( "jstatic_GL_DEPTH_TEST", jstatic_GL_DEPTH_TEST ), ( "jstatic_GL_DIFFUSE", jstatic_GL_DIFFUSE ), ( "jstatic_GL_DITHER", jstatic_GL_DITHER ), ( "jstatic_GL_DONT_CARE", jstatic_GL_DONT_CARE ), ( "jstatic_GL_DST_ALPHA", jstatic_GL_DST_ALPHA ), ( "jstatic_GL_DST_COLOR", jstatic_GL_DST_COLOR ), ( "jstatic_GL_EMISSION", jstatic_GL_EMISSION ), ( "jstatic_GL_EQUAL", jstatic_GL_EQUAL ), ( "jstatic_GL_EQUIV", jstatic_GL_EQUIV ), ( "jstatic_GL_EXP", jstatic_GL_EXP ), ( "jstatic_GL_EXP2", jstatic_GL_EXP2 ), ( "jstatic_GL_EXTENSIONS", jstatic_GL_EXTENSIONS ), ( "jstatic_GL_FALSE", jstatic_GL_FALSE ), ( "jstatic_GL_FASTEST", jstatic_GL_FASTEST ), ( "jstatic_GL_FIXED", jstatic_GL_FIXED ), ( "jstatic_GL_FLAT", jstatic_GL_FLAT ), ( "jstatic_GL_FLOAT", jstatic_GL_FLOAT ), ( "jstatic_GL_FOG", jstatic_GL_FOG ), ( "jstatic_GL_FOG_COLOR", jstatic_GL_FOG_COLOR ), ( "jstatic_GL_FOG_DENSITY", jstatic_GL_FOG_DENSITY ), ( "jstatic_GL_FOG_END", jstatic_GL_FOG_END ), ( "jstatic_GL_FOG_HINT", jstatic_GL_FOG_HINT ), ( "jstatic_GL_FOG_MODE", jstatic_GL_FOG_MODE ), ( "jstatic_GL_FOG_START", jstatic_GL_FOG_START ), ( "jstatic_GL_FRONT", jstatic_GL_FRONT ), ( "jstatic_GL_FRONT_AND_BACK", jstatic_GL_FRONT_AND_BACK ), ( "jstatic_GL_GEQUAL", jstatic_GL_GEQUAL ), ( "jstatic_GL_GREATER", jstatic_GL_GREATER ), ( "jstatic_GL_GREEN_BITS", jstatic_GL_GREEN_BITS ), ( "jstatic_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES", jstatic_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES ), ( "jstatic_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES", jstatic_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES ), ( "jstatic_GL_INCR", jstatic_GL_INCR ), ( "jstatic_GL_INVALID_ENUM", jstatic_GL_INVALID_ENUM ), ( "jstatic_GL_INVALID_OPERATION", jstatic_GL_INVALID_OPERATION ), ( "jstatic_GL_INVALID_VALUE", jstatic_GL_INVALID_VALUE ), ( "jstatic_GL_INVERT", jstatic_GL_INVERT ), ( "jstatic_GL_KEEP", jstatic_GL_KEEP ), ( "jstatic_GL_LEQUAL", jstatic_GL_LEQUAL ), ( "jstatic_GL_LESS", jstatic_GL_LESS ), ( "jstatic_GL_LIGHT_MODEL_AMBIENT", jstatic_GL_LIGHT_MODEL_AMBIENT ), ( "jstatic_GL_LIGHT_MODEL_TWO_SIDE", jstatic_GL_LIGHT_MODEL_TWO_SIDE ), ( "jstatic_GL_LIGHT0", jstatic_GL_LIGHT0 ), ( "jstatic_GL_LIGHT1", jstatic_GL_LIGHT1 ), ( "jstatic_GL_LIGHT2", jstatic_GL_LIGHT2 ), ( "jstatic_GL_LIGHT3", jstatic_GL_LIGHT3 ), ( "jstatic_GL_LIGHT4", jstatic_GL_LIGHT4 ), ( "jstatic_GL_LIGHT5", jstatic_GL_LIGHT5 ), ( "jstatic_GL_LIGHT6", jstatic_GL_LIGHT6 ), ( "jstatic_GL_LIGHT7", jstatic_GL_LIGHT7 ), ( "jstatic_GL_LIGHTING", jstatic_GL_LIGHTING ), ( "jstatic_GL_LINE_LOOP", jstatic_GL_LINE_LOOP ), ( "jstatic_GL_LINE_SMOOTH", jstatic_GL_LINE_SMOOTH ), ( "jstatic_GL_LINE_SMOOTH_HINT", jstatic_GL_LINE_SMOOTH_HINT ), ( "jstatic_GL_LINE_STRIP", jstatic_GL_LINE_STRIP ), ( "jstatic_GL_LINEAR", jstatic_GL_LINEAR ), ( "jstatic_GL_LINEAR_ATTENUATION", jstatic_GL_LINEAR_ATTENUATION ), ( "jstatic_GL_LINEAR_MIPMAP_LINEAR", jstatic_GL_LINEAR_MIPMAP_LINEAR ), ( "jstatic_GL_LINEAR_MIPMAP_NEAREST", jstatic_GL_LINEAR_MIPMAP_NEAREST ), ( "jstatic_GL_LINES", jstatic_GL_LINES ), ( "jstatic_GL_LUMINANCE", jstatic_GL_LUMINANCE ), ( "jstatic_GL_LUMINANCE_ALPHA", jstatic_GL_LUMINANCE_ALPHA ), ( "jstatic_GL_MAX_ELEMENTS_INDICES", jstatic_GL_MAX_ELEMENTS_INDICES ), ( "jstatic_GL_MAX_ELEMENTS_VERTICES", jstatic_GL_MAX_ELEMENTS_VERTICES ), ( "jstatic_GL_MAX_LIGHTS", jstatic_GL_MAX_LIGHTS ), ( "jstatic_GL_MAX_MODELVIEW_STACK_DEPTH", jstatic_GL_MAX_MODELVIEW_STACK_DEPTH ), ( "jstatic_GL_MAX_PROJECTION_STACK_DEPTH", jstatic_GL_MAX_PROJECTION_STACK_DEPTH ), ( "jstatic_GL_MAX_TEXTURE_SIZE", jstatic_GL_MAX_TEXTURE_SIZE ), ( "jstatic_GL_MAX_TEXTURE_STACK_DEPTH", jstatic_GL_MAX_TEXTURE_STACK_DEPTH ), ( "jstatic_GL_MAX_TEXTURE_UNITS", jstatic_GL_MAX_TEXTURE_UNITS ), ( "jstatic_GL_MAX_VIEWPORT_DIMS", jstatic_GL_MAX_VIEWPORT_DIMS ), ( "jstatic_GL_MODELVIEW", jstatic_GL_MODELVIEW ), ( "jstatic_GL_MODULATE", jstatic_GL_MODULATE ), ( "jstatic_GL_MULTISAMPLE", jstatic_GL_MULTISAMPLE ), ( "jstatic_GL_NAND", jstatic_GL_NAND ), ( "jstatic_GL_NEAREST", jstatic_GL_NEAREST ), ( "jstatic_GL_NEAREST_MIPMAP_LINEAR", jstatic_GL_NEAREST_MIPMAP_LINEAR ), ( "jstatic_GL_NEAREST_MIPMAP_NEAREST", jstatic_GL_NEAREST_MIPMAP_NEAREST ), ( "jstatic_GL_NEVER", jstatic_GL_NEVER ), ( "jstatic_GL_NICEST", jstatic_GL_NICEST ), ( "jstatic_GL_NO_ERROR", jstatic_GL_NO_ERROR ), ( "jstatic_GL_NOOP", jstatic_GL_NOOP ), ( "jstatic_GL_NOR", jstatic_GL_NOR ), ( "jstatic_GL_NORMAL_ARRAY", jstatic_GL_NORMAL_ARRAY ), ( "jstatic_GL_NORMALIZE", jstatic_GL_NORMALIZE ), ( "jstatic_GL_NOTEQUAL", jstatic_GL_NOTEQUAL ), ( "jstatic_GL_NUM_COMPRESSED_TEXTURE_FORMATS", jstatic_GL_NUM_COMPRESSED_TEXTURE_FORMATS ), ( "jstatic_GL_ONE", jstatic_GL_ONE ), ( "jstatic_GL_ONE_MINUS_DST_ALPHA", jstatic_GL_ONE_MINUS_DST_ALPHA ), ( "jstatic_GL_ONE_MINUS_DST_COLOR", jstatic_GL_ONE_MINUS_DST_COLOR ), ( "jstatic_GL_ONE_MINUS_SRC_ALPHA", jstatic_GL_ONE_MINUS_SRC_ALPHA ), ( "jstatic_GL_ONE_MINUS_SRC_COLOR", jstatic_GL_ONE_MINUS_SRC_COLOR ), ( "jstatic_GL_OR", jstatic_GL_OR ), ( "jstatic_GL_OR_INVERTED", jstatic_GL_OR_INVERTED ), ( "jstatic_GL_OR_REVERSE", jstatic_GL_OR_REVERSE ), ( "jstatic_GL_OUT_OF_MEMORY", jstatic_GL_OUT_OF_MEMORY ), ( "jstatic_GL_PACK_ALIGNMENT", jstatic_GL_PACK_ALIGNMENT ), ( "jstatic_GL_PALETTE4_R5_G6_B5_OES", jstatic_GL_PALETTE4_R5_G6_B5_OES ), ( "jstatic_GL_PALETTE4_RGB5_A1_OES", jstatic_GL_PALETTE4_RGB5_A1_OES ), ( "jstatic_GL_PALETTE4_RGB8_OES", jstatic_GL_PALETTE4_RGB8_OES ), ( "jstatic_GL_PALETTE4_RGBA4_OES", jstatic_GL_PALETTE4_RGBA4_OES ), ( "jstatic_GL_PALETTE4_RGBA8_OES", jstatic_GL_PALETTE4_RGBA8_OES ), ( "jstatic_GL_PALETTE8_R5_G6_B5_OES", jstatic_GL_PALETTE8_R5_G6_B5_OES ), ( "jstatic_GL_PALETTE8_RGB5_A1_OES", jstatic_GL_PALETTE8_RGB5_A1_OES ), ( "jstatic_GL_PALETTE8_RGB8_OES", jstatic_GL_PALETTE8_RGB8_OES ), ( "jstatic_GL_PALETTE8_RGBA4_OES", jstatic_GL_PALETTE8_RGBA4_OES ), ( "jstatic_GL_PALETTE8_RGBA8_OES", jstatic_GL_PALETTE8_RGBA8_OES ), ( "jstatic_GL_PERSPECTIVE_CORRECTION_HINT", jstatic_GL_PERSPECTIVE_CORRECTION_HINT ), ( "jstatic_GL_POINT_SMOOTH", jstatic_GL_POINT_SMOOTH ), ( "jstatic_GL_POINT_SMOOTH_HINT", jstatic_GL_POINT_SMOOTH_HINT ), ( "jstatic_GL_POINTS", jstatic_GL_POINTS ), ( "jstatic_GL_POINT_FADE_THRESHOLD_SIZE", jstatic_GL_POINT_FADE_THRESHOLD_SIZE ), ( "jstatic_GL_POINT_SIZE", jstatic_GL_POINT_SIZE ), ( "jstatic_GL_POLYGON_OFFSET_FILL", jstatic_GL_POLYGON_OFFSET_FILL ), ( "jstatic_GL_POLYGON_SMOOTH_HINT", jstatic_GL_POLYGON_SMOOTH_HINT ), ( "jstatic_GL_POSITION", jstatic_GL_POSITION ), ( "jstatic_GL_PROJECTION", jstatic_GL_PROJECTION ), ( "jstatic_GL_QUADRATIC_ATTENUATION", jstatic_GL_QUADRATIC_ATTENUATION ), ( "jstatic_GL_RED_BITS", jstatic_GL_RED_BITS ), ( "jstatic_GL_RENDERER", jstatic_GL_RENDERER ), ( "jstatic_GL_REPEAT", jstatic_GL_REPEAT ), ( "jstatic_GL_REPLACE", jstatic_GL_REPLACE ), ( "jstatic_GL_RESCALE_NORMAL", jstatic_GL_RESCALE_NORMAL ), ( "jstatic_GL_RGB", jstatic_GL_RGB ), ( "jstatic_GL_RGBA", jstatic_GL_RGBA ), ( "jstatic_GL_SAMPLE_ALPHA_TO_COVERAGE", jstatic_GL_SAMPLE_ALPHA_TO_COVERAGE ), ( "jstatic_GL_SAMPLE_ALPHA_TO_ONE", jstatic_GL_SAMPLE_ALPHA_TO_ONE ), ( "jstatic_GL_SAMPLE_COVERAGE", jstatic_GL_SAMPLE_COVERAGE ), ( "jstatic_GL_SCISSOR_TEST", jstatic_GL_SCISSOR_TEST ), ( "jstatic_GL_SET", jstatic_GL_SET ), ( "jstatic_GL_SHININESS", jstatic_GL_SHININESS ), ( "jstatic_GL_SHORT", jstatic_GL_SHORT ), ( "jstatic_GL_SMOOTH", jstatic_GL_SMOOTH ), ( "jstatic_GL_SMOOTH_LINE_WIDTH_RANGE", jstatic_GL_SMOOTH_LINE_WIDTH_RANGE ), ( "jstatic_GL_SMOOTH_POINT_SIZE_RANGE", jstatic_GL_SMOOTH_POINT_SIZE_RANGE ), ( "jstatic_GL_SPECULAR", jstatic_GL_SPECULAR ), ( "jstatic_GL_SPOT_CUTOFF", jstatic_GL_SPOT_CUTOFF ), ( "jstatic_GL_SPOT_DIRECTION", jstatic_GL_SPOT_DIRECTION ), ( "jstatic_GL_SPOT_EXPONENT", jstatic_GL_SPOT_EXPONENT ), ( "jstatic_GL_SRC_ALPHA", jstatic_GL_SRC_ALPHA ), ( "jstatic_GL_SRC_ALPHA_SATURATE", jstatic_GL_SRC_ALPHA_SATURATE ), ( "jstatic_GL_SRC_COLOR", jstatic_GL_SRC_COLOR ), ( "jstatic_GL_STACK_OVERFLOW", jstatic_GL_STACK_OVERFLOW ), ( "jstatic_GL_STACK_UNDERFLOW", jstatic_GL_STACK_UNDERFLOW ), ( "jstatic_GL_STENCIL_BITS", jstatic_GL_STENCIL_BITS ), ( "jstatic_GL_STENCIL_BUFFER_BIT", jstatic_GL_STENCIL_BUFFER_BIT ), ( "jstatic_GL_STENCIL_TEST", jstatic_GL_STENCIL_TEST ), ( "jstatic_GL_SUBPIXEL_BITS", jstatic_GL_SUBPIXEL_BITS ), ( "jstatic_GL_TEXTURE", jstatic_GL_TEXTURE ), ( "jstatic_GL_TEXTURE_2D", jstatic_GL_TEXTURE_2D ), ( "jstatic_GL_TEXTURE_COORD_ARRAY", jstatic_GL_TEXTURE_COORD_ARRAY ), ( "jstatic_GL_TEXTURE_ENV", jstatic_GL_TEXTURE_ENV ), ( "jstatic_GL_TEXTURE_ENV_COLOR", jstatic_GL_TEXTURE_ENV_COLOR ), ( "jstatic_GL_TEXTURE_ENV_MODE", jstatic_GL_TEXTURE_ENV_MODE ), ( "jstatic_GL_TEXTURE_MAG_FILTER", jstatic_GL_TEXTURE_MAG_FILTER ), ( "jstatic_GL_TEXTURE_MIN_FILTER", jstatic_GL_TEXTURE_MIN_FILTER ), ( "jstatic_GL_TEXTURE_WRAP_S", jstatic_GL_TEXTURE_WRAP_S ), ( "jstatic_GL_TEXTURE_WRAP_T", jstatic_GL_TEXTURE_WRAP_T ), ( "jstatic_GL_TEXTURE0", jstatic_GL_TEXTURE0 ), ( "jstatic_GL_TEXTURE1", jstatic_GL_TEXTURE1 ), ( "jstatic_GL_TEXTURE2", jstatic_GL_TEXTURE2 ), ( "jstatic_GL_TEXTURE3", jstatic_GL_TEXTURE3 ), ( "jstatic_GL_TEXTURE4", jstatic_GL_TEXTURE4 ), ( "jstatic_GL_TEXTURE5", jstatic_GL_TEXTURE5 ), ( "jstatic_GL_TEXTURE6", jstatic_GL_TEXTURE6 ), ( "jstatic_GL_TEXTURE7", jstatic_GL_TEXTURE7 ), ( "jstatic_GL_TEXTURE8", jstatic_GL_TEXTURE8 ), ( "jstatic_GL_TEXTURE9", jstatic_GL_TEXTURE9 ), ( "jstatic_GL_TEXTURE10", jstatic_GL_TEXTURE10 ), ( "jstatic_GL_TEXTURE11", jstatic_GL_TEXTURE11 ), ( "jstatic_GL_TEXTURE12", jstatic_GL_TEXTURE12 ), ( "jstatic_GL_TEXTURE13", jstatic_GL_TEXTURE13 ), ( "jstatic_GL_TEXTURE14", jstatic_GL_TEXTURE14 ), ( "jstatic_GL_TEXTURE15", jstatic_GL_TEXTURE15 ), ( "jstatic_GL_TEXTURE16", jstatic_GL_TEXTURE16 ), ( "jstatic_GL_TEXTURE17", jstatic_GL_TEXTURE17 ), ( "jstatic_GL_TEXTURE18", jstatic_GL_TEXTURE18 ), ( "jstatic_GL_TEXTURE19", jstatic_GL_TEXTURE19 ), ( "jstatic_GL_TEXTURE20", jstatic_GL_TEXTURE20 ), ( "jstatic_GL_TEXTURE21", jstatic_GL_TEXTURE21 ), ( "jstatic_GL_TEXTURE22", jstatic_GL_TEXTURE22 ), ( "jstatic_GL_TEXTURE23", jstatic_GL_TEXTURE23 ), ( "jstatic_GL_TEXTURE24", jstatic_GL_TEXTURE24 ), ( "jstatic_GL_TEXTURE25", jstatic_GL_TEXTURE25 ), ( "jstatic_GL_TEXTURE26", jstatic_GL_TEXTURE26 ), ( "jstatic_GL_TEXTURE27", jstatic_GL_TEXTURE27 ), ( "jstatic_GL_TEXTURE28", jstatic_GL_TEXTURE28 ), ( "jstatic_GL_TEXTURE29", jstatic_GL_TEXTURE29 ), ( "jstatic_GL_TEXTURE30", jstatic_GL_TEXTURE30 ), ( "jstatic_GL_TEXTURE31", jstatic_GL_TEXTURE31 ), ( "jstatic_GL_TRIANGLE_FAN", jstatic_GL_TRIANGLE_FAN ), ( "jstatic_GL_TRIANGLE_STRIP", jstatic_GL_TRIANGLE_STRIP ), ( "jstatic_GL_TRIANGLES", jstatic_GL_TRIANGLES ), ( "jstatic_GL_TRUE", jstatic_GL_TRUE ), ( "jstatic_GL_UNPACK_ALIGNMENT", jstatic_GL_UNPACK_ALIGNMENT ), ( "jstatic_GL_UNSIGNED_BYTE", jstatic_GL_UNSIGNED_BYTE ), ( "jstatic_GL_UNSIGNED_SHORT", jstatic_GL_UNSIGNED_SHORT ), ( "jstatic_GL_UNSIGNED_SHORT_4_4_4_4", jstatic_GL_UNSIGNED_SHORT_4_4_4_4 ), ( "jstatic_GL_UNSIGNED_SHORT_5_5_5_1", jstatic_GL_UNSIGNED_SHORT_5_5_5_1 ), ( "jstatic_GL_UNSIGNED_SHORT_5_6_5", jstatic_GL_UNSIGNED_SHORT_5_6_5 ), ( "jstatic_GL_VENDOR", jstatic_GL_VENDOR ), ( "jstatic_GL_VERSION", jstatic_GL_VERSION ), ( "jstatic_GL_VERTEX_ARRAY", jstatic_GL_VERTEX_ARRAY ), ( "jstatic_GL_XOR", jstatic_GL_XOR ), ( "jstatic_GL_ZERO", jstatic_GL_ZERO ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_GL_ADD : JR.M
jstatic_GL_ADD s =
    JR.static "GL10" jclinit "GL_ADD"
        (JR.int 260)
        s


jstatic_GL_ALIASED_LINE_WIDTH_RANGE : JR.M
jstatic_GL_ALIASED_LINE_WIDTH_RANGE s =
    JR.static "GL10" jclinit "GL_ALIASED_LINE_WIDTH_RANGE"
        (JR.int 33902)
        s


jstatic_GL_ALIASED_POINT_SIZE_RANGE : JR.M
jstatic_GL_ALIASED_POINT_SIZE_RANGE s =
    JR.static "GL10" jclinit "GL_ALIASED_POINT_SIZE_RANGE"
        (JR.int 33901)
        s


jstatic_GL_ALPHA : JR.M
jstatic_GL_ALPHA s =
    JR.static "GL10" jclinit "GL_ALPHA"
        (JR.int 6406)
        s


jstatic_GL_ALPHA_BITS : JR.M
jstatic_GL_ALPHA_BITS s =
    JR.static "GL10" jclinit "GL_ALPHA_BITS"
        (JR.int 3413)
        s


jstatic_GL_ALPHA_TEST : JR.M
jstatic_GL_ALPHA_TEST s =
    JR.static "GL10" jclinit "GL_ALPHA_TEST"
        (JR.int 3008)
        s


jstatic_GL_ALWAYS : JR.M
jstatic_GL_ALWAYS s =
    JR.static "GL10" jclinit "GL_ALWAYS"
        (JR.int 519)
        s


jstatic_GL_AMBIENT : JR.M
jstatic_GL_AMBIENT s =
    JR.static "GL10" jclinit "GL_AMBIENT"
        (JR.int 4608)
        s


jstatic_GL_AMBIENT_AND_DIFFUSE : JR.M
jstatic_GL_AMBIENT_AND_DIFFUSE s =
    JR.static "GL10" jclinit "GL_AMBIENT_AND_DIFFUSE"
        (JR.int 5634)
        s


jstatic_GL_AND : JR.M
jstatic_GL_AND s =
    JR.static "GL10" jclinit "GL_AND"
        (JR.int 5377)
        s


jstatic_GL_AND_INVERTED : JR.M
jstatic_GL_AND_INVERTED s =
    JR.static "GL10" jclinit "GL_AND_INVERTED"
        (JR.int 5380)
        s


jstatic_GL_AND_REVERSE : JR.M
jstatic_GL_AND_REVERSE s =
    JR.static "GL10" jclinit "GL_AND_REVERSE"
        (JR.int 5378)
        s


jstatic_GL_BACK : JR.M
jstatic_GL_BACK s =
    JR.static "GL10" jclinit "GL_BACK"
        (JR.int 1029)
        s


jstatic_GL_BLEND : JR.M
jstatic_GL_BLEND s =
    JR.static "GL10" jclinit "GL_BLEND"
        (JR.int 3042)
        s


jstatic_GL_BLUE_BITS : JR.M
jstatic_GL_BLUE_BITS s =
    JR.static "GL10" jclinit "GL_BLUE_BITS"
        (JR.int 3412)
        s


jstatic_GL_BYTE : JR.M
jstatic_GL_BYTE s =
    JR.static "GL10" jclinit "GL_BYTE"
        (JR.int 5120)
        s


jstatic_GL_CCW : JR.M
jstatic_GL_CCW s =
    JR.static "GL10" jclinit "GL_CCW"
        (JR.int 2305)
        s


jstatic_GL_CLAMP_TO_EDGE : JR.M
jstatic_GL_CLAMP_TO_EDGE s =
    JR.static "GL10" jclinit "GL_CLAMP_TO_EDGE"
        (JR.int 33071)
        s


jstatic_GL_CLEAR : JR.M
jstatic_GL_CLEAR s =
    JR.static "GL10" jclinit "GL_CLEAR"
        (JR.int 5376)
        s


jstatic_GL_COLOR_ARRAY : JR.M
jstatic_GL_COLOR_ARRAY s =
    JR.static "GL10" jclinit "GL_COLOR_ARRAY"
        (JR.int 32886)
        s


jstatic_GL_COLOR_BUFFER_BIT : JR.M
jstatic_GL_COLOR_BUFFER_BIT s =
    JR.static "GL10" jclinit "GL_COLOR_BUFFER_BIT"
        (JR.int 16384)
        s


jstatic_GL_COLOR_LOGIC_OP : JR.M
jstatic_GL_COLOR_LOGIC_OP s =
    JR.static "GL10" jclinit "GL_COLOR_LOGIC_OP"
        (JR.int 3058)
        s


jstatic_GL_COLOR_MATERIAL : JR.M
jstatic_GL_COLOR_MATERIAL s =
    JR.static "GL10" jclinit "GL_COLOR_MATERIAL"
        (JR.int 2903)
        s


jstatic_GL_COMPRESSED_TEXTURE_FORMATS : JR.M
jstatic_GL_COMPRESSED_TEXTURE_FORMATS s =
    JR.static "GL10" jclinit "GL_COMPRESSED_TEXTURE_FORMATS"
        (JR.int 34467)
        s


jstatic_GL_CONSTANT_ATTENUATION : JR.M
jstatic_GL_CONSTANT_ATTENUATION s =
    JR.static "GL10" jclinit "GL_CONSTANT_ATTENUATION"
        (JR.int 4615)
        s


jstatic_GL_COPY : JR.M
jstatic_GL_COPY s =
    JR.static "GL10" jclinit "GL_COPY"
        (JR.int 5379)
        s


jstatic_GL_COPY_INVERTED : JR.M
jstatic_GL_COPY_INVERTED s =
    JR.static "GL10" jclinit "GL_COPY_INVERTED"
        (JR.int 5388)
        s


jstatic_GL_CULL_FACE : JR.M
jstatic_GL_CULL_FACE s =
    JR.static "GL10" jclinit "GL_CULL_FACE"
        (JR.int 2884)
        s


jstatic_GL_CW : JR.M
jstatic_GL_CW s =
    JR.static "GL10" jclinit "GL_CW"
        (JR.int 2304)
        s


jstatic_GL_DECAL : JR.M
jstatic_GL_DECAL s =
    JR.static "GL10" jclinit "GL_DECAL"
        (JR.int 8449)
        s


jstatic_GL_DECR : JR.M
jstatic_GL_DECR s =
    JR.static "GL10" jclinit "GL_DECR"
        (JR.int 7683)
        s


jstatic_GL_DEPTH_BITS : JR.M
jstatic_GL_DEPTH_BITS s =
    JR.static "GL10" jclinit "GL_DEPTH_BITS"
        (JR.int 3414)
        s


jstatic_GL_DEPTH_BUFFER_BIT : JR.M
jstatic_GL_DEPTH_BUFFER_BIT s =
    JR.static "GL10" jclinit "GL_DEPTH_BUFFER_BIT"
        (JR.int 256)
        s


jstatic_GL_DEPTH_TEST : JR.M
jstatic_GL_DEPTH_TEST s =
    JR.static "GL10" jclinit "GL_DEPTH_TEST"
        (JR.int 2929)
        s


jstatic_GL_DIFFUSE : JR.M
jstatic_GL_DIFFUSE s =
    JR.static "GL10" jclinit "GL_DIFFUSE"
        (JR.int 4609)
        s


jstatic_GL_DITHER : JR.M
jstatic_GL_DITHER s =
    JR.static "GL10" jclinit "GL_DITHER"
        (JR.int 3024)
        s


jstatic_GL_DONT_CARE : JR.M
jstatic_GL_DONT_CARE s =
    JR.static "GL10" jclinit "GL_DONT_CARE"
        (JR.int 4352)
        s


jstatic_GL_DST_ALPHA : JR.M
jstatic_GL_DST_ALPHA s =
    JR.static "GL10" jclinit "GL_DST_ALPHA"
        (JR.int 772)
        s


jstatic_GL_DST_COLOR : JR.M
jstatic_GL_DST_COLOR s =
    JR.static "GL10" jclinit "GL_DST_COLOR"
        (JR.int 774)
        s


jstatic_GL_EMISSION : JR.M
jstatic_GL_EMISSION s =
    JR.static "GL10" jclinit "GL_EMISSION"
        (JR.int 5632)
        s


jstatic_GL_EQUAL : JR.M
jstatic_GL_EQUAL s =
    JR.static "GL10" jclinit "GL_EQUAL"
        (JR.int 514)
        s


jstatic_GL_EQUIV : JR.M
jstatic_GL_EQUIV s =
    JR.static "GL10" jclinit "GL_EQUIV"
        (JR.int 5385)
        s


jstatic_GL_EXP : JR.M
jstatic_GL_EXP s =
    JR.static "GL10" jclinit "GL_EXP"
        (JR.int 2048)
        s


jstatic_GL_EXP2 : JR.M
jstatic_GL_EXP2 s =
    JR.static "GL10" jclinit "GL_EXP2"
        (JR.int 2049)
        s


jstatic_GL_EXTENSIONS : JR.M
jstatic_GL_EXTENSIONS s =
    JR.static "GL10" jclinit "GL_EXTENSIONS"
        (JR.int 7939)
        s


jstatic_GL_FALSE : JR.M
jstatic_GL_FALSE s =
    JR.static "GL10" jclinit "GL_FALSE"
        (JR.int 0)
        s


jstatic_GL_FASTEST : JR.M
jstatic_GL_FASTEST s =
    JR.static "GL10" jclinit "GL_FASTEST"
        (JR.int 4353)
        s


jstatic_GL_FIXED : JR.M
jstatic_GL_FIXED s =
    JR.static "GL10" jclinit "GL_FIXED"
        (JR.int 5132)
        s


jstatic_GL_FLAT : JR.M
jstatic_GL_FLAT s =
    JR.static "GL10" jclinit "GL_FLAT"
        (JR.int 7424)
        s


jstatic_GL_FLOAT : JR.M
jstatic_GL_FLOAT s =
    JR.static "GL10" jclinit "GL_FLOAT"
        (JR.int 5126)
        s


jstatic_GL_FOG : JR.M
jstatic_GL_FOG s =
    JR.static "GL10" jclinit "GL_FOG"
        (JR.int 2912)
        s


jstatic_GL_FOG_COLOR : JR.M
jstatic_GL_FOG_COLOR s =
    JR.static "GL10" jclinit "GL_FOG_COLOR"
        (JR.int 2918)
        s


jstatic_GL_FOG_DENSITY : JR.M
jstatic_GL_FOG_DENSITY s =
    JR.static "GL10" jclinit "GL_FOG_DENSITY"
        (JR.int 2914)
        s


jstatic_GL_FOG_END : JR.M
jstatic_GL_FOG_END s =
    JR.static "GL10" jclinit "GL_FOG_END"
        (JR.int 2916)
        s


jstatic_GL_FOG_HINT : JR.M
jstatic_GL_FOG_HINT s =
    JR.static "GL10" jclinit "GL_FOG_HINT"
        (JR.int 3156)
        s


jstatic_GL_FOG_MODE : JR.M
jstatic_GL_FOG_MODE s =
    JR.static "GL10" jclinit "GL_FOG_MODE"
        (JR.int 2917)
        s


jstatic_GL_FOG_START : JR.M
jstatic_GL_FOG_START s =
    JR.static "GL10" jclinit "GL_FOG_START"
        (JR.int 2915)
        s


jstatic_GL_FRONT : JR.M
jstatic_GL_FRONT s =
    JR.static "GL10" jclinit "GL_FRONT"
        (JR.int 1028)
        s


jstatic_GL_FRONT_AND_BACK : JR.M
jstatic_GL_FRONT_AND_BACK s =
    JR.static "GL10" jclinit "GL_FRONT_AND_BACK"
        (JR.int 1032)
        s


jstatic_GL_GEQUAL : JR.M
jstatic_GL_GEQUAL s =
    JR.static "GL10" jclinit "GL_GEQUAL"
        (JR.int 518)
        s


jstatic_GL_GREATER : JR.M
jstatic_GL_GREATER s =
    JR.static "GL10" jclinit "GL_GREATER"
        (JR.int 516)
        s


jstatic_GL_GREEN_BITS : JR.M
jstatic_GL_GREEN_BITS s =
    JR.static "GL10" jclinit "GL_GREEN_BITS"
        (JR.int 3411)
        s


jstatic_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES : JR.M
jstatic_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES s =
    JR.static "GL10" jclinit "GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES"
        (JR.int 35739)
        s


jstatic_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES : JR.M
jstatic_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES s =
    JR.static "GL10" jclinit "GL_IMPLEMENTATION_COLOR_READ_TYPE_OES"
        (JR.int 35738)
        s


jstatic_GL_INCR : JR.M
jstatic_GL_INCR s =
    JR.static "GL10" jclinit "GL_INCR"
        (JR.int 7682)
        s


jstatic_GL_INVALID_ENUM : JR.M
jstatic_GL_INVALID_ENUM s =
    JR.static "GL10" jclinit "GL_INVALID_ENUM"
        (JR.int 1280)
        s


jstatic_GL_INVALID_OPERATION : JR.M
jstatic_GL_INVALID_OPERATION s =
    JR.static "GL10" jclinit "GL_INVALID_OPERATION"
        (JR.int 1282)
        s


jstatic_GL_INVALID_VALUE : JR.M
jstatic_GL_INVALID_VALUE s =
    JR.static "GL10" jclinit "GL_INVALID_VALUE"
        (JR.int 1281)
        s


jstatic_GL_INVERT : JR.M
jstatic_GL_INVERT s =
    JR.static "GL10" jclinit "GL_INVERT"
        (JR.int 5386)
        s


jstatic_GL_KEEP : JR.M
jstatic_GL_KEEP s =
    JR.static "GL10" jclinit "GL_KEEP"
        (JR.int 7680)
        s


jstatic_GL_LEQUAL : JR.M
jstatic_GL_LEQUAL s =
    JR.static "GL10" jclinit "GL_LEQUAL"
        (JR.int 515)
        s


jstatic_GL_LESS : JR.M
jstatic_GL_LESS s =
    JR.static "GL10" jclinit "GL_LESS"
        (JR.int 513)
        s


jstatic_GL_LIGHT_MODEL_AMBIENT : JR.M
jstatic_GL_LIGHT_MODEL_AMBIENT s =
    JR.static "GL10" jclinit "GL_LIGHT_MODEL_AMBIENT"
        (JR.int 2899)
        s


jstatic_GL_LIGHT_MODEL_TWO_SIDE : JR.M
jstatic_GL_LIGHT_MODEL_TWO_SIDE s =
    JR.static "GL10" jclinit "GL_LIGHT_MODEL_TWO_SIDE"
        (JR.int 2898)
        s


jstatic_GL_LIGHT0 : JR.M
jstatic_GL_LIGHT0 s =
    JR.static "GL10" jclinit "GL_LIGHT0"
        (JR.int 16384)
        s


jstatic_GL_LIGHT1 : JR.M
jstatic_GL_LIGHT1 s =
    JR.static "GL10" jclinit "GL_LIGHT1"
        (JR.int 16385)
        s


jstatic_GL_LIGHT2 : JR.M
jstatic_GL_LIGHT2 s =
    JR.static "GL10" jclinit "GL_LIGHT2"
        (JR.int 16386)
        s


jstatic_GL_LIGHT3 : JR.M
jstatic_GL_LIGHT3 s =
    JR.static "GL10" jclinit "GL_LIGHT3"
        (JR.int 16387)
        s


jstatic_GL_LIGHT4 : JR.M
jstatic_GL_LIGHT4 s =
    JR.static "GL10" jclinit "GL_LIGHT4"
        (JR.int 16388)
        s


jstatic_GL_LIGHT5 : JR.M
jstatic_GL_LIGHT5 s =
    JR.static "GL10" jclinit "GL_LIGHT5"
        (JR.int 16389)
        s


jstatic_GL_LIGHT6 : JR.M
jstatic_GL_LIGHT6 s =
    JR.static "GL10" jclinit "GL_LIGHT6"
        (JR.int 16390)
        s


jstatic_GL_LIGHT7 : JR.M
jstatic_GL_LIGHT7 s =
    JR.static "GL10" jclinit "GL_LIGHT7"
        (JR.int 16391)
        s


jstatic_GL_LIGHTING : JR.M
jstatic_GL_LIGHTING s =
    JR.static "GL10" jclinit "GL_LIGHTING"
        (JR.int 2896)
        s


jstatic_GL_LINE_LOOP : JR.M
jstatic_GL_LINE_LOOP s =
    JR.static "GL10" jclinit "GL_LINE_LOOP"
        (JR.int 2)
        s


jstatic_GL_LINE_SMOOTH : JR.M
jstatic_GL_LINE_SMOOTH s =
    JR.static "GL10" jclinit "GL_LINE_SMOOTH"
        (JR.int 2848)
        s


jstatic_GL_LINE_SMOOTH_HINT : JR.M
jstatic_GL_LINE_SMOOTH_HINT s =
    JR.static "GL10" jclinit "GL_LINE_SMOOTH_HINT"
        (JR.int 3154)
        s


jstatic_GL_LINE_STRIP : JR.M
jstatic_GL_LINE_STRIP s =
    JR.static "GL10" jclinit "GL_LINE_STRIP"
        (JR.int 3)
        s


jstatic_GL_LINEAR : JR.M
jstatic_GL_LINEAR s =
    JR.static "GL10" jclinit "GL_LINEAR"
        (JR.int 9729)
        s


jstatic_GL_LINEAR_ATTENUATION : JR.M
jstatic_GL_LINEAR_ATTENUATION s =
    JR.static "GL10" jclinit "GL_LINEAR_ATTENUATION"
        (JR.int 4616)
        s


jstatic_GL_LINEAR_MIPMAP_LINEAR : JR.M
jstatic_GL_LINEAR_MIPMAP_LINEAR s =
    JR.static "GL10" jclinit "GL_LINEAR_MIPMAP_LINEAR"
        (JR.int 9987)
        s


jstatic_GL_LINEAR_MIPMAP_NEAREST : JR.M
jstatic_GL_LINEAR_MIPMAP_NEAREST s =
    JR.static "GL10" jclinit "GL_LINEAR_MIPMAP_NEAREST"
        (JR.int 9985)
        s


jstatic_GL_LINES : JR.M
jstatic_GL_LINES s =
    JR.static "GL10" jclinit "GL_LINES"
        (JR.int 1)
        s


jstatic_GL_LUMINANCE : JR.M
jstatic_GL_LUMINANCE s =
    JR.static "GL10" jclinit "GL_LUMINANCE"
        (JR.int 6409)
        s


jstatic_GL_LUMINANCE_ALPHA : JR.M
jstatic_GL_LUMINANCE_ALPHA s =
    JR.static "GL10" jclinit "GL_LUMINANCE_ALPHA"
        (JR.int 6410)
        s


jstatic_GL_MAX_ELEMENTS_INDICES : JR.M
jstatic_GL_MAX_ELEMENTS_INDICES s =
    JR.static "GL10" jclinit "GL_MAX_ELEMENTS_INDICES"
        (JR.int 33001)
        s


jstatic_GL_MAX_ELEMENTS_VERTICES : JR.M
jstatic_GL_MAX_ELEMENTS_VERTICES s =
    JR.static "GL10" jclinit "GL_MAX_ELEMENTS_VERTICES"
        (JR.int 33000)
        s


jstatic_GL_MAX_LIGHTS : JR.M
jstatic_GL_MAX_LIGHTS s =
    JR.static "GL10" jclinit "GL_MAX_LIGHTS"
        (JR.int 3377)
        s


jstatic_GL_MAX_MODELVIEW_STACK_DEPTH : JR.M
jstatic_GL_MAX_MODELVIEW_STACK_DEPTH s =
    JR.static "GL10" jclinit "GL_MAX_MODELVIEW_STACK_DEPTH"
        (JR.int 3382)
        s


jstatic_GL_MAX_PROJECTION_STACK_DEPTH : JR.M
jstatic_GL_MAX_PROJECTION_STACK_DEPTH s =
    JR.static "GL10" jclinit "GL_MAX_PROJECTION_STACK_DEPTH"
        (JR.int 3384)
        s


jstatic_GL_MAX_TEXTURE_SIZE : JR.M
jstatic_GL_MAX_TEXTURE_SIZE s =
    JR.static "GL10" jclinit "GL_MAX_TEXTURE_SIZE"
        (JR.int 3379)
        s


jstatic_GL_MAX_TEXTURE_STACK_DEPTH : JR.M
jstatic_GL_MAX_TEXTURE_STACK_DEPTH s =
    JR.static "GL10" jclinit "GL_MAX_TEXTURE_STACK_DEPTH"
        (JR.int 3385)
        s


jstatic_GL_MAX_TEXTURE_UNITS : JR.M
jstatic_GL_MAX_TEXTURE_UNITS s =
    JR.static "GL10" jclinit "GL_MAX_TEXTURE_UNITS"
        (JR.int 34018)
        s


jstatic_GL_MAX_VIEWPORT_DIMS : JR.M
jstatic_GL_MAX_VIEWPORT_DIMS s =
    JR.static "GL10" jclinit "GL_MAX_VIEWPORT_DIMS"
        (JR.int 3386)
        s


jstatic_GL_MODELVIEW : JR.M
jstatic_GL_MODELVIEW s =
    JR.static "GL10" jclinit "GL_MODELVIEW"
        (JR.int 5888)
        s


jstatic_GL_MODULATE : JR.M
jstatic_GL_MODULATE s =
    JR.static "GL10" jclinit "GL_MODULATE"
        (JR.int 8448)
        s


jstatic_GL_MULTISAMPLE : JR.M
jstatic_GL_MULTISAMPLE s =
    JR.static "GL10" jclinit "GL_MULTISAMPLE"
        (JR.int 32925)
        s


jstatic_GL_NAND : JR.M
jstatic_GL_NAND s =
    JR.static "GL10" jclinit "GL_NAND"
        (JR.int 5390)
        s


jstatic_GL_NEAREST : JR.M
jstatic_GL_NEAREST s =
    JR.static "GL10" jclinit "GL_NEAREST"
        (JR.int 9728)
        s


jstatic_GL_NEAREST_MIPMAP_LINEAR : JR.M
jstatic_GL_NEAREST_MIPMAP_LINEAR s =
    JR.static "GL10" jclinit "GL_NEAREST_MIPMAP_LINEAR"
        (JR.int 9986)
        s


jstatic_GL_NEAREST_MIPMAP_NEAREST : JR.M
jstatic_GL_NEAREST_MIPMAP_NEAREST s =
    JR.static "GL10" jclinit "GL_NEAREST_MIPMAP_NEAREST"
        (JR.int 9984)
        s


jstatic_GL_NEVER : JR.M
jstatic_GL_NEVER s =
    JR.static "GL10" jclinit "GL_NEVER"
        (JR.int 512)
        s


jstatic_GL_NICEST : JR.M
jstatic_GL_NICEST s =
    JR.static "GL10" jclinit "GL_NICEST"
        (JR.int 4354)
        s


jstatic_GL_NO_ERROR : JR.M
jstatic_GL_NO_ERROR s =
    JR.static "GL10" jclinit "GL_NO_ERROR"
        (JR.int 0)
        s


jstatic_GL_NOOP : JR.M
jstatic_GL_NOOP s =
    JR.static "GL10" jclinit "GL_NOOP"
        (JR.int 5381)
        s


jstatic_GL_NOR : JR.M
jstatic_GL_NOR s =
    JR.static "GL10" jclinit "GL_NOR"
        (JR.int 5384)
        s


jstatic_GL_NORMAL_ARRAY : JR.M
jstatic_GL_NORMAL_ARRAY s =
    JR.static "GL10" jclinit "GL_NORMAL_ARRAY"
        (JR.int 32885)
        s


jstatic_GL_NORMALIZE : JR.M
jstatic_GL_NORMALIZE s =
    JR.static "GL10" jclinit "GL_NORMALIZE"
        (JR.int 2977)
        s


jstatic_GL_NOTEQUAL : JR.M
jstatic_GL_NOTEQUAL s =
    JR.static "GL10" jclinit "GL_NOTEQUAL"
        (JR.int 517)
        s


jstatic_GL_NUM_COMPRESSED_TEXTURE_FORMATS : JR.M
jstatic_GL_NUM_COMPRESSED_TEXTURE_FORMATS s =
    JR.static "GL10" jclinit "GL_NUM_COMPRESSED_TEXTURE_FORMATS"
        (JR.int 34466)
        s


jstatic_GL_ONE : JR.M
jstatic_GL_ONE s =
    JR.static "GL10" jclinit "GL_ONE"
        (JR.int 1)
        s


jstatic_GL_ONE_MINUS_DST_ALPHA : JR.M
jstatic_GL_ONE_MINUS_DST_ALPHA s =
    JR.static "GL10" jclinit "GL_ONE_MINUS_DST_ALPHA"
        (JR.int 773)
        s


jstatic_GL_ONE_MINUS_DST_COLOR : JR.M
jstatic_GL_ONE_MINUS_DST_COLOR s =
    JR.static "GL10" jclinit "GL_ONE_MINUS_DST_COLOR"
        (JR.int 775)
        s


jstatic_GL_ONE_MINUS_SRC_ALPHA : JR.M
jstatic_GL_ONE_MINUS_SRC_ALPHA s =
    JR.static "GL10" jclinit "GL_ONE_MINUS_SRC_ALPHA"
        (JR.int 771)
        s


jstatic_GL_ONE_MINUS_SRC_COLOR : JR.M
jstatic_GL_ONE_MINUS_SRC_COLOR s =
    JR.static "GL10" jclinit "GL_ONE_MINUS_SRC_COLOR"
        (JR.int 769)
        s


jstatic_GL_OR : JR.M
jstatic_GL_OR s =
    JR.static "GL10" jclinit "GL_OR"
        (JR.int 5383)
        s


jstatic_GL_OR_INVERTED : JR.M
jstatic_GL_OR_INVERTED s =
    JR.static "GL10" jclinit "GL_OR_INVERTED"
        (JR.int 5389)
        s


jstatic_GL_OR_REVERSE : JR.M
jstatic_GL_OR_REVERSE s =
    JR.static "GL10" jclinit "GL_OR_REVERSE"
        (JR.int 5387)
        s


jstatic_GL_OUT_OF_MEMORY : JR.M
jstatic_GL_OUT_OF_MEMORY s =
    JR.static "GL10" jclinit "GL_OUT_OF_MEMORY"
        (JR.int 1285)
        s


jstatic_GL_PACK_ALIGNMENT : JR.M
jstatic_GL_PACK_ALIGNMENT s =
    JR.static "GL10" jclinit "GL_PACK_ALIGNMENT"
        (JR.int 3333)
        s


jstatic_GL_PALETTE4_R5_G6_B5_OES : JR.M
jstatic_GL_PALETTE4_R5_G6_B5_OES s =
    JR.static "GL10" jclinit "GL_PALETTE4_R5_G6_B5_OES"
        (JR.int 35730)
        s


jstatic_GL_PALETTE4_RGB5_A1_OES : JR.M
jstatic_GL_PALETTE4_RGB5_A1_OES s =
    JR.static "GL10" jclinit "GL_PALETTE4_RGB5_A1_OES"
        (JR.int 35732)
        s


jstatic_GL_PALETTE4_RGB8_OES : JR.M
jstatic_GL_PALETTE4_RGB8_OES s =
    JR.static "GL10" jclinit "GL_PALETTE4_RGB8_OES"
        (JR.int 35728)
        s


jstatic_GL_PALETTE4_RGBA4_OES : JR.M
jstatic_GL_PALETTE4_RGBA4_OES s =
    JR.static "GL10" jclinit "GL_PALETTE4_RGBA4_OES"
        (JR.int 35731)
        s


jstatic_GL_PALETTE4_RGBA8_OES : JR.M
jstatic_GL_PALETTE4_RGBA8_OES s =
    JR.static "GL10" jclinit "GL_PALETTE4_RGBA8_OES"
        (JR.int 35729)
        s


jstatic_GL_PALETTE8_R5_G6_B5_OES : JR.M
jstatic_GL_PALETTE8_R5_G6_B5_OES s =
    JR.static "GL10" jclinit "GL_PALETTE8_R5_G6_B5_OES"
        (JR.int 35735)
        s


jstatic_GL_PALETTE8_RGB5_A1_OES : JR.M
jstatic_GL_PALETTE8_RGB5_A1_OES s =
    JR.static "GL10" jclinit "GL_PALETTE8_RGB5_A1_OES"
        (JR.int 35737)
        s


jstatic_GL_PALETTE8_RGB8_OES : JR.M
jstatic_GL_PALETTE8_RGB8_OES s =
    JR.static "GL10" jclinit "GL_PALETTE8_RGB8_OES"
        (JR.int 35733)
        s


jstatic_GL_PALETTE8_RGBA4_OES : JR.M
jstatic_GL_PALETTE8_RGBA4_OES s =
    JR.static "GL10" jclinit "GL_PALETTE8_RGBA4_OES"
        (JR.int 35736)
        s


jstatic_GL_PALETTE8_RGBA8_OES : JR.M
jstatic_GL_PALETTE8_RGBA8_OES s =
    JR.static "GL10" jclinit "GL_PALETTE8_RGBA8_OES"
        (JR.int 35734)
        s


jstatic_GL_PERSPECTIVE_CORRECTION_HINT : JR.M
jstatic_GL_PERSPECTIVE_CORRECTION_HINT s =
    JR.static "GL10" jclinit "GL_PERSPECTIVE_CORRECTION_HINT"
        (JR.int 3152)
        s


jstatic_GL_POINT_SMOOTH : JR.M
jstatic_GL_POINT_SMOOTH s =
    JR.static "GL10" jclinit "GL_POINT_SMOOTH"
        (JR.int 2832)
        s


jstatic_GL_POINT_SMOOTH_HINT : JR.M
jstatic_GL_POINT_SMOOTH_HINT s =
    JR.static "GL10" jclinit "GL_POINT_SMOOTH_HINT"
        (JR.int 3153)
        s


jstatic_GL_POINTS : JR.M
jstatic_GL_POINTS s =
    JR.static "GL10" jclinit "GL_POINTS"
        (JR.int 0)
        s


jstatic_GL_POINT_FADE_THRESHOLD_SIZE : JR.M
jstatic_GL_POINT_FADE_THRESHOLD_SIZE s =
    JR.static "GL10" jclinit "GL_POINT_FADE_THRESHOLD_SIZE"
        (JR.int 33064)
        s


jstatic_GL_POINT_SIZE : JR.M
jstatic_GL_POINT_SIZE s =
    JR.static "GL10" jclinit "GL_POINT_SIZE"
        (JR.int 2833)
        s


jstatic_GL_POLYGON_OFFSET_FILL : JR.M
jstatic_GL_POLYGON_OFFSET_FILL s =
    JR.static "GL10" jclinit "GL_POLYGON_OFFSET_FILL"
        (JR.int 32823)
        s


jstatic_GL_POLYGON_SMOOTH_HINT : JR.M
jstatic_GL_POLYGON_SMOOTH_HINT s =
    JR.static "GL10" jclinit "GL_POLYGON_SMOOTH_HINT"
        (JR.int 3155)
        s


jstatic_GL_POSITION : JR.M
jstatic_GL_POSITION s =
    JR.static "GL10" jclinit "GL_POSITION"
        (JR.int 4611)
        s


jstatic_GL_PROJECTION : JR.M
jstatic_GL_PROJECTION s =
    JR.static "GL10" jclinit "GL_PROJECTION"
        (JR.int 5889)
        s


jstatic_GL_QUADRATIC_ATTENUATION : JR.M
jstatic_GL_QUADRATIC_ATTENUATION s =
    JR.static "GL10" jclinit "GL_QUADRATIC_ATTENUATION"
        (JR.int 4617)
        s


jstatic_GL_RED_BITS : JR.M
jstatic_GL_RED_BITS s =
    JR.static "GL10" jclinit "GL_RED_BITS"
        (JR.int 3410)
        s


jstatic_GL_RENDERER : JR.M
jstatic_GL_RENDERER s =
    JR.static "GL10" jclinit "GL_RENDERER"
        (JR.int 7937)
        s


jstatic_GL_REPEAT : JR.M
jstatic_GL_REPEAT s =
    JR.static "GL10" jclinit "GL_REPEAT"
        (JR.int 10497)
        s


jstatic_GL_REPLACE : JR.M
jstatic_GL_REPLACE s =
    JR.static "GL10" jclinit "GL_REPLACE"
        (JR.int 7681)
        s


jstatic_GL_RESCALE_NORMAL : JR.M
jstatic_GL_RESCALE_NORMAL s =
    JR.static "GL10" jclinit "GL_RESCALE_NORMAL"
        (JR.int 32826)
        s


jstatic_GL_RGB : JR.M
jstatic_GL_RGB s =
    JR.static "GL10" jclinit "GL_RGB"
        (JR.int 6407)
        s


jstatic_GL_RGBA : JR.M
jstatic_GL_RGBA s =
    JR.static "GL10" jclinit "GL_RGBA"
        (JR.int 6408)
        s


jstatic_GL_SAMPLE_ALPHA_TO_COVERAGE : JR.M
jstatic_GL_SAMPLE_ALPHA_TO_COVERAGE s =
    JR.static "GL10" jclinit "GL_SAMPLE_ALPHA_TO_COVERAGE"
        (JR.int 32926)
        s


jstatic_GL_SAMPLE_ALPHA_TO_ONE : JR.M
jstatic_GL_SAMPLE_ALPHA_TO_ONE s =
    JR.static "GL10" jclinit "GL_SAMPLE_ALPHA_TO_ONE"
        (JR.int 32927)
        s


jstatic_GL_SAMPLE_COVERAGE : JR.M
jstatic_GL_SAMPLE_COVERAGE s =
    JR.static "GL10" jclinit "GL_SAMPLE_COVERAGE"
        (JR.int 32928)
        s


jstatic_GL_SCISSOR_TEST : JR.M
jstatic_GL_SCISSOR_TEST s =
    JR.static "GL10" jclinit "GL_SCISSOR_TEST"
        (JR.int 3089)
        s


jstatic_GL_SET : JR.M
jstatic_GL_SET s =
    JR.static "GL10" jclinit "GL_SET"
        (JR.int 5391)
        s


jstatic_GL_SHININESS : JR.M
jstatic_GL_SHININESS s =
    JR.static "GL10" jclinit "GL_SHININESS"
        (JR.int 5633)
        s


jstatic_GL_SHORT : JR.M
jstatic_GL_SHORT s =
    JR.static "GL10" jclinit "GL_SHORT"
        (JR.int 5122)
        s


jstatic_GL_SMOOTH : JR.M
jstatic_GL_SMOOTH s =
    JR.static "GL10" jclinit "GL_SMOOTH"
        (JR.int 7425)
        s


jstatic_GL_SMOOTH_LINE_WIDTH_RANGE : JR.M
jstatic_GL_SMOOTH_LINE_WIDTH_RANGE s =
    JR.static "GL10" jclinit "GL_SMOOTH_LINE_WIDTH_RANGE"
        (JR.int 2850)
        s


jstatic_GL_SMOOTH_POINT_SIZE_RANGE : JR.M
jstatic_GL_SMOOTH_POINT_SIZE_RANGE s =
    JR.static "GL10" jclinit "GL_SMOOTH_POINT_SIZE_RANGE"
        (JR.int 2834)
        s


jstatic_GL_SPECULAR : JR.M
jstatic_GL_SPECULAR s =
    JR.static "GL10" jclinit "GL_SPECULAR"
        (JR.int 4610)
        s


jstatic_GL_SPOT_CUTOFF : JR.M
jstatic_GL_SPOT_CUTOFF s =
    JR.static "GL10" jclinit "GL_SPOT_CUTOFF"
        (JR.int 4614)
        s


jstatic_GL_SPOT_DIRECTION : JR.M
jstatic_GL_SPOT_DIRECTION s =
    JR.static "GL10" jclinit "GL_SPOT_DIRECTION"
        (JR.int 4612)
        s


jstatic_GL_SPOT_EXPONENT : JR.M
jstatic_GL_SPOT_EXPONENT s =
    JR.static "GL10" jclinit "GL_SPOT_EXPONENT"
        (JR.int 4613)
        s


jstatic_GL_SRC_ALPHA : JR.M
jstatic_GL_SRC_ALPHA s =
    JR.static "GL10" jclinit "GL_SRC_ALPHA"
        (JR.int 770)
        s


jstatic_GL_SRC_ALPHA_SATURATE : JR.M
jstatic_GL_SRC_ALPHA_SATURATE s =
    JR.static "GL10" jclinit "GL_SRC_ALPHA_SATURATE"
        (JR.int 776)
        s


jstatic_GL_SRC_COLOR : JR.M
jstatic_GL_SRC_COLOR s =
    JR.static "GL10" jclinit "GL_SRC_COLOR"
        (JR.int 768)
        s


jstatic_GL_STACK_OVERFLOW : JR.M
jstatic_GL_STACK_OVERFLOW s =
    JR.static "GL10" jclinit "GL_STACK_OVERFLOW"
        (JR.int 1283)
        s


jstatic_GL_STACK_UNDERFLOW : JR.M
jstatic_GL_STACK_UNDERFLOW s =
    JR.static "GL10" jclinit "GL_STACK_UNDERFLOW"
        (JR.int 1284)
        s


jstatic_GL_STENCIL_BITS : JR.M
jstatic_GL_STENCIL_BITS s =
    JR.static "GL10" jclinit "GL_STENCIL_BITS"
        (JR.int 3415)
        s


jstatic_GL_STENCIL_BUFFER_BIT : JR.M
jstatic_GL_STENCIL_BUFFER_BIT s =
    JR.static "GL10" jclinit "GL_STENCIL_BUFFER_BIT"
        (JR.int 1024)
        s


jstatic_GL_STENCIL_TEST : JR.M
jstatic_GL_STENCIL_TEST s =
    JR.static "GL10" jclinit "GL_STENCIL_TEST"
        (JR.int 2960)
        s


jstatic_GL_SUBPIXEL_BITS : JR.M
jstatic_GL_SUBPIXEL_BITS s =
    JR.static "GL10" jclinit "GL_SUBPIXEL_BITS"
        (JR.int 3408)
        s


jstatic_GL_TEXTURE : JR.M
jstatic_GL_TEXTURE s =
    JR.static "GL10" jclinit "GL_TEXTURE"
        (JR.int 5890)
        s


jstatic_GL_TEXTURE_2D : JR.M
jstatic_GL_TEXTURE_2D s =
    JR.static "GL10" jclinit "GL_TEXTURE_2D"
        (JR.int 3553)
        s


jstatic_GL_TEXTURE_COORD_ARRAY : JR.M
jstatic_GL_TEXTURE_COORD_ARRAY s =
    JR.static "GL10" jclinit "GL_TEXTURE_COORD_ARRAY"
        (JR.int 32888)
        s


jstatic_GL_TEXTURE_ENV : JR.M
jstatic_GL_TEXTURE_ENV s =
    JR.static "GL10" jclinit "GL_TEXTURE_ENV"
        (JR.int 8960)
        s


jstatic_GL_TEXTURE_ENV_COLOR : JR.M
jstatic_GL_TEXTURE_ENV_COLOR s =
    JR.static "GL10" jclinit "GL_TEXTURE_ENV_COLOR"
        (JR.int 8705)
        s


jstatic_GL_TEXTURE_ENV_MODE : JR.M
jstatic_GL_TEXTURE_ENV_MODE s =
    JR.static "GL10" jclinit "GL_TEXTURE_ENV_MODE"
        (JR.int 8704)
        s


jstatic_GL_TEXTURE_MAG_FILTER : JR.M
jstatic_GL_TEXTURE_MAG_FILTER s =
    JR.static "GL10" jclinit "GL_TEXTURE_MAG_FILTER"
        (JR.int 10240)
        s


jstatic_GL_TEXTURE_MIN_FILTER : JR.M
jstatic_GL_TEXTURE_MIN_FILTER s =
    JR.static "GL10" jclinit "GL_TEXTURE_MIN_FILTER"
        (JR.int 10241)
        s


jstatic_GL_TEXTURE_WRAP_S : JR.M
jstatic_GL_TEXTURE_WRAP_S s =
    JR.static "GL10" jclinit "GL_TEXTURE_WRAP_S"
        (JR.int 10242)
        s


jstatic_GL_TEXTURE_WRAP_T : JR.M
jstatic_GL_TEXTURE_WRAP_T s =
    JR.static "GL10" jclinit "GL_TEXTURE_WRAP_T"
        (JR.int 10243)
        s


jstatic_GL_TEXTURE0 : JR.M
jstatic_GL_TEXTURE0 s =
    JR.static "GL10" jclinit "GL_TEXTURE0"
        (JR.int 33984)
        s


jstatic_GL_TEXTURE1 : JR.M
jstatic_GL_TEXTURE1 s =
    JR.static "GL10" jclinit "GL_TEXTURE1"
        (JR.int 33985)
        s


jstatic_GL_TEXTURE2 : JR.M
jstatic_GL_TEXTURE2 s =
    JR.static "GL10" jclinit "GL_TEXTURE2"
        (JR.int 33986)
        s


jstatic_GL_TEXTURE3 : JR.M
jstatic_GL_TEXTURE3 s =
    JR.static "GL10" jclinit "GL_TEXTURE3"
        (JR.int 33987)
        s


jstatic_GL_TEXTURE4 : JR.M
jstatic_GL_TEXTURE4 s =
    JR.static "GL10" jclinit "GL_TEXTURE4"
        (JR.int 33988)
        s


jstatic_GL_TEXTURE5 : JR.M
jstatic_GL_TEXTURE5 s =
    JR.static "GL10" jclinit "GL_TEXTURE5"
        (JR.int 33989)
        s


jstatic_GL_TEXTURE6 : JR.M
jstatic_GL_TEXTURE6 s =
    JR.static "GL10" jclinit "GL_TEXTURE6"
        (JR.int 33990)
        s


jstatic_GL_TEXTURE7 : JR.M
jstatic_GL_TEXTURE7 s =
    JR.static "GL10" jclinit "GL_TEXTURE7"
        (JR.int 33991)
        s


jstatic_GL_TEXTURE8 : JR.M
jstatic_GL_TEXTURE8 s =
    JR.static "GL10" jclinit "GL_TEXTURE8"
        (JR.int 33992)
        s


jstatic_GL_TEXTURE9 : JR.M
jstatic_GL_TEXTURE9 s =
    JR.static "GL10" jclinit "GL_TEXTURE9"
        (JR.int 33993)
        s


jstatic_GL_TEXTURE10 : JR.M
jstatic_GL_TEXTURE10 s =
    JR.static "GL10" jclinit "GL_TEXTURE10"
        (JR.int 33994)
        s


jstatic_GL_TEXTURE11 : JR.M
jstatic_GL_TEXTURE11 s =
    JR.static "GL10" jclinit "GL_TEXTURE11"
        (JR.int 33995)
        s


jstatic_GL_TEXTURE12 : JR.M
jstatic_GL_TEXTURE12 s =
    JR.static "GL10" jclinit "GL_TEXTURE12"
        (JR.int 33996)
        s


jstatic_GL_TEXTURE13 : JR.M
jstatic_GL_TEXTURE13 s =
    JR.static "GL10" jclinit "GL_TEXTURE13"
        (JR.int 33997)
        s


jstatic_GL_TEXTURE14 : JR.M
jstatic_GL_TEXTURE14 s =
    JR.static "GL10" jclinit "GL_TEXTURE14"
        (JR.int 33998)
        s


jstatic_GL_TEXTURE15 : JR.M
jstatic_GL_TEXTURE15 s =
    JR.static "GL10" jclinit "GL_TEXTURE15"
        (JR.int 33999)
        s


jstatic_GL_TEXTURE16 : JR.M
jstatic_GL_TEXTURE16 s =
    JR.static "GL10" jclinit "GL_TEXTURE16"
        (JR.int 34000)
        s


jstatic_GL_TEXTURE17 : JR.M
jstatic_GL_TEXTURE17 s =
    JR.static "GL10" jclinit "GL_TEXTURE17"
        (JR.int 34001)
        s


jstatic_GL_TEXTURE18 : JR.M
jstatic_GL_TEXTURE18 s =
    JR.static "GL10" jclinit "GL_TEXTURE18"
        (JR.int 34002)
        s


jstatic_GL_TEXTURE19 : JR.M
jstatic_GL_TEXTURE19 s =
    JR.static "GL10" jclinit "GL_TEXTURE19"
        (JR.int 34003)
        s


jstatic_GL_TEXTURE20 : JR.M
jstatic_GL_TEXTURE20 s =
    JR.static "GL10" jclinit "GL_TEXTURE20"
        (JR.int 34004)
        s


jstatic_GL_TEXTURE21 : JR.M
jstatic_GL_TEXTURE21 s =
    JR.static "GL10" jclinit "GL_TEXTURE21"
        (JR.int 34005)
        s


jstatic_GL_TEXTURE22 : JR.M
jstatic_GL_TEXTURE22 s =
    JR.static "GL10" jclinit "GL_TEXTURE22"
        (JR.int 34006)
        s


jstatic_GL_TEXTURE23 : JR.M
jstatic_GL_TEXTURE23 s =
    JR.static "GL10" jclinit "GL_TEXTURE23"
        (JR.int 34007)
        s


jstatic_GL_TEXTURE24 : JR.M
jstatic_GL_TEXTURE24 s =
    JR.static "GL10" jclinit "GL_TEXTURE24"
        (JR.int 34008)
        s


jstatic_GL_TEXTURE25 : JR.M
jstatic_GL_TEXTURE25 s =
    JR.static "GL10" jclinit "GL_TEXTURE25"
        (JR.int 34009)
        s


jstatic_GL_TEXTURE26 : JR.M
jstatic_GL_TEXTURE26 s =
    JR.static "GL10" jclinit "GL_TEXTURE26"
        (JR.int 34010)
        s


jstatic_GL_TEXTURE27 : JR.M
jstatic_GL_TEXTURE27 s =
    JR.static "GL10" jclinit "GL_TEXTURE27"
        (JR.int 34011)
        s


jstatic_GL_TEXTURE28 : JR.M
jstatic_GL_TEXTURE28 s =
    JR.static "GL10" jclinit "GL_TEXTURE28"
        (JR.int 34012)
        s


jstatic_GL_TEXTURE29 : JR.M
jstatic_GL_TEXTURE29 s =
    JR.static "GL10" jclinit "GL_TEXTURE29"
        (JR.int 34013)
        s


jstatic_GL_TEXTURE30 : JR.M
jstatic_GL_TEXTURE30 s =
    JR.static "GL10" jclinit "GL_TEXTURE30"
        (JR.int 34014)
        s


jstatic_GL_TEXTURE31 : JR.M
jstatic_GL_TEXTURE31 s =
    JR.static "GL10" jclinit "GL_TEXTURE31"
        (JR.int 34015)
        s


jstatic_GL_TRIANGLE_FAN : JR.M
jstatic_GL_TRIANGLE_FAN s =
    JR.static "GL10" jclinit "GL_TRIANGLE_FAN"
        (JR.int 6)
        s


jstatic_GL_TRIANGLE_STRIP : JR.M
jstatic_GL_TRIANGLE_STRIP s =
    JR.static "GL10" jclinit "GL_TRIANGLE_STRIP"
        (JR.int 5)
        s


jstatic_GL_TRIANGLES : JR.M
jstatic_GL_TRIANGLES s =
    JR.static "GL10" jclinit "GL_TRIANGLES"
        (JR.int 4)
        s


jstatic_GL_TRUE : JR.M
jstatic_GL_TRUE s =
    JR.static "GL10" jclinit "GL_TRUE"
        (JR.int 1)
        s


jstatic_GL_UNPACK_ALIGNMENT : JR.M
jstatic_GL_UNPACK_ALIGNMENT s =
    JR.static "GL10" jclinit "GL_UNPACK_ALIGNMENT"
        (JR.int 3317)
        s


jstatic_GL_UNSIGNED_BYTE : JR.M
jstatic_GL_UNSIGNED_BYTE s =
    JR.static "GL10" jclinit "GL_UNSIGNED_BYTE"
        (JR.int 5121)
        s


jstatic_GL_UNSIGNED_SHORT : JR.M
jstatic_GL_UNSIGNED_SHORT s =
    JR.static "GL10" jclinit "GL_UNSIGNED_SHORT"
        (JR.int 5123)
        s


jstatic_GL_UNSIGNED_SHORT_4_4_4_4 : JR.M
jstatic_GL_UNSIGNED_SHORT_4_4_4_4 s =
    JR.static "GL10" jclinit "GL_UNSIGNED_SHORT_4_4_4_4"
        (JR.int 32819)
        s


jstatic_GL_UNSIGNED_SHORT_5_5_5_1 : JR.M
jstatic_GL_UNSIGNED_SHORT_5_5_5_1 s =
    JR.static "GL10" jclinit "GL_UNSIGNED_SHORT_5_5_5_1"
        (JR.int 32820)
        s


jstatic_GL_UNSIGNED_SHORT_5_6_5 : JR.M
jstatic_GL_UNSIGNED_SHORT_5_6_5 s =
    JR.static "GL10" jclinit "GL_UNSIGNED_SHORT_5_6_5"
        (JR.int 33635)
        s


jstatic_GL_VENDOR : JR.M
jstatic_GL_VENDOR s =
    JR.static "GL10" jclinit "GL_VENDOR"
        (JR.int 7936)
        s


jstatic_GL_VERSION : JR.M
jstatic_GL_VERSION s =
    JR.static "GL10" jclinit "GL_VERSION"
        (JR.int 7938)
        s


jstatic_GL_VERTEX_ARRAY : JR.M
jstatic_GL_VERTEX_ARRAY s =
    JR.static "GL10" jclinit "GL_VERTEX_ARRAY"
        (JR.int 32884)
        s


jstatic_GL_XOR : JR.M
jstatic_GL_XOR s =
    JR.static "GL10" jclinit "GL_XOR"
        (JR.int 5382)
        s


jstatic_GL_ZERO : JR.M
jstatic_GL_ZERO s =
    JR.static "GL10" jclinit "GL_ZERO"
        (JR.int 0)
        s


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

