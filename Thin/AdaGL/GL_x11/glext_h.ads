with Interfaces.C; use Interfaces.C;
with stddef_h;
with stdint_h;
with System;
with gl_h;

package glext_h is


   GL_GLEXT_VERSION : constant := 72;

   GL_RESCALE_NORMAL : constant := 16#803A#;
   GL_LIGHT_MODEL_COLOR_CONTROL : constant := 16#81F8#;
   GL_SINGLE_COLOR : constant := 16#81F9#;
   GL_SEPARATE_SPECULAR_COLOR : constant := 16#81FA#;
   GL_ALIASED_POINT_SIZE_RANGE : constant := 16#846D#;

   GL_CONVOLUTION_1D : constant := 16#8010#;
   GL_CONVOLUTION_2D : constant := 16#8011#;
   GL_SEPARABLE_2D : constant := 16#8012#;
   GL_CONVOLUTION_BORDER_MODE : constant := 16#8013#;
   GL_CONVOLUTION_FILTER_SCALE : constant := 16#8014#;
   GL_CONVOLUTION_FILTER_BIAS : constant := 16#8015#;
   GL_REDUCE : constant := 16#8016#;
   GL_CONVOLUTION_FORMAT : constant := 16#8017#;
   GL_CONVOLUTION_WIDTH : constant := 16#8018#;
   GL_CONVOLUTION_HEIGHT : constant := 16#8019#;
   GL_MAX_CONVOLUTION_WIDTH : constant := 16#801A#;
   GL_MAX_CONVOLUTION_HEIGHT : constant := 16#801B#;
   GL_POST_CONVOLUTION_RED_SCALE : constant := 16#801C#;
   GL_POST_CONVOLUTION_GREEN_SCALE : constant := 16#801D#;
   GL_POST_CONVOLUTION_BLUE_SCALE : constant := 16#801E#;
   GL_POST_CONVOLUTION_ALPHA_SCALE : constant := 16#801F#;
   GL_POST_CONVOLUTION_RED_BIAS : constant := 16#8020#;
   GL_POST_CONVOLUTION_GREEN_BIAS : constant := 16#8021#;
   GL_POST_CONVOLUTION_BLUE_BIAS : constant := 16#8022#;
   GL_POST_CONVOLUTION_ALPHA_BIAS : constant := 16#8023#;
   GL_HISTOGRAM : constant := 16#8024#;
   GL_PROXY_HISTOGRAM : constant := 16#8025#;
   GL_HISTOGRAM_WIDTH : constant := 16#8026#;
   GL_HISTOGRAM_FORMAT : constant := 16#8027#;
   GL_HISTOGRAM_RED_SIZE : constant := 16#8028#;
   GL_HISTOGRAM_GREEN_SIZE : constant := 16#8029#;
   GL_HISTOGRAM_BLUE_SIZE : constant := 16#802A#;
   GL_HISTOGRAM_ALPHA_SIZE : constant := 16#802B#;
   GL_HISTOGRAM_LUMINANCE_SIZE : constant := 16#802C#;
   GL_HISTOGRAM_SINK : constant := 16#802D#;
   GL_MINMAX : constant := 16#802E#;
   GL_MINMAX_FORMAT : constant := 16#802F#;
   GL_MINMAX_SINK : constant := 16#8030#;
   GL_TABLE_TOO_LARGE : constant := 16#8031#;
   GL_COLOR_MATRIX : constant := 16#80B1#;
   GL_COLOR_MATRIX_STACK_DEPTH : constant := 16#80B2#;
   GL_MAX_COLOR_MATRIX_STACK_DEPTH : constant := 16#80B3#;
   GL_POST_COLOR_MATRIX_RED_SCALE : constant := 16#80B4#;
   GL_POST_COLOR_MATRIX_GREEN_SCALE : constant := 16#80B5#;
   GL_POST_COLOR_MATRIX_BLUE_SCALE : constant := 16#80B6#;
   GL_POST_COLOR_MATRIX_ALPHA_SCALE : constant := 16#80B7#;
   GL_POST_COLOR_MATRIX_RED_BIAS : constant := 16#80B8#;
   GL_POST_COLOR_MATRIX_GREEN_BIAS : constant := 16#80B9#;
   GL_POST_COLOR_MATRIX_BLUE_BIAS : constant := 16#80BA#;
   GL_POST_COLOR_MATRIX_ALPHA_BIAS : constant := 16#80BB#;
   GL_COLOR_TABLE : constant := 16#80D0#;
   GL_POST_CONVOLUTION_COLOR_TABLE : constant := 16#80D1#;
   GL_POST_COLOR_MATRIX_COLOR_TABLE : constant := 16#80D2#;
   GL_PROXY_COLOR_TABLE : constant := 16#80D3#;
   GL_PROXY_POST_CONVOLUTION_COLOR_TABLE : constant := 16#80D4#;
   GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE : constant := 16#80D5#;
   GL_COLOR_TABLE_SCALE : constant := 16#80D6#;
   GL_COLOR_TABLE_BIAS : constant := 16#80D7#;
   GL_COLOR_TABLE_FORMAT : constant := 16#80D8#;
   GL_COLOR_TABLE_WIDTH : constant := 16#80D9#;
   GL_COLOR_TABLE_RED_SIZE : constant := 16#80DA#;
   GL_COLOR_TABLE_GREEN_SIZE : constant := 16#80DB#;
   GL_COLOR_TABLE_BLUE_SIZE : constant := 16#80DC#;
   GL_COLOR_TABLE_ALPHA_SIZE : constant := 16#80DD#;
   GL_COLOR_TABLE_LUMINANCE_SIZE : constant := 16#80DE#;
   GL_COLOR_TABLE_INTENSITY_SIZE : constant := 16#80DF#;  
   GL_CONSTANT_BORDER : constant := 16#8151#;
   GL_REPLICATE_BORDER : constant := 16#8153#;
   GL_CONVOLUTION_BORDER_COLOR : constant := 16#8154#;

   GL_CLIENT_ACTIVE_TEXTURE : constant := 16#84E1#;
   GL_MAX_TEXTURE_UNITS : constant := 16#84E2#;
   GL_TRANSPOSE_MODELVIEW_MATRIX : constant := 16#84E3#;
   GL_TRANSPOSE_PROJECTION_MATRIX : constant := 16#84E4#;
   GL_TRANSPOSE_TEXTURE_MATRIX : constant := 16#84E5#;
   GL_TRANSPOSE_COLOR_MATRIX : constant := 16#84E6#;
   GL_MULTISAMPLE_BIT : constant := 16#20000000#;
   GL_NORMAL_MAP : constant := 16#8511#;
   GL_REFLECTION_MAP : constant := 16#8512#;
   GL_COMPRESSED_ALPHA : constant := 16#84E9#;
   GL_COMPRESSED_LUMINANCE : constant := 16#84EA#;
   GL_COMPRESSED_LUMINANCE_ALPHA : constant := 16#84EB#;
   GL_COMPRESSED_INTENSITY : constant := 16#84EC#;
   GL_COMBINE : constant := 16#8570#;
   GL_COMBINE_RGB : constant := 16#8571#;
   GL_COMBINE_ALPHA : constant := 16#8572#;
   GL_SOURCE0_RGB : constant := 16#8580#;
   GL_SOURCE1_RGB : constant := 16#8581#;
   GL_SOURCE2_RGB : constant := 16#8582#;
   GL_SOURCE0_ALPHA : constant := 16#8588#;
   GL_SOURCE1_ALPHA : constant := 16#8589#;
   GL_SOURCE2_ALPHA : constant := 16#858A#;
   GL_OPERAND0_RGB : constant := 16#8590#;
   GL_OPERAND1_RGB : constant := 16#8591#;
   GL_OPERAND2_RGB : constant := 16#8592#;
   GL_OPERAND0_ALPHA : constant := 16#8598#;
   GL_OPERAND1_ALPHA : constant := 16#8599#;
   GL_OPERAND2_ALPHA : constant := 16#859A#;
   GL_RGB_SCALE : constant := 16#8573#;
   GL_ADD_SIGNED : constant := 16#8574#;
   GL_INTERPOLATE : constant := 16#8575#;
   GL_SUBTRACT : constant := 16#84E7#;
   GL_CONSTANT : constant := 16#8576#;
   GL_PRIMARY_COLOR : constant := 16#8577#;
   GL_PREVIOUS : constant := 16#8578#;
   GL_DOT3_RGB : constant := 16#86AE#;
   GL_DOT3_RGBA : constant := 16#86AF#;

   GL_BLEND_DST_RGB : constant := 16#80C8#;
   GL_BLEND_SRC_RGB : constant := 16#80C9#;
   GL_BLEND_DST_ALPHA : constant := 16#80CA#;
   GL_BLEND_SRC_ALPHA : constant := 16#80CB#;
   GL_POINT_FADE_THRESHOLD_SIZE : constant := 16#8128#;
   GL_DEPTH_COMPONENT16 : constant := 16#81A5#;
   GL_DEPTH_COMPONENT24 : constant := 16#81A6#;
   GL_DEPTH_COMPONENT32 : constant := 16#81A7#;
   GL_MIRRORED_REPEAT : constant := 16#8370#;
   GL_MAX_TEXTURE_LOD_BIAS : constant := 16#84FD#;
   GL_TEXTURE_LOD_BIAS : constant := 16#8501#;
   GL_INCR_WRAP : constant := 16#8507#;
   GL_DECR_WRAP : constant := 16#8508#;
   GL_TEXTURE_DEPTH_SIZE : constant := 16#884A#;
   GL_TEXTURE_COMPARE_MODE : constant := 16#884C#;
   GL_TEXTURE_COMPARE_FUNC : constant := 16#884D#;

   GL_POINT_SIZE_MIN : constant := 16#8126#;
   GL_POINT_SIZE_MAX : constant := 16#8127#;
   GL_POINT_DISTANCE_ATTENUATION : constant := 16#8129#;
   GL_GENERATE_MIPMAP : constant := 16#8191#;
   GL_GENERATE_MIPMAP_HINT : constant := 16#8192#;
   GL_FOG_COORDINATE_SOURCE : constant := 16#8450#;
   GL_FOG_COORDINATE : constant := 16#8451#;
   GL_FRAGMENT_DEPTH : constant := 16#8452#;
   GL_CURRENT_FOG_COORDINATE : constant := 16#8453#;
   GL_FOG_COORDINATE_ARRAY_TYPE : constant := 16#8454#;
   GL_FOG_COORDINATE_ARRAY_STRIDE : constant := 16#8455#;
   GL_FOG_COORDINATE_ARRAY_POINTER : constant := 16#8456#;
   GL_FOG_COORDINATE_ARRAY : constant := 16#8457#;
   GL_COLOR_SUM : constant := 16#8458#;
   GL_CURRENT_SECONDARY_COLOR : constant := 16#8459#;
   GL_SECONDARY_COLOR_ARRAY_SIZE : constant := 16#845A#;
   GL_SECONDARY_COLOR_ARRAY_TYPE : constant := 16#845B#;
   GL_SECONDARY_COLOR_ARRAY_STRIDE : constant := 16#845C#;
   GL_SECONDARY_COLOR_ARRAY_POINTER : constant := 16#845D#;
   GL_SECONDARY_COLOR_ARRAY : constant := 16#845E#;
   GL_TEXTURE_FILTER_CONTROL : constant := 16#8500#;
   GL_DEPTH_TEXTURE_MODE : constant := 16#884B#;
   GL_COMPARE_R_TO_TEXTURE : constant := 16#884E#;

   GL_BUFFER_SIZE : constant := 16#8764#;
   GL_BUFFER_USAGE : constant := 16#8765#;
   GL_QUERY_COUNTER_BITS : constant := 16#8864#;
   GL_CURRENT_QUERY : constant := 16#8865#;
   GL_QUERY_RESULT : constant := 16#8866#;
   GL_QUERY_RESULT_AVAILABLE : constant := 16#8867#;
   GL_ARRAY_BUFFER : constant := 16#8892#;
   GL_ELEMENT_ARRAY_BUFFER : constant := 16#8893#;
   GL_ARRAY_BUFFER_BINDING : constant := 16#8894#;
   GL_ELEMENT_ARRAY_BUFFER_BINDING : constant := 16#8895#;
   GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING : constant := 16#889F#;
   GL_READ_ONLY : constant := 16#88B8#;
   GL_WRITE_ONLY : constant := 16#88B9#;
   GL_READ_WRITE : constant := 16#88BA#;
   GL_BUFFER_ACCESS : constant := 16#88BB#;
   GL_BUFFER_MAPPED : constant := 16#88BC#;
   GL_BUFFER_MAP_POINTER : constant := 16#88BD#;
   GL_STREAM_DRAW : constant := 16#88E0#;
   GL_STREAM_READ : constant := 16#88E1#;
   GL_STREAM_COPY : constant := 16#88E2#;
   GL_STATIC_DRAW : constant := 16#88E4#;
   GL_STATIC_READ : constant := 16#88E5#;
   GL_STATIC_COPY : constant := 16#88E6#;
   GL_DYNAMIC_DRAW : constant := 16#88E8#;
   GL_DYNAMIC_READ : constant := 16#88E9#;
   GL_DYNAMIC_COPY : constant := 16#88EA#;
   GL_SAMPLES_PASSED : constant := 16#8914#;

   GL_VERTEX_ARRAY_BUFFER_BINDING : constant := 16#8896#;
   GL_NORMAL_ARRAY_BUFFER_BINDING : constant := 16#8897#;
   GL_COLOR_ARRAY_BUFFER_BINDING : constant := 16#8898#;
   GL_INDEX_ARRAY_BUFFER_BINDING : constant := 16#8899#;
   GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING : constant := 16#889A#;
   GL_EDGE_FLAG_ARRAY_BUFFER_BINDING : constant := 16#889B#;
   GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING : constant := 16#889C#;
   GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING : constant := 16#889D#;
   GL_WEIGHT_ARRAY_BUFFER_BINDING : constant := 16#889E#;
   GL_FOG_COORD_SRC : constant := 16#8450#;
   GL_FOG_COORD : constant := 16#8451#;
   GL_CURRENT_FOG_COORD : constant := 16#8453#;
   GL_FOG_COORD_ARRAY_TYPE : constant := 16#8454#;
   GL_FOG_COORD_ARRAY_STRIDE : constant := 16#8455#;
   GL_FOG_COORD_ARRAY_POINTER : constant := 16#8456#;
   GL_FOG_COORD_ARRAY : constant := 16#8457#;
   GL_FOG_COORD_ARRAY_BUFFER_BINDING : constant := 16#889D#;
   GL_SRC0_RGB : constant := 16#8580#;
   GL_SRC1_RGB : constant := 16#8581#;
   GL_SRC2_RGB : constant := 16#8582#;
   GL_SRC0_ALPHA : constant := 16#8588#;
   GL_SRC1_ALPHA : constant := 16#8589#;
   GL_SRC2_ALPHA : constant := 16#858A#;

   GL_BLEND_EQUATION_RGB : constant := 16#8009#;
   GL_VERTEX_ATTRIB_ARRAY_ENABLED : constant := 16#8622#;
   GL_VERTEX_ATTRIB_ARRAY_SIZE : constant := 16#8623#;
   GL_VERTEX_ATTRIB_ARRAY_STRIDE : constant := 16#8624#;
   GL_VERTEX_ATTRIB_ARRAY_TYPE : constant := 16#8625#;
   GL_CURRENT_VERTEX_ATTRIB : constant := 16#8626#;
   GL_VERTEX_PROGRAM_POINT_SIZE : constant := 16#8642#;
   GL_VERTEX_ATTRIB_ARRAY_POINTER : constant := 16#8645#;
   GL_STENCIL_BACK_FUNC : constant := 16#8800#;
   GL_STENCIL_BACK_FAIL : constant := 16#8801#;
   GL_STENCIL_BACK_PASS_DEPTH_FAIL : constant := 16#8802#;
   GL_STENCIL_BACK_PASS_DEPTH_PASS : constant := 16#8803#;
   GL_MAX_DRAW_BUFFERS : constant := 16#8824#;
   GL_DRAW_BUFFER0 : constant := 16#8825#;
   GL_DRAW_BUFFER1 : constant := 16#8826#;
   GL_DRAW_BUFFER2 : constant := 16#8827#;
   GL_DRAW_BUFFER3 : constant := 16#8828#;
   GL_DRAW_BUFFER4 : constant := 16#8829#;
   GL_DRAW_BUFFER5 : constant := 16#882A#;
   GL_DRAW_BUFFER6 : constant := 16#882B#;
   GL_DRAW_BUFFER7 : constant := 16#882C#;
   GL_DRAW_BUFFER8 : constant := 16#882D#;
   GL_DRAW_BUFFER9 : constant := 16#882E#;
   GL_DRAW_BUFFER10 : constant := 16#882F#;
   GL_DRAW_BUFFER11 : constant := 16#8830#;
   GL_DRAW_BUFFER12 : constant := 16#8831#;
   GL_DRAW_BUFFER13 : constant := 16#8832#;
   GL_DRAW_BUFFER14 : constant := 16#8833#;
   GL_DRAW_BUFFER15 : constant := 16#8834#;
   GL_BLEND_EQUATION_ALPHA : constant := 16#883D#;
   GL_MAX_VERTEX_ATTRIBS : constant := 16#8869#;
   GL_VERTEX_ATTRIB_ARRAY_NORMALIZED : constant := 16#886A#;
   GL_MAX_TEXTURE_IMAGE_UNITS : constant := 16#8872#;
   GL_FRAGMENT_SHADER : constant := 16#8B30#;
   GL_VERTEX_SHADER : constant := 16#8B31#;
   GL_MAX_FRAGMENT_UNIFORM_COMPONENTS : constant := 16#8B49#;
   GL_MAX_VERTEX_UNIFORM_COMPONENTS : constant := 16#8B4A#;
   GL_MAX_VARYING_FLOATS : constant := 16#8B4B#;
   GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS : constant := 16#8B4C#;
   GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS : constant := 16#8B4D#;
   GL_SHADER_TYPE : constant := 16#8B4F#;
   GL_FLOAT_VEC2 : constant := 16#8B50#;
   GL_FLOAT_VEC3 : constant := 16#8B51#;
   GL_FLOAT_VEC4 : constant := 16#8B52#;
   GL_INT_VEC2 : constant := 16#8B53#;
   GL_INT_VEC3 : constant := 16#8B54#;
   GL_INT_VEC4 : constant := 16#8B55#;
   GL_BOOL : constant := 16#8B56#;
   GL_BOOL_VEC2 : constant := 16#8B57#;
   GL_BOOL_VEC3 : constant := 16#8B58#;
   GL_BOOL_VEC4 : constant := 16#8B59#;
   GL_FLOAT_MAT2 : constant := 16#8B5A#;
   GL_FLOAT_MAT3 : constant := 16#8B5B#;
   GL_FLOAT_MAT4 : constant := 16#8B5C#;
   GL_SAMPLER_1D : constant := 16#8B5D#;
   GL_SAMPLER_2D : constant := 16#8B5E#;
   GL_SAMPLER_3D : constant := 16#8B5F#;
   GL_SAMPLER_CUBE : constant := 16#8B60#;
   GL_SAMPLER_1D_SHADOW : constant := 16#8B61#;
   GL_SAMPLER_2D_SHADOW : constant := 16#8B62#;
   GL_DELETE_STATUS : constant := 16#8B80#;
   GL_COMPILE_STATUS : constant := 16#8B81#;
   GL_LINK_STATUS : constant := 16#8B82#;
   GL_VALIDATE_STATUS : constant := 16#8B83#;
   GL_INFO_LOG_LENGTH : constant := 16#8B84#;
   GL_ATTACHED_SHADERS : constant := 16#8B85#;
   GL_ACTIVE_UNIFORMS : constant := 16#8B86#;
   GL_ACTIVE_UNIFORM_MAX_LENGTH : constant := 16#8B87#;
   GL_SHADER_SOURCE_LENGTH : constant := 16#8B88#;
   GL_ACTIVE_ATTRIBUTES : constant := 16#8B89#;
   GL_ACTIVE_ATTRIBUTE_MAX_LENGTH : constant := 16#8B8A#;
   GL_FRAGMENT_SHADER_DERIVATIVE_HINT : constant := 16#8B8B#;
   GL_SHADING_LANGUAGE_VERSION : constant := 16#8B8C#;
   GL_CURRENT_PROGRAM : constant := 16#8B8D#;
   GL_POINT_SPRITE_COORD_ORIGIN : constant := 16#8CA0#;
   GL_LOWER_LEFT : constant := 16#8CA1#;
   GL_UPPER_LEFT : constant := 16#8CA2#;
   GL_STENCIL_BACK_REF : constant := 16#8CA3#;
   GL_STENCIL_BACK_VALUE_MASK : constant := 16#8CA4#;
   GL_STENCIL_BACK_WRITEMASK : constant := 16#8CA5#;

   GL_VERTEX_PROGRAM_TWO_SIDE : constant := 16#8643#;
   GL_POINT_SPRITE : constant := 16#8861#;
   GL_COORD_REPLACE : constant := 16#8862#;
   GL_MAX_TEXTURE_COORDS : constant := 16#8871#;

   GL_PIXEL_PACK_BUFFER : constant := 16#88EB#;
   GL_PIXEL_UNPACK_BUFFER : constant := 16#88EC#;
   GL_PIXEL_PACK_BUFFER_BINDING : constant := 16#88ED#;
   GL_PIXEL_UNPACK_BUFFER_BINDING : constant := 16#88EF#;
   GL_FLOAT_MAT2x3 : constant := 16#8B65#;
   GL_FLOAT_MAT2x4 : constant := 16#8B66#;
   GL_FLOAT_MAT3x2 : constant := 16#8B67#;
   GL_FLOAT_MAT3x4 : constant := 16#8B68#;
   GL_FLOAT_MAT4x2 : constant := 16#8B69#;
   GL_FLOAT_MAT4x3 : constant := 16#8B6A#;
   GL_SRGB : constant := 16#8C40#;
   GL_SRGB8 : constant := 16#8C41#;
   GL_SRGB_ALPHA : constant := 16#8C42#;
   GL_SRGB8_ALPHA8 : constant := 16#8C43#;
   GL_COMPRESSED_SRGB : constant := 16#8C48#;
   GL_COMPRESSED_SRGB_ALPHA : constant := 16#8C49#;

   GL_CURRENT_RASTER_SECONDARY_COLOR : constant := 16#845F#;
   GL_SLUMINANCE_ALPHA : constant := 16#8C44#;
   GL_SLUMINANCE8_ALPHA8 : constant := 16#8C45#;
   GL_SLUMINANCE : constant := 16#8C46#;
   GL_SLUMINANCE8 : constant := 16#8C47#;
   GL_COMPRESSED_SLUMINANCE : constant := 16#8C4A#;
   GL_COMPRESSED_SLUMINANCE_ALPHA : constant := 16#8C4B#;

   GL_COMPARE_REF_TO_TEXTURE : constant := 16#884E#;
   GL_CLIP_DISTANCE0 : constant := 16#3000#;
   GL_CLIP_DISTANCE1 : constant := 16#3001#;
   GL_CLIP_DISTANCE2 : constant := 16#3002#;
   GL_CLIP_DISTANCE3 : constant := 16#3003#;
   GL_CLIP_DISTANCE4 : constant := 16#3004#;
   GL_CLIP_DISTANCE5 : constant := 16#3005#;
   GL_CLIP_DISTANCE6 : constant := 16#3006#;
   GL_CLIP_DISTANCE7 : constant := 16#3007#;
   GL_MAX_CLIP_DISTANCES : constant := 16#0D32#;
   GL_MAJOR_VERSION : constant := 16#821B#;
   GL_MINOR_VERSION : constant := 16#821C#;
   GL_NUM_EXTENSIONS : constant := 16#821D#;
   GL_CONTEXT_FLAGS : constant := 16#821E#;
   GL_DEPTH_BUFFER : constant := 16#8223#;
   GL_STENCIL_BUFFER : constant := 16#8224#;
   GL_COMPRESSED_RED : constant := 16#8225#;
   GL_COMPRESSED_RG : constant := 16#8226#;
   GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT : constant := 16#0001#;
   GL_RGBA32F : constant := 16#8814#;
   GL_RGB32F : constant := 16#8815#;
   GL_RGBA16F : constant := 16#881A#;
   GL_RGB16F : constant := 16#881B#;
   GL_VERTEX_ATTRIB_ARRAY_INTEGER : constant := 16#88FD#;
   GL_MAX_ARRAY_TEXTURE_LAYERS : constant := 16#88FF#;
   GL_MIN_PROGRAM_TEXEL_OFFSET : constant := 16#8904#;
   GL_MAX_PROGRAM_TEXEL_OFFSET : constant := 16#8905#;
   GL_CLAMP_READ_COLOR : constant := 16#891C#;
   GL_FIXED_ONLY : constant := 16#891D#;
   GL_MAX_VARYING_COMPONENTS : constant := 16#8B4B#;
   GL_TEXTURE_1D_ARRAY : constant := 16#8C18#;
   GL_PROXY_TEXTURE_1D_ARRAY : constant := 16#8C19#;
   GL_TEXTURE_2D_ARRAY : constant := 16#8C1A#;
   GL_PROXY_TEXTURE_2D_ARRAY : constant := 16#8C1B#;
   GL_TEXTURE_BINDING_1D_ARRAY : constant := 16#8C1C#;
   GL_TEXTURE_BINDING_2D_ARRAY : constant := 16#8C1D#;
   GL_R11F_G11F_B10F : constant := 16#8C3A#;
   GL_UNSIGNED_INT_10F_11F_11F_REV : constant := 16#8C3B#;
   GL_RGB9_E5 : constant := 16#8C3D#;
   GL_UNSIGNED_INT_5_9_9_9_REV : constant := 16#8C3E#;
   GL_TEXTURE_SHARED_SIZE : constant := 16#8C3F#;
   GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH : constant := 16#8C76#;
   GL_TRANSFORM_FEEDBACK_BUFFER_MODE : constant := 16#8C7F#;
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS : constant := 16#8C80#;
   GL_TRANSFORM_FEEDBACK_VARYINGS : constant := 16#8C83#;
   GL_TRANSFORM_FEEDBACK_BUFFER_START : constant := 16#8C84#;
   GL_TRANSFORM_FEEDBACK_BUFFER_SIZE : constant := 16#8C85#;
   GL_PRIMITIVES_GENERATED : constant := 16#8C87#;
   GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN : constant := 16#8C88#;
   GL_RASTERIZER_DISCARD : constant := 16#8C89#;
   GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS : constant := 16#8C8A#;
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS : constant := 16#8C8B#;
   GL_INTERLEAVED_ATTRIBS : constant := 16#8C8C#;
   GL_SEPARATE_ATTRIBS : constant := 16#8C8D#;
   GL_TRANSFORM_FEEDBACK_BUFFER : constant := 16#8C8E#;
   GL_TRANSFORM_FEEDBACK_BUFFER_BINDING : constant := 16#8C8F#;
   GL_RGBA32UI : constant := 16#8D70#;
   GL_RGB32UI : constant := 16#8D71#;
   GL_RGBA16UI : constant := 16#8D76#;
   GL_RGB16UI : constant := 16#8D77#;
   GL_RGBA8UI : constant := 16#8D7C#;
   GL_RGB8UI : constant := 16#8D7D#;
   GL_RGBA32I : constant := 16#8D82#;
   GL_RGB32I : constant := 16#8D83#;
   GL_RGBA16I : constant := 16#8D88#;
   GL_RGB16I : constant := 16#8D89#;
   GL_RGBA8I : constant := 16#8D8E#;
   GL_RGB8I : constant := 16#8D8F#;
   GL_RED_INTEGER : constant := 16#8D94#;
   GL_GREEN_INTEGER : constant := 16#8D95#;
   GL_BLUE_INTEGER : constant := 16#8D96#;
   GL_RGB_INTEGER : constant := 16#8D98#;
   GL_RGBA_INTEGER : constant := 16#8D99#;
   GL_BGR_INTEGER : constant := 16#8D9A#;
   GL_BGRA_INTEGER : constant := 16#8D9B#;
   GL_SAMPLER_1D_ARRAY : constant := 16#8DC0#;
   GL_SAMPLER_2D_ARRAY : constant := 16#8DC1#;
   GL_SAMPLER_1D_ARRAY_SHADOW : constant := 16#8DC3#;
   GL_SAMPLER_2D_ARRAY_SHADOW : constant := 16#8DC4#;
   GL_SAMPLER_CUBE_SHADOW : constant := 16#8DC5#;
   GL_UNSIGNED_INT_VEC2 : constant := 16#8DC6#;
   GL_UNSIGNED_INT_VEC3 : constant := 16#8DC7#;
   GL_UNSIGNED_INT_VEC4 : constant := 16#8DC8#;
   GL_INT_SAMPLER_1D : constant := 16#8DC9#;
   GL_INT_SAMPLER_2D : constant := 16#8DCA#;
   GL_INT_SAMPLER_3D : constant := 16#8DCB#;
   GL_INT_SAMPLER_CUBE : constant := 16#8DCC#;
   GL_INT_SAMPLER_1D_ARRAY : constant := 16#8DCE#;
   GL_INT_SAMPLER_2D_ARRAY : constant := 16#8DCF#;
   GL_UNSIGNED_INT_SAMPLER_1D : constant := 16#8DD1#;
   GL_UNSIGNED_INT_SAMPLER_2D : constant := 16#8DD2#;
   GL_UNSIGNED_INT_SAMPLER_3D : constant := 16#8DD3#;
   GL_UNSIGNED_INT_SAMPLER_CUBE : constant := 16#8DD4#;
   GL_UNSIGNED_INT_SAMPLER_1D_ARRAY : constant := 16#8DD6#;
   GL_UNSIGNED_INT_SAMPLER_2D_ARRAY : constant := 16#8DD7#;
   GL_QUERY_WAIT : constant := 16#8E13#;
   GL_QUERY_NO_WAIT : constant := 16#8E14#;
   GL_QUERY_BY_REGION_WAIT : constant := 16#8E15#;
   GL_QUERY_BY_REGION_NO_WAIT : constant := 16#8E16#;
   GL_BUFFER_ACCESS_FLAGS : constant := 16#911F#;
   GL_BUFFER_MAP_LENGTH : constant := 16#9120#;
   GL_BUFFER_MAP_OFFSET : constant := 16#9121#;

   GL_CLAMP_VERTEX_COLOR : constant := 16#891A#;
   GL_CLAMP_FRAGMENT_COLOR : constant := 16#891B#;
   GL_ALPHA_INTEGER : constant := 16#8D97#;

   GL_SAMPLER_2D_RECT : constant := 16#8B63#;
   GL_SAMPLER_2D_RECT_SHADOW : constant := 16#8B64#;
   GL_SAMPLER_BUFFER : constant := 16#8DC2#;
   GL_INT_SAMPLER_2D_RECT : constant := 16#8DCD#;
   GL_INT_SAMPLER_BUFFER : constant := 16#8DD0#;
   GL_UNSIGNED_INT_SAMPLER_2D_RECT : constant := 16#8DD5#;
   GL_UNSIGNED_INT_SAMPLER_BUFFER : constant := 16#8DD8#;
   GL_TEXTURE_BUFFER : constant := 16#8C2A#;
   GL_MAX_TEXTURE_BUFFER_SIZE : constant := 16#8C2B#;
   GL_TEXTURE_BINDING_BUFFER : constant := 16#8C2C#;
   GL_TEXTURE_BUFFER_DATA_STORE_BINDING : constant := 16#8C2D#;
   GL_TEXTURE_BUFFER_FORMAT : constant := 16#8C2E#;
   GL_TEXTURE_RECTANGLE : constant := 16#84F5#;
   GL_TEXTURE_BINDING_RECTANGLE : constant := 16#84F6#;
   GL_PROXY_TEXTURE_RECTANGLE : constant := 16#84F7#;
   GL_MAX_RECTANGLE_TEXTURE_SIZE : constant := 16#84F8#;
   GL_RED_SNORM : constant := 16#8F90#;
   GL_RG_SNORM : constant := 16#8F91#;
   GL_RGB_SNORM : constant := 16#8F92#;
   GL_RGBA_SNORM : constant := 16#8F93#;
   GL_R8_SNORM : constant := 16#8F94#;
   GL_RG8_SNORM : constant := 16#8F95#;
   GL_RGB8_SNORM : constant := 16#8F96#;
   GL_RGBA8_SNORM : constant := 16#8F97#;
   GL_R16_SNORM : constant := 16#8F98#;
   GL_RG16_SNORM : constant := 16#8F99#;
   GL_RGB16_SNORM : constant := 16#8F9A#;
   GL_RGBA16_SNORM : constant := 16#8F9B#;
   GL_SIGNED_NORMALIZED : constant := 16#8F9C#;
   GL_PRIMITIVE_RESTART : constant := 16#8F9D#;
   GL_PRIMITIVE_RESTART_INDEX : constant := 16#8F9E#;

   GL_CONTEXT_CORE_PROFILE_BIT : constant := 16#00000001#;
   GL_CONTEXT_COMPATIBILITY_PROFILE_BIT : constant := 16#00000002#;
   GL_LINES_ADJACENCY : constant := 16#000A#;
   GL_LINE_STRIP_ADJACENCY : constant := 16#000B#;
   GL_TRIANGLES_ADJACENCY : constant := 16#000C#;
   GL_TRIANGLE_STRIP_ADJACENCY : constant := 16#000D#;
   GL_PROGRAM_POINT_SIZE : constant := 16#8642#;
   GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS : constant := 16#8C29#;
   GL_FRAMEBUFFER_ATTACHMENT_LAYERED : constant := 16#8DA7#;
   GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS : constant := 16#8DA8#;
   GL_GEOMETRY_SHADER : constant := 16#8DD9#;
   GL_GEOMETRY_VERTICES_OUT : constant := 16#8916#;
   GL_GEOMETRY_INPUT_TYPE : constant := 16#8917#;
   GL_GEOMETRY_OUTPUT_TYPE : constant := 16#8918#;
   GL_MAX_GEOMETRY_UNIFORM_COMPONENTS : constant := 16#8DDF#;
   GL_MAX_GEOMETRY_OUTPUT_VERTICES : constant := 16#8DE0#;
   GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS : constant := 16#8DE1#;
   GL_MAX_VERTEX_OUTPUT_COMPONENTS : constant := 16#9122#;
   GL_MAX_GEOMETRY_INPUT_COMPONENTS : constant := 16#9123#;
   GL_MAX_GEOMETRY_OUTPUT_COMPONENTS : constant := 16#9124#;
   GL_MAX_FRAGMENT_INPUT_COMPONENTS : constant := 16#9125#;
   GL_CONTEXT_PROFILE_MASK : constant := 16#9126#;

   GL_VERTEX_ATTRIB_ARRAY_DIVISOR : constant := 16#88FE#;

   GL_SAMPLE_SHADING : constant := 16#8C36#;
   GL_MIN_SAMPLE_SHADING_VALUE : constant := 16#8C37#;
   GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET : constant := 16#8E5E#;
   GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET : constant := 16#8E5F#;
   GL_TEXTURE_CUBE_MAP_ARRAY : constant := 16#9009#;
   GL_TEXTURE_BINDING_CUBE_MAP_ARRAY : constant := 16#900A#;
   GL_PROXY_TEXTURE_CUBE_MAP_ARRAY : constant := 16#900B#;
   GL_SAMPLER_CUBE_MAP_ARRAY : constant := 16#900C#;
   GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW : constant := 16#900D#;
   GL_INT_SAMPLER_CUBE_MAP_ARRAY : constant := 16#900E#;
   GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY : constant := 16#900F#;

   GL_TRANSPOSE_MODELVIEW_MATRIX_ARB : constant := 16#84E3#;
   GL_TRANSPOSE_PROJECTION_MATRIX_ARB : constant := 16#84E4#;
   GL_TRANSPOSE_TEXTURE_MATRIX_ARB : constant := 16#84E5#;
   GL_TRANSPOSE_COLOR_MATRIX_ARB : constant := 16#84E6#;

   GL_MULTISAMPLE_ARB : constant := 16#809D#;
   GL_SAMPLE_ALPHA_TO_COVERAGE_ARB : constant := 16#809E#;
   GL_SAMPLE_ALPHA_TO_ONE_ARB : constant := 16#809F#;
   GL_SAMPLE_COVERAGE_ARB : constant := 16#80A0#;
   GL_SAMPLE_BUFFERS_ARB : constant := 16#80A8#;
   GL_SAMPLES_ARB : constant := 16#80A9#;
   GL_SAMPLE_COVERAGE_VALUE_ARB : constant := 16#80AA#;
   GL_SAMPLE_COVERAGE_INVERT_ARB : constant := 16#80AB#;
   GL_MULTISAMPLE_BIT_ARB : constant := 16#20000000#;

   GL_NORMAL_MAP_ARB : constant := 16#8511#;
   GL_REFLECTION_MAP_ARB : constant := 16#8512#;
   GL_TEXTURE_CUBE_MAP_ARB : constant := 16#8513#;
   GL_TEXTURE_BINDING_CUBE_MAP_ARB : constant := 16#8514#;
   GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB : constant := 16#8515#;
   GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB : constant := 16#8516#;
   GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB : constant := 16#8517#;
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB : constant := 16#8518#;
   GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB : constant := 16#8519#;
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB : constant := 16#851A#;
   GL_PROXY_TEXTURE_CUBE_MAP_ARB : constant := 16#851B#;
   GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB : constant := 16#851C#;

   GL_COMPRESSED_ALPHA_ARB : constant := 16#84E9#;
   GL_COMPRESSED_LUMINANCE_ARB : constant := 16#84EA#;
   GL_COMPRESSED_LUMINANCE_ALPHA_ARB : constant := 16#84EB#;
   GL_COMPRESSED_INTENSITY_ARB : constant := 16#84EC#;
   GL_COMPRESSED_RGB_ARB : constant := 16#84ED#;
   GL_COMPRESSED_RGBA_ARB : constant := 16#84EE#;
   GL_TEXTURE_COMPRESSION_HINT_ARB : constant := 16#84EF#;
   GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB : constant := 16#86A0#;
   GL_TEXTURE_COMPRESSED_ARB : constant := 16#86A1#;
   GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB : constant := 16#86A2#;
   GL_COMPRESSED_TEXTURE_FORMATS_ARB : constant := 16#86A3#;  

   GL_CLAMP_TO_BORDER_ARB : constant := 16#812D#;  

   GL_POINT_SIZE_MIN_ARB : constant := 16#8126#;  
   GL_POINT_SIZE_MAX_ARB : constant := 16#8127#;  
   GL_POINT_FADE_THRESHOLD_SIZE_ARB : constant := 16#8128#;  
   GL_POINT_DISTANCE_ATTENUATION_ARB : constant := 16#8129#;  

   GL_MAX_VERTEX_UNITS_ARB : constant := 16#86A4#;  
   GL_ACTIVE_VERTEX_UNITS_ARB : constant := 16#86A5#;  
   GL_WEIGHT_SUM_UNITY_ARB : constant := 16#86A6#;  
   GL_VERTEX_BLEND_ARB : constant := 16#86A7#;  
   GL_CURRENT_WEIGHT_ARB : constant := 16#86A8#;  
   GL_WEIGHT_ARRAY_TYPE_ARB : constant := 16#86A9#;  
   GL_WEIGHT_ARRAY_STRIDE_ARB : constant := 16#86AA#;  
   GL_WEIGHT_ARRAY_SIZE_ARB : constant := 16#86AB#;  
   GL_WEIGHT_ARRAY_POINTER_ARB : constant := 16#86AC#;  
   GL_WEIGHT_ARRAY_ARB : constant := 16#86AD#;  
   GL_MODELVIEW0_ARB : constant := 16#1700#;  
   GL_MODELVIEW1_ARB : constant := 16#850A#;  
   GL_MODELVIEW2_ARB : constant := 16#8722#;  
   GL_MODELVIEW3_ARB : constant := 16#8723#;  
   GL_MODELVIEW4_ARB : constant := 16#8724#;  
   GL_MODELVIEW5_ARB : constant := 16#8725#;  
   GL_MODELVIEW6_ARB : constant := 16#8726#;  
   GL_MODELVIEW7_ARB : constant := 16#8727#;  
   GL_MODELVIEW8_ARB : constant := 16#8728#;  
   GL_MODELVIEW9_ARB : constant := 16#8729#;  
   GL_MODELVIEW10_ARB : constant := 16#872A#;  
   GL_MODELVIEW11_ARB : constant := 16#872B#;  
   GL_MODELVIEW12_ARB : constant := 16#872C#;  
   GL_MODELVIEW13_ARB : constant := 16#872D#;  
   GL_MODELVIEW14_ARB : constant := 16#872E#;  
   GL_MODELVIEW15_ARB : constant := 16#872F#;  
   GL_MODELVIEW16_ARB : constant := 16#8730#;  
   GL_MODELVIEW17_ARB : constant := 16#8731#;  
   GL_MODELVIEW18_ARB : constant := 16#8732#;  
   GL_MODELVIEW19_ARB : constant := 16#8733#;  
   GL_MODELVIEW20_ARB : constant := 16#8734#;  
   GL_MODELVIEW21_ARB : constant := 16#8735#;  
   GL_MODELVIEW22_ARB : constant := 16#8736#;  
   GL_MODELVIEW23_ARB : constant := 16#8737#;  
   GL_MODELVIEW24_ARB : constant := 16#8738#;  
   GL_MODELVIEW25_ARB : constant := 16#8739#;  
   GL_MODELVIEW26_ARB : constant := 16#873A#;  
   GL_MODELVIEW27_ARB : constant := 16#873B#;  
   GL_MODELVIEW28_ARB : constant := 16#873C#;  
   GL_MODELVIEW29_ARB : constant := 16#873D#;  
   GL_MODELVIEW30_ARB : constant := 16#873E#;  
   GL_MODELVIEW31_ARB : constant := 16#873F#;  

   GL_MATRIX_PALETTE_ARB : constant := 16#8840#;  
   GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB : constant := 16#8841#;  
   GL_MAX_PALETTE_MATRICES_ARB : constant := 16#8842#;  
   GL_CURRENT_PALETTE_MATRIX_ARB : constant := 16#8843#;  
   GL_MATRIX_INDEX_ARRAY_ARB : constant := 16#8844#;  
   GL_CURRENT_MATRIX_INDEX_ARB : constant := 16#8845#;  
   GL_MATRIX_INDEX_ARRAY_SIZE_ARB : constant := 16#8846#;  
   GL_MATRIX_INDEX_ARRAY_TYPE_ARB : constant := 16#8847#;  
   GL_MATRIX_INDEX_ARRAY_STRIDE_ARB : constant := 16#8848#;  
   GL_MATRIX_INDEX_ARRAY_POINTER_ARB : constant := 16#8849#;  

   GL_COMBINE_ARB : constant := 16#8570#;  
   GL_COMBINE_RGB_ARB : constant := 16#8571#;  
   GL_COMBINE_ALPHA_ARB : constant := 16#8572#;  
   GL_SOURCE0_RGB_ARB : constant := 16#8580#;  
   GL_SOURCE1_RGB_ARB : constant := 16#8581#;  
   GL_SOURCE2_RGB_ARB : constant := 16#8582#;  
   GL_SOURCE0_ALPHA_ARB : constant := 16#8588#;  
   GL_SOURCE1_ALPHA_ARB : constant := 16#8589#;  
   GL_SOURCE2_ALPHA_ARB : constant := 16#858A#;  
   GL_OPERAND0_RGB_ARB : constant := 16#8590#;  
   GL_OPERAND1_RGB_ARB : constant := 16#8591#;  
   GL_OPERAND2_RGB_ARB : constant := 16#8592#;  
   GL_OPERAND0_ALPHA_ARB : constant := 16#8598#;  
   GL_OPERAND1_ALPHA_ARB : constant := 16#8599#;  
   GL_OPERAND2_ALPHA_ARB : constant := 16#859A#;  
   GL_RGB_SCALE_ARB : constant := 16#8573#;  
   GL_ADD_SIGNED_ARB : constant := 16#8574#;  
   GL_INTERPOLATE_ARB : constant := 16#8575#;  
   GL_SUBTRACT_ARB : constant := 16#84E7#;  
   GL_CONSTANT_ARB : constant := 16#8576#;  
   GL_PRIMARY_COLOR_ARB : constant := 16#8577#;  
   GL_PREVIOUS_ARB : constant := 16#8578#;  

   GL_DOT3_RGB_ARB : constant := 16#86AE#;  
   GL_DOT3_RGBA_ARB : constant := 16#86AF#;  

   GL_MIRRORED_REPEAT_ARB : constant := 16#8370#;  

   GL_DEPTH_COMPONENT16_ARB : constant := 16#81A5#;  
   GL_DEPTH_COMPONENT24_ARB : constant := 16#81A6#;  
   GL_DEPTH_COMPONENT32_ARB : constant := 16#81A7#;  
   GL_TEXTURE_DEPTH_SIZE_ARB : constant := 16#884A#;  
   GL_DEPTH_TEXTURE_MODE_ARB : constant := 16#884B#;  

   GL_TEXTURE_COMPARE_MODE_ARB : constant := 16#884C#;  
   GL_TEXTURE_COMPARE_FUNC_ARB : constant := 16#884D#;  
   GL_COMPARE_R_TO_TEXTURE_ARB : constant := 16#884E#;  

   GL_TEXTURE_COMPARE_FAIL_VALUE_ARB : constant := 16#80BF#;  

   GL_COLOR_SUM_ARB : constant := 16#8458#;  
   GL_VERTEX_PROGRAM_ARB : constant := 16#8620#;  
   GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB : constant := 16#8622#;  
   GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB : constant := 16#8623#;  
   GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB : constant := 16#8624#;  
   GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB : constant := 16#8625#;  
   GL_CURRENT_VERTEX_ATTRIB_ARB : constant := 16#8626#;  
   GL_PROGRAM_LENGTH_ARB : constant := 16#8627#;  
   GL_PROGRAM_STRING_ARB : constant := 16#8628#;  
   GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB : constant := 16#862E#;  
   GL_MAX_PROGRAM_MATRICES_ARB : constant := 16#862F#;  
   GL_CURRENT_MATRIX_STACK_DEPTH_ARB : constant := 16#8640#;  
   GL_CURRENT_MATRIX_ARB : constant := 16#8641#;  
   GL_VERTEX_PROGRAM_POINT_SIZE_ARB : constant := 16#8642#;  
   GL_VERTEX_PROGRAM_TWO_SIDE_ARB : constant := 16#8643#;  
   GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB : constant := 16#8645#;  
   GL_PROGRAM_ERROR_POSITION_ARB : constant := 16#864B#;  
   GL_PROGRAM_BINDING_ARB : constant := 16#8677#;  
   GL_MAX_VERTEX_ATTRIBS_ARB : constant := 16#8869#;  
   GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB : constant := 16#886A#;  
   GL_PROGRAM_ERROR_STRING_ARB : constant := 16#8874#;  
   GL_PROGRAM_FORMAT_ASCII_ARB : constant := 16#8875#;  
   GL_PROGRAM_FORMAT_ARB : constant := 16#8876#;  
   GL_PROGRAM_INSTRUCTIONS_ARB : constant := 16#88A0#;  
   GL_MAX_PROGRAM_INSTRUCTIONS_ARB : constant := 16#88A1#;  
   GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB : constant := 16#88A2#;  
   GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB : constant := 16#88A3#;  
   GL_PROGRAM_TEMPORARIES_ARB : constant := 16#88A4#;  
   GL_MAX_PROGRAM_TEMPORARIES_ARB : constant := 16#88A5#;  
   GL_PROGRAM_NATIVE_TEMPORARIES_ARB : constant := 16#88A6#;  
   GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB : constant := 16#88A7#;  
   GL_PROGRAM_PARAMETERS_ARB : constant := 16#88A8#;  
   GL_MAX_PROGRAM_PARAMETERS_ARB : constant := 16#88A9#;  
   GL_PROGRAM_NATIVE_PARAMETERS_ARB : constant := 16#88AA#;  
   GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB : constant := 16#88AB#;  
   GL_PROGRAM_ATTRIBS_ARB : constant := 16#88AC#;  
   GL_MAX_PROGRAM_ATTRIBS_ARB : constant := 16#88AD#;  
   GL_PROGRAM_NATIVE_ATTRIBS_ARB : constant := 16#88AE#;  
   GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB : constant := 16#88AF#;  
   GL_PROGRAM_ADDRESS_REGISTERS_ARB : constant := 16#88B0#;  
   GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB : constant := 16#88B1#;  
   GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB : constant := 16#88B2#;  
   GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB : constant := 16#88B3#;  
   GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB : constant := 16#88B4#;  
   GL_MAX_PROGRAM_ENV_PARAMETERS_ARB : constant := 16#88B5#;  
   GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB : constant := 16#88B6#;  
   GL_TRANSPOSE_CURRENT_MATRIX_ARB : constant := 16#88B7#;  
   GL_MATRIX0_ARB : constant := 16#88C0#;  
   GL_MATRIX1_ARB : constant := 16#88C1#;  
   GL_MATRIX2_ARB : constant := 16#88C2#;  
   GL_MATRIX3_ARB : constant := 16#88C3#;  
   GL_MATRIX4_ARB : constant := 16#88C4#;  
   GL_MATRIX5_ARB : constant := 16#88C5#;  
   GL_MATRIX6_ARB : constant := 16#88C6#;  
   GL_MATRIX7_ARB : constant := 16#88C7#;  
   GL_MATRIX8_ARB : constant := 16#88C8#;  
   GL_MATRIX9_ARB : constant := 16#88C9#;  
   GL_MATRIX10_ARB : constant := 16#88CA#;  
   GL_MATRIX11_ARB : constant := 16#88CB#;  
   GL_MATRIX12_ARB : constant := 16#88CC#;  
   GL_MATRIX13_ARB : constant := 16#88CD#;  
   GL_MATRIX14_ARB : constant := 16#88CE#;  
   GL_MATRIX15_ARB : constant := 16#88CF#;  
   GL_MATRIX16_ARB : constant := 16#88D0#;  
   GL_MATRIX17_ARB : constant := 16#88D1#;  
   GL_MATRIX18_ARB : constant := 16#88D2#;  
   GL_MATRIX19_ARB : constant := 16#88D3#;  
   GL_MATRIX20_ARB : constant := 16#88D4#;  
   GL_MATRIX21_ARB : constant := 16#88D5#;  
   GL_MATRIX22_ARB : constant := 16#88D6#;  
   GL_MATRIX23_ARB : constant := 16#88D7#;  
   GL_MATRIX24_ARB : constant := 16#88D8#;  
   GL_MATRIX25_ARB : constant := 16#88D9#;  
   GL_MATRIX26_ARB : constant := 16#88DA#;  
   GL_MATRIX27_ARB : constant := 16#88DB#;  
   GL_MATRIX28_ARB : constant := 16#88DC#;  
   GL_MATRIX29_ARB : constant := 16#88DD#;  
   GL_MATRIX30_ARB : constant := 16#88DE#;  
   GL_MATRIX31_ARB : constant := 16#88DF#;  

   GL_FRAGMENT_PROGRAM_ARB : constant := 16#8804#;  
   GL_PROGRAM_ALU_INSTRUCTIONS_ARB : constant := 16#8805#;  
   GL_PROGRAM_TEX_INSTRUCTIONS_ARB : constant := 16#8806#;  
   GL_PROGRAM_TEX_INDIRECTIONS_ARB : constant := 16#8807#;  
   GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB : constant := 16#8808#;  
   GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB : constant := 16#8809#;  
   GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB : constant := 16#880A#;  
   GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB : constant := 16#880B#;  
   GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB : constant := 16#880C#;  
   GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB : constant := 16#880D#;  
   GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB : constant := 16#880E#;  
   GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB : constant := 16#880F#;  
   GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB : constant := 16#8810#;  
   GL_MAX_TEXTURE_COORDS_ARB : constant := 16#8871#;  
   GL_MAX_TEXTURE_IMAGE_UNITS_ARB : constant := 16#8872#;  

   GL_BUFFER_SIZE_ARB : constant := 16#8764#;  
   GL_BUFFER_USAGE_ARB : constant := 16#8765#;  
   GL_ARRAY_BUFFER_ARB : constant := 16#8892#;  
   GL_ELEMENT_ARRAY_BUFFER_ARB : constant := 16#8893#;  
   GL_ARRAY_BUFFER_BINDING_ARB : constant := 16#8894#;  
   GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB : constant := 16#8895#;  
   GL_VERTEX_ARRAY_BUFFER_BINDING_ARB : constant := 16#8896#;  
   GL_NORMAL_ARRAY_BUFFER_BINDING_ARB : constant := 16#8897#;  
   GL_COLOR_ARRAY_BUFFER_BINDING_ARB : constant := 16#8898#;  
   GL_INDEX_ARRAY_BUFFER_BINDING_ARB : constant := 16#8899#;  
   GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB : constant := 16#889A#;  
   GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB : constant := 16#889B#;  
   GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB : constant := 16#889C#;  
   GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB : constant := 16#889D#;  
   GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB : constant := 16#889E#;  
   GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB : constant := 16#889F#;  
   GL_READ_ONLY_ARB : constant := 16#88B8#;  
   GL_WRITE_ONLY_ARB : constant := 16#88B9#;  
   GL_READ_WRITE_ARB : constant := 16#88BA#;  
   GL_BUFFER_ACCESS_ARB : constant := 16#88BB#;  
   GL_BUFFER_MAPPED_ARB : constant := 16#88BC#;  
   GL_BUFFER_MAP_POINTER_ARB : constant := 16#88BD#;  
   GL_STREAM_DRAW_ARB : constant := 16#88E0#;  
   GL_STREAM_READ_ARB : constant := 16#88E1#;  
   GL_STREAM_COPY_ARB : constant := 16#88E2#;  
   GL_STATIC_DRAW_ARB : constant := 16#88E4#;  
   GL_STATIC_READ_ARB : constant := 16#88E5#;  
   GL_STATIC_COPY_ARB : constant := 16#88E6#;  
   GL_DYNAMIC_DRAW_ARB : constant := 16#88E8#;  
   GL_DYNAMIC_READ_ARB : constant := 16#88E9#;  
   GL_DYNAMIC_COPY_ARB : constant := 16#88EA#;  

   GL_QUERY_COUNTER_BITS_ARB : constant := 16#8864#;  
   GL_CURRENT_QUERY_ARB : constant := 16#8865#;  
   GL_QUERY_RESULT_ARB : constant := 16#8866#;  
   GL_QUERY_RESULT_AVAILABLE_ARB : constant := 16#8867#;  
   GL_SAMPLES_PASSED_ARB : constant := 16#8914#;  

   GL_PROGRAM_OBJECT_ARB : constant := 16#8B40#;  
   GL_SHADER_OBJECT_ARB : constant := 16#8B48#;  
   GL_OBJECT_TYPE_ARB : constant := 16#8B4E#;  
   GL_OBJECT_SUBTYPE_ARB : constant := 16#8B4F#;  
   GL_FLOAT_VEC2_ARB : constant := 16#8B50#;  
   GL_FLOAT_VEC3_ARB : constant := 16#8B51#;  
   GL_FLOAT_VEC4_ARB : constant := 16#8B52#;  
   GL_INT_VEC2_ARB : constant := 16#8B53#;  
   GL_INT_VEC3_ARB : constant := 16#8B54#;  
   GL_INT_VEC4_ARB : constant := 16#8B55#;  
   GL_BOOL_ARB : constant := 16#8B56#;  
   GL_BOOL_VEC2_ARB : constant := 16#8B57#;  
   GL_BOOL_VEC3_ARB : constant := 16#8B58#;  
   GL_BOOL_VEC4_ARB : constant := 16#8B59#;  
   GL_FLOAT_MAT2_ARB : constant := 16#8B5A#;  
   GL_FLOAT_MAT3_ARB : constant := 16#8B5B#;  
   GL_FLOAT_MAT4_ARB : constant := 16#8B5C#;  
   GL_SAMPLER_1D_ARB : constant := 16#8B5D#;  
   GL_SAMPLER_2D_ARB : constant := 16#8B5E#;  
   GL_SAMPLER_3D_ARB : constant := 16#8B5F#;  
   GL_SAMPLER_CUBE_ARB : constant := 16#8B60#;  
   GL_SAMPLER_1D_SHADOW_ARB : constant := 16#8B61#;  
   GL_SAMPLER_2D_SHADOW_ARB : constant := 16#8B62#;  
   GL_SAMPLER_2D_RECT_ARB : constant := 16#8B63#;  
   GL_SAMPLER_2D_RECT_SHADOW_ARB : constant := 16#8B64#;  
   GL_OBJECT_DELETE_STATUS_ARB : constant := 16#8B80#;  
   GL_OBJECT_COMPILE_STATUS_ARB : constant := 16#8B81#;  
   GL_OBJECT_LINK_STATUS_ARB : constant := 16#8B82#;  
   GL_OBJECT_VALIDATE_STATUS_ARB : constant := 16#8B83#;  
   GL_OBJECT_INFO_LOG_LENGTH_ARB : constant := 16#8B84#;  
   GL_OBJECT_ATTACHED_OBJECTS_ARB : constant := 16#8B85#;  
   GL_OBJECT_ACTIVE_UNIFORMS_ARB : constant := 16#8B86#;  
   GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB : constant := 16#8B87#;  
   GL_OBJECT_SHADER_SOURCE_LENGTH_ARB : constant := 16#8B88#;  

   GL_VERTEX_SHADER_ARB : constant := 16#8B31#;  
   GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB : constant := 16#8B4A#;  
   GL_MAX_VARYING_FLOATS_ARB : constant := 16#8B4B#;  
   GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB : constant := 16#8B4C#;  
   GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB : constant := 16#8B4D#;  
   GL_OBJECT_ACTIVE_ATTRIBUTES_ARB : constant := 16#8B89#;  
   GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB : constant := 16#8B8A#;  

   GL_FRAGMENT_SHADER_ARB : constant := 16#8B30#;  
   GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB : constant := 16#8B49#;  
   GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB : constant := 16#8B8B#;  

   GL_SHADING_LANGUAGE_VERSION_ARB : constant := 16#8B8C#;  

   GL_POINT_SPRITE_ARB : constant := 16#8861#;  
   GL_COORD_REPLACE_ARB : constant := 16#8862#;  

   GL_MAX_DRAW_BUFFERS_ARB : constant := 16#8824#;  
   GL_DRAW_BUFFER0_ARB : constant := 16#8825#;  
   GL_DRAW_BUFFER1_ARB : constant := 16#8826#;  
   GL_DRAW_BUFFER2_ARB : constant := 16#8827#;  
   GL_DRAW_BUFFER3_ARB : constant := 16#8828#;  
   GL_DRAW_BUFFER4_ARB : constant := 16#8829#;  
   GL_DRAW_BUFFER5_ARB : constant := 16#882A#;  
   GL_DRAW_BUFFER6_ARB : constant := 16#882B#;  
   GL_DRAW_BUFFER7_ARB : constant := 16#882C#;  
   GL_DRAW_BUFFER8_ARB : constant := 16#882D#;  
   GL_DRAW_BUFFER9_ARB : constant := 16#882E#;  
   GL_DRAW_BUFFER10_ARB : constant := 16#882F#;  
   GL_DRAW_BUFFER11_ARB : constant := 16#8830#;  
   GL_DRAW_BUFFER12_ARB : constant := 16#8831#;  
   GL_DRAW_BUFFER13_ARB : constant := 16#8832#;  
   GL_DRAW_BUFFER14_ARB : constant := 16#8833#;  
   GL_DRAW_BUFFER15_ARB : constant := 16#8834#;  

   GL_TEXTURE_RECTANGLE_ARB : constant := 16#84F5#;  
   GL_TEXTURE_BINDING_RECTANGLE_ARB : constant := 16#84F6#;  
   GL_PROXY_TEXTURE_RECTANGLE_ARB : constant := 16#84F7#;  
   GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB : constant := 16#84F8#;  

   GL_RGBA_FLOAT_MODE_ARB : constant := 16#8820#;  
   GL_CLAMP_VERTEX_COLOR_ARB : constant := 16#891A#;  
   GL_CLAMP_FRAGMENT_COLOR_ARB : constant := 16#891B#;  
   GL_CLAMP_READ_COLOR_ARB : constant := 16#891C#;  
   GL_FIXED_ONLY_ARB : constant := 16#891D#;  

   GL_HALF_FLOAT_ARB : constant := 16#140B#;  

   GL_TEXTURE_RED_TYPE_ARB : constant := 16#8C10#;  
   GL_TEXTURE_GREEN_TYPE_ARB : constant := 16#8C11#;  
   GL_TEXTURE_BLUE_TYPE_ARB : constant := 16#8C12#;  
   GL_TEXTURE_ALPHA_TYPE_ARB : constant := 16#8C13#;  
   GL_TEXTURE_LUMINANCE_TYPE_ARB : constant := 16#8C14#;  
   GL_TEXTURE_INTENSITY_TYPE_ARB : constant := 16#8C15#;  
   GL_TEXTURE_DEPTH_TYPE_ARB : constant := 16#8C16#;  
   GL_UNSIGNED_NORMALIZED_ARB : constant := 16#8C17#;  
   GL_RGBA32F_ARB : constant := 16#8814#;  
   GL_RGB32F_ARB : constant := 16#8815#;  
   GL_ALPHA32F_ARB : constant := 16#8816#;  
   GL_INTENSITY32F_ARB : constant := 16#8817#;  
   GL_LUMINANCE32F_ARB : constant := 16#8818#;  
   GL_LUMINANCE_ALPHA32F_ARB : constant := 16#8819#;  
   GL_RGBA16F_ARB : constant := 16#881A#;  
   GL_RGB16F_ARB : constant := 16#881B#;  
   GL_ALPHA16F_ARB : constant := 16#881C#;  
   GL_INTENSITY16F_ARB : constant := 16#881D#;  
   GL_LUMINANCE16F_ARB : constant := 16#881E#;  
   GL_LUMINANCE_ALPHA16F_ARB : constant := 16#881F#;  

   GL_PIXEL_PACK_BUFFER_ARB : constant := 16#88EB#;  
   GL_PIXEL_UNPACK_BUFFER_ARB : constant := 16#88EC#;  
   GL_PIXEL_PACK_BUFFER_BINDING_ARB : constant := 16#88ED#;  
   GL_PIXEL_UNPACK_BUFFER_BINDING_ARB : constant := 16#88EF#;  

   GL_DEPTH_COMPONENT32F : constant := 16#8CAC#;  
   GL_DEPTH32F_STENCIL8 : constant := 16#8CAD#;  
   GL_FLOAT_32_UNSIGNED_INT_24_8_REV : constant := 16#8DAD#;  

   GL_INVALID_FRAMEBUFFER_OPERATION : constant := 16#0506#;  
   GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING : constant := 16#8210#;  
   GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE : constant := 16#8211#;  
   GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE : constant := 16#8212#;  
   GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE : constant := 16#8213#;  
   GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE : constant := 16#8214#;  
   GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE : constant := 16#8215#;  
   GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE : constant := 16#8216#;  
   GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE : constant := 16#8217#;  
   GL_FRAMEBUFFER_DEFAULT : constant := 16#8218#;  
   GL_FRAMEBUFFER_UNDEFINED : constant := 16#8219#;  
   GL_DEPTH_STENCIL_ATTACHMENT : constant := 16#821A#;  
   GL_MAX_RENDERBUFFER_SIZE : constant := 16#84E8#;  
   GL_DEPTH_STENCIL : constant := 16#84F9#;  
   GL_UNSIGNED_INT_24_8 : constant := 16#84FA#;  
   GL_DEPTH24_STENCIL8 : constant := 16#88F0#;  
   GL_TEXTURE_STENCIL_SIZE : constant := 16#88F1#;  
   GL_TEXTURE_RED_TYPE : constant := 16#8C10#;  
   GL_TEXTURE_GREEN_TYPE : constant := 16#8C11#;  
   GL_TEXTURE_BLUE_TYPE : constant := 16#8C12#;  
   GL_TEXTURE_ALPHA_TYPE : constant := 16#8C13#;  
   GL_TEXTURE_DEPTH_TYPE : constant := 16#8C16#;  
   GL_UNSIGNED_NORMALIZED : constant := 16#8C17#;  
   GL_FRAMEBUFFER_BINDING : constant := 16#8CA6#;  
   --  unsupported macro: GL_DRAW_FRAMEBUFFER_BINDING GL_FRAMEBUFFER_BINDING

   GL_RENDERBUFFER_BINDING : constant := 16#8CA7#;  
   GL_READ_FRAMEBUFFER : constant := 16#8CA8#;  
   GL_DRAW_FRAMEBUFFER : constant := 16#8CA9#;  
   GL_READ_FRAMEBUFFER_BINDING : constant := 16#8CAA#;  
   GL_RENDERBUFFER_SAMPLES : constant := 16#8CAB#;  
   GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE : constant := 16#8CD0#;  
   GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME : constant := 16#8CD1#;  
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL : constant := 16#8CD2#;  
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE : constant := 16#8CD3#;  
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER : constant := 16#8CD4#;  
   GL_FRAMEBUFFER_COMPLETE : constant := 16#8CD5#;  
   GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT : constant := 16#8CD6#;  
   GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT : constant := 16#8CD7#;  
   GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER : constant := 16#8CDB#;  
   GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER : constant := 16#8CDC#;  
   GL_FRAMEBUFFER_UNSUPPORTED : constant := 16#8CDD#;  
   GL_MAX_COLOR_ATTACHMENTS : constant := 16#8CDF#;  
   GL_COLOR_ATTACHMENT0 : constant := 16#8CE0#;  
   GL_COLOR_ATTACHMENT1 : constant := 16#8CE1#;  
   GL_COLOR_ATTACHMENT2 : constant := 16#8CE2#;  
   GL_COLOR_ATTACHMENT3 : constant := 16#8CE3#;  
   GL_COLOR_ATTACHMENT4 : constant := 16#8CE4#;  
   GL_COLOR_ATTACHMENT5 : constant := 16#8CE5#;  
   GL_COLOR_ATTACHMENT6 : constant := 16#8CE6#;  
   GL_COLOR_ATTACHMENT7 : constant := 16#8CE7#;  
   GL_COLOR_ATTACHMENT8 : constant := 16#8CE8#;  
   GL_COLOR_ATTACHMENT9 : constant := 16#8CE9#;  
   GL_COLOR_ATTACHMENT10 : constant := 16#8CEA#;  
   GL_COLOR_ATTACHMENT11 : constant := 16#8CEB#;  
   GL_COLOR_ATTACHMENT12 : constant := 16#8CEC#;  
   GL_COLOR_ATTACHMENT13 : constant := 16#8CED#;  
   GL_COLOR_ATTACHMENT14 : constant := 16#8CEE#;  
   GL_COLOR_ATTACHMENT15 : constant := 16#8CEF#;  
   GL_DEPTH_ATTACHMENT : constant := 16#8D00#;  
   GL_STENCIL_ATTACHMENT : constant := 16#8D20#;  
   GL_FRAMEBUFFER : constant := 16#8D40#;  
   GL_RENDERBUFFER : constant := 16#8D41#;  
   GL_RENDERBUFFER_WIDTH : constant := 16#8D42#;  
   GL_RENDERBUFFER_HEIGHT : constant := 16#8D43#;  
   GL_RENDERBUFFER_INTERNAL_FORMAT : constant := 16#8D44#;  
   GL_STENCIL_INDEX1 : constant := 16#8D46#;  
   GL_STENCIL_INDEX4 : constant := 16#8D47#;  
   GL_STENCIL_INDEX8 : constant := 16#8D48#;  
   GL_STENCIL_INDEX16 : constant := 16#8D49#;  
   GL_RENDERBUFFER_RED_SIZE : constant := 16#8D50#;  
   GL_RENDERBUFFER_GREEN_SIZE : constant := 16#8D51#;  
   GL_RENDERBUFFER_BLUE_SIZE : constant := 16#8D52#;  
   GL_RENDERBUFFER_ALPHA_SIZE : constant := 16#8D53#;  
   GL_RENDERBUFFER_DEPTH_SIZE : constant := 16#8D54#;  
   GL_RENDERBUFFER_STENCIL_SIZE : constant := 16#8D55#;  
   GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE : constant := 16#8D56#;  
   GL_MAX_SAMPLES : constant := 16#8D57#;  

   GL_INDEX : constant := 16#8222#;  
   GL_TEXTURE_LUMINANCE_TYPE : constant := 16#8C14#;  
   GL_TEXTURE_INTENSITY_TYPE : constant := 16#8C15#;  

   GL_FRAMEBUFFER_SRGB : constant := 16#8DB9#;  

   GL_LINES_ADJACENCY_ARB : constant := 16#000A#;  
   GL_LINE_STRIP_ADJACENCY_ARB : constant := 16#000B#;  
   GL_TRIANGLES_ADJACENCY_ARB : constant := 16#000C#;  
   GL_TRIANGLE_STRIP_ADJACENCY_ARB : constant := 16#000D#;  
   GL_PROGRAM_POINT_SIZE_ARB : constant := 16#8642#;  
   GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB : constant := 16#8C29#;  
   GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB : constant := 16#8DA7#;  
   GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB : constant := 16#8DA8#;  
   GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB : constant := 16#8DA9#;  
   GL_GEOMETRY_SHADER_ARB : constant := 16#8DD9#;  
   GL_GEOMETRY_VERTICES_OUT_ARB : constant := 16#8DDA#;  
   GL_GEOMETRY_INPUT_TYPE_ARB : constant := 16#8DDB#;  
   GL_GEOMETRY_OUTPUT_TYPE_ARB : constant := 16#8DDC#;  
   GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB : constant := 16#8DDD#;  
   GL_MAX_VERTEX_VARYING_COMPONENTS_ARB : constant := 16#8DDE#;  
   GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB : constant := 16#8DDF#;  
   GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB : constant := 16#8DE0#;  
   GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB : constant := 16#8DE1#;  

   GL_HALF_FLOAT : constant := 16#140B#;  

   GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB : constant := 16#88FE#;  

   GL_MAP_READ_BIT : constant := 16#0001#;  
   GL_MAP_WRITE_BIT : constant := 16#0002#;  
   GL_MAP_INVALIDATE_RANGE_BIT : constant := 16#0004#;  
   GL_MAP_INVALIDATE_BUFFER_BIT : constant := 16#0008#;  
   GL_MAP_FLUSH_EXPLICIT_BIT : constant := 16#0010#;  
   GL_MAP_UNSYNCHRONIZED_BIT : constant := 16#0020#;  

   GL_TEXTURE_BUFFER_ARB : constant := 16#8C2A#;  
   GL_MAX_TEXTURE_BUFFER_SIZE_ARB : constant := 16#8C2B#;  
   GL_TEXTURE_BINDING_BUFFER_ARB : constant := 16#8C2C#;  
   GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB : constant := 16#8C2D#;  
   GL_TEXTURE_BUFFER_FORMAT_ARB : constant := 16#8C2E#;  

   GL_COMPRESSED_RED_RGTC1 : constant := 16#8DBB#;  
   GL_COMPRESSED_SIGNED_RED_RGTC1 : constant := 16#8DBC#;  
   GL_COMPRESSED_RG_RGTC2 : constant := 16#8DBD#;  
   GL_COMPRESSED_SIGNED_RG_RGTC2 : constant := 16#8DBE#;  

   GL_RG : constant := 16#8227#;  
   GL_RG_INTEGER : constant := 16#8228#;  
   GL_R8 : constant := 16#8229#;  
   GL_R16 : constant := 16#822A#;  
   GL_RG8 : constant := 16#822B#;  
   GL_RG16 : constant := 16#822C#;  
   GL_R16F : constant := 16#822D#;  
   GL_R32F : constant := 16#822E#;  
   GL_RG16F : constant := 16#822F#;  
   GL_RG32F : constant := 16#8230#;  
   GL_R8I : constant := 16#8231#;  
   GL_R8UI : constant := 16#8232#;  
   GL_R16I : constant := 16#8233#;  
   GL_R16UI : constant := 16#8234#;  
   GL_R32I : constant := 16#8235#;  
   GL_R32UI : constant := 16#8236#;  
   GL_RG8I : constant := 16#8237#;  
   GL_RG8UI : constant := 16#8238#;  
   GL_RG16I : constant := 16#8239#;  
   GL_RG16UI : constant := 16#823A#;  
   GL_RG32I : constant := 16#823B#;  
   GL_RG32UI : constant := 16#823C#;  

   GL_VERTEX_ARRAY_BINDING : constant := 16#85B5#;  

   GL_UNIFORM_BUFFER : constant := 16#8A11#;  
   GL_UNIFORM_BUFFER_BINDING : constant := 16#8A28#;  
   GL_UNIFORM_BUFFER_START : constant := 16#8A29#;  
   GL_UNIFORM_BUFFER_SIZE : constant := 16#8A2A#;  
   GL_MAX_VERTEX_UNIFORM_BLOCKS : constant := 16#8A2B#;  
   GL_MAX_GEOMETRY_UNIFORM_BLOCKS : constant := 16#8A2C#;  
   GL_MAX_FRAGMENT_UNIFORM_BLOCKS : constant := 16#8A2D#;  
   GL_MAX_COMBINED_UNIFORM_BLOCKS : constant := 16#8A2E#;  
   GL_MAX_UNIFORM_BUFFER_BINDINGS : constant := 16#8A2F#;  
   GL_MAX_UNIFORM_BLOCK_SIZE : constant := 16#8A30#;  
   GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS : constant := 16#8A31#;  
   GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS : constant := 16#8A32#;  
   GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS : constant := 16#8A33#;  
   GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT : constant := 16#8A34#;  
   GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH : constant := 16#8A35#;  
   GL_ACTIVE_UNIFORM_BLOCKS : constant := 16#8A36#;  
   GL_UNIFORM_TYPE : constant := 16#8A37#;  
   GL_UNIFORM_SIZE : constant := 16#8A38#;  
   GL_UNIFORM_NAME_LENGTH : constant := 16#8A39#;  
   GL_UNIFORM_BLOCK_INDEX : constant := 16#8A3A#;  
   GL_UNIFORM_OFFSET : constant := 16#8A3B#;  
   GL_UNIFORM_ARRAY_STRIDE : constant := 16#8A3C#;  
   GL_UNIFORM_MATRIX_STRIDE : constant := 16#8A3D#;  
   GL_UNIFORM_IS_ROW_MAJOR : constant := 16#8A3E#;  
   GL_UNIFORM_BLOCK_BINDING : constant := 16#8A3F#;  
   GL_UNIFORM_BLOCK_DATA_SIZE : constant := 16#8A40#;  
   GL_UNIFORM_BLOCK_NAME_LENGTH : constant := 16#8A41#;  
   GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS : constant := 16#8A42#;  
   GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES : constant := 16#8A43#;  
   GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER : constant := 16#8A44#;  
   GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER : constant := 16#8A45#;  
   GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER : constant := 16#8A46#;  
   GL_INVALID_INDEX : constant := 16#FFFFFFFF#;  

   GL_COPY_READ_BUFFER : constant := 16#8F36#;  
   GL_COPY_WRITE_BUFFER : constant := 16#8F37#;  

   GL_DEPTH_CLAMP : constant := 16#864F#;  

   GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION : constant := 16#8E4C#;  
   GL_FIRST_VERTEX_CONVENTION : constant := 16#8E4D#;  
   GL_LAST_VERTEX_CONVENTION : constant := 16#8E4E#;  
   GL_PROVOKING_VERTEX : constant := 16#8E4F#;  

   GL_TEXTURE_CUBE_MAP_SEAMLESS : constant := 16#884F#;  

   GL_MAX_SERVER_WAIT_TIMEOUT : constant := 16#9111#;  
   GL_OBJECT_TYPE : constant := 16#9112#;  
   GL_SYNC_CONDITION : constant := 16#9113#;  
   GL_SYNC_STATUS : constant := 16#9114#;  
   GL_SYNC_FLAGS : constant := 16#9115#;  
   GL_SYNC_FENCE : constant := 16#9116#;  
   GL_SYNC_GPU_COMMANDS_COMPLETE : constant := 16#9117#;  
   GL_UNSIGNALED : constant := 16#9118#;  
   GL_SIGNALED : constant := 16#9119#;  
   GL_ALREADY_SIGNALED : constant := 16#911A#;  
   GL_TIMEOUT_EXPIRED : constant := 16#911B#;  
   GL_CONDITION_SATISFIED : constant := 16#911C#;  
   GL_WAIT_FAILED : constant := 16#911D#;  
   GL_SYNC_FLUSH_COMMANDS_BIT : constant := 16#00000001#;  
   GL_TIMEOUT_IGNORED : constant := 16#FFFFFFFFFFFFFFFF#;  

   GL_SAMPLE_POSITION : constant := 16#8E50#;  
   GL_SAMPLE_MASK : constant := 16#8E51#;  
   GL_SAMPLE_MASK_VALUE : constant := 16#8E52#;  
   GL_MAX_SAMPLE_MASK_WORDS : constant := 16#8E59#;  
   GL_TEXTURE_2D_MULTISAMPLE : constant := 16#9100#;  
   GL_PROXY_TEXTURE_2D_MULTISAMPLE : constant := 16#9101#;  
   GL_TEXTURE_2D_MULTISAMPLE_ARRAY : constant := 16#9102#;  
   GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY : constant := 16#9103#;  
   GL_TEXTURE_BINDING_2D_MULTISAMPLE : constant := 16#9104#;  
   GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY : constant := 16#9105#;  
   GL_TEXTURE_SAMPLES : constant := 16#9106#;  
   GL_TEXTURE_FIXED_SAMPLE_LOCATIONS : constant := 16#9107#;  
   GL_SAMPLER_2D_MULTISAMPLE : constant := 16#9108#;  
   GL_INT_SAMPLER_2D_MULTISAMPLE : constant := 16#9109#;  
   GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE : constant := 16#910A#;  
   GL_SAMPLER_2D_MULTISAMPLE_ARRAY : constant := 16#910B#;  
   GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY : constant := 16#910C#;  
   GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY : constant := 16#910D#;  
   GL_MAX_COLOR_TEXTURE_SAMPLES : constant := 16#910E#;  
   GL_MAX_DEPTH_TEXTURE_SAMPLES : constant := 16#910F#;  
   GL_MAX_INTEGER_SAMPLES : constant := 16#9110#;  

   GL_SAMPLE_SHADING_ARB : constant := 16#8C36#;  
   GL_MIN_SAMPLE_SHADING_VALUE_ARB : constant := 16#8C37#;  

   GL_TEXTURE_CUBE_MAP_ARRAY_ARB : constant := 16#9009#;  
   GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB : constant := 16#900A#;  
   GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB : constant := 16#900B#;  
   GL_SAMPLER_CUBE_MAP_ARRAY_ARB : constant := 16#900C#;  
   GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB : constant := 16#900D#;  
   GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB : constant := 16#900E#;  
   GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB : constant := 16#900F#;  

   GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB : constant := 16#8E5E#;  
   GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB : constant := 16#8E5F#;  

   GL_SHADER_INCLUDE_ARB : constant := 16#8DAE#;  
   GL_NAMED_STRING_LENGTH_ARB : constant := 16#8DE9#;  
   GL_NAMED_STRING_TYPE_ARB : constant := 16#8DEA#;  

   GL_COMPRESSED_RGBA_BPTC_UNORM_ARB : constant := 16#8E8C#;  
   GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB : constant := 16#8E8D#;  
   GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB : constant := 16#8E8E#;  
   GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB : constant := 16#8E8F#;  

   GL_SRC1_COLOR : constant := 16#88F9#;  

   GL_ONE_MINUS_SRC1_COLOR : constant := 16#88FA#;  
   GL_ONE_MINUS_SRC1_ALPHA : constant := 16#88FB#;  
   GL_MAX_DUAL_SOURCE_DRAW_BUFFERS : constant := 16#88FC#;  

   GL_ANY_SAMPLES_PASSED : constant := 16#8C2F#;  

   GL_SAMPLER_BINDING : constant := 16#8919#;  

   GL_RGB10_A2UI : constant := 16#906F#;  

   GL_TEXTURE_SWIZZLE_R : constant := 16#8E42#;  
   GL_TEXTURE_SWIZZLE_G : constant := 16#8E43#;  
   GL_TEXTURE_SWIZZLE_B : constant := 16#8E44#;  
   GL_TEXTURE_SWIZZLE_A : constant := 16#8E45#;  
   GL_TEXTURE_SWIZZLE_RGBA : constant := 16#8E46#;  

   GL_TIME_ELAPSED : constant := 16#88BF#;  
   GL_TIMESTAMP : constant := 16#8E28#;  

   GL_INT_2_10_10_10_REV : constant := 16#8D9F#;  

   GL_DRAW_INDIRECT_BUFFER : constant := 16#8F3F#;  
   GL_DRAW_INDIRECT_BUFFER_BINDING : constant := 16#8F43#;  

   GL_GEOMETRY_SHADER_INVOCATIONS : constant := 16#887F#;  
   GL_MAX_GEOMETRY_SHADER_INVOCATIONS : constant := 16#8E5A#;  
   GL_MIN_FRAGMENT_INTERPOLATION_OFFSET : constant := 16#8E5B#;  
   GL_MAX_FRAGMENT_INTERPOLATION_OFFSET : constant := 16#8E5C#;  
   GL_FRAGMENT_INTERPOLATION_OFFSET_BITS : constant := 16#8E5D#;  

   GL_DOUBLE_VEC2 : constant := 16#8FFC#;  
   GL_DOUBLE_VEC3 : constant := 16#8FFD#;  
   GL_DOUBLE_VEC4 : constant := 16#8FFE#;  
   GL_DOUBLE_MAT2 : constant := 16#8F46#;  
   GL_DOUBLE_MAT3 : constant := 16#8F47#;  
   GL_DOUBLE_MAT4 : constant := 16#8F48#;  
   GL_DOUBLE_MAT2x3 : constant := 16#8F49#;  
   GL_DOUBLE_MAT2x4 : constant := 16#8F4A#;  
   GL_DOUBLE_MAT3x2 : constant := 16#8F4B#;  
   GL_DOUBLE_MAT3x4 : constant := 16#8F4C#;  
   GL_DOUBLE_MAT4x2 : constant := 16#8F4D#;  
   GL_DOUBLE_MAT4x3 : constant := 16#8F4E#;  

   GL_ACTIVE_SUBROUTINES : constant := 16#8DE5#;  
   GL_ACTIVE_SUBROUTINE_UNIFORMS : constant := 16#8DE6#;  
   GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS : constant := 16#8E47#;  
   GL_ACTIVE_SUBROUTINE_MAX_LENGTH : constant := 16#8E48#;  
   GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH : constant := 16#8E49#;  
   GL_MAX_SUBROUTINES : constant := 16#8DE7#;  
   GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS : constant := 16#8DE8#;  
   GL_NUM_COMPATIBLE_SUBROUTINES : constant := 16#8E4A#;  
   GL_COMPATIBLE_SUBROUTINES : constant := 16#8E4B#;  

   GL_PATCHES : constant := 16#000E#;  
   GL_PATCH_VERTICES : constant := 16#8E72#;  
   GL_PATCH_DEFAULT_INNER_LEVEL : constant := 16#8E73#;  
   GL_PATCH_DEFAULT_OUTER_LEVEL : constant := 16#8E74#;  
   GL_TESS_CONTROL_OUTPUT_VERTICES : constant := 16#8E75#;  
   GL_TESS_GEN_MODE : constant := 16#8E76#;  
   GL_TESS_GEN_SPACING : constant := 16#8E77#;  
   GL_TESS_GEN_VERTEX_ORDER : constant := 16#8E78#;  
   GL_TESS_GEN_POINT_MODE : constant := 16#8E79#;  

   GL_ISOLINES : constant := 16#8E7A#;  

   GL_FRACTIONAL_ODD : constant := 16#8E7B#;  
   GL_FRACTIONAL_EVEN : constant := 16#8E7C#;  

   GL_MAX_PATCH_VERTICES : constant := 16#8E7D#;  
   GL_MAX_TESS_GEN_LEVEL : constant := 16#8E7E#;  
   GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS : constant := 16#8E7F#;  
   GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS : constant := 16#8E80#;  
   GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS : constant := 16#8E81#;  
   GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS : constant := 16#8E82#;  
   GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS : constant := 16#8E83#;  
   GL_MAX_TESS_PATCH_COMPONENTS : constant := 16#8E84#;  
   GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS : constant := 16#8E85#;  
   GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS : constant := 16#8E86#;  
   GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS : constant := 16#8E89#;  
   GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS : constant := 16#8E8A#;  
   GL_MAX_TESS_CONTROL_INPUT_COMPONENTS : constant := 16#886C#;  
   GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS : constant := 16#886D#;  
   GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS : constant := 16#8E1E#;  
   GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS : constant := 16#8E1F#;  
   GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER : constant := 16#84F0#;  
   GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER : constant := 16#84F1#;  
   GL_TESS_EVALUATION_SHADER : constant := 16#8E87#;  
   GL_TESS_CONTROL_SHADER : constant := 16#8E88#;  

   GL_TRANSFORM_FEEDBACK : constant := 16#8E22#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED : constant := 16#8E23#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE : constant := 16#8E24#;  
   GL_TRANSFORM_FEEDBACK_BINDING : constant := 16#8E25#;  

   GL_MAX_TRANSFORM_FEEDBACK_BUFFERS : constant := 16#8E70#;  
   GL_MAX_VERTEX_STREAMS : constant := 16#8E71#;  

   GL_FIXED : constant := 16#140C#;  
   GL_IMPLEMENTATION_COLOR_READ_TYPE : constant := 16#8B9A#;  
   GL_IMPLEMENTATION_COLOR_READ_FORMAT : constant := 16#8B9B#;  
   GL_LOW_FLOAT : constant := 16#8DF0#;  
   GL_MEDIUM_FLOAT : constant := 16#8DF1#;  
   GL_HIGH_FLOAT : constant := 16#8DF2#;  
   GL_LOW_INT : constant := 16#8DF3#;  
   GL_MEDIUM_INT : constant := 16#8DF4#;  
   GL_HIGH_INT : constant := 16#8DF5#;  
   GL_SHADER_COMPILER : constant := 16#8DFA#;  
   GL_NUM_SHADER_BINARY_FORMATS : constant := 16#8DF9#;  
   GL_MAX_VERTEX_UNIFORM_VECTORS : constant := 16#8DFB#;  
   GL_MAX_VARYING_VECTORS : constant := 16#8DFC#;  
   GL_MAX_FRAGMENT_UNIFORM_VECTORS : constant := 16#8DFD#;  

   GL_PROGRAM_BINARY_RETRIEVABLE_HINT : constant := 16#8257#;  
   GL_PROGRAM_BINARY_LENGTH : constant := 16#8741#;  
   GL_NUM_PROGRAM_BINARY_FORMATS : constant := 16#87FE#;  
   GL_PROGRAM_BINARY_FORMATS : constant := 16#87FF#;  

   GL_VERTEX_SHADER_BIT : constant := 16#00000001#;  
   GL_FRAGMENT_SHADER_BIT : constant := 16#00000002#;  
   GL_GEOMETRY_SHADER_BIT : constant := 16#00000004#;  
   GL_TESS_CONTROL_SHADER_BIT : constant := 16#00000008#;  
   GL_TESS_EVALUATION_SHADER_BIT : constant := 16#00000010#;  
   GL_ALL_SHADER_BITS : constant := 16#FFFFFFFF#;  
   GL_PROGRAM_SEPARABLE : constant := 16#8258#;  
   GL_ACTIVE_PROGRAM : constant := 16#8259#;  
   GL_PROGRAM_PIPELINE_BINDING : constant := 16#825A#;  

   GL_MAX_VIEWPORTS : constant := 16#825B#;  
   GL_VIEWPORT_SUBPIXEL_BITS : constant := 16#825C#;  
   GL_VIEWPORT_BOUNDS_RANGE : constant := 16#825D#;  
   GL_LAYER_PROVOKING_VERTEX : constant := 16#825E#;  
   GL_VIEWPORT_INDEX_PROVOKING_VERTEX : constant := 16#825F#;  
   GL_UNDEFINED_VERTEX : constant := 16#8260#;  

   GL_SYNC_CL_EVENT_ARB : constant := 16#8240#;  
   GL_SYNC_CL_EVENT_COMPLETE_ARB : constant := 16#8241#;  

   GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB : constant := 16#8242#;  
   GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB : constant := 16#8243#;  
   GL_DEBUG_CALLBACK_FUNCTION_ARB : constant := 16#8244#;  
   GL_DEBUG_CALLBACK_USER_PARAM_ARB : constant := 16#8245#;  
   GL_DEBUG_SOURCE_API_ARB : constant := 16#8246#;  
   GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB : constant := 16#8247#;  
   GL_DEBUG_SOURCE_SHADER_COMPILER_ARB : constant := 16#8248#;  
   GL_DEBUG_SOURCE_THIRD_PARTY_ARB : constant := 16#8249#;  
   GL_DEBUG_SOURCE_APPLICATION_ARB : constant := 16#824A#;  
   GL_DEBUG_SOURCE_OTHER_ARB : constant := 16#824B#;  
   GL_DEBUG_TYPE_ERROR_ARB : constant := 16#824C#;  
   GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB : constant := 16#824D#;  
   GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB : constant := 16#824E#;  
   GL_DEBUG_TYPE_PORTABILITY_ARB : constant := 16#824F#;  
   GL_DEBUG_TYPE_PERFORMANCE_ARB : constant := 16#8250#;  
   GL_DEBUG_TYPE_OTHER_ARB : constant := 16#8251#;  
   GL_MAX_DEBUG_MESSAGE_LENGTH_ARB : constant := 16#9143#;  
   GL_MAX_DEBUG_LOGGED_MESSAGES_ARB : constant := 16#9144#;  
   GL_DEBUG_LOGGED_MESSAGES_ARB : constant := 16#9145#;  
   GL_DEBUG_SEVERITY_HIGH_ARB : constant := 16#9146#;  
   GL_DEBUG_SEVERITY_MEDIUM_ARB : constant := 16#9147#;  
   GL_DEBUG_SEVERITY_LOW_ARB : constant := 16#9148#;  

   GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB : constant := 16#00000004#;  
   GL_LOSE_CONTEXT_ON_RESET_ARB : constant := 16#8252#;  
   GL_GUILTY_CONTEXT_RESET_ARB : constant := 16#8253#;  
   GL_INNOCENT_CONTEXT_RESET_ARB : constant := 16#8254#;  
   GL_UNKNOWN_CONTEXT_RESET_ARB : constant := 16#8255#;  
   GL_RESET_NOTIFICATION_STRATEGY_ARB : constant := 16#8256#;  
   GL_NO_RESET_NOTIFICATION_ARB : constant := 16#8261#;  

   GL_UNPACK_COMPRESSED_BLOCK_WIDTH : constant := 16#9127#;  
   GL_UNPACK_COMPRESSED_BLOCK_HEIGHT : constant := 16#9128#;  
   GL_UNPACK_COMPRESSED_BLOCK_DEPTH : constant := 16#9129#;  
   GL_UNPACK_COMPRESSED_BLOCK_SIZE : constant := 16#912A#;  
   GL_PACK_COMPRESSED_BLOCK_WIDTH : constant := 16#912B#;  
   GL_PACK_COMPRESSED_BLOCK_HEIGHT : constant := 16#912C#;  
   GL_PACK_COMPRESSED_BLOCK_DEPTH : constant := 16#912D#;  
   GL_PACK_COMPRESSED_BLOCK_SIZE : constant := 16#912E#;  

   GL_NUM_SAMPLE_COUNTS : constant := 16#9380#;  

   GL_MIN_MAP_BUFFER_ALIGNMENT : constant := 16#90BC#;  

   GL_ATOMIC_COUNTER_BUFFER : constant := 16#92C0#;  
   GL_ATOMIC_COUNTER_BUFFER_BINDING : constant := 16#92C1#;  
   GL_ATOMIC_COUNTER_BUFFER_START : constant := 16#92C2#;  
   GL_ATOMIC_COUNTER_BUFFER_SIZE : constant := 16#92C3#;  
   GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE : constant := 16#92C4#;  
   GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS : constant := 16#92C5#;  
   GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES : constant := 16#92C6#;  
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER : constant := 16#92C7#;  
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER : constant := 16#92C8#;  
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER : constant := 16#92C9#;  
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER : constant := 16#92CA#;  
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER : constant := 16#92CB#;  
   GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS : constant := 16#92CC#;  
   GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS : constant := 16#92CD#;  
   GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS : constant := 16#92CE#;  
   GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS : constant := 16#92CF#;  
   GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS : constant := 16#92D0#;  
   GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS : constant := 16#92D1#;  
   GL_MAX_VERTEX_ATOMIC_COUNTERS : constant := 16#92D2#;  
   GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS : constant := 16#92D3#;  
   GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS : constant := 16#92D4#;  
   GL_MAX_GEOMETRY_ATOMIC_COUNTERS : constant := 16#92D5#;  
   GL_MAX_FRAGMENT_ATOMIC_COUNTERS : constant := 16#92D6#;  
   GL_MAX_COMBINED_ATOMIC_COUNTERS : constant := 16#92D7#;  
   GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE : constant := 16#92D8#;  
   GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS : constant := 16#92DC#;  
   GL_ACTIVE_ATOMIC_COUNTER_BUFFERS : constant := 16#92D9#;  
   GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX : constant := 16#92DA#;  
   GL_UNSIGNED_INT_ATOMIC_COUNTER : constant := 16#92DB#;  

   GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT : constant := 16#00000001#;  
   GL_ELEMENT_ARRAY_BARRIER_BIT : constant := 16#00000002#;  
   GL_UNIFORM_BARRIER_BIT : constant := 16#00000004#;  
   GL_TEXTURE_FETCH_BARRIER_BIT : constant := 16#00000008#;  
   GL_SHADER_IMAGE_ACCESS_BARRIER_BIT : constant := 16#00000020#;  
   GL_COMMAND_BARRIER_BIT : constant := 16#00000040#;  
   GL_PIXEL_BUFFER_BARRIER_BIT : constant := 16#00000080#;  
   GL_TEXTURE_UPDATE_BARRIER_BIT : constant := 16#00000100#;  
   GL_BUFFER_UPDATE_BARRIER_BIT : constant := 16#00000200#;  
   GL_FRAMEBUFFER_BARRIER_BIT : constant := 16#00000400#;  
   GL_TRANSFORM_FEEDBACK_BARRIER_BIT : constant := 16#00000800#;  
   GL_ATOMIC_COUNTER_BARRIER_BIT : constant := 16#00001000#;  
   GL_ALL_BARRIER_BITS : constant := 16#FFFFFFFF#;  
   GL_MAX_IMAGE_UNITS : constant := 16#8F38#;  
   GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS : constant := 16#8F39#;  
   GL_IMAGE_BINDING_NAME : constant := 16#8F3A#;  
   GL_IMAGE_BINDING_LEVEL : constant := 16#8F3B#;  
   GL_IMAGE_BINDING_LAYERED : constant := 16#8F3C#;  
   GL_IMAGE_BINDING_LAYER : constant := 16#8F3D#;  
   GL_IMAGE_BINDING_ACCESS : constant := 16#8F3E#;  
   GL_IMAGE_1D : constant := 16#904C#;  
   GL_IMAGE_2D : constant := 16#904D#;  
   GL_IMAGE_3D : constant := 16#904E#;  
   GL_IMAGE_2D_RECT : constant := 16#904F#;  
   GL_IMAGE_CUBE : constant := 16#9050#;  
   GL_IMAGE_BUFFER : constant := 16#9051#;  
   GL_IMAGE_1D_ARRAY : constant := 16#9052#;  
   GL_IMAGE_2D_ARRAY : constant := 16#9053#;  
   GL_IMAGE_CUBE_MAP_ARRAY : constant := 16#9054#;  
   GL_IMAGE_2D_MULTISAMPLE : constant := 16#9055#;  
   GL_IMAGE_2D_MULTISAMPLE_ARRAY : constant := 16#9056#;  
   GL_INT_IMAGE_1D : constant := 16#9057#;  
   GL_INT_IMAGE_2D : constant := 16#9058#;  
   GL_INT_IMAGE_3D : constant := 16#9059#;  
   GL_INT_IMAGE_2D_RECT : constant := 16#905A#;  
   GL_INT_IMAGE_CUBE : constant := 16#905B#;  
   GL_INT_IMAGE_BUFFER : constant := 16#905C#;  
   GL_INT_IMAGE_1D_ARRAY : constant := 16#905D#;  
   GL_INT_IMAGE_2D_ARRAY : constant := 16#905E#;  
   GL_INT_IMAGE_CUBE_MAP_ARRAY : constant := 16#905F#;  
   GL_INT_IMAGE_2D_MULTISAMPLE : constant := 16#9060#;  
   GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY : constant := 16#9061#;  
   GL_UNSIGNED_INT_IMAGE_1D : constant := 16#9062#;  
   GL_UNSIGNED_INT_IMAGE_2D : constant := 16#9063#;  
   GL_UNSIGNED_INT_IMAGE_3D : constant := 16#9064#;  
   GL_UNSIGNED_INT_IMAGE_2D_RECT : constant := 16#9065#;  
   GL_UNSIGNED_INT_IMAGE_CUBE : constant := 16#9066#;  
   GL_UNSIGNED_INT_IMAGE_BUFFER : constant := 16#9067#;  
   GL_UNSIGNED_INT_IMAGE_1D_ARRAY : constant := 16#9068#;  
   GL_UNSIGNED_INT_IMAGE_2D_ARRAY : constant := 16#9069#;  
   GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY : constant := 16#906A#;  
   GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE : constant := 16#906B#;  
   GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY : constant := 16#906C#;  
   GL_MAX_IMAGE_SAMPLES : constant := 16#906D#;  
   GL_IMAGE_BINDING_FORMAT : constant := 16#906E#;  
   GL_IMAGE_FORMAT_COMPATIBILITY_TYPE : constant := 16#90C7#;  
   GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE : constant := 16#90C8#;  
   GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS : constant := 16#90C9#;  
   GL_MAX_VERTEX_IMAGE_UNIFORMS : constant := 16#90CA#;  
   GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS : constant := 16#90CB#;  
   GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS : constant := 16#90CC#;  
   GL_MAX_GEOMETRY_IMAGE_UNIFORMS : constant := 16#90CD#;  
   GL_MAX_FRAGMENT_IMAGE_UNIFORMS : constant := 16#90CE#;  
   GL_MAX_COMBINED_IMAGE_UNIFORMS : constant := 16#90CF#;  

   GL_TEXTURE_IMMUTABLE_FORMAT : constant := 16#912F#;  

   GL_ABGR_EXT : constant := 16#8000#;  

   GL_CONSTANT_COLOR_EXT : constant := 16#8001#;  
   GL_ONE_MINUS_CONSTANT_COLOR_EXT : constant := 16#8002#;  
   GL_CONSTANT_ALPHA_EXT : constant := 16#8003#;  
   GL_ONE_MINUS_CONSTANT_ALPHA_EXT : constant := 16#8004#;  
   GL_BLEND_COLOR_EXT : constant := 16#8005#;  

   GL_POLYGON_OFFSET_EXT : constant := 16#8037#;  
   GL_POLYGON_OFFSET_FACTOR_EXT : constant := 16#8038#;  
   GL_POLYGON_OFFSET_BIAS_EXT : constant := 16#8039#;  

   GL_ALPHA4_EXT : constant := 16#803B#;  
   GL_ALPHA8_EXT : constant := 16#803C#;  
   GL_ALPHA12_EXT : constant := 16#803D#;  
   GL_ALPHA16_EXT : constant := 16#803E#;  
   GL_LUMINANCE4_EXT : constant := 16#803F#;  
   GL_LUMINANCE8_EXT : constant := 16#8040#;  
   GL_LUMINANCE12_EXT : constant := 16#8041#;  
   GL_LUMINANCE16_EXT : constant := 16#8042#;  
   GL_LUMINANCE4_ALPHA4_EXT : constant := 16#8043#;  
   GL_LUMINANCE6_ALPHA2_EXT : constant := 16#8044#;  
   GL_LUMINANCE8_ALPHA8_EXT : constant := 16#8045#;  
   GL_LUMINANCE12_ALPHA4_EXT : constant := 16#8046#;  
   GL_LUMINANCE12_ALPHA12_EXT : constant := 16#8047#;  
   GL_LUMINANCE16_ALPHA16_EXT : constant := 16#8048#;  
   GL_INTENSITY_EXT : constant := 16#8049#;  
   GL_INTENSITY4_EXT : constant := 16#804A#;  
   GL_INTENSITY8_EXT : constant := 16#804B#;  
   GL_INTENSITY12_EXT : constant := 16#804C#;  
   GL_INTENSITY16_EXT : constant := 16#804D#;  
   GL_RGB2_EXT : constant := 16#804E#;  
   GL_RGB4_EXT : constant := 16#804F#;  
   GL_RGB5_EXT : constant := 16#8050#;  
   GL_RGB8_EXT : constant := 16#8051#;  
   GL_RGB10_EXT : constant := 16#8052#;  
   GL_RGB12_EXT : constant := 16#8053#;  
   GL_RGB16_EXT : constant := 16#8054#;  
   GL_RGBA2_EXT : constant := 16#8055#;  
   GL_RGBA4_EXT : constant := 16#8056#;  
   GL_RGB5_A1_EXT : constant := 16#8057#;  
   GL_RGBA8_EXT : constant := 16#8058#;  
   GL_RGB10_A2_EXT : constant := 16#8059#;  
   GL_RGBA12_EXT : constant := 16#805A#;  
   GL_RGBA16_EXT : constant := 16#805B#;  
   GL_TEXTURE_RED_SIZE_EXT : constant := 16#805C#;  
   GL_TEXTURE_GREEN_SIZE_EXT : constant := 16#805D#;  
   GL_TEXTURE_BLUE_SIZE_EXT : constant := 16#805E#;  
   GL_TEXTURE_ALPHA_SIZE_EXT : constant := 16#805F#;  
   GL_TEXTURE_LUMINANCE_SIZE_EXT : constant := 16#8060#;  
   GL_TEXTURE_INTENSITY_SIZE_EXT : constant := 16#8061#;  
   GL_REPLACE_EXT : constant := 16#8062#;  
   GL_PROXY_TEXTURE_1D_EXT : constant := 16#8063#;  
   GL_PROXY_TEXTURE_2D_EXT : constant := 16#8064#;  
   GL_TEXTURE_TOO_LARGE_EXT : constant := 16#8065#;  

   GL_PACK_SKIP_IMAGES_EXT : constant := 16#806B#;  
   GL_PACK_IMAGE_HEIGHT_EXT : constant := 16#806C#;  
   GL_UNPACK_SKIP_IMAGES_EXT : constant := 16#806D#;  
   GL_UNPACK_IMAGE_HEIGHT_EXT : constant := 16#806E#;  
   GL_TEXTURE_3D_EXT : constant := 16#806F#;  
   GL_PROXY_TEXTURE_3D_EXT : constant := 16#8070#;  
   GL_TEXTURE_DEPTH_EXT : constant := 16#8071#;  
   GL_TEXTURE_WRAP_R_EXT : constant := 16#8072#;  
   GL_MAX_3D_TEXTURE_SIZE_EXT : constant := 16#8073#;  

   GL_FILTER4_SGIS : constant := 16#8146#;  
   GL_TEXTURE_FILTER4_SIZE_SGIS : constant := 16#8147#;  

   GL_HISTOGRAM_EXT : constant := 16#8024#;  
   GL_PROXY_HISTOGRAM_EXT : constant := 16#8025#;  
   GL_HISTOGRAM_WIDTH_EXT : constant := 16#8026#;  
   GL_HISTOGRAM_FORMAT_EXT : constant := 16#8027#;  
   GL_HISTOGRAM_RED_SIZE_EXT : constant := 16#8028#;  
   GL_HISTOGRAM_GREEN_SIZE_EXT : constant := 16#8029#;  
   GL_HISTOGRAM_BLUE_SIZE_EXT : constant := 16#802A#;  
   GL_HISTOGRAM_ALPHA_SIZE_EXT : constant := 16#802B#;  
   GL_HISTOGRAM_LUMINANCE_SIZE_EXT : constant := 16#802C#;  
   GL_HISTOGRAM_SINK_EXT : constant := 16#802D#;  
   GL_MINMAX_EXT : constant := 16#802E#;  
   GL_MINMAX_FORMAT_EXT : constant := 16#802F#;  
   GL_MINMAX_SINK_EXT : constant := 16#8030#;  
   GL_TABLE_TOO_LARGE_EXT : constant := 16#8031#;  

   GL_CONVOLUTION_1D_EXT : constant := 16#8010#;  
   GL_CONVOLUTION_2D_EXT : constant := 16#8011#;  
   GL_SEPARABLE_2D_EXT : constant := 16#8012#;  
   GL_CONVOLUTION_BORDER_MODE_EXT : constant := 16#8013#;  
   GL_CONVOLUTION_FILTER_SCALE_EXT : constant := 16#8014#;  
   GL_CONVOLUTION_FILTER_BIAS_EXT : constant := 16#8015#;  
   GL_REDUCE_EXT : constant := 16#8016#;  
   GL_CONVOLUTION_FORMAT_EXT : constant := 16#8017#;  
   GL_CONVOLUTION_WIDTH_EXT : constant := 16#8018#;  
   GL_CONVOLUTION_HEIGHT_EXT : constant := 16#8019#;  
   GL_MAX_CONVOLUTION_WIDTH_EXT : constant := 16#801A#;  
   GL_MAX_CONVOLUTION_HEIGHT_EXT : constant := 16#801B#;  
   GL_POST_CONVOLUTION_RED_SCALE_EXT : constant := 16#801C#;  
   GL_POST_CONVOLUTION_GREEN_SCALE_EXT : constant := 16#801D#;  
   GL_POST_CONVOLUTION_BLUE_SCALE_EXT : constant := 16#801E#;  
   GL_POST_CONVOLUTION_ALPHA_SCALE_EXT : constant := 16#801F#;  
   GL_POST_CONVOLUTION_RED_BIAS_EXT : constant := 16#8020#;  
   GL_POST_CONVOLUTION_GREEN_BIAS_EXT : constant := 16#8021#;  
   GL_POST_CONVOLUTION_BLUE_BIAS_EXT : constant := 16#8022#;  
   GL_POST_CONVOLUTION_ALPHA_BIAS_EXT : constant := 16#8023#;  

   GL_COLOR_MATRIX_SGI : constant := 16#80B1#;  
   GL_COLOR_MATRIX_STACK_DEPTH_SGI : constant := 16#80B2#;  
   GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI : constant := 16#80B3#;  
   GL_POST_COLOR_MATRIX_RED_SCALE_SGI : constant := 16#80B4#;  
   GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI : constant := 16#80B5#;  
   GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI : constant := 16#80B6#;  
   GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI : constant := 16#80B7#;  
   GL_POST_COLOR_MATRIX_RED_BIAS_SGI : constant := 16#80B8#;  
   GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI : constant := 16#80B9#;  
   GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI : constant := 16#80BA#;  
   GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI : constant := 16#80BB#;  

   GL_COLOR_TABLE_SGI : constant := 16#80D0#;  
   GL_POST_CONVOLUTION_COLOR_TABLE_SGI : constant := 16#80D1#;  
   GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI : constant := 16#80D2#;  
   GL_PROXY_COLOR_TABLE_SGI : constant := 16#80D3#;  
   GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI : constant := 16#80D4#;  
   GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI : constant := 16#80D5#;  
   GL_COLOR_TABLE_SCALE_SGI : constant := 16#80D6#;  
   GL_COLOR_TABLE_BIAS_SGI : constant := 16#80D7#;  
   GL_COLOR_TABLE_FORMAT_SGI : constant := 16#80D8#;  
   GL_COLOR_TABLE_WIDTH_SGI : constant := 16#80D9#;  
   GL_COLOR_TABLE_RED_SIZE_SGI : constant := 16#80DA#;  
   GL_COLOR_TABLE_GREEN_SIZE_SGI : constant := 16#80DB#;  
   GL_COLOR_TABLE_BLUE_SIZE_SGI : constant := 16#80DC#;  
   GL_COLOR_TABLE_ALPHA_SIZE_SGI : constant := 16#80DD#;  
   GL_COLOR_TABLE_LUMINANCE_SIZE_SGI : constant := 16#80DE#;  
   GL_COLOR_TABLE_INTENSITY_SIZE_SGI : constant := 16#80DF#;  

   GL_PIXEL_TEXTURE_SGIS : constant := 16#8353#;  
   GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS : constant := 16#8354#;  
   GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS : constant := 16#8355#;  
   GL_PIXEL_GROUP_COLOR_SGIS : constant := 16#8356#;  

   GL_PIXEL_TEX_GEN_SGIX : constant := 16#8139#;  
   GL_PIXEL_TEX_GEN_MODE_SGIX : constant := 16#832B#;  

   GL_PACK_SKIP_VOLUMES_SGIS : constant := 16#8130#;  
   GL_PACK_IMAGE_DEPTH_SGIS : constant := 16#8131#;  
   GL_UNPACK_SKIP_VOLUMES_SGIS : constant := 16#8132#;  
   GL_UNPACK_IMAGE_DEPTH_SGIS : constant := 16#8133#;  
   GL_TEXTURE_4D_SGIS : constant := 16#8134#;  
   GL_PROXY_TEXTURE_4D_SGIS : constant := 16#8135#;  
   GL_TEXTURE_4DSIZE_SGIS : constant := 16#8136#;  
   GL_TEXTURE_WRAP_Q_SGIS : constant := 16#8137#;  
   GL_MAX_4D_TEXTURE_SIZE_SGIS : constant := 16#8138#;  
   GL_TEXTURE_4D_BINDING_SGIS : constant := 16#814F#;  

   GL_TEXTURE_COLOR_TABLE_SGI : constant := 16#80BC#;  
   GL_PROXY_TEXTURE_COLOR_TABLE_SGI : constant := 16#80BD#;  

   GL_CMYK_EXT : constant := 16#800C#;  
   GL_CMYKA_EXT : constant := 16#800D#;  
   GL_PACK_CMYK_HINT_EXT : constant := 16#800E#;  
   GL_UNPACK_CMYK_HINT_EXT : constant := 16#800F#;  

   GL_TEXTURE_PRIORITY_EXT : constant := 16#8066#;  
   GL_TEXTURE_RESIDENT_EXT : constant := 16#8067#;  
   GL_TEXTURE_1D_BINDING_EXT : constant := 16#8068#;  
   GL_TEXTURE_2D_BINDING_EXT : constant := 16#8069#;  
   GL_TEXTURE_3D_BINDING_EXT : constant := 16#806A#;  

   GL_DETAIL_TEXTURE_2D_SGIS : constant := 16#8095#;  
   GL_DETAIL_TEXTURE_2D_BINDING_SGIS : constant := 16#8096#;  
   GL_LINEAR_DETAIL_SGIS : constant := 16#8097#;  
   GL_LINEAR_DETAIL_ALPHA_SGIS : constant := 16#8098#;  
   GL_LINEAR_DETAIL_COLOR_SGIS : constant := 16#8099#;  
   GL_DETAIL_TEXTURE_LEVEL_SGIS : constant := 16#809A#;  
   GL_DETAIL_TEXTURE_MODE_SGIS : constant := 16#809B#;  
   GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS : constant := 16#809C#;  

   GL_LINEAR_SHARPEN_SGIS : constant := 16#80AD#;  
   GL_LINEAR_SHARPEN_ALPHA_SGIS : constant := 16#80AE#;  
   GL_LINEAR_SHARPEN_COLOR_SGIS : constant := 16#80AF#;  
   GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS : constant := 16#80B0#;  

   GL_UNSIGNED_BYTE_3_3_2_EXT : constant := 16#8032#;  
   GL_UNSIGNED_SHORT_4_4_4_4_EXT : constant := 16#8033#;  
   GL_UNSIGNED_SHORT_5_5_5_1_EXT : constant := 16#8034#;  
   GL_UNSIGNED_INT_8_8_8_8_EXT : constant := 16#8035#;  
   GL_UNSIGNED_INT_10_10_10_2_EXT : constant := 16#8036#;  

   GL_TEXTURE_MIN_LOD_SGIS : constant := 16#813A#;  
   GL_TEXTURE_MAX_LOD_SGIS : constant := 16#813B#;  
   GL_TEXTURE_BASE_LEVEL_SGIS : constant := 16#813C#;  
   GL_TEXTURE_MAX_LEVEL_SGIS : constant := 16#813D#;  

   GL_MULTISAMPLE_SGIS : constant := 16#809D#;  
   GL_SAMPLE_ALPHA_TO_MASK_SGIS : constant := 16#809E#;  
   GL_SAMPLE_ALPHA_TO_ONE_SGIS : constant := 16#809F#;  
   GL_SAMPLE_MASK_SGIS : constant := 16#80A0#;  
   GL_1PASS_SGIS : constant := 16#80A1#;  
   GL_2PASS_0_SGIS : constant := 16#80A2#;  
   GL_2PASS_1_SGIS : constant := 16#80A3#;  
   GL_4PASS_0_SGIS : constant := 16#80A4#;  
   GL_4PASS_1_SGIS : constant := 16#80A5#;  
   GL_4PASS_2_SGIS : constant := 16#80A6#;  
   GL_4PASS_3_SGIS : constant := 16#80A7#;  
   GL_SAMPLE_BUFFERS_SGIS : constant := 16#80A8#;  
   GL_SAMPLES_SGIS : constant := 16#80A9#;  
   GL_SAMPLE_MASK_VALUE_SGIS : constant := 16#80AA#;  
   GL_SAMPLE_MASK_INVERT_SGIS : constant := 16#80AB#;  
   GL_SAMPLE_PATTERN_SGIS : constant := 16#80AC#;  

   GL_RESCALE_NORMAL_EXT : constant := 16#803A#;  

   GL_VERTEX_ARRAY_EXT : constant := 16#8074#;  
   GL_NORMAL_ARRAY_EXT : constant := 16#8075#;  
   GL_COLOR_ARRAY_EXT : constant := 16#8076#;  
   GL_INDEX_ARRAY_EXT : constant := 16#8077#;  
   GL_TEXTURE_COORD_ARRAY_EXT : constant := 16#8078#;  
   GL_EDGE_FLAG_ARRAY_EXT : constant := 16#8079#;  
   GL_VERTEX_ARRAY_SIZE_EXT : constant := 16#807A#;  
   GL_VERTEX_ARRAY_TYPE_EXT : constant := 16#807B#;  
   GL_VERTEX_ARRAY_STRIDE_EXT : constant := 16#807C#;  
   GL_VERTEX_ARRAY_COUNT_EXT : constant := 16#807D#;  
   GL_NORMAL_ARRAY_TYPE_EXT : constant := 16#807E#;  
   GL_NORMAL_ARRAY_STRIDE_EXT : constant := 16#807F#;  
   GL_NORMAL_ARRAY_COUNT_EXT : constant := 16#8080#;  
   GL_COLOR_ARRAY_SIZE_EXT : constant := 16#8081#;  
   GL_COLOR_ARRAY_TYPE_EXT : constant := 16#8082#;  
   GL_COLOR_ARRAY_STRIDE_EXT : constant := 16#8083#;  
   GL_COLOR_ARRAY_COUNT_EXT : constant := 16#8084#;  
   GL_INDEX_ARRAY_TYPE_EXT : constant := 16#8085#;  
   GL_INDEX_ARRAY_STRIDE_EXT : constant := 16#8086#;  
   GL_INDEX_ARRAY_COUNT_EXT : constant := 16#8087#;  
   GL_TEXTURE_COORD_ARRAY_SIZE_EXT : constant := 16#8088#;  
   GL_TEXTURE_COORD_ARRAY_TYPE_EXT : constant := 16#8089#;  
   GL_TEXTURE_COORD_ARRAY_STRIDE_EXT : constant := 16#808A#;  
   GL_TEXTURE_COORD_ARRAY_COUNT_EXT : constant := 16#808B#;  
   GL_EDGE_FLAG_ARRAY_STRIDE_EXT : constant := 16#808C#;  
   GL_EDGE_FLAG_ARRAY_COUNT_EXT : constant := 16#808D#;  
   GL_VERTEX_ARRAY_POINTER_EXT : constant := 16#808E#;  
   GL_NORMAL_ARRAY_POINTER_EXT : constant := 16#808F#;  
   GL_COLOR_ARRAY_POINTER_EXT : constant := 16#8090#;  
   GL_INDEX_ARRAY_POINTER_EXT : constant := 16#8091#;  
   GL_TEXTURE_COORD_ARRAY_POINTER_EXT : constant := 16#8092#;  
   GL_EDGE_FLAG_ARRAY_POINTER_EXT : constant := 16#8093#;  

   GL_GENERATE_MIPMAP_SGIS : constant := 16#8191#;  
   GL_GENERATE_MIPMAP_HINT_SGIS : constant := 16#8192#;  

   GL_LINEAR_CLIPMAP_LINEAR_SGIX : constant := 16#8170#;  
   GL_TEXTURE_CLIPMAP_CENTER_SGIX : constant := 16#8171#;  
   GL_TEXTURE_CLIPMAP_FRAME_SGIX : constant := 16#8172#;  
   GL_TEXTURE_CLIPMAP_OFFSET_SGIX : constant := 16#8173#;  
   GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX : constant := 16#8174#;  
   GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX : constant := 16#8175#;  
   GL_TEXTURE_CLIPMAP_DEPTH_SGIX : constant := 16#8176#;  
   GL_MAX_CLIPMAP_DEPTH_SGIX : constant := 16#8177#;  
   GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX : constant := 16#8178#;  
   GL_NEAREST_CLIPMAP_NEAREST_SGIX : constant := 16#844D#;  
   GL_NEAREST_CLIPMAP_LINEAR_SGIX : constant := 16#844E#;  
   GL_LINEAR_CLIPMAP_NEAREST_SGIX : constant := 16#844F#;  

   GL_TEXTURE_COMPARE_SGIX : constant := 16#819A#;  
   GL_TEXTURE_COMPARE_OPERATOR_SGIX : constant := 16#819B#;  
   GL_TEXTURE_LEQUAL_R_SGIX : constant := 16#819C#;  
   GL_TEXTURE_GEQUAL_R_SGIX : constant := 16#819D#;  

   GL_CLAMP_TO_EDGE_SGIS : constant := 16#812F#;  

   GL_CLAMP_TO_BORDER_SGIS : constant := 16#812D#;  

   GL_FUNC_ADD_EXT : constant := 16#8006#;  
   GL_MIN_EXT : constant := 16#8007#;  
   GL_MAX_EXT : constant := 16#8008#;  
   GL_BLEND_EQUATION_EXT : constant := 16#8009#;  

   GL_FUNC_SUBTRACT_EXT : constant := 16#800A#;  
   GL_FUNC_REVERSE_SUBTRACT_EXT : constant := 16#800B#;  

   GL_INTERLACE_SGIX : constant := 16#8094#;  

   GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX : constant := 16#813E#;  
   GL_PIXEL_TILE_CACHE_INCREMENT_SGIX : constant := 16#813F#;  
   GL_PIXEL_TILE_WIDTH_SGIX : constant := 16#8140#;  
   GL_PIXEL_TILE_HEIGHT_SGIX : constant := 16#8141#;  
   GL_PIXEL_TILE_GRID_WIDTH_SGIX : constant := 16#8142#;  
   GL_PIXEL_TILE_GRID_HEIGHT_SGIX : constant := 16#8143#;  
   GL_PIXEL_TILE_GRID_DEPTH_SGIX : constant := 16#8144#;  
   GL_PIXEL_TILE_CACHE_SIZE_SGIX : constant := 16#8145#;  

   GL_DUAL_ALPHA4_SGIS : constant := 16#8110#;  
   GL_DUAL_ALPHA8_SGIS : constant := 16#8111#;  
   GL_DUAL_ALPHA12_SGIS : constant := 16#8112#;  
   GL_DUAL_ALPHA16_SGIS : constant := 16#8113#;  
   GL_DUAL_LUMINANCE4_SGIS : constant := 16#8114#;  
   GL_DUAL_LUMINANCE8_SGIS : constant := 16#8115#;  
   GL_DUAL_LUMINANCE12_SGIS : constant := 16#8116#;  
   GL_DUAL_LUMINANCE16_SGIS : constant := 16#8117#;  
   GL_DUAL_INTENSITY4_SGIS : constant := 16#8118#;  
   GL_DUAL_INTENSITY8_SGIS : constant := 16#8119#;  
   GL_DUAL_INTENSITY12_SGIS : constant := 16#811A#;  
   GL_DUAL_INTENSITY16_SGIS : constant := 16#811B#;  
   GL_DUAL_LUMINANCE_ALPHA4_SGIS : constant := 16#811C#;  
   GL_DUAL_LUMINANCE_ALPHA8_SGIS : constant := 16#811D#;  
   GL_QUAD_ALPHA4_SGIS : constant := 16#811E#;  
   GL_QUAD_ALPHA8_SGIS : constant := 16#811F#;  
   GL_QUAD_LUMINANCE4_SGIS : constant := 16#8120#;  
   GL_QUAD_LUMINANCE8_SGIS : constant := 16#8121#;  
   GL_QUAD_INTENSITY4_SGIS : constant := 16#8122#;  
   GL_QUAD_INTENSITY8_SGIS : constant := 16#8123#;  
   GL_DUAL_TEXTURE_SELECT_SGIS : constant := 16#8124#;  
   GL_QUAD_TEXTURE_SELECT_SGIS : constant := 16#8125#;  

   GL_SPRITE_SGIX : constant := 16#8148#;  
   GL_SPRITE_MODE_SGIX : constant := 16#8149#;  
   GL_SPRITE_AXIS_SGIX : constant := 16#814A#;  
   GL_SPRITE_TRANSLATION_SGIX : constant := 16#814B#;  
   GL_SPRITE_AXIAL_SGIX : constant := 16#814C#;  
   GL_SPRITE_OBJECT_ALIGNED_SGIX : constant := 16#814D#;  
   GL_SPRITE_EYE_ALIGNED_SGIX : constant := 16#814E#;  

   GL_TEXTURE_MULTI_BUFFER_HINT_SGIX : constant := 16#812E#;  

   GL_POINT_SIZE_MIN_EXT : constant := 16#8126#;  
   GL_POINT_SIZE_MAX_EXT : constant := 16#8127#;  
   GL_POINT_FADE_THRESHOLD_SIZE_EXT : constant := 16#8128#;  
   GL_DISTANCE_ATTENUATION_EXT : constant := 16#8129#;  

   GL_POINT_SIZE_MIN_SGIS : constant := 16#8126#;  
   GL_POINT_SIZE_MAX_SGIS : constant := 16#8127#;  
   GL_POINT_FADE_THRESHOLD_SIZE_SGIS : constant := 16#8128#;  
   GL_DISTANCE_ATTENUATION_SGIS : constant := 16#8129#;  

   GL_INSTRUMENT_BUFFER_POINTER_SGIX : constant := 16#8180#;  
   GL_INSTRUMENT_MEASUREMENTS_SGIX : constant := 16#8181#;  

   GL_POST_TEXTURE_FILTER_BIAS_SGIX : constant := 16#8179#;  
   GL_POST_TEXTURE_FILTER_SCALE_SGIX : constant := 16#817A#;  
   GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX : constant := 16#817B#;  
   GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX : constant := 16#817C#;  

   GL_FRAMEZOOM_SGIX : constant := 16#818B#;  
   GL_FRAMEZOOM_FACTOR_SGIX : constant := 16#818C#;  
   GL_MAX_FRAMEZOOM_FACTOR_SGIX : constant := 16#818D#;  

   GL_TEXTURE_DEFORMATION_BIT_SGIX : constant := 16#00000001#;  
   GL_GEOMETRY_DEFORMATION_BIT_SGIX : constant := 16#00000002#;  

   GL_GEOMETRY_DEFORMATION_SGIX : constant := 16#8194#;  
   GL_TEXTURE_DEFORMATION_SGIX : constant := 16#8195#;  
   GL_DEFORMATIONS_MASK_SGIX : constant := 16#8196#;  
   GL_MAX_DEFORMATION_ORDER_SGIX : constant := 16#8197#;  

   GL_REFERENCE_PLANE_SGIX : constant := 16#817D#;  
   GL_REFERENCE_PLANE_EQUATION_SGIX : constant := 16#817E#;  

   GL_DEPTH_COMPONENT16_SGIX : constant := 16#81A5#;  
   GL_DEPTH_COMPONENT24_SGIX : constant := 16#81A6#;  
   GL_DEPTH_COMPONENT32_SGIX : constant := 16#81A7#;  

   GL_FOG_FUNC_SGIS : constant := 16#812A#;  
   GL_FOG_FUNC_POINTS_SGIS : constant := 16#812B#;  
   GL_MAX_FOG_FUNC_POINTS_SGIS : constant := 16#812C#;  

   GL_FOG_OFFSET_SGIX : constant := 16#8198#;  
   GL_FOG_OFFSET_VALUE_SGIX : constant := 16#8199#;  

   GL_IMAGE_SCALE_X_HP : constant := 16#8155#;  
   GL_IMAGE_SCALE_Y_HP : constant := 16#8156#;  
   GL_IMAGE_TRANSLATE_X_HP : constant := 16#8157#;  
   GL_IMAGE_TRANSLATE_Y_HP : constant := 16#8158#;  
   GL_IMAGE_ROTATE_ANGLE_HP : constant := 16#8159#;  
   GL_IMAGE_ROTATE_ORIGIN_X_HP : constant := 16#815A#;  
   GL_IMAGE_ROTATE_ORIGIN_Y_HP : constant := 16#815B#;  
   GL_IMAGE_MAG_FILTER_HP : constant := 16#815C#;  
   GL_IMAGE_MIN_FILTER_HP : constant := 16#815D#;  
   GL_IMAGE_CUBIC_WEIGHT_HP : constant := 16#815E#;  
   GL_CUBIC_HP : constant := 16#815F#;  
   GL_AVERAGE_HP : constant := 16#8160#;  
   GL_IMAGE_TRANSFORM_2D_HP : constant := 16#8161#;  
   GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP : constant := 16#8162#;  
   GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP : constant := 16#8163#;  

   GL_IGNORE_BORDER_HP : constant := 16#8150#;  
   GL_CONSTANT_BORDER_HP : constant := 16#8151#;  
   GL_REPLICATE_BORDER_HP : constant := 16#8153#;  
   GL_CONVOLUTION_BORDER_COLOR_HP : constant := 16#8154#;  

   GL_TEXTURE_ENV_BIAS_SGIX : constant := 16#80BE#;  

   GL_VERTEX_DATA_HINT_PGI : constant := 16#1A22A#;  
   GL_VERTEX_CONSISTENT_HINT_PGI : constant := 16#1A22B#;  
   GL_MATERIAL_SIDE_HINT_PGI : constant := 16#1A22C#;  
   GL_MAX_VERTEX_HINT_PGI : constant := 16#1A22D#;  
   GL_COLOR3_BIT_PGI : constant := 16#00010000#;  
   GL_COLOR4_BIT_PGI : constant := 16#00020000#;  
   GL_EDGEFLAG_BIT_PGI : constant := 16#00040000#;  
   GL_INDEX_BIT_PGI : constant := 16#00080000#;  
   GL_MAT_AMBIENT_BIT_PGI : constant := 16#00100000#;  
   GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI : constant := 16#00200000#;  
   GL_MAT_DIFFUSE_BIT_PGI : constant := 16#00400000#;  
   GL_MAT_EMISSION_BIT_PGI : constant := 16#00800000#;  
   GL_MAT_COLOR_INDEXES_BIT_PGI : constant := 16#01000000#;  
   GL_MAT_SHININESS_BIT_PGI : constant := 16#02000000#;  
   GL_MAT_SPECULAR_BIT_PGI : constant := 16#04000000#;  
   GL_NORMAL_BIT_PGI : constant := 16#08000000#;  
   GL_TEXCOORD1_BIT_PGI : constant := 16#10000000#;  
   GL_TEXCOORD2_BIT_PGI : constant := 16#20000000#;  
   GL_TEXCOORD3_BIT_PGI : constant := 16#40000000#;  
   GL_TEXCOORD4_BIT_PGI : constant := 16#80000000#;  
   GL_VERTEX23_BIT_PGI : constant := 16#00000004#;  
   GL_VERTEX4_BIT_PGI : constant := 16#00000008#;  

   GL_PREFER_DOUBLEBUFFER_HINT_PGI : constant := 16#1A1F8#;  
   GL_CONSERVE_MEMORY_HINT_PGI : constant := 16#1A1FD#;  
   GL_RECLAIM_MEMORY_HINT_PGI : constant := 16#1A1FE#;  
   GL_NATIVE_GRAPHICS_HANDLE_PGI : constant := 16#1A202#;  
   GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI : constant := 16#1A203#;  
   GL_NATIVE_GRAPHICS_END_HINT_PGI : constant := 16#1A204#;  
   GL_ALWAYS_FAST_HINT_PGI : constant := 16#1A20C#;  
   GL_ALWAYS_SOFT_HINT_PGI : constant := 16#1A20D#;  
   GL_ALLOW_DRAW_OBJ_HINT_PGI : constant := 16#1A20E#;  
   GL_ALLOW_DRAW_WIN_HINT_PGI : constant := 16#1A20F#;  
   GL_ALLOW_DRAW_FRG_HINT_PGI : constant := 16#1A210#;  
   GL_ALLOW_DRAW_MEM_HINT_PGI : constant := 16#1A211#;  
   GL_STRICT_DEPTHFUNC_HINT_PGI : constant := 16#1A216#;  
   GL_STRICT_LIGHTING_HINT_PGI : constant := 16#1A217#;  
   GL_STRICT_SCISSOR_HINT_PGI : constant := 16#1A218#;  
   GL_FULL_STIPPLE_HINT_PGI : constant := 16#1A219#;  
   GL_CLIP_NEAR_HINT_PGI : constant := 16#1A220#;  
   GL_CLIP_FAR_HINT_PGI : constant := 16#1A221#;  
   GL_WIDE_LINE_HINT_PGI : constant := 16#1A222#;  
   GL_BACK_NORMALS_HINT_PGI : constant := 16#1A223#;  

   GL_COLOR_INDEX1_EXT : constant := 16#80E2#;  
   GL_COLOR_INDEX2_EXT : constant := 16#80E3#;  
   GL_COLOR_INDEX4_EXT : constant := 16#80E4#;  
   GL_COLOR_INDEX8_EXT : constant := 16#80E5#;  
   GL_COLOR_INDEX12_EXT : constant := 16#80E6#;  
   GL_COLOR_INDEX16_EXT : constant := 16#80E7#;  
   GL_TEXTURE_INDEX_SIZE_EXT : constant := 16#80ED#;  

   GL_CLIP_VOLUME_CLIPPING_HINT_EXT : constant := 16#80F0#;  

   GL_LIST_PRIORITY_SGIX : constant := 16#8182#;  

   GL_IR_INSTRUMENT1_SGIX : constant := 16#817F#;  

   GL_CALLIGRAPHIC_FRAGMENT_SGIX : constant := 16#8183#;  

   GL_TEXTURE_LOD_BIAS_S_SGIX : constant := 16#818E#;  
   GL_TEXTURE_LOD_BIAS_T_SGIX : constant := 16#818F#;  
   GL_TEXTURE_LOD_BIAS_R_SGIX : constant := 16#8190#;  

   GL_SHADOW_AMBIENT_SGIX : constant := 16#80BF#;  

   GL_INDEX_MATERIAL_EXT : constant := 16#81B8#;  
   GL_INDEX_MATERIAL_PARAMETER_EXT : constant := 16#81B9#;  
   GL_INDEX_MATERIAL_FACE_EXT : constant := 16#81BA#;  

   GL_INDEX_TEST_EXT : constant := 16#81B5#;  
   GL_INDEX_TEST_FUNC_EXT : constant := 16#81B6#;  
   GL_INDEX_TEST_REF_EXT : constant := 16#81B7#;  

   GL_IUI_V2F_EXT : constant := 16#81AD#;  
   GL_IUI_V3F_EXT : constant := 16#81AE#;  
   GL_IUI_N3F_V2F_EXT : constant := 16#81AF#;  
   GL_IUI_N3F_V3F_EXT : constant := 16#81B0#;  
   GL_T2F_IUI_V2F_EXT : constant := 16#81B1#;  
   GL_T2F_IUI_V3F_EXT : constant := 16#81B2#;  
   GL_T2F_IUI_N3F_V2F_EXT : constant := 16#81B3#;  
   GL_T2F_IUI_N3F_V3F_EXT : constant := 16#81B4#;  

   GL_ARRAY_ELEMENT_LOCK_FIRST_EXT : constant := 16#81A8#;  
   GL_ARRAY_ELEMENT_LOCK_COUNT_EXT : constant := 16#81A9#;  

   GL_CULL_VERTEX_EXT : constant := 16#81AA#;  
   GL_CULL_VERTEX_EYE_POSITION_EXT : constant := 16#81AB#;  
   GL_CULL_VERTEX_OBJECT_POSITION_EXT : constant := 16#81AC#;  

   GL_YCRCB_422_SGIX : constant := 16#81BB#;  
   GL_YCRCB_444_SGIX : constant := 16#81BC#;  

   GL_FRAGMENT_LIGHTING_SGIX : constant := 16#8400#;  
   GL_FRAGMENT_COLOR_MATERIAL_SGIX : constant := 16#8401#;  
   GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX : constant := 16#8402#;  
   GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX : constant := 16#8403#;  
   GL_MAX_FRAGMENT_LIGHTS_SGIX : constant := 16#8404#;  
   GL_MAX_ACTIVE_LIGHTS_SGIX : constant := 16#8405#;  
   GL_CURRENT_RASTER_NORMAL_SGIX : constant := 16#8406#;  
   GL_LIGHT_ENV_MODE_SGIX : constant := 16#8407#;  
   GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX : constant := 16#8408#;  
   GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX : constant := 16#8409#;  
   GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX : constant := 16#840A#;  
   GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX : constant := 16#840B#;  
   GL_FRAGMENT_LIGHT0_SGIX : constant := 16#840C#;  
   GL_FRAGMENT_LIGHT1_SGIX : constant := 16#840D#;  
   GL_FRAGMENT_LIGHT2_SGIX : constant := 16#840E#;  
   GL_FRAGMENT_LIGHT3_SGIX : constant := 16#840F#;  
   GL_FRAGMENT_LIGHT4_SGIX : constant := 16#8410#;  
   GL_FRAGMENT_LIGHT5_SGIX : constant := 16#8411#;  
   GL_FRAGMENT_LIGHT6_SGIX : constant := 16#8412#;  
   GL_FRAGMENT_LIGHT7_SGIX : constant := 16#8413#;  

   GL_RASTER_POSITION_UNCLIPPED_IBM : constant := 16#19262#;  

   GL_TEXTURE_LIGHTING_MODE_HP : constant := 16#8167#;  
   GL_TEXTURE_POST_SPECULAR_HP : constant := 16#8168#;  
   GL_TEXTURE_PRE_SPECULAR_HP : constant := 16#8169#;  

   GL_MAX_ELEMENTS_VERTICES_EXT : constant := 16#80E8#;  
   GL_MAX_ELEMENTS_INDICES_EXT : constant := 16#80E9#;  

   GL_PHONG_WIN : constant := 16#80EA#;  
   GL_PHONG_HINT_WIN : constant := 16#80EB#;  

   GL_FOG_SPECULAR_TEXTURE_WIN : constant := 16#80EC#;  

   GL_FRAGMENT_MATERIAL_EXT : constant := 16#8349#;  
   GL_FRAGMENT_NORMAL_EXT : constant := 16#834A#;  
   GL_FRAGMENT_COLOR_EXT : constant := 16#834C#;  
   GL_ATTENUATION_EXT : constant := 16#834D#;  
   GL_SHADOW_ATTENUATION_EXT : constant := 16#834E#;  
   GL_TEXTURE_APPLICATION_MODE_EXT : constant := 16#834F#;  
   GL_TEXTURE_LIGHT_EXT : constant := 16#8350#;  
   GL_TEXTURE_MATERIAL_FACE_EXT : constant := 16#8351#;  
   GL_TEXTURE_MATERIAL_PARAMETER_EXT : constant := 16#8352#;  

   GL_ALPHA_MIN_SGIX : constant := 16#8320#;  
   GL_ALPHA_MAX_SGIX : constant := 16#8321#;  

   GL_PIXEL_TEX_GEN_Q_CEILING_SGIX : constant := 16#8184#;  
   GL_PIXEL_TEX_GEN_Q_ROUND_SGIX : constant := 16#8185#;  
   GL_PIXEL_TEX_GEN_Q_FLOOR_SGIX : constant := 16#8186#;  
   GL_PIXEL_TEX_GEN_ALPHA_REPLACE_SGIX : constant := 16#8187#;  
   GL_PIXEL_TEX_GEN_ALPHA_NO_REPLACE_SGIX : constant := 16#8188#;  
   GL_PIXEL_TEX_GEN_ALPHA_LS_SGIX : constant := 16#8189#;  
   GL_PIXEL_TEX_GEN_ALPHA_MS_SGIX : constant := 16#818A#;  

   GL_BGR_EXT : constant := 16#80E0#;  
   GL_BGRA_EXT : constant := 16#80E1#;  

   GL_ASYNC_MARKER_SGIX : constant := 16#8329#;  

   GL_ASYNC_TEX_IMAGE_SGIX : constant := 16#835C#;  
   GL_ASYNC_DRAW_PIXELS_SGIX : constant := 16#835D#;  
   GL_ASYNC_READ_PIXELS_SGIX : constant := 16#835E#;  
   GL_MAX_ASYNC_TEX_IMAGE_SGIX : constant := 16#835F#;  
   GL_MAX_ASYNC_DRAW_PIXELS_SGIX : constant := 16#8360#;  
   GL_MAX_ASYNC_READ_PIXELS_SGIX : constant := 16#8361#;  

   GL_ASYNC_HISTOGRAM_SGIX : constant := 16#832C#;  
   GL_MAX_ASYNC_HISTOGRAM_SGIX : constant := 16#832D#;  

   GL_PARALLEL_ARRAYS_INTEL : constant := 16#83F4#;  
   GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL : constant := 16#83F5#;  
   GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL : constant := 16#83F6#;  
   GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL : constant := 16#83F7#;  
   GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL : constant := 16#83F8#;  

   GL_OCCLUSION_TEST_HP : constant := 16#8165#;  
   GL_OCCLUSION_TEST_RESULT_HP : constant := 16#8166#;  

   GL_PIXEL_TRANSFORM_2D_EXT : constant := 16#8330#;  
   GL_PIXEL_MAG_FILTER_EXT : constant := 16#8331#;  
   GL_PIXEL_MIN_FILTER_EXT : constant := 16#8332#;  
   GL_PIXEL_CUBIC_WEIGHT_EXT : constant := 16#8333#;  
   GL_CUBIC_EXT : constant := 16#8334#;  
   GL_AVERAGE_EXT : constant := 16#8335#;  
   GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT : constant := 16#8336#;  
   GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT : constant := 16#8337#;  
   GL_PIXEL_TRANSFORM_2D_MATRIX_EXT : constant := 16#8338#;  

   GL_SHARED_TEXTURE_PALETTE_EXT : constant := 16#81FB#;  

   GL_LIGHT_MODEL_COLOR_CONTROL_EXT : constant := 16#81F8#;  
   GL_SINGLE_COLOR_EXT : constant := 16#81F9#;  
   GL_SEPARATE_SPECULAR_COLOR_EXT : constant := 16#81FA#;  

   GL_COLOR_SUM_EXT : constant := 16#8458#;  
   GL_CURRENT_SECONDARY_COLOR_EXT : constant := 16#8459#;  
   GL_SECONDARY_COLOR_ARRAY_SIZE_EXT : constant := 16#845A#;  
   GL_SECONDARY_COLOR_ARRAY_TYPE_EXT : constant := 16#845B#;  
   GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT : constant := 16#845C#;  
   GL_SECONDARY_COLOR_ARRAY_POINTER_EXT : constant := 16#845D#;  
   GL_SECONDARY_COLOR_ARRAY_EXT : constant := 16#845E#;  

   GL_PERTURB_EXT : constant := 16#85AE#;  
   GL_TEXTURE_NORMAL_EXT : constant := 16#85AF#;  

   GL_FOG_COORDINATE_SOURCE_EXT : constant := 16#8450#;  
   GL_FOG_COORDINATE_EXT : constant := 16#8451#;  
   GL_FRAGMENT_DEPTH_EXT : constant := 16#8452#;  
   GL_CURRENT_FOG_COORDINATE_EXT : constant := 16#8453#;  
   GL_FOG_COORDINATE_ARRAY_TYPE_EXT : constant := 16#8454#;  
   GL_FOG_COORDINATE_ARRAY_STRIDE_EXT : constant := 16#8455#;  
   GL_FOG_COORDINATE_ARRAY_POINTER_EXT : constant := 16#8456#;  
   GL_FOG_COORDINATE_ARRAY_EXT : constant := 16#8457#;  

   GL_SCREEN_COORDINATES_REND : constant := 16#8490#;  
   GL_INVERTED_SCREEN_W_REND : constant := 16#8491#;  

   GL_TANGENT_ARRAY_EXT : constant := 16#8439#;  
   GL_BINORMAL_ARRAY_EXT : constant := 16#843A#;  
   GL_CURRENT_TANGENT_EXT : constant := 16#843B#;  
   GL_CURRENT_BINORMAL_EXT : constant := 16#843C#;  
   GL_TANGENT_ARRAY_TYPE_EXT : constant := 16#843E#;  
   GL_TANGENT_ARRAY_STRIDE_EXT : constant := 16#843F#;  
   GL_BINORMAL_ARRAY_TYPE_EXT : constant := 16#8440#;  
   GL_BINORMAL_ARRAY_STRIDE_EXT : constant := 16#8441#;  
   GL_TANGENT_ARRAY_POINTER_EXT : constant := 16#8442#;  
   GL_BINORMAL_ARRAY_POINTER_EXT : constant := 16#8443#;  
   GL_MAP1_TANGENT_EXT : constant := 16#8444#;  
   GL_MAP2_TANGENT_EXT : constant := 16#8445#;  
   GL_MAP1_BINORMAL_EXT : constant := 16#8446#;  
   GL_MAP2_BINORMAL_EXT : constant := 16#8447#;  

   GL_COMBINE_EXT : constant := 16#8570#;  
   GL_COMBINE_RGB_EXT : constant := 16#8571#;  
   GL_COMBINE_ALPHA_EXT : constant := 16#8572#;  
   GL_RGB_SCALE_EXT : constant := 16#8573#;  
   GL_ADD_SIGNED_EXT : constant := 16#8574#;  
   GL_INTERPOLATE_EXT : constant := 16#8575#;  
   GL_CONSTANT_EXT : constant := 16#8576#;  
   GL_PRIMARY_COLOR_EXT : constant := 16#8577#;  
   GL_PREVIOUS_EXT : constant := 16#8578#;  
   GL_SOURCE0_RGB_EXT : constant := 16#8580#;  
   GL_SOURCE1_RGB_EXT : constant := 16#8581#;  
   GL_SOURCE2_RGB_EXT : constant := 16#8582#;  
   GL_SOURCE0_ALPHA_EXT : constant := 16#8588#;  
   GL_SOURCE1_ALPHA_EXT : constant := 16#8589#;  
   GL_SOURCE2_ALPHA_EXT : constant := 16#858A#;  
   GL_OPERAND0_RGB_EXT : constant := 16#8590#;  
   GL_OPERAND1_RGB_EXT : constant := 16#8591#;  
   GL_OPERAND2_RGB_EXT : constant := 16#8592#;  
   GL_OPERAND0_ALPHA_EXT : constant := 16#8598#;  
   GL_OPERAND1_ALPHA_EXT : constant := 16#8599#;  
   GL_OPERAND2_ALPHA_EXT : constant := 16#859A#;  

   GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE : constant := 16#85B0#;  

   GL_TRANSFORM_HINT_APPLE : constant := 16#85B1#;  

   GL_FOG_SCALE_SGIX : constant := 16#81FC#;  
   GL_FOG_SCALE_VALUE_SGIX : constant := 16#81FD#;  

   GL_UNPACK_CONSTANT_DATA_SUNX : constant := 16#81D5#;  
   GL_TEXTURE_CONSTANT_DATA_SUNX : constant := 16#81D6#;  

   GL_GLOBAL_ALPHA_SUN : constant := 16#81D9#;  
   GL_GLOBAL_ALPHA_FACTOR_SUN : constant := 16#81DA#;  

   GL_RESTART_SUN : constant := 16#0001#;  
   GL_REPLACE_MIDDLE_SUN : constant := 16#0002#;  
   GL_REPLACE_OLDEST_SUN : constant := 16#0003#;  
   GL_TRIANGLE_LIST_SUN : constant := 16#81D7#;  
   GL_REPLACEMENT_CODE_SUN : constant := 16#81D8#;  
   GL_REPLACEMENT_CODE_ARRAY_SUN : constant := 16#85C0#;  
   GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN : constant := 16#85C1#;  
   GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN : constant := 16#85C2#;  
   GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN : constant := 16#85C3#;  
   GL_R1UI_V3F_SUN : constant := 16#85C4#;  
   GL_R1UI_C4UB_V3F_SUN : constant := 16#85C5#;  
   GL_R1UI_C3F_V3F_SUN : constant := 16#85C6#;  
   GL_R1UI_N3F_V3F_SUN : constant := 16#85C7#;  
   GL_R1UI_C4F_N3F_V3F_SUN : constant := 16#85C8#;  
   GL_R1UI_T2F_V3F_SUN : constant := 16#85C9#;  
   GL_R1UI_T2F_N3F_V3F_SUN : constant := 16#85CA#;  
   GL_R1UI_T2F_C4F_N3F_V3F_SUN : constant := 16#85CB#;  

   GL_BLEND_DST_RGB_EXT : constant := 16#80C8#;  
   GL_BLEND_SRC_RGB_EXT : constant := 16#80C9#;  
   GL_BLEND_DST_ALPHA_EXT : constant := 16#80CA#;  
   GL_BLEND_SRC_ALPHA_EXT : constant := 16#80CB#;  

   GL_RED_MIN_CLAMP_INGR : constant := 16#8560#;  
   GL_GREEN_MIN_CLAMP_INGR : constant := 16#8561#;  
   GL_BLUE_MIN_CLAMP_INGR : constant := 16#8562#;  
   GL_ALPHA_MIN_CLAMP_INGR : constant := 16#8563#;  
   GL_RED_MAX_CLAMP_INGR : constant := 16#8564#;  
   GL_GREEN_MAX_CLAMP_INGR : constant := 16#8565#;  
   GL_BLUE_MAX_CLAMP_INGR : constant := 16#8566#;  
   GL_ALPHA_MAX_CLAMP_INGR : constant := 16#8567#;  

   GL_INTERLACE_READ_INGR : constant := 16#8568#;  

   GL_INCR_WRAP_EXT : constant := 16#8507#;  
   GL_DECR_WRAP_EXT : constant := 16#8508#;  

   GL_422_EXT : constant := 16#80CC#;  
   GL_422_REV_EXT : constant := 16#80CD#;  
   GL_422_AVERAGE_EXT : constant := 16#80CE#;  
   GL_422_REV_AVERAGE_EXT : constant := 16#80CF#;  

   GL_NORMAL_MAP_NV : constant := 16#8511#;  
   GL_REFLECTION_MAP_NV : constant := 16#8512#;  

   GL_NORMAL_MAP_EXT : constant := 16#8511#;  
   GL_REFLECTION_MAP_EXT : constant := 16#8512#;  
   GL_TEXTURE_CUBE_MAP_EXT : constant := 16#8513#;  
   GL_TEXTURE_BINDING_CUBE_MAP_EXT : constant := 16#8514#;  
   GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT : constant := 16#8515#;  
   GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT : constant := 16#8516#;  
   GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT : constant := 16#8517#;  
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT : constant := 16#8518#;  
   GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT : constant := 16#8519#;  
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT : constant := 16#851A#;  
   GL_PROXY_TEXTURE_CUBE_MAP_EXT : constant := 16#851B#;  
   GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT : constant := 16#851C#;  

   GL_WRAP_BORDER_SUN : constant := 16#81D4#;  

   GL_MAX_TEXTURE_LOD_BIAS_EXT : constant := 16#84FD#;  
   GL_TEXTURE_FILTER_CONTROL_EXT : constant := 16#8500#;  
   GL_TEXTURE_LOD_BIAS_EXT : constant := 16#8501#;  

   GL_TEXTURE_MAX_ANISOTROPY_EXT : constant := 16#84FE#;  
   GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT : constant := 16#84FF#;  
   --  unsupported macro: GL_MODELVIEW0_STACK_DEPTH_EXT GL_MODELVIEW_STACK_DEPTH

   GL_MODELVIEW1_STACK_DEPTH_EXT : constant := 16#8502#;  
   --  unsupported macro: GL_MODELVIEW0_MATRIX_EXT GL_MODELVIEW_MATRIX

   GL_MODELVIEW1_MATRIX_EXT : constant := 16#8506#;  
   GL_VERTEX_WEIGHTING_EXT : constant := 16#8509#;  
   --  unsupported macro: GL_MODELVIEW0_EXT GL_MODELVIEW

   GL_MODELVIEW1_EXT : constant := 16#850A#;  
   GL_CURRENT_VERTEX_WEIGHT_EXT : constant := 16#850B#;  
   GL_VERTEX_WEIGHT_ARRAY_EXT : constant := 16#850C#;  
   GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT : constant := 16#850D#;  
   GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT : constant := 16#850E#;  
   GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT : constant := 16#850F#;  
   GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT : constant := 16#8510#;  

   GL_MAX_SHININESS_NV : constant := 16#8504#;  
   GL_MAX_SPOT_EXPONENT_NV : constant := 16#8505#;  

   GL_VERTEX_ARRAY_RANGE_NV : constant := 16#851D#;  
   GL_VERTEX_ARRAY_RANGE_LENGTH_NV : constant := 16#851E#;  
   GL_VERTEX_ARRAY_RANGE_VALID_NV : constant := 16#851F#;  
   GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV : constant := 16#8520#;  
   GL_VERTEX_ARRAY_RANGE_POINTER_NV : constant := 16#8521#;  

   GL_REGISTER_COMBINERS_NV : constant := 16#8522#;  
   GL_VARIABLE_A_NV : constant := 16#8523#;  
   GL_VARIABLE_B_NV : constant := 16#8524#;  
   GL_VARIABLE_C_NV : constant := 16#8525#;  
   GL_VARIABLE_D_NV : constant := 16#8526#;  
   GL_VARIABLE_E_NV : constant := 16#8527#;  
   GL_VARIABLE_F_NV : constant := 16#8528#;  
   GL_VARIABLE_G_NV : constant := 16#8529#;  
   GL_CONSTANT_COLOR0_NV : constant := 16#852A#;  
   GL_CONSTANT_COLOR1_NV : constant := 16#852B#;  
   GL_PRIMARY_COLOR_NV : constant := 16#852C#;  
   GL_SECONDARY_COLOR_NV : constant := 16#852D#;  
   GL_SPARE0_NV : constant := 16#852E#;  
   GL_SPARE1_NV : constant := 16#852F#;  
   GL_DISCARD_NV : constant := 16#8530#;  
   GL_E_TIMES_F_NV : constant := 16#8531#;  
   GL_SPARE0_PLUS_SECONDARY_COLOR_NV : constant := 16#8532#;  
   GL_UNSIGNED_IDENTITY_NV : constant := 16#8536#;  
   GL_UNSIGNED_INVERT_NV : constant := 16#8537#;  
   GL_EXPAND_NORMAL_NV : constant := 16#8538#;  
   GL_EXPAND_NEGATE_NV : constant := 16#8539#;  
   GL_HALF_BIAS_NORMAL_NV : constant := 16#853A#;  
   GL_HALF_BIAS_NEGATE_NV : constant := 16#853B#;  
   GL_SIGNED_IDENTITY_NV : constant := 16#853C#;  
   GL_SIGNED_NEGATE_NV : constant := 16#853D#;  
   GL_SCALE_BY_TWO_NV : constant := 16#853E#;  
   GL_SCALE_BY_FOUR_NV : constant := 16#853F#;  
   GL_SCALE_BY_ONE_HALF_NV : constant := 16#8540#;  
   GL_BIAS_BY_NEGATIVE_ONE_HALF_NV : constant := 16#8541#;  
   GL_COMBINER_INPUT_NV : constant := 16#8542#;  
   GL_COMBINER_MAPPING_NV : constant := 16#8543#;  
   GL_COMBINER_COMPONENT_USAGE_NV : constant := 16#8544#;  
   GL_COMBINER_AB_DOT_PRODUCT_NV : constant := 16#8545#;  
   GL_COMBINER_CD_DOT_PRODUCT_NV : constant := 16#8546#;  
   GL_COMBINER_MUX_SUM_NV : constant := 16#8547#;  
   GL_COMBINER_SCALE_NV : constant := 16#8548#;  
   GL_COMBINER_BIAS_NV : constant := 16#8549#;  
   GL_COMBINER_AB_OUTPUT_NV : constant := 16#854A#;  
   GL_COMBINER_CD_OUTPUT_NV : constant := 16#854B#;  
   GL_COMBINER_SUM_OUTPUT_NV : constant := 16#854C#;  
   GL_MAX_GENERAL_COMBINERS_NV : constant := 16#854D#;  
   GL_NUM_GENERAL_COMBINERS_NV : constant := 16#854E#;  
   GL_COLOR_SUM_CLAMP_NV : constant := 16#854F#;  
   GL_COMBINER0_NV : constant := 16#8550#;  
   GL_COMBINER1_NV : constant := 16#8551#;  
   GL_COMBINER2_NV : constant := 16#8552#;  
   GL_COMBINER3_NV : constant := 16#8553#;  
   GL_COMBINER4_NV : constant := 16#8554#;  
   GL_COMBINER5_NV : constant := 16#8555#;  
   GL_COMBINER6_NV : constant := 16#8556#;  
   GL_COMBINER7_NV : constant := 16#8557#;  

   GL_FOG_DISTANCE_MODE_NV : constant := 16#855A#;  
   GL_EYE_RADIAL_NV : constant := 16#855B#;  
   GL_EYE_PLANE_ABSOLUTE_NV : constant := 16#855C#;  

   GL_EMBOSS_LIGHT_NV : constant := 16#855D#;  
   GL_EMBOSS_CONSTANT_NV : constant := 16#855E#;  
   GL_EMBOSS_MAP_NV : constant := 16#855F#;  

   GL_COMBINE4_NV : constant := 16#8503#;  
   GL_SOURCE3_RGB_NV : constant := 16#8583#;  
   GL_SOURCE3_ALPHA_NV : constant := 16#858B#;  
   GL_OPERAND3_RGB_NV : constant := 16#8593#;  
   GL_OPERAND3_ALPHA_NV : constant := 16#859B#;  

   GL_COMPRESSED_RGB_S3TC_DXT1_EXT : constant := 16#83F0#;  
   GL_COMPRESSED_RGBA_S3TC_DXT1_EXT : constant := 16#83F1#;  
   GL_COMPRESSED_RGBA_S3TC_DXT3_EXT : constant := 16#83F2#;  
   GL_COMPRESSED_RGBA_S3TC_DXT5_EXT : constant := 16#83F3#;  

   GL_CULL_VERTEX_IBM : constant := 103050;  

   GL_VERTEX_ARRAY_LIST_IBM : constant := 103070;  
   GL_NORMAL_ARRAY_LIST_IBM : constant := 103071;  
   GL_COLOR_ARRAY_LIST_IBM : constant := 103072;  
   GL_INDEX_ARRAY_LIST_IBM : constant := 103073;  
   GL_TEXTURE_COORD_ARRAY_LIST_IBM : constant := 103074;  
   GL_EDGE_FLAG_ARRAY_LIST_IBM : constant := 103075;  
   GL_FOG_COORDINATE_ARRAY_LIST_IBM : constant := 103076;  
   GL_SECONDARY_COLOR_ARRAY_LIST_IBM : constant := 103077;  
   GL_VERTEX_ARRAY_LIST_STRIDE_IBM : constant := 103080;  
   GL_NORMAL_ARRAY_LIST_STRIDE_IBM : constant := 103081;  
   GL_COLOR_ARRAY_LIST_STRIDE_IBM : constant := 103082;  
   GL_INDEX_ARRAY_LIST_STRIDE_IBM : constant := 103083;  
   GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM : constant := 103084;  
   GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM : constant := 103085;  
   GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM : constant := 103086;  
   GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM : constant := 103087;  

   GL_PACK_SUBSAMPLE_RATE_SGIX : constant := 16#85A0#;  
   GL_UNPACK_SUBSAMPLE_RATE_SGIX : constant := 16#85A1#;  
   GL_PIXEL_SUBSAMPLE_4444_SGIX : constant := 16#85A2#;  
   GL_PIXEL_SUBSAMPLE_2424_SGIX : constant := 16#85A3#;  
   GL_PIXEL_SUBSAMPLE_4242_SGIX : constant := 16#85A4#;  

   GL_YCRCB_SGIX : constant := 16#8318#;  
   GL_YCRCBA_SGIX : constant := 16#8319#;  

   GL_DEPTH_PASS_INSTRUMENT_SGIX : constant := 16#8310#;  
   GL_DEPTH_PASS_INSTRUMENT_COUNTERS_SGIX : constant := 16#8311#;  
   GL_DEPTH_PASS_INSTRUMENT_MAX_SGIX : constant := 16#8312#;  

   GL_COMPRESSED_RGB_FXT1_3DFX : constant := 16#86B0#;  
   GL_COMPRESSED_RGBA_FXT1_3DFX : constant := 16#86B1#;  

   GL_MULTISAMPLE_3DFX : constant := 16#86B2#;  
   GL_SAMPLE_BUFFERS_3DFX : constant := 16#86B3#;  
   GL_SAMPLES_3DFX : constant := 16#86B4#;  
   GL_MULTISAMPLE_BIT_3DFX : constant := 16#20000000#;  

   GL_MULTISAMPLE_EXT : constant := 16#809D#;  
   GL_SAMPLE_ALPHA_TO_MASK_EXT : constant := 16#809E#;  
   GL_SAMPLE_ALPHA_TO_ONE_EXT : constant := 16#809F#;  
   GL_SAMPLE_MASK_EXT : constant := 16#80A0#;  
   GL_1PASS_EXT : constant := 16#80A1#;  
   GL_2PASS_0_EXT : constant := 16#80A2#;  
   GL_2PASS_1_EXT : constant := 16#80A3#;  
   GL_4PASS_0_EXT : constant := 16#80A4#;  
   GL_4PASS_1_EXT : constant := 16#80A5#;  
   GL_4PASS_2_EXT : constant := 16#80A6#;  
   GL_4PASS_3_EXT : constant := 16#80A7#;  
   GL_SAMPLE_BUFFERS_EXT : constant := 16#80A8#;  
   GL_SAMPLES_EXT : constant := 16#80A9#;  
   GL_SAMPLE_MASK_VALUE_EXT : constant := 16#80AA#;  
   GL_SAMPLE_MASK_INVERT_EXT : constant := 16#80AB#;  
   GL_SAMPLE_PATTERN_EXT : constant := 16#80AC#;  
   GL_MULTISAMPLE_BIT_EXT : constant := 16#20000000#;  

   GL_VERTEX_PRECLIP_SGIX : constant := 16#83EE#;  
   GL_VERTEX_PRECLIP_HINT_SGIX : constant := 16#83EF#;  

   GL_CONVOLUTION_HINT_SGIX : constant := 16#8316#;  

   GL_PACK_RESAMPLE_SGIX : constant := 16#842C#;  
   GL_UNPACK_RESAMPLE_SGIX : constant := 16#842D#;  
   GL_RESAMPLE_REPLICATE_SGIX : constant := 16#842E#;  
   GL_RESAMPLE_ZERO_FILL_SGIX : constant := 16#842F#;  
   GL_RESAMPLE_DECIMATE_SGIX : constant := 16#8430#;  

   GL_EYE_DISTANCE_TO_POINT_SGIS : constant := 16#81F0#;  
   GL_OBJECT_DISTANCE_TO_POINT_SGIS : constant := 16#81F1#;  
   GL_EYE_DISTANCE_TO_LINE_SGIS : constant := 16#81F2#;  
   GL_OBJECT_DISTANCE_TO_LINE_SGIS : constant := 16#81F3#;  
   GL_EYE_POINT_SGIS : constant := 16#81F4#;  
   GL_OBJECT_POINT_SGIS : constant := 16#81F5#;  
   GL_EYE_LINE_SGIS : constant := 16#81F6#;  
   GL_OBJECT_LINE_SGIS : constant := 16#81F7#;  

   GL_TEXTURE_COLOR_WRITEMASK_SGIS : constant := 16#81EF#;  

   GL_DOT3_RGB_EXT : constant := 16#8740#;  
   GL_DOT3_RGBA_EXT : constant := 16#8741#;  

   GL_MIRROR_CLAMP_ATI : constant := 16#8742#;  
   GL_MIRROR_CLAMP_TO_EDGE_ATI : constant := 16#8743#;  

   GL_ALL_COMPLETED_NV : constant := 16#84F2#;  
   GL_FENCE_STATUS_NV : constant := 16#84F3#;  
   GL_FENCE_CONDITION_NV : constant := 16#84F4#;  

   GL_MIRRORED_REPEAT_IBM : constant := 16#8370#;  

   GL_EVAL_2D_NV : constant := 16#86C0#;  
   GL_EVAL_TRIANGULAR_2D_NV : constant := 16#86C1#;  
   GL_MAP_TESSELLATION_NV : constant := 16#86C2#;  
   GL_MAP_ATTRIB_U_ORDER_NV : constant := 16#86C3#;  
   GL_MAP_ATTRIB_V_ORDER_NV : constant := 16#86C4#;  
   GL_EVAL_FRACTIONAL_TESSELLATION_NV : constant := 16#86C5#;  
   GL_EVAL_VERTEX_ATTRIB0_NV : constant := 16#86C6#;  
   GL_EVAL_VERTEX_ATTRIB1_NV : constant := 16#86C7#;  
   GL_EVAL_VERTEX_ATTRIB2_NV : constant := 16#86C8#;  
   GL_EVAL_VERTEX_ATTRIB3_NV : constant := 16#86C9#;  
   GL_EVAL_VERTEX_ATTRIB4_NV : constant := 16#86CA#;  
   GL_EVAL_VERTEX_ATTRIB5_NV : constant := 16#86CB#;  
   GL_EVAL_VERTEX_ATTRIB6_NV : constant := 16#86CC#;  
   GL_EVAL_VERTEX_ATTRIB7_NV : constant := 16#86CD#;  
   GL_EVAL_VERTEX_ATTRIB8_NV : constant := 16#86CE#;  
   GL_EVAL_VERTEX_ATTRIB9_NV : constant := 16#86CF#;  
   GL_EVAL_VERTEX_ATTRIB10_NV : constant := 16#86D0#;  
   GL_EVAL_VERTEX_ATTRIB11_NV : constant := 16#86D1#;  
   GL_EVAL_VERTEX_ATTRIB12_NV : constant := 16#86D2#;  
   GL_EVAL_VERTEX_ATTRIB13_NV : constant := 16#86D3#;  
   GL_EVAL_VERTEX_ATTRIB14_NV : constant := 16#86D4#;  
   GL_EVAL_VERTEX_ATTRIB15_NV : constant := 16#86D5#;  
   GL_MAX_MAP_TESSELLATION_NV : constant := 16#86D6#;  
   GL_MAX_RATIONAL_EVAL_ORDER_NV : constant := 16#86D7#;  

   GL_DEPTH_STENCIL_NV : constant := 16#84F9#;  
   GL_UNSIGNED_INT_24_8_NV : constant := 16#84FA#;  

   GL_PER_STAGE_CONSTANTS_NV : constant := 16#8535#;  

   GL_TEXTURE_RECTANGLE_NV : constant := 16#84F5#;  
   GL_TEXTURE_BINDING_RECTANGLE_NV : constant := 16#84F6#;  
   GL_PROXY_TEXTURE_RECTANGLE_NV : constant := 16#84F7#;  
   GL_MAX_RECTANGLE_TEXTURE_SIZE_NV : constant := 16#84F8#;  

   GL_OFFSET_TEXTURE_RECTANGLE_NV : constant := 16#864C#;  
   GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV : constant := 16#864D#;  
   GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV : constant := 16#864E#;  
   GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV : constant := 16#86D9#;  
   GL_UNSIGNED_INT_S8_S8_8_8_NV : constant := 16#86DA#;  
   GL_UNSIGNED_INT_8_8_S8_S8_REV_NV : constant := 16#86DB#;  
   GL_DSDT_MAG_INTENSITY_NV : constant := 16#86DC#;  
   GL_SHADER_CONSISTENT_NV : constant := 16#86DD#;  
   GL_TEXTURE_SHADER_NV : constant := 16#86DE#;  
   GL_SHADER_OPERATION_NV : constant := 16#86DF#;  
   GL_CULL_MODES_NV : constant := 16#86E0#;  
   GL_OFFSET_TEXTURE_MATRIX_NV : constant := 16#86E1#;  
   GL_OFFSET_TEXTURE_SCALE_NV : constant := 16#86E2#;  
   GL_OFFSET_TEXTURE_BIAS_NV : constant := 16#86E3#;  
   --  unsupported macro: GL_OFFSET_TEXTURE_2D_MATRIX_NV GL_OFFSET_TEXTURE_MATRIX_NV
   --  unsupported macro: GL_OFFSET_TEXTURE_2D_SCALE_NV GL_OFFSET_TEXTURE_SCALE_NV
   --  unsupported macro: GL_OFFSET_TEXTURE_2D_BIAS_NV GL_OFFSET_TEXTURE_BIAS_NV

   GL_PREVIOUS_TEXTURE_INPUT_NV : constant := 16#86E4#;  
   GL_CONST_EYE_NV : constant := 16#86E5#;  
   GL_PASS_THROUGH_NV : constant := 16#86E6#;  
   GL_CULL_FRAGMENT_NV : constant := 16#86E7#;  
   GL_OFFSET_TEXTURE_2D_NV : constant := 16#86E8#;  
   GL_DEPENDENT_AR_TEXTURE_2D_NV : constant := 16#86E9#;  
   GL_DEPENDENT_GB_TEXTURE_2D_NV : constant := 16#86EA#;  
   GL_DOT_PRODUCT_NV : constant := 16#86EC#;  
   GL_DOT_PRODUCT_DEPTH_REPLACE_NV : constant := 16#86ED#;  
   GL_DOT_PRODUCT_TEXTURE_2D_NV : constant := 16#86EE#;  
   GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV : constant := 16#86F0#;  
   GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV : constant := 16#86F1#;  
   GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV : constant := 16#86F2#;  
   GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV : constant := 16#86F3#;  
   GL_HILO_NV : constant := 16#86F4#;  
   GL_DSDT_NV : constant := 16#86F5#;  
   GL_DSDT_MAG_NV : constant := 16#86F6#;  
   GL_DSDT_MAG_VIB_NV : constant := 16#86F7#;  
   GL_HILO16_NV : constant := 16#86F8#;  
   GL_SIGNED_HILO_NV : constant := 16#86F9#;  
   GL_SIGNED_HILO16_NV : constant := 16#86FA#;  
   GL_SIGNED_RGBA_NV : constant := 16#86FB#;  
   GL_SIGNED_RGBA8_NV : constant := 16#86FC#;  
   GL_SIGNED_RGB_NV : constant := 16#86FE#;  
   GL_SIGNED_RGB8_NV : constant := 16#86FF#;  
   GL_SIGNED_LUMINANCE_NV : constant := 16#8701#;  
   GL_SIGNED_LUMINANCE8_NV : constant := 16#8702#;  
   GL_SIGNED_LUMINANCE_ALPHA_NV : constant := 16#8703#;  
   GL_SIGNED_LUMINANCE8_ALPHA8_NV : constant := 16#8704#;  
   GL_SIGNED_ALPHA_NV : constant := 16#8705#;  
   GL_SIGNED_ALPHA8_NV : constant := 16#8706#;  
   GL_SIGNED_INTENSITY_NV : constant := 16#8707#;  
   GL_SIGNED_INTENSITY8_NV : constant := 16#8708#;  
   GL_DSDT8_NV : constant := 16#8709#;  
   GL_DSDT8_MAG8_NV : constant := 16#870A#;  
   GL_DSDT8_MAG8_INTENSITY8_NV : constant := 16#870B#;  
   GL_SIGNED_RGB_UNSIGNED_ALPHA_NV : constant := 16#870C#;  
   GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV : constant := 16#870D#;  
   GL_HI_SCALE_NV : constant := 16#870E#;  
   GL_LO_SCALE_NV : constant := 16#870F#;  
   GL_DS_SCALE_NV : constant := 16#8710#;  
   GL_DT_SCALE_NV : constant := 16#8711#;  
   GL_MAGNITUDE_SCALE_NV : constant := 16#8712#;  
   GL_VIBRANCE_SCALE_NV : constant := 16#8713#;  
   GL_HI_BIAS_NV : constant := 16#8714#;  
   GL_LO_BIAS_NV : constant := 16#8715#;  
   GL_DS_BIAS_NV : constant := 16#8716#;  
   GL_DT_BIAS_NV : constant := 16#8717#;  
   GL_MAGNITUDE_BIAS_NV : constant := 16#8718#;  
   GL_VIBRANCE_BIAS_NV : constant := 16#8719#;  
   GL_TEXTURE_BORDER_VALUES_NV : constant := 16#871A#;  
   GL_TEXTURE_HI_SIZE_NV : constant := 16#871B#;  
   GL_TEXTURE_LO_SIZE_NV : constant := 16#871C#;  
   GL_TEXTURE_DS_SIZE_NV : constant := 16#871D#;  
   GL_TEXTURE_DT_SIZE_NV : constant := 16#871E#;  
   GL_TEXTURE_MAG_SIZE_NV : constant := 16#871F#;  

   GL_DOT_PRODUCT_TEXTURE_3D_NV : constant := 16#86EF#;  

   GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV : constant := 16#8533#;  

   GL_VERTEX_PROGRAM_NV : constant := 16#8620#;  
   GL_VERTEX_STATE_PROGRAM_NV : constant := 16#8621#;  
   GL_ATTRIB_ARRAY_SIZE_NV : constant := 16#8623#;  
   GL_ATTRIB_ARRAY_STRIDE_NV : constant := 16#8624#;  
   GL_ATTRIB_ARRAY_TYPE_NV : constant := 16#8625#;  
   GL_CURRENT_ATTRIB_NV : constant := 16#8626#;  
   GL_PROGRAM_LENGTH_NV : constant := 16#8627#;  
   GL_PROGRAM_STRING_NV : constant := 16#8628#;  
   GL_MODELVIEW_PROJECTION_NV : constant := 16#8629#;  
   GL_IDENTITY_NV : constant := 16#862A#;  
   GL_INVERSE_NV : constant := 16#862B#;  
   GL_TRANSPOSE_NV : constant := 16#862C#;  
   GL_INVERSE_TRANSPOSE_NV : constant := 16#862D#;  
   GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV : constant := 16#862E#;  
   GL_MAX_TRACK_MATRICES_NV : constant := 16#862F#;  
   GL_MATRIX0_NV : constant := 16#8630#;  
   GL_MATRIX1_NV : constant := 16#8631#;  
   GL_MATRIX2_NV : constant := 16#8632#;  
   GL_MATRIX3_NV : constant := 16#8633#;  
   GL_MATRIX4_NV : constant := 16#8634#;  
   GL_MATRIX5_NV : constant := 16#8635#;  
   GL_MATRIX6_NV : constant := 16#8636#;  
   GL_MATRIX7_NV : constant := 16#8637#;  
   GL_CURRENT_MATRIX_STACK_DEPTH_NV : constant := 16#8640#;  
   GL_CURRENT_MATRIX_NV : constant := 16#8641#;  
   GL_VERTEX_PROGRAM_POINT_SIZE_NV : constant := 16#8642#;  
   GL_VERTEX_PROGRAM_TWO_SIDE_NV : constant := 16#8643#;  
   GL_PROGRAM_PARAMETER_NV : constant := 16#8644#;  
   GL_ATTRIB_ARRAY_POINTER_NV : constant := 16#8645#;  
   GL_PROGRAM_TARGET_NV : constant := 16#8646#;  
   GL_PROGRAM_RESIDENT_NV : constant := 16#8647#;  
   GL_TRACK_MATRIX_NV : constant := 16#8648#;  
   GL_TRACK_MATRIX_TRANSFORM_NV : constant := 16#8649#;  
   GL_VERTEX_PROGRAM_BINDING_NV : constant := 16#864A#;  
   GL_PROGRAM_ERROR_POSITION_NV : constant := 16#864B#;  
   GL_VERTEX_ATTRIB_ARRAY0_NV : constant := 16#8650#;  
   GL_VERTEX_ATTRIB_ARRAY1_NV : constant := 16#8651#;  
   GL_VERTEX_ATTRIB_ARRAY2_NV : constant := 16#8652#;  
   GL_VERTEX_ATTRIB_ARRAY3_NV : constant := 16#8653#;  
   GL_VERTEX_ATTRIB_ARRAY4_NV : constant := 16#8654#;  
   GL_VERTEX_ATTRIB_ARRAY5_NV : constant := 16#8655#;  
   GL_VERTEX_ATTRIB_ARRAY6_NV : constant := 16#8656#;  
   GL_VERTEX_ATTRIB_ARRAY7_NV : constant := 16#8657#;  
   GL_VERTEX_ATTRIB_ARRAY8_NV : constant := 16#8658#;  
   GL_VERTEX_ATTRIB_ARRAY9_NV : constant := 16#8659#;  
   GL_VERTEX_ATTRIB_ARRAY10_NV : constant := 16#865A#;  
   GL_VERTEX_ATTRIB_ARRAY11_NV : constant := 16#865B#;  
   GL_VERTEX_ATTRIB_ARRAY12_NV : constant := 16#865C#;  
   GL_VERTEX_ATTRIB_ARRAY13_NV : constant := 16#865D#;  
   GL_VERTEX_ATTRIB_ARRAY14_NV : constant := 16#865E#;  
   GL_VERTEX_ATTRIB_ARRAY15_NV : constant := 16#865F#;  
   GL_MAP1_VERTEX_ATTRIB0_4_NV : constant := 16#8660#;  
   GL_MAP1_VERTEX_ATTRIB1_4_NV : constant := 16#8661#;  
   GL_MAP1_VERTEX_ATTRIB2_4_NV : constant := 16#8662#;  
   GL_MAP1_VERTEX_ATTRIB3_4_NV : constant := 16#8663#;  
   GL_MAP1_VERTEX_ATTRIB4_4_NV : constant := 16#8664#;  
   GL_MAP1_VERTEX_ATTRIB5_4_NV : constant := 16#8665#;  
   GL_MAP1_VERTEX_ATTRIB6_4_NV : constant := 16#8666#;  
   GL_MAP1_VERTEX_ATTRIB7_4_NV : constant := 16#8667#;  
   GL_MAP1_VERTEX_ATTRIB8_4_NV : constant := 16#8668#;  
   GL_MAP1_VERTEX_ATTRIB9_4_NV : constant := 16#8669#;  
   GL_MAP1_VERTEX_ATTRIB10_4_NV : constant := 16#866A#;  
   GL_MAP1_VERTEX_ATTRIB11_4_NV : constant := 16#866B#;  
   GL_MAP1_VERTEX_ATTRIB12_4_NV : constant := 16#866C#;  
   GL_MAP1_VERTEX_ATTRIB13_4_NV : constant := 16#866D#;  
   GL_MAP1_VERTEX_ATTRIB14_4_NV : constant := 16#866E#;  
   GL_MAP1_VERTEX_ATTRIB15_4_NV : constant := 16#866F#;  
   GL_MAP2_VERTEX_ATTRIB0_4_NV : constant := 16#8670#;  
   GL_MAP2_VERTEX_ATTRIB1_4_NV : constant := 16#8671#;  
   GL_MAP2_VERTEX_ATTRIB2_4_NV : constant := 16#8672#;  
   GL_MAP2_VERTEX_ATTRIB3_4_NV : constant := 16#8673#;  
   GL_MAP2_VERTEX_ATTRIB4_4_NV : constant := 16#8674#;  
   GL_MAP2_VERTEX_ATTRIB5_4_NV : constant := 16#8675#;  
   GL_MAP2_VERTEX_ATTRIB6_4_NV : constant := 16#8676#;  
   GL_MAP2_VERTEX_ATTRIB7_4_NV : constant := 16#8677#;  
   GL_MAP2_VERTEX_ATTRIB8_4_NV : constant := 16#8678#;  
   GL_MAP2_VERTEX_ATTRIB9_4_NV : constant := 16#8679#;  
   GL_MAP2_VERTEX_ATTRIB10_4_NV : constant := 16#867A#;  
   GL_MAP2_VERTEX_ATTRIB11_4_NV : constant := 16#867B#;  
   GL_MAP2_VERTEX_ATTRIB12_4_NV : constant := 16#867C#;  
   GL_MAP2_VERTEX_ATTRIB13_4_NV : constant := 16#867D#;  
   GL_MAP2_VERTEX_ATTRIB14_4_NV : constant := 16#867E#;  
   GL_MAP2_VERTEX_ATTRIB15_4_NV : constant := 16#867F#;  

   GL_TEXTURE_MAX_CLAMP_S_SGIX : constant := 16#8369#;  
   GL_TEXTURE_MAX_CLAMP_T_SGIX : constant := 16#836A#;  
   GL_TEXTURE_MAX_CLAMP_R_SGIX : constant := 16#836B#;  

   GL_SCALEBIAS_HINT_SGIX : constant := 16#8322#;  

   GL_INTERLACE_OML : constant := 16#8980#;  
   GL_INTERLACE_READ_OML : constant := 16#8981#;  

   GL_FORMAT_SUBSAMPLE_24_24_OML : constant := 16#8982#;  
   GL_FORMAT_SUBSAMPLE_244_244_OML : constant := 16#8983#;  

   GL_PACK_RESAMPLE_OML : constant := 16#8984#;  
   GL_UNPACK_RESAMPLE_OML : constant := 16#8985#;  
   GL_RESAMPLE_REPLICATE_OML : constant := 16#8986#;  
   GL_RESAMPLE_ZERO_FILL_OML : constant := 16#8987#;  
   GL_RESAMPLE_AVERAGE_OML : constant := 16#8988#;  
   GL_RESAMPLE_DECIMATE_OML : constant := 16#8989#;  

   GL_DEPTH_STENCIL_TO_RGBA_NV : constant := 16#886E#;  
   GL_DEPTH_STENCIL_TO_BGRA_NV : constant := 16#886F#;  

   GL_BUMP_ROT_MATRIX_ATI : constant := 16#8775#;  
   GL_BUMP_ROT_MATRIX_SIZE_ATI : constant := 16#8776#;  
   GL_BUMP_NUM_TEX_UNITS_ATI : constant := 16#8777#;  
   GL_BUMP_TEX_UNITS_ATI : constant := 16#8778#;  
   GL_DUDV_ATI : constant := 16#8779#;  
   GL_DU8DV8_ATI : constant := 16#877A#;  
   GL_BUMP_ENVMAP_ATI : constant := 16#877B#;  
   GL_BUMP_TARGET_ATI : constant := 16#877C#;  

   GL_FRAGMENT_SHADER_ATI : constant := 16#8920#;  
   GL_REG_0_ATI : constant := 16#8921#;  
   GL_REG_1_ATI : constant := 16#8922#;  
   GL_REG_2_ATI : constant := 16#8923#;  
   GL_REG_3_ATI : constant := 16#8924#;  
   GL_REG_4_ATI : constant := 16#8925#;  
   GL_REG_5_ATI : constant := 16#8926#;  
   GL_REG_6_ATI : constant := 16#8927#;  
   GL_REG_7_ATI : constant := 16#8928#;  
   GL_REG_8_ATI : constant := 16#8929#;  
   GL_REG_9_ATI : constant := 16#892A#;  
   GL_REG_10_ATI : constant := 16#892B#;  
   GL_REG_11_ATI : constant := 16#892C#;  
   GL_REG_12_ATI : constant := 16#892D#;  
   GL_REG_13_ATI : constant := 16#892E#;  
   GL_REG_14_ATI : constant := 16#892F#;  
   GL_REG_15_ATI : constant := 16#8930#;  
   GL_REG_16_ATI : constant := 16#8931#;  
   GL_REG_17_ATI : constant := 16#8932#;  
   GL_REG_18_ATI : constant := 16#8933#;  
   GL_REG_19_ATI : constant := 16#8934#;  
   GL_REG_20_ATI : constant := 16#8935#;  
   GL_REG_21_ATI : constant := 16#8936#;  
   GL_REG_22_ATI : constant := 16#8937#;  
   GL_REG_23_ATI : constant := 16#8938#;  
   GL_REG_24_ATI : constant := 16#8939#;  
   GL_REG_25_ATI : constant := 16#893A#;  
   GL_REG_26_ATI : constant := 16#893B#;  
   GL_REG_27_ATI : constant := 16#893C#;  
   GL_REG_28_ATI : constant := 16#893D#;  
   GL_REG_29_ATI : constant := 16#893E#;  
   GL_REG_30_ATI : constant := 16#893F#;  
   GL_REG_31_ATI : constant := 16#8940#;  
   GL_CON_0_ATI : constant := 16#8941#;  
   GL_CON_1_ATI : constant := 16#8942#;  
   GL_CON_2_ATI : constant := 16#8943#;  
   GL_CON_3_ATI : constant := 16#8944#;  
   GL_CON_4_ATI : constant := 16#8945#;  
   GL_CON_5_ATI : constant := 16#8946#;  
   GL_CON_6_ATI : constant := 16#8947#;  
   GL_CON_7_ATI : constant := 16#8948#;  
   GL_CON_8_ATI : constant := 16#8949#;  
   GL_CON_9_ATI : constant := 16#894A#;  
   GL_CON_10_ATI : constant := 16#894B#;  
   GL_CON_11_ATI : constant := 16#894C#;  
   GL_CON_12_ATI : constant := 16#894D#;  
   GL_CON_13_ATI : constant := 16#894E#;  
   GL_CON_14_ATI : constant := 16#894F#;  
   GL_CON_15_ATI : constant := 16#8950#;  
   GL_CON_16_ATI : constant := 16#8951#;  
   GL_CON_17_ATI : constant := 16#8952#;  
   GL_CON_18_ATI : constant := 16#8953#;  
   GL_CON_19_ATI : constant := 16#8954#;  
   GL_CON_20_ATI : constant := 16#8955#;  
   GL_CON_21_ATI : constant := 16#8956#;  
   GL_CON_22_ATI : constant := 16#8957#;  
   GL_CON_23_ATI : constant := 16#8958#;  
   GL_CON_24_ATI : constant := 16#8959#;  
   GL_CON_25_ATI : constant := 16#895A#;  
   GL_CON_26_ATI : constant := 16#895B#;  
   GL_CON_27_ATI : constant := 16#895C#;  
   GL_CON_28_ATI : constant := 16#895D#;  
   GL_CON_29_ATI : constant := 16#895E#;  
   GL_CON_30_ATI : constant := 16#895F#;  
   GL_CON_31_ATI : constant := 16#8960#;  
   GL_MOV_ATI : constant := 16#8961#;  
   GL_ADD_ATI : constant := 16#8963#;  
   GL_MUL_ATI : constant := 16#8964#;  
   GL_SUB_ATI : constant := 16#8965#;  
   GL_DOT3_ATI : constant := 16#8966#;  
   GL_DOT4_ATI : constant := 16#8967#;  
   GL_MAD_ATI : constant := 16#8968#;  
   GL_LERP_ATI : constant := 16#8969#;  
   GL_CND_ATI : constant := 16#896A#;  
   GL_CND0_ATI : constant := 16#896B#;  
   GL_DOT2_ADD_ATI : constant := 16#896C#;  
   GL_SECONDARY_INTERPOLATOR_ATI : constant := 16#896D#;  
   GL_NUM_FRAGMENT_REGISTERS_ATI : constant := 16#896E#;  
   GL_NUM_FRAGMENT_CONSTANTS_ATI : constant := 16#896F#;  
   GL_NUM_PASSES_ATI : constant := 16#8970#;  
   GL_NUM_INSTRUCTIONS_PER_PASS_ATI : constant := 16#8971#;  
   GL_NUM_INSTRUCTIONS_TOTAL_ATI : constant := 16#8972#;  
   GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI : constant := 16#8973#;  
   GL_NUM_LOOPBACK_COMPONENTS_ATI : constant := 16#8974#;  
   GL_COLOR_ALPHA_PAIRING_ATI : constant := 16#8975#;  
   GL_SWIZZLE_STR_ATI : constant := 16#8976#;  
   GL_SWIZZLE_STQ_ATI : constant := 16#8977#;  
   GL_SWIZZLE_STR_DR_ATI : constant := 16#8978#;  
   GL_SWIZZLE_STQ_DQ_ATI : constant := 16#8979#;  
   GL_SWIZZLE_STRQ_ATI : constant := 16#897A#;  
   GL_SWIZZLE_STRQ_DQ_ATI : constant := 16#897B#;  
   GL_RED_BIT_ATI : constant := 16#00000001#;  
   GL_GREEN_BIT_ATI : constant := 16#00000002#;  
   GL_BLUE_BIT_ATI : constant := 16#00000004#;  
   GL_2X_BIT_ATI : constant := 16#00000001#;  
   GL_4X_BIT_ATI : constant := 16#00000002#;  
   GL_8X_BIT_ATI : constant := 16#00000004#;  
   GL_HALF_BIT_ATI : constant := 16#00000008#;  
   GL_QUARTER_BIT_ATI : constant := 16#00000010#;  
   GL_EIGHTH_BIT_ATI : constant := 16#00000020#;  
   GL_SATURATE_BIT_ATI : constant := 16#00000040#;  
   GL_COMP_BIT_ATI : constant := 16#00000002#;  
   GL_NEGATE_BIT_ATI : constant := 16#00000004#;  
   GL_BIAS_BIT_ATI : constant := 16#00000008#;  

   GL_PN_TRIANGLES_ATI : constant := 16#87F0#;  
   GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI : constant := 16#87F1#;  
   GL_PN_TRIANGLES_POINT_MODE_ATI : constant := 16#87F2#;  
   GL_PN_TRIANGLES_NORMAL_MODE_ATI : constant := 16#87F3#;  
   GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI : constant := 16#87F4#;  
   GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI : constant := 16#87F5#;  
   GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI : constant := 16#87F6#;  
   GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI : constant := 16#87F7#;  
   GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI : constant := 16#87F8#;  

   GL_STATIC_ATI : constant := 16#8760#;  
   GL_DYNAMIC_ATI : constant := 16#8761#;  
   GL_PRESERVE_ATI : constant := 16#8762#;  
   GL_DISCARD_ATI : constant := 16#8763#;  
   GL_OBJECT_BUFFER_SIZE_ATI : constant := 16#8764#;  
   GL_OBJECT_BUFFER_USAGE_ATI : constant := 16#8765#;  
   GL_ARRAY_OBJECT_BUFFER_ATI : constant := 16#8766#;  
   GL_ARRAY_OBJECT_OFFSET_ATI : constant := 16#8767#;  

   GL_VERTEX_SHADER_EXT : constant := 16#8780#;  
   GL_VERTEX_SHADER_BINDING_EXT : constant := 16#8781#;  
   GL_OP_INDEX_EXT : constant := 16#8782#;  
   GL_OP_NEGATE_EXT : constant := 16#8783#;  
   GL_OP_DOT3_EXT : constant := 16#8784#;  
   GL_OP_DOT4_EXT : constant := 16#8785#;  
   GL_OP_MUL_EXT : constant := 16#8786#;  
   GL_OP_ADD_EXT : constant := 16#8787#;  
   GL_OP_MADD_EXT : constant := 16#8788#;  
   GL_OP_FRAC_EXT : constant := 16#8789#;  
   GL_OP_MAX_EXT : constant := 16#878A#;  
   GL_OP_MIN_EXT : constant := 16#878B#;  
   GL_OP_SET_GE_EXT : constant := 16#878C#;  
   GL_OP_SET_LT_EXT : constant := 16#878D#;  
   GL_OP_CLAMP_EXT : constant := 16#878E#;  
   GL_OP_FLOOR_EXT : constant := 16#878F#;  
   GL_OP_ROUND_EXT : constant := 16#8790#;  
   GL_OP_EXP_BASE_2_EXT : constant := 16#8791#;  
   GL_OP_LOG_BASE_2_EXT : constant := 16#8792#;  
   GL_OP_POWER_EXT : constant := 16#8793#;  
   GL_OP_RECIP_EXT : constant := 16#8794#;  
   GL_OP_RECIP_SQRT_EXT : constant := 16#8795#;  
   GL_OP_SUB_EXT : constant := 16#8796#;  
   GL_OP_CROSS_PRODUCT_EXT : constant := 16#8797#;  
   GL_OP_MULTIPLY_MATRIX_EXT : constant := 16#8798#;  
   GL_OP_MOV_EXT : constant := 16#8799#;  
   GL_OUTPUT_VERTEX_EXT : constant := 16#879A#;  
   GL_OUTPUT_COLOR0_EXT : constant := 16#879B#;  
   GL_OUTPUT_COLOR1_EXT : constant := 16#879C#;  
   GL_OUTPUT_TEXTURE_COORD0_EXT : constant := 16#879D#;  
   GL_OUTPUT_TEXTURE_COORD1_EXT : constant := 16#879E#;  
   GL_OUTPUT_TEXTURE_COORD2_EXT : constant := 16#879F#;  
   GL_OUTPUT_TEXTURE_COORD3_EXT : constant := 16#87A0#;  
   GL_OUTPUT_TEXTURE_COORD4_EXT : constant := 16#87A1#;  
   GL_OUTPUT_TEXTURE_COORD5_EXT : constant := 16#87A2#;  
   GL_OUTPUT_TEXTURE_COORD6_EXT : constant := 16#87A3#;  
   GL_OUTPUT_TEXTURE_COORD7_EXT : constant := 16#87A4#;  
   GL_OUTPUT_TEXTURE_COORD8_EXT : constant := 16#87A5#;  
   GL_OUTPUT_TEXTURE_COORD9_EXT : constant := 16#87A6#;  
   GL_OUTPUT_TEXTURE_COORD10_EXT : constant := 16#87A7#;  
   GL_OUTPUT_TEXTURE_COORD11_EXT : constant := 16#87A8#;  
   GL_OUTPUT_TEXTURE_COORD12_EXT : constant := 16#87A9#;  
   GL_OUTPUT_TEXTURE_COORD13_EXT : constant := 16#87AA#;  
   GL_OUTPUT_TEXTURE_COORD14_EXT : constant := 16#87AB#;  
   GL_OUTPUT_TEXTURE_COORD15_EXT : constant := 16#87AC#;  
   GL_OUTPUT_TEXTURE_COORD16_EXT : constant := 16#87AD#;  
   GL_OUTPUT_TEXTURE_COORD17_EXT : constant := 16#87AE#;  
   GL_OUTPUT_TEXTURE_COORD18_EXT : constant := 16#87AF#;  
   GL_OUTPUT_TEXTURE_COORD19_EXT : constant := 16#87B0#;  
   GL_OUTPUT_TEXTURE_COORD20_EXT : constant := 16#87B1#;  
   GL_OUTPUT_TEXTURE_COORD21_EXT : constant := 16#87B2#;  
   GL_OUTPUT_TEXTURE_COORD22_EXT : constant := 16#87B3#;  
   GL_OUTPUT_TEXTURE_COORD23_EXT : constant := 16#87B4#;  
   GL_OUTPUT_TEXTURE_COORD24_EXT : constant := 16#87B5#;  
   GL_OUTPUT_TEXTURE_COORD25_EXT : constant := 16#87B6#;  
   GL_OUTPUT_TEXTURE_COORD26_EXT : constant := 16#87B7#;  
   GL_OUTPUT_TEXTURE_COORD27_EXT : constant := 16#87B8#;  
   GL_OUTPUT_TEXTURE_COORD28_EXT : constant := 16#87B9#;  
   GL_OUTPUT_TEXTURE_COORD29_EXT : constant := 16#87BA#;  
   GL_OUTPUT_TEXTURE_COORD30_EXT : constant := 16#87BB#;  
   GL_OUTPUT_TEXTURE_COORD31_EXT : constant := 16#87BC#;  
   GL_OUTPUT_FOG_EXT : constant := 16#87BD#;  
   GL_SCALAR_EXT : constant := 16#87BE#;  
   GL_VECTOR_EXT : constant := 16#87BF#;  
   GL_MATRIX_EXT : constant := 16#87C0#;  
   GL_VARIANT_EXT : constant := 16#87C1#;  
   GL_INVARIANT_EXT : constant := 16#87C2#;  
   GL_LOCAL_CONSTANT_EXT : constant := 16#87C3#;  
   GL_LOCAL_EXT : constant := 16#87C4#;  
   GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT : constant := 16#87C5#;  
   GL_MAX_VERTEX_SHADER_VARIANTS_EXT : constant := 16#87C6#;  
   GL_MAX_VERTEX_SHADER_INVARIANTS_EXT : constant := 16#87C7#;  
   GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT : constant := 16#87C8#;  
   GL_MAX_VERTEX_SHADER_LOCALS_EXT : constant := 16#87C9#;  
   GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT : constant := 16#87CA#;  
   GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT : constant := 16#87CB#;  
   GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT : constant := 16#87CC#;  
   GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT : constant := 16#87CD#;  
   GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT : constant := 16#87CE#;  
   GL_VERTEX_SHADER_INSTRUCTIONS_EXT : constant := 16#87CF#;  
   GL_VERTEX_SHADER_VARIANTS_EXT : constant := 16#87D0#;  
   GL_VERTEX_SHADER_INVARIANTS_EXT : constant := 16#87D1#;  
   GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT : constant := 16#87D2#;  
   GL_VERTEX_SHADER_LOCALS_EXT : constant := 16#87D3#;  
   GL_VERTEX_SHADER_OPTIMIZED_EXT : constant := 16#87D4#;  
   GL_X_EXT : constant := 16#87D5#;  
   GL_Y_EXT : constant := 16#87D6#;  
   GL_Z_EXT : constant := 16#87D7#;  
   GL_W_EXT : constant := 16#87D8#;  
   GL_NEGATIVE_X_EXT : constant := 16#87D9#;  
   GL_NEGATIVE_Y_EXT : constant := 16#87DA#;  
   GL_NEGATIVE_Z_EXT : constant := 16#87DB#;  
   GL_NEGATIVE_W_EXT : constant := 16#87DC#;  
   GL_ZERO_EXT : constant := 16#87DD#;  
   GL_ONE_EXT : constant := 16#87DE#;  
   GL_NEGATIVE_ONE_EXT : constant := 16#87DF#;  
   GL_NORMALIZED_RANGE_EXT : constant := 16#87E0#;  
   GL_FULL_RANGE_EXT : constant := 16#87E1#;  
   GL_CURRENT_VERTEX_EXT : constant := 16#87E2#;  
   GL_MVP_MATRIX_EXT : constant := 16#87E3#;  
   GL_VARIANT_VALUE_EXT : constant := 16#87E4#;  
   GL_VARIANT_DATATYPE_EXT : constant := 16#87E5#;  
   GL_VARIANT_ARRAY_STRIDE_EXT : constant := 16#87E6#;  
   GL_VARIANT_ARRAY_TYPE_EXT : constant := 16#87E7#;  
   GL_VARIANT_ARRAY_EXT : constant := 16#87E8#;  
   GL_VARIANT_ARRAY_POINTER_EXT : constant := 16#87E9#;  
   GL_INVARIANT_VALUE_EXT : constant := 16#87EA#;  
   GL_INVARIANT_DATATYPE_EXT : constant := 16#87EB#;  
   GL_LOCAL_CONSTANT_VALUE_EXT : constant := 16#87EC#;  
   GL_LOCAL_CONSTANT_DATATYPE_EXT : constant := 16#87ED#;  

   GL_MAX_VERTEX_STREAMS_ATI : constant := 16#876B#;  
   GL_VERTEX_STREAM0_ATI : constant := 16#876C#;  
   GL_VERTEX_STREAM1_ATI : constant := 16#876D#;  
   GL_VERTEX_STREAM2_ATI : constant := 16#876E#;  
   GL_VERTEX_STREAM3_ATI : constant := 16#876F#;  
   GL_VERTEX_STREAM4_ATI : constant := 16#8770#;  
   GL_VERTEX_STREAM5_ATI : constant := 16#8771#;  
   GL_VERTEX_STREAM6_ATI : constant := 16#8772#;  
   GL_VERTEX_STREAM7_ATI : constant := 16#8773#;  
   GL_VERTEX_SOURCE_ATI : constant := 16#8774#;  

   GL_ELEMENT_ARRAY_ATI : constant := 16#8768#;  
   GL_ELEMENT_ARRAY_TYPE_ATI : constant := 16#8769#;  
   GL_ELEMENT_ARRAY_POINTER_ATI : constant := 16#876A#;  

   GL_QUAD_MESH_SUN : constant := 16#8614#;  
   GL_TRIANGLE_MESH_SUN : constant := 16#8615#;  

   GL_SLICE_ACCUM_SUN : constant := 16#85CC#;  

   GL_MULTISAMPLE_FILTER_HINT_NV : constant := 16#8534#;  

   GL_DEPTH_CLAMP_NV : constant := 16#864F#;  

   GL_PIXEL_COUNTER_BITS_NV : constant := 16#8864#;  
   GL_CURRENT_OCCLUSION_QUERY_ID_NV : constant := 16#8865#;  
   GL_PIXEL_COUNT_NV : constant := 16#8866#;  
   GL_PIXEL_COUNT_AVAILABLE_NV : constant := 16#8867#;  

   GL_POINT_SPRITE_NV : constant := 16#8861#;  
   GL_COORD_REPLACE_NV : constant := 16#8862#;  
   GL_POINT_SPRITE_R_MODE_NV : constant := 16#8863#;  

   GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV : constant := 16#8850#;  
   GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV : constant := 16#8851#;  
   GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV : constant := 16#8852#;  
   GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV : constant := 16#8853#;  
   GL_OFFSET_HILO_TEXTURE_2D_NV : constant := 16#8854#;  
   GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV : constant := 16#8855#;  
   GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV : constant := 16#8856#;  
   GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV : constant := 16#8857#;  
   GL_DEPENDENT_HILO_TEXTURE_2D_NV : constant := 16#8858#;  
   GL_DEPENDENT_RGB_TEXTURE_3D_NV : constant := 16#8859#;  
   GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV : constant := 16#885A#;  
   GL_DOT_PRODUCT_PASS_THROUGH_NV : constant := 16#885B#;  
   GL_DOT_PRODUCT_TEXTURE_1D_NV : constant := 16#885C#;  
   GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV : constant := 16#885D#;  
   GL_HILO8_NV : constant := 16#885E#;  
   GL_SIGNED_HILO8_NV : constant := 16#885F#;  
   GL_FORCE_BLUE_TO_ONE_NV : constant := 16#8860#;  

   GL_STENCIL_TEST_TWO_SIDE_EXT : constant := 16#8910#;  
   GL_ACTIVE_STENCIL_FACE_EXT : constant := 16#8911#;  

   GL_TEXT_FRAGMENT_SHADER_ATI : constant := 16#8200#;  

   GL_UNPACK_CLIENT_STORAGE_APPLE : constant := 16#85B2#;  

   GL_ELEMENT_ARRAY_APPLE : constant := 16#8A0C#;  
   GL_ELEMENT_ARRAY_TYPE_APPLE : constant := 16#8A0D#;  
   GL_ELEMENT_ARRAY_POINTER_APPLE : constant := 16#8A0E#;  

   GL_DRAW_PIXELS_APPLE : constant := 16#8A0A#;  
   GL_FENCE_APPLE : constant := 16#8A0B#;  

   GL_VERTEX_ARRAY_BINDING_APPLE : constant := 16#85B5#;  

   GL_VERTEX_ARRAY_RANGE_APPLE : constant := 16#851D#;  
   GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE : constant := 16#851E#;  
   GL_VERTEX_ARRAY_STORAGE_HINT_APPLE : constant := 16#851F#;  
   GL_VERTEX_ARRAY_RANGE_POINTER_APPLE : constant := 16#8521#;  
   GL_STORAGE_CLIENT_APPLE : constant := 16#85B4#;  
   GL_STORAGE_CACHED_APPLE : constant := 16#85BE#;  
   GL_STORAGE_SHARED_APPLE : constant := 16#85BF#;  

   GL_YCBCR_422_APPLE : constant := 16#85B9#;  
   GL_UNSIGNED_SHORT_8_8_APPLE : constant := 16#85BA#;  
   GL_UNSIGNED_SHORT_8_8_REV_APPLE : constant := 16#85BB#;  

   GL_RGB_S3TC : constant := 16#83A0#;  
   GL_RGB4_S3TC : constant := 16#83A1#;  
   GL_RGBA_S3TC : constant := 16#83A2#;  
   GL_RGBA4_S3TC : constant := 16#83A3#;  

   GL_MAX_DRAW_BUFFERS_ATI : constant := 16#8824#;  
   GL_DRAW_BUFFER0_ATI : constant := 16#8825#;  
   GL_DRAW_BUFFER1_ATI : constant := 16#8826#;  
   GL_DRAW_BUFFER2_ATI : constant := 16#8827#;  
   GL_DRAW_BUFFER3_ATI : constant := 16#8828#;  
   GL_DRAW_BUFFER4_ATI : constant := 16#8829#;  
   GL_DRAW_BUFFER5_ATI : constant := 16#882A#;  
   GL_DRAW_BUFFER6_ATI : constant := 16#882B#;  
   GL_DRAW_BUFFER7_ATI : constant := 16#882C#;  
   GL_DRAW_BUFFER8_ATI : constant := 16#882D#;  
   GL_DRAW_BUFFER9_ATI : constant := 16#882E#;  
   GL_DRAW_BUFFER10_ATI : constant := 16#882F#;  
   GL_DRAW_BUFFER11_ATI : constant := 16#8830#;  
   GL_DRAW_BUFFER12_ATI : constant := 16#8831#;  
   GL_DRAW_BUFFER13_ATI : constant := 16#8832#;  
   GL_DRAW_BUFFER14_ATI : constant := 16#8833#;  
   GL_DRAW_BUFFER15_ATI : constant := 16#8834#;  

   GL_TYPE_RGBA_FLOAT_ATI : constant := 16#8820#;  
   GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI : constant := 16#8835#;  

   GL_MODULATE_ADD_ATI : constant := 16#8744#;  
   GL_MODULATE_SIGNED_ADD_ATI : constant := 16#8745#;  
   GL_MODULATE_SUBTRACT_ATI : constant := 16#8746#;  

   GL_RGBA_FLOAT32_ATI : constant := 16#8814#;  
   GL_RGB_FLOAT32_ATI : constant := 16#8815#;  
   GL_ALPHA_FLOAT32_ATI : constant := 16#8816#;  
   GL_INTENSITY_FLOAT32_ATI : constant := 16#8817#;  
   GL_LUMINANCE_FLOAT32_ATI : constant := 16#8818#;  
   GL_LUMINANCE_ALPHA_FLOAT32_ATI : constant := 16#8819#;  
   GL_RGBA_FLOAT16_ATI : constant := 16#881A#;  
   GL_RGB_FLOAT16_ATI : constant := 16#881B#;  
   GL_ALPHA_FLOAT16_ATI : constant := 16#881C#;  
   GL_INTENSITY_FLOAT16_ATI : constant := 16#881D#;  
   GL_LUMINANCE_FLOAT16_ATI : constant := 16#881E#;  
   GL_LUMINANCE_ALPHA_FLOAT16_ATI : constant := 16#881F#;  

   GL_FLOAT_R_NV : constant := 16#8880#;  
   GL_FLOAT_RG_NV : constant := 16#8881#;  
   GL_FLOAT_RGB_NV : constant := 16#8882#;  
   GL_FLOAT_RGBA_NV : constant := 16#8883#;  
   GL_FLOAT_R16_NV : constant := 16#8884#;  
   GL_FLOAT_R32_NV : constant := 16#8885#;  
   GL_FLOAT_RG16_NV : constant := 16#8886#;  
   GL_FLOAT_RG32_NV : constant := 16#8887#;  
   GL_FLOAT_RGB16_NV : constant := 16#8888#;  
   GL_FLOAT_RGB32_NV : constant := 16#8889#;  
   GL_FLOAT_RGBA16_NV : constant := 16#888A#;  
   GL_FLOAT_RGBA32_NV : constant := 16#888B#;  
   GL_TEXTURE_FLOAT_COMPONENTS_NV : constant := 16#888C#;  
   GL_FLOAT_CLEAR_COLOR_VALUE_NV : constant := 16#888D#;  
   GL_FLOAT_RGBA_MODE_NV : constant := 16#888E#;  

   GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV : constant := 16#8868#;  
   GL_FRAGMENT_PROGRAM_NV : constant := 16#8870#;  
   GL_MAX_TEXTURE_COORDS_NV : constant := 16#8871#;  
   GL_MAX_TEXTURE_IMAGE_UNITS_NV : constant := 16#8872#;  
   GL_FRAGMENT_PROGRAM_BINDING_NV : constant := 16#8873#;  
   GL_PROGRAM_ERROR_STRING_NV : constant := 16#8874#;  

   GL_HALF_FLOAT_NV : constant := 16#140B#;  

   GL_WRITE_PIXEL_DATA_RANGE_NV : constant := 16#8878#;  
   GL_READ_PIXEL_DATA_RANGE_NV : constant := 16#8879#;  
   GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV : constant := 16#887A#;  
   GL_READ_PIXEL_DATA_RANGE_LENGTH_NV : constant := 16#887B#;  
   GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV : constant := 16#887C#;  
   GL_READ_PIXEL_DATA_RANGE_POINTER_NV : constant := 16#887D#;  

   GL_PRIMITIVE_RESTART_NV : constant := 16#8558#;  
   GL_PRIMITIVE_RESTART_INDEX_NV : constant := 16#8559#;  

   GL_TEXTURE_UNSIGNED_REMAP_MODE_NV : constant := 16#888F#;  

   GL_STENCIL_BACK_FUNC_ATI : constant := 16#8800#;  
   GL_STENCIL_BACK_FAIL_ATI : constant := 16#8801#;  
   GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI : constant := 16#8802#;  
   GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI : constant := 16#8803#;  

   GL_IMPLEMENTATION_COLOR_READ_TYPE_OES : constant := 16#8B9A#;  
   GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES : constant := 16#8B9B#;  

   GL_DEPTH_BOUNDS_TEST_EXT : constant := 16#8890#;  
   GL_DEPTH_BOUNDS_EXT : constant := 16#8891#;  

   GL_MIRROR_CLAMP_EXT : constant := 16#8742#;  
   GL_MIRROR_CLAMP_TO_EDGE_EXT : constant := 16#8743#;  
   GL_MIRROR_CLAMP_TO_BORDER_EXT : constant := 16#8912#;  

   GL_BLEND_EQUATION_RGB_EXT : constant := 16#8009#;  
   GL_BLEND_EQUATION_ALPHA_EXT : constant := 16#883D#;  

   GL_PACK_INVERT_MESA : constant := 16#8758#;  

   GL_UNSIGNED_SHORT_8_8_MESA : constant := 16#85BA#;  
   GL_UNSIGNED_SHORT_8_8_REV_MESA : constant := 16#85BB#;  
   GL_YCBCR_MESA : constant := 16#8757#;  

   GL_PIXEL_PACK_BUFFER_EXT : constant := 16#88EB#;  
   GL_PIXEL_UNPACK_BUFFER_EXT : constant := 16#88EC#;  
   GL_PIXEL_PACK_BUFFER_BINDING_EXT : constant := 16#88ED#;  
   GL_PIXEL_UNPACK_BUFFER_BINDING_EXT : constant := 16#88EF#;  

   GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV : constant := 16#88F4#;  
   GL_MAX_PROGRAM_CALL_DEPTH_NV : constant := 16#88F5#;  
   GL_MAX_PROGRAM_IF_DEPTH_NV : constant := 16#88F6#;  
   GL_MAX_PROGRAM_LOOP_DEPTH_NV : constant := 16#88F7#;  
   GL_MAX_PROGRAM_LOOP_COUNT_NV : constant := 16#88F8#;  

   GL_INVALID_FRAMEBUFFER_OPERATION_EXT : constant := 16#0506#;  
   GL_MAX_RENDERBUFFER_SIZE_EXT : constant := 16#84E8#;  
   GL_FRAMEBUFFER_BINDING_EXT : constant := 16#8CA6#;  
   GL_RENDERBUFFER_BINDING_EXT : constant := 16#8CA7#;  
   GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT : constant := 16#8CD0#;  
   GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT : constant := 16#8CD1#;  
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT : constant := 16#8CD2#;  
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT : constant := 16#8CD3#;  
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT : constant := 16#8CD4#;  
   GL_FRAMEBUFFER_COMPLETE_EXT : constant := 16#8CD5#;  
   GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT : constant := 16#8CD6#;  
   GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT : constant := 16#8CD7#;  
   GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT : constant := 16#8CD9#;  
   GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT : constant := 16#8CDA#;  
   GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT : constant := 16#8CDB#;  
   GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT : constant := 16#8CDC#;  
   GL_FRAMEBUFFER_UNSUPPORTED_EXT : constant := 16#8CDD#;  
   GL_MAX_COLOR_ATTACHMENTS_EXT : constant := 16#8CDF#;  
   GL_COLOR_ATTACHMENT0_EXT : constant := 16#8CE0#;  
   GL_COLOR_ATTACHMENT1_EXT : constant := 16#8CE1#;  
   GL_COLOR_ATTACHMENT2_EXT : constant := 16#8CE2#;  
   GL_COLOR_ATTACHMENT3_EXT : constant := 16#8CE3#;  
   GL_COLOR_ATTACHMENT4_EXT : constant := 16#8CE4#;  
   GL_COLOR_ATTACHMENT5_EXT : constant := 16#8CE5#;  
   GL_COLOR_ATTACHMENT6_EXT : constant := 16#8CE6#;  
   GL_COLOR_ATTACHMENT7_EXT : constant := 16#8CE7#;  
   GL_COLOR_ATTACHMENT8_EXT : constant := 16#8CE8#;  
   GL_COLOR_ATTACHMENT9_EXT : constant := 16#8CE9#;  
   GL_COLOR_ATTACHMENT10_EXT : constant := 16#8CEA#;  
   GL_COLOR_ATTACHMENT11_EXT : constant := 16#8CEB#;  
   GL_COLOR_ATTACHMENT12_EXT : constant := 16#8CEC#;  
   GL_COLOR_ATTACHMENT13_EXT : constant := 16#8CED#;  
   GL_COLOR_ATTACHMENT14_EXT : constant := 16#8CEE#;  
   GL_COLOR_ATTACHMENT15_EXT : constant := 16#8CEF#;  
   GL_DEPTH_ATTACHMENT_EXT : constant := 16#8D00#;  
   GL_STENCIL_ATTACHMENT_EXT : constant := 16#8D20#;  
   GL_FRAMEBUFFER_EXT : constant := 16#8D40#;  
   GL_RENDERBUFFER_EXT : constant := 16#8D41#;  
   GL_RENDERBUFFER_WIDTH_EXT : constant := 16#8D42#;  
   GL_RENDERBUFFER_HEIGHT_EXT : constant := 16#8D43#;  
   GL_RENDERBUFFER_INTERNAL_FORMAT_EXT : constant := 16#8D44#;  
   GL_STENCIL_INDEX1_EXT : constant := 16#8D46#;  
   GL_STENCIL_INDEX4_EXT : constant := 16#8D47#;  
   GL_STENCIL_INDEX8_EXT : constant := 16#8D48#;  
   GL_STENCIL_INDEX16_EXT : constant := 16#8D49#;  
   GL_RENDERBUFFER_RED_SIZE_EXT : constant := 16#8D50#;  
   GL_RENDERBUFFER_GREEN_SIZE_EXT : constant := 16#8D51#;  
   GL_RENDERBUFFER_BLUE_SIZE_EXT : constant := 16#8D52#;  
   GL_RENDERBUFFER_ALPHA_SIZE_EXT : constant := 16#8D53#;  
   GL_RENDERBUFFER_DEPTH_SIZE_EXT : constant := 16#8D54#;  
   GL_RENDERBUFFER_STENCIL_SIZE_EXT : constant := 16#8D55#;  

   GL_DEPTH_STENCIL_EXT : constant := 16#84F9#;  
   GL_UNSIGNED_INT_24_8_EXT : constant := 16#84FA#;  
   GL_DEPTH24_STENCIL8_EXT : constant := 16#88F0#;  
   GL_TEXTURE_STENCIL_SIZE_EXT : constant := 16#88F1#;  

   GL_STENCIL_TAG_BITS_EXT : constant := 16#88F2#;  
   GL_STENCIL_CLEAR_TAG_VALUE_EXT : constant := 16#88F3#;  

   GL_SRGB_EXT : constant := 16#8C40#;  
   GL_SRGB8_EXT : constant := 16#8C41#;  
   GL_SRGB_ALPHA_EXT : constant := 16#8C42#;  
   GL_SRGB8_ALPHA8_EXT : constant := 16#8C43#;  
   GL_SLUMINANCE_ALPHA_EXT : constant := 16#8C44#;  
   GL_SLUMINANCE8_ALPHA8_EXT : constant := 16#8C45#;  
   GL_SLUMINANCE_EXT : constant := 16#8C46#;  
   GL_SLUMINANCE8_EXT : constant := 16#8C47#;  
   GL_COMPRESSED_SRGB_EXT : constant := 16#8C48#;  
   GL_COMPRESSED_SRGB_ALPHA_EXT : constant := 16#8C49#;  
   GL_COMPRESSED_SLUMINANCE_EXT : constant := 16#8C4A#;  
   GL_COMPRESSED_SLUMINANCE_ALPHA_EXT : constant := 16#8C4B#;  
   GL_COMPRESSED_SRGB_S3TC_DXT1_EXT : constant := 16#8C4C#;  
   GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT : constant := 16#8C4D#;  
   GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT : constant := 16#8C4E#;  
   GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT : constant := 16#8C4F#;  

   GL_READ_FRAMEBUFFER_EXT : constant := 16#8CA8#;  
   GL_DRAW_FRAMEBUFFER_EXT : constant := 16#8CA9#;  
   --  unsupported macro: GL_DRAW_FRAMEBUFFER_BINDING_EXT GL_FRAMEBUFFER_BINDING_EXT

   GL_READ_FRAMEBUFFER_BINDING_EXT : constant := 16#8CAA#;  

   GL_RENDERBUFFER_SAMPLES_EXT : constant := 16#8CAB#;  
   GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT : constant := 16#8D56#;  
   GL_MAX_SAMPLES_EXT : constant := 16#8D57#;  

   GL_TEXTURE_1D_STACK_MESAX : constant := 16#8759#;  
   GL_TEXTURE_2D_STACK_MESAX : constant := 16#875A#;  
   GL_PROXY_TEXTURE_1D_STACK_MESAX : constant := 16#875B#;  
   GL_PROXY_TEXTURE_2D_STACK_MESAX : constant := 16#875C#;  
   GL_TEXTURE_1D_STACK_BINDING_MESAX : constant := 16#875D#;  
   GL_TEXTURE_2D_STACK_BINDING_MESAX : constant := 16#875E#;  

   GL_TIME_ELAPSED_EXT : constant := 16#88BF#;  

   GL_BUFFER_SERIALIZED_MODIFY_APPLE : constant := 16#8A12#;  
   GL_BUFFER_FLUSHING_UNMAP_APPLE : constant := 16#8A13#;  

   GL_MIN_PROGRAM_TEXEL_OFFSET_NV : constant := 16#8904#;  
   GL_MAX_PROGRAM_TEXEL_OFFSET_NV : constant := 16#8905#;  
   GL_PROGRAM_ATTRIB_COMPONENTS_NV : constant := 16#8906#;  
   GL_PROGRAM_RESULT_COMPONENTS_NV : constant := 16#8907#;  
   GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV : constant := 16#8908#;  
   GL_MAX_PROGRAM_RESULT_COMPONENTS_NV : constant := 16#8909#;  
   GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV : constant := 16#8DA5#;  
   GL_MAX_PROGRAM_GENERIC_RESULTS_NV : constant := 16#8DA6#;  

   GL_LINES_ADJACENCY_EXT : constant := 16#000A#;  
   GL_LINE_STRIP_ADJACENCY_EXT : constant := 16#000B#;  
   GL_TRIANGLES_ADJACENCY_EXT : constant := 16#000C#;  
   GL_TRIANGLE_STRIP_ADJACENCY_EXT : constant := 16#000D#;  
   GL_GEOMETRY_PROGRAM_NV : constant := 16#8C26#;  
   GL_MAX_PROGRAM_OUTPUT_VERTICES_NV : constant := 16#8C27#;  
   GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV : constant := 16#8C28#;  
   GL_GEOMETRY_VERTICES_OUT_EXT : constant := 16#8DDA#;  
   GL_GEOMETRY_INPUT_TYPE_EXT : constant := 16#8DDB#;  
   GL_GEOMETRY_OUTPUT_TYPE_EXT : constant := 16#8DDC#;  
   GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT : constant := 16#8C29#;  
   GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT : constant := 16#8DA7#;  
   GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT : constant := 16#8DA8#;  
   GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT : constant := 16#8DA9#;  
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT : constant := 16#8CD4#;  
   GL_PROGRAM_POINT_SIZE_EXT : constant := 16#8642#;  

   GL_GEOMETRY_SHADER_EXT : constant := 16#8DD9#;  

   GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT : constant := 16#8DDD#;  
   GL_MAX_VERTEX_VARYING_COMPONENTS_EXT : constant := 16#8DDE#;  
   GL_MAX_VARYING_COMPONENTS_EXT : constant := 16#8B4B#;  
   GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT : constant := 16#8DDF#;  
   GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT : constant := 16#8DE0#;  
   GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT : constant := 16#8DE1#;  

   GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV : constant := 16#88FD#;  

   GL_SAMPLER_1D_ARRAY_EXT : constant := 16#8DC0#;  
   GL_SAMPLER_2D_ARRAY_EXT : constant := 16#8DC1#;  
   GL_SAMPLER_BUFFER_EXT : constant := 16#8DC2#;  
   GL_SAMPLER_1D_ARRAY_SHADOW_EXT : constant := 16#8DC3#;  
   GL_SAMPLER_2D_ARRAY_SHADOW_EXT : constant := 16#8DC4#;  
   GL_SAMPLER_CUBE_SHADOW_EXT : constant := 16#8DC5#;  
   GL_UNSIGNED_INT_VEC2_EXT : constant := 16#8DC6#;  
   GL_UNSIGNED_INT_VEC3_EXT : constant := 16#8DC7#;  
   GL_UNSIGNED_INT_VEC4_EXT : constant := 16#8DC8#;  
   GL_INT_SAMPLER_1D_EXT : constant := 16#8DC9#;  
   GL_INT_SAMPLER_2D_EXT : constant := 16#8DCA#;  
   GL_INT_SAMPLER_3D_EXT : constant := 16#8DCB#;  
   GL_INT_SAMPLER_CUBE_EXT : constant := 16#8DCC#;  
   GL_INT_SAMPLER_2D_RECT_EXT : constant := 16#8DCD#;  
   GL_INT_SAMPLER_1D_ARRAY_EXT : constant := 16#8DCE#;  
   GL_INT_SAMPLER_2D_ARRAY_EXT : constant := 16#8DCF#;  
   GL_INT_SAMPLER_BUFFER_EXT : constant := 16#8DD0#;  
   GL_UNSIGNED_INT_SAMPLER_1D_EXT : constant := 16#8DD1#;  
   GL_UNSIGNED_INT_SAMPLER_2D_EXT : constant := 16#8DD2#;  
   GL_UNSIGNED_INT_SAMPLER_3D_EXT : constant := 16#8DD3#;  
   GL_UNSIGNED_INT_SAMPLER_CUBE_EXT : constant := 16#8DD4#;  
   GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT : constant := 16#8DD5#;  
   GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT : constant := 16#8DD6#;  
   GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT : constant := 16#8DD7#;  
   GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT : constant := 16#8DD8#;  

   GL_R11F_G11F_B10F_EXT : constant := 16#8C3A#;  
   GL_UNSIGNED_INT_10F_11F_11F_REV_EXT : constant := 16#8C3B#;  
   GL_RGBA_SIGNED_COMPONENTS_EXT : constant := 16#8C3C#;  

   GL_TEXTURE_1D_ARRAY_EXT : constant := 16#8C18#;  
   GL_PROXY_TEXTURE_1D_ARRAY_EXT : constant := 16#8C19#;  
   GL_TEXTURE_2D_ARRAY_EXT : constant := 16#8C1A#;  
   GL_PROXY_TEXTURE_2D_ARRAY_EXT : constant := 16#8C1B#;  
   GL_TEXTURE_BINDING_1D_ARRAY_EXT : constant := 16#8C1C#;  
   GL_TEXTURE_BINDING_2D_ARRAY_EXT : constant := 16#8C1D#;  
   GL_MAX_ARRAY_TEXTURE_LAYERS_EXT : constant := 16#88FF#;  
   GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT : constant := 16#884E#;  

   GL_TEXTURE_BUFFER_EXT : constant := 16#8C2A#;  
   GL_MAX_TEXTURE_BUFFER_SIZE_EXT : constant := 16#8C2B#;  
   GL_TEXTURE_BINDING_BUFFER_EXT : constant := 16#8C2C#;  
   GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT : constant := 16#8C2D#;  
   GL_TEXTURE_BUFFER_FORMAT_EXT : constant := 16#8C2E#;  

   GL_COMPRESSED_LUMINANCE_LATC1_EXT : constant := 16#8C70#;  
   GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT : constant := 16#8C71#;  
   GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT : constant := 16#8C72#;  
   GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT : constant := 16#8C73#;  

   GL_COMPRESSED_RED_RGTC1_EXT : constant := 16#8DBB#;  
   GL_COMPRESSED_SIGNED_RED_RGTC1_EXT : constant := 16#8DBC#;  
   GL_COMPRESSED_RED_GREEN_RGTC2_EXT : constant := 16#8DBD#;  
   GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT : constant := 16#8DBE#;  

   GL_RGB9_E5_EXT : constant := 16#8C3D#;  
   GL_UNSIGNED_INT_5_9_9_9_REV_EXT : constant := 16#8C3E#;  
   GL_TEXTURE_SHARED_SIZE_EXT : constant := 16#8C3F#;  

   GL_DEPTH_COMPONENT32F_NV : constant := 16#8DAB#;  
   GL_DEPTH32F_STENCIL8_NV : constant := 16#8DAC#;  
   GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV : constant := 16#8DAD#;  
   GL_DEPTH_BUFFER_FLOAT_MODE_NV : constant := 16#8DAF#;  

   GL_RENDERBUFFER_COVERAGE_SAMPLES_NV : constant := 16#8CAB#;  
   GL_RENDERBUFFER_COLOR_SAMPLES_NV : constant := 16#8E10#;  
   GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV : constant := 16#8E11#;  
   GL_MULTISAMPLE_COVERAGE_MODES_NV : constant := 16#8E12#;  

   GL_FRAMEBUFFER_SRGB_EXT : constant := 16#8DB9#;  
   GL_FRAMEBUFFER_SRGB_CAPABLE_EXT : constant := 16#8DBA#;  

   GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV : constant := 16#8DA0#;  
   GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV : constant := 16#8DA1#;  
   GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV : constant := 16#8DA2#;  
   GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV : constant := 16#8DA3#;  
   GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV : constant := 16#8DA4#;  

   GL_BACK_PRIMARY_COLOR_NV : constant := 16#8C77#;  
   GL_BACK_SECONDARY_COLOR_NV : constant := 16#8C78#;  
   GL_TEXTURE_COORD_NV : constant := 16#8C79#;  
   GL_CLIP_DISTANCE_NV : constant := 16#8C7A#;  
   GL_VERTEX_ID_NV : constant := 16#8C7B#;  
   GL_PRIMITIVE_ID_NV : constant := 16#8C7C#;  
   GL_GENERIC_ATTRIB_NV : constant := 16#8C7D#;  
   GL_TRANSFORM_FEEDBACK_ATTRIBS_NV : constant := 16#8C7E#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV : constant := 16#8C7F#;  
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV : constant := 16#8C80#;  
   GL_ACTIVE_VARYINGS_NV : constant := 16#8C81#;  
   GL_ACTIVE_VARYING_MAX_LENGTH_NV : constant := 16#8C82#;  
   GL_TRANSFORM_FEEDBACK_VARYINGS_NV : constant := 16#8C83#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_START_NV : constant := 16#8C84#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV : constant := 16#8C85#;  
   GL_TRANSFORM_FEEDBACK_RECORD_NV : constant := 16#8C86#;  
   GL_PRIMITIVES_GENERATED_NV : constant := 16#8C87#;  
   GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV : constant := 16#8C88#;  
   GL_RASTERIZER_DISCARD_NV : constant := 16#8C89#;  
   GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_ATTRIBS_NV : constant := 16#8C8A#;  
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV : constant := 16#8C8B#;  
   GL_INTERLEAVED_ATTRIBS_NV : constant := 16#8C8C#;  
   GL_SEPARATE_ATTRIBS_NV : constant := 16#8C8D#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_NV : constant := 16#8C8E#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV : constant := 16#8C8F#;  
   GL_LAYER_NV : constant := 16#8DAA#;  
   GL_NEXT_BUFFER_NV : constant := -2;  
   GL_SKIP_COMPONENTS4_NV : constant := -3;  
   GL_SKIP_COMPONENTS3_NV : constant := -4;  
   GL_SKIP_COMPONENTS2_NV : constant := -5;  
   GL_SKIP_COMPONENTS1_NV : constant := -6;  

   GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT : constant := 16#8DE2#;  
   GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT : constant := 16#8DE3#;  
   GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT : constant := 16#8DE4#;  
   GL_MAX_BINDABLE_UNIFORM_SIZE_EXT : constant := 16#8DED#;  
   GL_UNIFORM_BUFFER_EXT : constant := 16#8DEE#;  
   GL_UNIFORM_BUFFER_BINDING_EXT : constant := 16#8DEF#;  

   GL_RGBA32UI_EXT : constant := 16#8D70#;  
   GL_RGB32UI_EXT : constant := 16#8D71#;  
   GL_ALPHA32UI_EXT : constant := 16#8D72#;  
   GL_INTENSITY32UI_EXT : constant := 16#8D73#;  
   GL_LUMINANCE32UI_EXT : constant := 16#8D74#;  
   GL_LUMINANCE_ALPHA32UI_EXT : constant := 16#8D75#;  
   GL_RGBA16UI_EXT : constant := 16#8D76#;  
   GL_RGB16UI_EXT : constant := 16#8D77#;  
   GL_ALPHA16UI_EXT : constant := 16#8D78#;  
   GL_INTENSITY16UI_EXT : constant := 16#8D79#;  
   GL_LUMINANCE16UI_EXT : constant := 16#8D7A#;  
   GL_LUMINANCE_ALPHA16UI_EXT : constant := 16#8D7B#;  
   GL_RGBA8UI_EXT : constant := 16#8D7C#;  
   GL_RGB8UI_EXT : constant := 16#8D7D#;  
   GL_ALPHA8UI_EXT : constant := 16#8D7E#;  
   GL_INTENSITY8UI_EXT : constant := 16#8D7F#;  
   GL_LUMINANCE8UI_EXT : constant := 16#8D80#;  
   GL_LUMINANCE_ALPHA8UI_EXT : constant := 16#8D81#;  
   GL_RGBA32I_EXT : constant := 16#8D82#;  
   GL_RGB32I_EXT : constant := 16#8D83#;  
   GL_ALPHA32I_EXT : constant := 16#8D84#;  
   GL_INTENSITY32I_EXT : constant := 16#8D85#;  
   GL_LUMINANCE32I_EXT : constant := 16#8D86#;  
   GL_LUMINANCE_ALPHA32I_EXT : constant := 16#8D87#;  
   GL_RGBA16I_EXT : constant := 16#8D88#;  
   GL_RGB16I_EXT : constant := 16#8D89#;  
   GL_ALPHA16I_EXT : constant := 16#8D8A#;  
   GL_INTENSITY16I_EXT : constant := 16#8D8B#;  
   GL_LUMINANCE16I_EXT : constant := 16#8D8C#;  
   GL_LUMINANCE_ALPHA16I_EXT : constant := 16#8D8D#;  
   GL_RGBA8I_EXT : constant := 16#8D8E#;  
   GL_RGB8I_EXT : constant := 16#8D8F#;  
   GL_ALPHA8I_EXT : constant := 16#8D90#;  
   GL_INTENSITY8I_EXT : constant := 16#8D91#;  
   GL_LUMINANCE8I_EXT : constant := 16#8D92#;  
   GL_LUMINANCE_ALPHA8I_EXT : constant := 16#8D93#;  
   GL_RED_INTEGER_EXT : constant := 16#8D94#;  
   GL_GREEN_INTEGER_EXT : constant := 16#8D95#;  
   GL_BLUE_INTEGER_EXT : constant := 16#8D96#;  
   GL_ALPHA_INTEGER_EXT : constant := 16#8D97#;  
   GL_RGB_INTEGER_EXT : constant := 16#8D98#;  
   GL_RGBA_INTEGER_EXT : constant := 16#8D99#;  
   GL_BGR_INTEGER_EXT : constant := 16#8D9A#;  
   GL_BGRA_INTEGER_EXT : constant := 16#8D9B#;  
   GL_LUMINANCE_INTEGER_EXT : constant := 16#8D9C#;  
   GL_LUMINANCE_ALPHA_INTEGER_EXT : constant := 16#8D9D#;  
   GL_RGBA_INTEGER_MODE_EXT : constant := 16#8D9E#;  

   GL_QUERY_WAIT_NV : constant := 16#8E13#;  
   GL_QUERY_NO_WAIT_NV : constant := 16#8E14#;  
   GL_QUERY_BY_REGION_WAIT_NV : constant := 16#8E15#;  
   GL_QUERY_BY_REGION_NO_WAIT_NV : constant := 16#8E16#;  

   GL_FRAME_NV : constant := 16#8E26#;  
   GL_FIELDS_NV : constant := 16#8E27#;  
   GL_CURRENT_TIME_NV : constant := 16#8E28#;  
   GL_NUM_FILL_STREAMS_NV : constant := 16#8E29#;  
   GL_PRESENT_TIME_NV : constant := 16#8E2A#;  
   GL_PRESENT_DURATION_NV : constant := 16#8E2B#;  

   GL_TRANSFORM_FEEDBACK_BUFFER_EXT : constant := 16#8C8E#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT : constant := 16#8C84#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT : constant := 16#8C85#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT : constant := 16#8C8F#;  
   GL_INTERLEAVED_ATTRIBS_EXT : constant := 16#8C8C#;  
   GL_SEPARATE_ATTRIBS_EXT : constant := 16#8C8D#;  
   GL_PRIMITIVES_GENERATED_EXT : constant := 16#8C87#;  
   GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT : constant := 16#8C88#;  
   GL_RASTERIZER_DISCARD_EXT : constant := 16#8C89#;  
   GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT : constant := 16#8C8A#;  
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT : constant := 16#8C8B#;  
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT : constant := 16#8C80#;  
   GL_TRANSFORM_FEEDBACK_VARYINGS_EXT : constant := 16#8C83#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT : constant := 16#8C7F#;  
   GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT : constant := 16#8C76#;  

   GL_PROGRAM_MATRIX_EXT : constant := 16#8E2D#;  
   GL_TRANSPOSE_PROGRAM_MATRIX_EXT : constant := 16#8E2E#;  
   GL_PROGRAM_MATRIX_STACK_DEPTH_EXT : constant := 16#8E2F#;  

   GL_TEXTURE_SWIZZLE_R_EXT : constant := 16#8E42#;  
   GL_TEXTURE_SWIZZLE_G_EXT : constant := 16#8E43#;  
   GL_TEXTURE_SWIZZLE_B_EXT : constant := 16#8E44#;  
   GL_TEXTURE_SWIZZLE_A_EXT : constant := 16#8E45#;  
   GL_TEXTURE_SWIZZLE_RGBA_EXT : constant := 16#8E46#;  

   GL_SAMPLE_POSITION_NV : constant := 16#8E50#;  
   GL_SAMPLE_MASK_NV : constant := 16#8E51#;  
   GL_SAMPLE_MASK_VALUE_NV : constant := 16#8E52#;  
   GL_TEXTURE_BINDING_RENDERBUFFER_NV : constant := 16#8E53#;  
   GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV : constant := 16#8E54#;  
   GL_TEXTURE_RENDERBUFFER_NV : constant := 16#8E55#;  
   GL_SAMPLER_RENDERBUFFER_NV : constant := 16#8E56#;  
   GL_INT_SAMPLER_RENDERBUFFER_NV : constant := 16#8E57#;  
   GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV : constant := 16#8E58#;  
   GL_MAX_SAMPLE_MASK_WORDS_NV : constant := 16#8E59#;  

   GL_TRANSFORM_FEEDBACK_NV : constant := 16#8E22#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV : constant := 16#8E23#;  
   GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV : constant := 16#8E24#;  
   GL_TRANSFORM_FEEDBACK_BINDING_NV : constant := 16#8E25#;  

   GL_VBO_FREE_MEMORY_ATI : constant := 16#87FB#;  
   GL_TEXTURE_FREE_MEMORY_ATI : constant := 16#87FC#;  
   GL_RENDERBUFFER_FREE_MEMORY_ATI : constant := 16#87FD#;  

   GL_COUNTER_TYPE_AMD : constant := 16#8BC0#;  
   GL_COUNTER_RANGE_AMD : constant := 16#8BC1#;  
   GL_UNSIGNED_INT64_AMD : constant := 16#8BC2#;  
   GL_PERCENTAGE_AMD : constant := 16#8BC3#;  
   GL_PERFMON_RESULT_AVAILABLE_AMD : constant := 16#8BC4#;  
   GL_PERFMON_RESULT_SIZE_AMD : constant := 16#8BC5#;  
   GL_PERFMON_RESULT_AMD : constant := 16#8BC6#;  

   GL_SAMPLER_BUFFER_AMD : constant := 16#9001#;  
   GL_INT_SAMPLER_BUFFER_AMD : constant := 16#9002#;  
   GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD : constant := 16#9003#;  
   GL_TESSELLATION_MODE_AMD : constant := 16#9004#;  
   GL_TESSELLATION_FACTOR_AMD : constant := 16#9005#;  
   GL_DISCRETE_AMD : constant := 16#9006#;  
   GL_CONTINUOUS_AMD : constant := 16#9007#;  

   GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT : constant := 16#8E4C#;  
   GL_FIRST_VERTEX_CONVENTION_EXT : constant := 16#8E4D#;  
   GL_LAST_VERTEX_CONVENTION_EXT : constant := 16#8E4E#;  
   GL_PROVOKING_VERTEX_EXT : constant := 16#8E4F#;  

   GL_ALPHA_SNORM : constant := 16#9010#;  
   GL_LUMINANCE_SNORM : constant := 16#9011#;  
   GL_LUMINANCE_ALPHA_SNORM : constant := 16#9012#;  
   GL_INTENSITY_SNORM : constant := 16#9013#;  
   GL_ALPHA8_SNORM : constant := 16#9014#;  
   GL_LUMINANCE8_SNORM : constant := 16#9015#;  
   GL_LUMINANCE8_ALPHA8_SNORM : constant := 16#9016#;  
   GL_INTENSITY8_SNORM : constant := 16#9017#;  
   GL_ALPHA16_SNORM : constant := 16#9018#;  
   GL_LUMINANCE16_SNORM : constant := 16#9019#;  
   GL_LUMINANCE16_ALPHA16_SNORM : constant := 16#901A#;  
   GL_INTENSITY16_SNORM : constant := 16#901B#;  

   GL_TEXTURE_RANGE_LENGTH_APPLE : constant := 16#85B7#;  
   GL_TEXTURE_RANGE_POINTER_APPLE : constant := 16#85B8#;  
   GL_TEXTURE_STORAGE_HINT_APPLE : constant := 16#85BC#;  
   GL_STORAGE_PRIVATE_APPLE : constant := 16#85BD#;  

   GL_HALF_APPLE : constant := 16#140B#;  
   GL_RGBA_FLOAT32_APPLE : constant := 16#8814#;  
   GL_RGB_FLOAT32_APPLE : constant := 16#8815#;  
   GL_ALPHA_FLOAT32_APPLE : constant := 16#8816#;  
   GL_INTENSITY_FLOAT32_APPLE : constant := 16#8817#;  
   GL_LUMINANCE_FLOAT32_APPLE : constant := 16#8818#;  
   GL_LUMINANCE_ALPHA_FLOAT32_APPLE : constant := 16#8819#;  
   GL_RGBA_FLOAT16_APPLE : constant := 16#881A#;  
   GL_RGB_FLOAT16_APPLE : constant := 16#881B#;  
   GL_ALPHA_FLOAT16_APPLE : constant := 16#881C#;  
   GL_INTENSITY_FLOAT16_APPLE : constant := 16#881D#;  
   GL_LUMINANCE_FLOAT16_APPLE : constant := 16#881E#;  
   GL_LUMINANCE_ALPHA_FLOAT16_APPLE : constant := 16#881F#;  
   GL_COLOR_FLOAT_APPLE : constant := 16#8A0F#;  

   GL_VERTEX_ATTRIB_MAP1_APPLE : constant := 16#8A00#;  
   GL_VERTEX_ATTRIB_MAP2_APPLE : constant := 16#8A01#;  
   GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE : constant := 16#8A02#;  
   GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE : constant := 16#8A03#;  
   GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE : constant := 16#8A04#;  
   GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE : constant := 16#8A05#;  
   GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE : constant := 16#8A06#;  
   GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE : constant := 16#8A07#;  
   GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE : constant := 16#8A08#;  
   GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE : constant := 16#8A09#;  

   GL_AUX_DEPTH_STENCIL_APPLE : constant := 16#8A14#;  

   GL_BUFFER_OBJECT_APPLE : constant := 16#85B3#;  
   GL_RELEASED_APPLE : constant := 16#8A19#;  
   GL_VOLATILE_APPLE : constant := 16#8A1A#;  
   GL_RETAINED_APPLE : constant := 16#8A1B#;  
   GL_UNDEFINED_APPLE : constant := 16#8A1C#;  
   GL_PURGEABLE_APPLE : constant := 16#8A1D#;  

   GL_PACK_ROW_BYTES_APPLE : constant := 16#8A15#;  
   GL_UNPACK_ROW_BYTES_APPLE : constant := 16#8A16#;  

   GL_RGB_422_APPLE : constant := 16#8A1F#;  

   GL_VIDEO_BUFFER_NV : constant := 16#9020#;  
   GL_VIDEO_BUFFER_BINDING_NV : constant := 16#9021#;  
   GL_FIELD_UPPER_NV : constant := 16#9022#;  
   GL_FIELD_LOWER_NV : constant := 16#9023#;  
   GL_NUM_VIDEO_CAPTURE_STREAMS_NV : constant := 16#9024#;  
   GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV : constant := 16#9025#;  
   GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV : constant := 16#9026#;  
   GL_LAST_VIDEO_CAPTURE_STATUS_NV : constant := 16#9027#;  
   GL_VIDEO_BUFFER_PITCH_NV : constant := 16#9028#;  
   GL_VIDEO_COLOR_CONVERSION_MATRIX_NV : constant := 16#9029#;  
   GL_VIDEO_COLOR_CONVERSION_MAX_NV : constant := 16#902A#;  
   GL_VIDEO_COLOR_CONVERSION_MIN_NV : constant := 16#902B#;  
   GL_VIDEO_COLOR_CONVERSION_OFFSET_NV : constant := 16#902C#;  
   GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV : constant := 16#902D#;  
   GL_PARTIAL_SUCCESS_NV : constant := 16#902E#;  
   GL_SUCCESS_NV : constant := 16#902F#;  
   GL_FAILURE_NV : constant := 16#9030#;  
   GL_YCBYCR8_422_NV : constant := 16#9031#;  
   GL_YCBAYCR8A_4224_NV : constant := 16#9032#;  
   GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV : constant := 16#9033#;  
   GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV : constant := 16#9034#;  
   GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV : constant := 16#9035#;  
   GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV : constant := 16#9036#;  
   GL_Z4Y12Z4CB12Z4CR12_444_NV : constant := 16#9037#;  
   GL_VIDEO_CAPTURE_FRAME_WIDTH_NV : constant := 16#9038#;  
   GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV : constant := 16#9039#;  
   GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV : constant := 16#903A#;  
   GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV : constant := 16#903B#;  
   GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV : constant := 16#903C#;  

   GL_ACTIVE_PROGRAM_EXT : constant := 16#8B8D#;  

   GL_BUFFER_GPU_ADDRESS_NV : constant := 16#8F1D#;  
   GL_GPU_ADDRESS_NV : constant := 16#8F34#;  
   GL_MAX_SHADER_BUFFER_ADDRESS_NV : constant := 16#8F35#;  

   GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV : constant := 16#8F1E#;  
   GL_ELEMENT_ARRAY_UNIFIED_NV : constant := 16#8F1F#;  
   GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV : constant := 16#8F20#;  
   GL_VERTEX_ARRAY_ADDRESS_NV : constant := 16#8F21#;  
   GL_NORMAL_ARRAY_ADDRESS_NV : constant := 16#8F22#;  
   GL_COLOR_ARRAY_ADDRESS_NV : constant := 16#8F23#;  
   GL_INDEX_ARRAY_ADDRESS_NV : constant := 16#8F24#;  
   GL_TEXTURE_COORD_ARRAY_ADDRESS_NV : constant := 16#8F25#;  
   GL_EDGE_FLAG_ARRAY_ADDRESS_NV : constant := 16#8F26#;  
   GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV : constant := 16#8F27#;  
   GL_FOG_COORD_ARRAY_ADDRESS_NV : constant := 16#8F28#;  
   GL_ELEMENT_ARRAY_ADDRESS_NV : constant := 16#8F29#;  
   GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV : constant := 16#8F2A#;  
   GL_VERTEX_ARRAY_LENGTH_NV : constant := 16#8F2B#;  
   GL_NORMAL_ARRAY_LENGTH_NV : constant := 16#8F2C#;  
   GL_COLOR_ARRAY_LENGTH_NV : constant := 16#8F2D#;  
   GL_INDEX_ARRAY_LENGTH_NV : constant := 16#8F2E#;  
   GL_TEXTURE_COORD_ARRAY_LENGTH_NV : constant := 16#8F2F#;  
   GL_EDGE_FLAG_ARRAY_LENGTH_NV : constant := 16#8F30#;  
   GL_SECONDARY_COLOR_ARRAY_LENGTH_NV : constant := 16#8F31#;  
   GL_FOG_COORD_ARRAY_LENGTH_NV : constant := 16#8F32#;  
   GL_ELEMENT_ARRAY_LENGTH_NV : constant := 16#8F33#;  
   GL_DRAW_INDIRECT_UNIFIED_NV : constant := 16#8F40#;  
   GL_DRAW_INDIRECT_ADDRESS_NV : constant := 16#8F41#;  
   GL_DRAW_INDIRECT_LENGTH_NV : constant := 16#8F42#;  

   GL_MAX_IMAGE_UNITS_EXT : constant := 16#8F38#;  
   GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT : constant := 16#8F39#;  
   GL_IMAGE_BINDING_NAME_EXT : constant := 16#8F3A#;  
   GL_IMAGE_BINDING_LEVEL_EXT : constant := 16#8F3B#;  
   GL_IMAGE_BINDING_LAYERED_EXT : constant := 16#8F3C#;  
   GL_IMAGE_BINDING_LAYER_EXT : constant := 16#8F3D#;  
   GL_IMAGE_BINDING_ACCESS_EXT : constant := 16#8F3E#;  
   GL_IMAGE_1D_EXT : constant := 16#904C#;  
   GL_IMAGE_2D_EXT : constant := 16#904D#;  
   GL_IMAGE_3D_EXT : constant := 16#904E#;  
   GL_IMAGE_2D_RECT_EXT : constant := 16#904F#;  
   GL_IMAGE_CUBE_EXT : constant := 16#9050#;  
   GL_IMAGE_BUFFER_EXT : constant := 16#9051#;  
   GL_IMAGE_1D_ARRAY_EXT : constant := 16#9052#;  
   GL_IMAGE_2D_ARRAY_EXT : constant := 16#9053#;  
   GL_IMAGE_CUBE_MAP_ARRAY_EXT : constant := 16#9054#;  
   GL_IMAGE_2D_MULTISAMPLE_EXT : constant := 16#9055#;  
   GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT : constant := 16#9056#;  
   GL_INT_IMAGE_1D_EXT : constant := 16#9057#;  
   GL_INT_IMAGE_2D_EXT : constant := 16#9058#;  
   GL_INT_IMAGE_3D_EXT : constant := 16#9059#;  
   GL_INT_IMAGE_2D_RECT_EXT : constant := 16#905A#;  
   GL_INT_IMAGE_CUBE_EXT : constant := 16#905B#;  
   GL_INT_IMAGE_BUFFER_EXT : constant := 16#905C#;  
   GL_INT_IMAGE_1D_ARRAY_EXT : constant := 16#905D#;  
   GL_INT_IMAGE_2D_ARRAY_EXT : constant := 16#905E#;  
   GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT : constant := 16#905F#;  
   GL_INT_IMAGE_2D_MULTISAMPLE_EXT : constant := 16#9060#;  
   GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT : constant := 16#9061#;  
   GL_UNSIGNED_INT_IMAGE_1D_EXT : constant := 16#9062#;  
   GL_UNSIGNED_INT_IMAGE_2D_EXT : constant := 16#9063#;  
   GL_UNSIGNED_INT_IMAGE_3D_EXT : constant := 16#9064#;  
   GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT : constant := 16#9065#;  
   GL_UNSIGNED_INT_IMAGE_CUBE_EXT : constant := 16#9066#;  
   GL_UNSIGNED_INT_IMAGE_BUFFER_EXT : constant := 16#9067#;  
   GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT : constant := 16#9068#;  
   GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT : constant := 16#9069#;  
   GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT : constant := 16#906A#;  
   GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT : constant := 16#906B#;  
   GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT : constant := 16#906C#;  
   GL_MAX_IMAGE_SAMPLES_EXT : constant := 16#906D#;  
   GL_IMAGE_BINDING_FORMAT_EXT : constant := 16#906E#;  
   GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT : constant := 16#00000001#;  
   GL_ELEMENT_ARRAY_BARRIER_BIT_EXT : constant := 16#00000002#;  
   GL_UNIFORM_BARRIER_BIT_EXT : constant := 16#00000004#;  
   GL_TEXTURE_FETCH_BARRIER_BIT_EXT : constant := 16#00000008#;  
   GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT : constant := 16#00000020#;  
   GL_COMMAND_BARRIER_BIT_EXT : constant := 16#00000040#;  
   GL_PIXEL_BUFFER_BARRIER_BIT_EXT : constant := 16#00000080#;  
   GL_TEXTURE_UPDATE_BARRIER_BIT_EXT : constant := 16#00000100#;  
   GL_BUFFER_UPDATE_BARRIER_BIT_EXT : constant := 16#00000200#;  
   GL_FRAMEBUFFER_BARRIER_BIT_EXT : constant := 16#00000400#;  
   GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT : constant := 16#00000800#;  
   GL_ATOMIC_COUNTER_BARRIER_BIT_EXT : constant := 16#00001000#;  
   GL_ALL_BARRIER_BITS_EXT : constant := 16#FFFFFFFF#;  

   GL_DOUBLE_VEC2_EXT : constant := 16#8FFC#;  
   GL_DOUBLE_VEC3_EXT : constant := 16#8FFD#;  
   GL_DOUBLE_VEC4_EXT : constant := 16#8FFE#;  
   GL_DOUBLE_MAT2_EXT : constant := 16#8F46#;  
   GL_DOUBLE_MAT3_EXT : constant := 16#8F47#;  
   GL_DOUBLE_MAT4_EXT : constant := 16#8F48#;  
   GL_DOUBLE_MAT2x3_EXT : constant := 16#8F49#;  
   GL_DOUBLE_MAT2x4_EXT : constant := 16#8F4A#;  
   GL_DOUBLE_MAT3x2_EXT : constant := 16#8F4B#;  
   GL_DOUBLE_MAT3x4_EXT : constant := 16#8F4C#;  
   GL_DOUBLE_MAT4x2_EXT : constant := 16#8F4D#;  
   GL_DOUBLE_MAT4x3_EXT : constant := 16#8F4E#;  

   GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV : constant := 16#8E5A#;  
   GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV : constant := 16#8E5B#;  
   GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV : constant := 16#8E5C#;  
   GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV : constant := 16#8E5D#;  
   GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV : constant := 16#8E5E#;  
   GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV : constant := 16#8E5F#;  
   GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV : constant := 16#8F44#;  
   GL_MAX_PROGRAM_SUBROUTINE_NUM_NV : constant := 16#8F45#;  

   GL_INT64_NV : constant := 16#140E#;  
   GL_UNSIGNED_INT64_NV : constant := 16#140F#;  
   GL_INT8_NV : constant := 16#8FE0#;  
   GL_INT8_VEC2_NV : constant := 16#8FE1#;  
   GL_INT8_VEC3_NV : constant := 16#8FE2#;  
   GL_INT8_VEC4_NV : constant := 16#8FE3#;  
   GL_INT16_NV : constant := 16#8FE4#;  
   GL_INT16_VEC2_NV : constant := 16#8FE5#;  
   GL_INT16_VEC3_NV : constant := 16#8FE6#;  
   GL_INT16_VEC4_NV : constant := 16#8FE7#;  
   GL_INT64_VEC2_NV : constant := 16#8FE9#;  
   GL_INT64_VEC3_NV : constant := 16#8FEA#;  
   GL_INT64_VEC4_NV : constant := 16#8FEB#;  
   GL_UNSIGNED_INT8_NV : constant := 16#8FEC#;  
   GL_UNSIGNED_INT8_VEC2_NV : constant := 16#8FED#;  
   GL_UNSIGNED_INT8_VEC3_NV : constant := 16#8FEE#;  
   GL_UNSIGNED_INT8_VEC4_NV : constant := 16#8FEF#;  
   GL_UNSIGNED_INT16_NV : constant := 16#8FF0#;  
   GL_UNSIGNED_INT16_VEC2_NV : constant := 16#8FF1#;  
   GL_UNSIGNED_INT16_VEC3_NV : constant := 16#8FF2#;  
   GL_UNSIGNED_INT16_VEC4_NV : constant := 16#8FF3#;  
   GL_UNSIGNED_INT64_VEC2_NV : constant := 16#8FF5#;  
   GL_UNSIGNED_INT64_VEC3_NV : constant := 16#8FF6#;  
   GL_UNSIGNED_INT64_VEC4_NV : constant := 16#8FF7#;  
   GL_FLOAT16_NV : constant := 16#8FF8#;  
   GL_FLOAT16_VEC2_NV : constant := 16#8FF9#;  
   GL_FLOAT16_VEC3_NV : constant := 16#8FFA#;  
   GL_FLOAT16_VEC4_NV : constant := 16#8FFB#;  

   GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV : constant := 16#00000010#;  

   GL_MAX_PROGRAM_PATCH_ATTRIBS_NV : constant := 16#86D8#;  
   GL_TESS_CONTROL_PROGRAM_NV : constant := 16#891E#;  
   GL_TESS_EVALUATION_PROGRAM_NV : constant := 16#891F#;  
   GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV : constant := 16#8C74#;  
   GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV : constant := 16#8C75#;  

   GL_COVERAGE_SAMPLES_NV : constant := 16#80A9#;  
   GL_COLOR_SAMPLES_NV : constant := 16#8E20#;  

   GL_DATA_BUFFER_AMD : constant := 16#9151#;  
   GL_PERFORMANCE_MONITOR_AMD : constant := 16#9152#;  
   GL_QUERY_OBJECT_AMD : constant := 16#9153#;  
   GL_VERTEX_ARRAY_OBJECT_AMD : constant := 16#9154#;  
   GL_SAMPLER_OBJECT_AMD : constant := 16#9155#;  

   GL_MAX_DEBUG_LOGGED_MESSAGES_AMD : constant := 16#9144#;  
   GL_DEBUG_LOGGED_MESSAGES_AMD : constant := 16#9145#;  
   GL_DEBUG_SEVERITY_HIGH_AMD : constant := 16#9146#;  
   GL_DEBUG_SEVERITY_MEDIUM_AMD : constant := 16#9147#;  
   GL_DEBUG_SEVERITY_LOW_AMD : constant := 16#9148#;  
   GL_DEBUG_CATEGORY_API_ERROR_AMD : constant := 16#9149#;  
   GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD : constant := 16#914A#;  
   GL_DEBUG_CATEGORY_DEPRECATION_AMD : constant := 16#914B#;  
   GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD : constant := 16#914C#;  
   GL_DEBUG_CATEGORY_PERFORMANCE_AMD : constant := 16#914D#;  
   GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD : constant := 16#914E#;  
   GL_DEBUG_CATEGORY_APPLICATION_AMD : constant := 16#914F#;  
   GL_DEBUG_CATEGORY_OTHER_AMD : constant := 16#9150#;  

   GL_SURFACE_STATE_NV : constant := 16#86EB#;  
   GL_SURFACE_REGISTERED_NV : constant := 16#86FD#;  
   GL_SURFACE_MAPPED_NV : constant := 16#8700#;  
   GL_WRITE_DISCARD_NV : constant := 16#88BE#;  

   GL_DEPTH_CLAMP_NEAR_AMD : constant := 16#901E#;  
   GL_DEPTH_CLAMP_FAR_AMD : constant := 16#901F#;  

   GL_TEXTURE_SRGB_DECODE_EXT : constant := 16#8A48#;  
   GL_DECODE_EXT : constant := 16#8A49#;  
   GL_SKIP_DECODE_EXT : constant := 16#8A4A#;  

   GL_TEXTURE_COVERAGE_SAMPLES_NV : constant := 16#9045#;  
   GL_TEXTURE_COLOR_SAMPLES_NV : constant := 16#9046#;  

   GL_FACTOR_MIN_AMD : constant := 16#901C#;  
   GL_FACTOR_MAX_AMD : constant := 16#901D#;  

   GL_SUBSAMPLE_DISTANCE_AMD : constant := 16#883F#;  

   GL_SYNC_X11_FENCE_EXT : constant := 16#90E1#;  

   GL_SCALED_RESOLVE_FASTEST_EXT : constant := 16#90BA#;  
   GL_SCALED_RESOLVE_NICEST_EXT : constant := 16#90BB#;  

   GL_VERSION_1_2_DEPRECATED : constant := 1;  

   GL_VERSION_1_3_DEPRECATED : constant := 1;  

   GL_VERSION_1_4 : constant := 1;  

   GL_VERSION_1_4_DEPRECATED : constant := 1;  

   GL_VERSION_1_5 : constant := 1;  

   GL_VERSION_2_0 : constant := 1;  

   GL_VERSION_2_1 : constant := 1;  

   GL_VERSION_3_0 : constant := 1;  

   GL_VERSION_3_1 : constant := 1;  

   GL_VERSION_3_2 : constant := 1;  

   GL_VERSION_3_3 : constant := 1;  

   GL_VERSION_4_0 : constant := 1;  

   GL_VERSION_4_1 : constant := 1;  

   GL_VERSION_4_2 : constant := 1;  

   GL_ARB_transpose_matrix : constant := 1;  

   GL_ARB_multisample : constant := 1;  

   GL_ARB_texture_env_add : constant := 1;  

   GL_ARB_texture_cube_map : constant := 1;  

   GL_ARB_texture_compression : constant := 1;  

   GL_ARB_texture_border_clamp : constant := 1;  

   GL_ARB_point_parameters : constant := 1;  

   GL_ARB_vertex_blend : constant := 1;  

   GL_ARB_matrix_palette : constant := 1;  

   GL_ARB_texture_env_combine : constant := 1;  

   GL_ARB_texture_env_crossbar : constant := 1;  

   GL_ARB_texture_env_dot3 : constant := 1;  

   GL_ARB_texture_mirrored_repeat : constant := 1;  

   GL_ARB_depth_texture : constant := 1;  

   GL_ARB_shadow : constant := 1;  

   GL_ARB_shadow_ambient : constant := 1;  

   GL_ARB_window_pos : constant := 1;  

   GL_ARB_vertex_program : constant := 1;  

   GL_ARB_fragment_program : constant := 1;  

   GL_ARB_vertex_buffer_object : constant := 1;  

   GL_ARB_occlusion_query : constant := 1;  

   GL_ARB_shader_objects : constant := 1;  

   GL_ARB_vertex_shader : constant := 1;  

   GL_ARB_fragment_shader : constant := 1;  

   GL_ARB_shading_language_100 : constant := 1;  

   GL_ARB_texture_non_power_of_two : constant := 1;  

   GL_ARB_point_sprite : constant := 1;  

   GL_ARB_fragment_program_shadow : constant := 1;  

   GL_ARB_draw_buffers : constant := 1;  

   GL_ARB_texture_rectangle : constant := 1;  

   GL_ARB_color_buffer_float : constant := 1;  

   GL_ARB_half_float_pixel : constant := 1;  

   GL_ARB_texture_float : constant := 1;  

   GL_ARB_pixel_buffer_object : constant := 1;  

   GL_ARB_depth_buffer_float : constant := 1;  

   GL_ARB_draw_instanced : constant := 1;  

   GL_ARB_framebuffer_object : constant := 1;  

   GL_ARB_framebuffer_sRGB : constant := 1;  

   GL_ARB_geometry_shader4 : constant := 1;  

   GL_ARB_half_float_vertex : constant := 1;  

   GL_ARB_instanced_arrays : constant := 1;  

   GL_ARB_map_buffer_range : constant := 1;  

   GL_ARB_texture_buffer_object : constant := 1;  

   GL_ARB_texture_compression_rgtc : constant := 1;  

   GL_ARB_texture_rg : constant := 1;  

   GL_ARB_vertex_array_object : constant := 1;  

   GL_ARB_uniform_buffer_object : constant := 1;  

   GL_ARB_compatibility : constant := 1;  

   GL_ARB_copy_buffer : constant := 1;  

   GL_ARB_shader_texture_lod : constant := 1;  

   GL_ARB_depth_clamp : constant := 1;  

   GL_ARB_draw_elements_base_vertex : constant := 1;  

   GL_ARB_fragment_coord_conventions : constant := 1;  

   GL_ARB_provoking_vertex : constant := 1;  

   GL_ARB_seamless_cube_map : constant := 1;  

   GL_ARB_sync : constant := 1;  

   GL_ARB_texture_multisample : constant := 1;  

   GL_ARB_vertex_array_bgra : constant := 1;  

   GL_ARB_draw_buffers_blend : constant := 1;  

   GL_ARB_sample_shading : constant := 1;  

   GL_ARB_texture_cube_map_array : constant := 1;  

   GL_ARB_texture_gather : constant := 1;  

   GL_ARB_texture_query_lod : constant := 1;  

   GL_ARB_shading_language_include : constant := 1;  

   GL_ARB_texture_compression_bptc : constant := 1;  

   GL_ARB_blend_func_extended : constant := 1;  

   GL_ARB_explicit_attrib_location : constant := 1;  

   GL_ARB_occlusion_query2 : constant := 1;  

   GL_ARB_sampler_objects : constant := 1;  

   GL_ARB_shader_bit_encoding : constant := 1;  

   GL_ARB_texture_rgb10_a2ui : constant := 1;  

   GL_ARB_texture_swizzle : constant := 1;  

   GL_ARB_timer_query : constant := 1;  

   GL_ARB_vertex_type_2_10_10_10_rev : constant := 1;  

   GL_ARB_draw_indirect : constant := 1;  

   GL_ARB_gpu_shader5 : constant := 1;  

   GL_ARB_gpu_shader_fp64 : constant := 1;  

   GL_ARB_shader_subroutine : constant := 1;  

   GL_ARB_tessellation_shader : constant := 1;  

   GL_ARB_texture_buffer_object_rgb32 : constant := 1;  

   GL_ARB_transform_feedback2 : constant := 1;  

   GL_ARB_transform_feedback3 : constant := 1;  

   GL_ARB_ES2_compatibility : constant := 1;  

   GL_ARB_get_program_binary : constant := 1;  

   GL_ARB_separate_shader_objects : constant := 1;  

   GL_ARB_vertex_attrib_64bit : constant := 1;  

   GL_ARB_viewport_array : constant := 1;  

   GL_ARB_cl_event : constant := 1;  

   GL_ARB_debug_output : constant := 1;  

   GL_ARB_robustness : constant := 1;  

   GL_ARB_shader_stencil_export : constant := 1;  

   GL_ARB_base_instance : constant := 1;  

   GL_ARB_shading_language_420pack : constant := 1;  

   GL_ARB_transform_feedback_instanced : constant := 1;  

   GL_ARB_compressed_texture_pixel_storage : constant := 1;  

   GL_ARB_conservative_depth : constant := 1;  

   GL_ARB_internalformat_query : constant := 1;  

   GL_ARB_map_buffer_alignment : constant := 1;  

   GL_ARB_shader_atomic_counters : constant := 1;  

   GL_ARB_shader_image_load_store : constant := 1;  

   GL_ARB_shading_language_packing : constant := 1;  

   GL_ARB_texture_storage : constant := 1;  

   GL_EXT_abgr : constant := 1;  

   GL_EXT_blend_color : constant := 1;  

   GL_EXT_polygon_offset : constant := 1;  

   GL_EXT_texture : constant := 1;  

   GL_EXT_texture3D : constant := 1;  

   GL_SGIS_texture_filter4 : constant := 1;  

   GL_EXT_subtexture : constant := 1;  

   GL_EXT_copy_texture : constant := 1;  

   GL_EXT_histogram : constant := 1;  

   GL_EXT_convolution : constant := 1;  

   GL_SGI_color_matrix : constant := 1;  

   GL_SGI_color_table : constant := 1;  

   GL_SGIX_pixel_texture : constant := 1;  

   GL_SGIS_pixel_texture : constant := 1;  

   GL_SGIS_texture4D : constant := 1;  

   GL_SGI_texture_color_table : constant := 1;  

   GL_EXT_cmyka : constant := 1;  

   GL_EXT_texture_object : constant := 1;  

   GL_SGIS_detail_texture : constant := 1;  

   GL_SGIS_sharpen_texture : constant := 1;  

   GL_EXT_packed_pixels : constant := 1;  

   GL_SGIS_texture_lod : constant := 1;  

   GL_SGIS_multisample : constant := 1;  

   GL_EXT_rescale_normal : constant := 1;  

   GL_EXT_vertex_array : constant := 1;  

   GL_EXT_misc_attribute : constant := 1;  

   GL_SGIS_generate_mipmap : constant := 1;  

   GL_SGIX_clipmap : constant := 1;  

   GL_SGIX_shadow : constant := 1;  

   GL_SGIS_texture_edge_clamp : constant := 1;  

   GL_SGIS_texture_border_clamp : constant := 1;  

   GL_EXT_blend_minmax : constant := 1;  

   GL_EXT_blend_subtract : constant := 1;  

   GL_EXT_blend_logic_op : constant := 1;  

   GL_SGIX_interlace : constant := 1;  

   GL_SGIX_pixel_tiles : constant := 1;  

   GL_SGIX_texture_select : constant := 1;  

   GL_SGIX_sprite : constant := 1;  

   GL_SGIX_texture_multi_buffer : constant := 1;  

   GL_EXT_point_parameters : constant := 1;  

   GL_SGIS_point_parameters : constant := 1;  

   GL_SGIX_instruments : constant := 1;  

   GL_SGIX_texture_scale_bias : constant := 1;  

   GL_SGIX_framezoom : constant := 1;  

   GL_SGIX_tag_sample_buffer : constant := 1;  

   GL_SGIX_polynomial_ffd : constant := 1;  

   GL_SGIX_reference_plane : constant := 1;  

   GL_SGIX_flush_raster : constant := 1;  

   GL_SGIX_depth_texture : constant := 1;  

   GL_SGIS_fog_function : constant := 1;  

   GL_SGIX_fog_offset : constant := 1;  

   GL_HP_image_transform : constant := 1;  

   GL_HP_convolution_border_modes : constant := 1;  

   GL_SGIX_texture_add_env : constant := 1;  

   GL_EXT_color_subtable : constant := 1;  

   GL_PGI_vertex_hints : constant := 1;  

   GL_PGI_misc_hints : constant := 1;  

   GL_EXT_paletted_texture : constant := 1;  

   GL_EXT_clip_volume_hint : constant := 1;  

   GL_SGIX_list_priority : constant := 1;  

   GL_SGIX_ir_instrument1 : constant := 1;  

   GL_SGIX_calligraphic_fragment : constant := 1;  

   GL_SGIX_texture_lod_bias : constant := 1;  

   GL_SGIX_shadow_ambient : constant := 1;  

   GL_EXT_index_texture : constant := 1;  

   GL_EXT_index_material : constant := 1;  

   GL_EXT_index_func : constant := 1;  

   GL_EXT_index_array_formats : constant := 1;  

   GL_EXT_compiled_vertex_array : constant := 1;  

   GL_EXT_cull_vertex : constant := 1;  

   GL_SGIX_ycrcb : constant := 1;  

   GL_SGIX_fragment_lighting : constant := 1;  

   GL_IBM_rasterpos_clip : constant := 1;  

   GL_HP_texture_lighting : constant := 1;  

   GL_EXT_draw_range_elements : constant := 1;  

   GL_WIN_phong_shading : constant := 1;  

   GL_WIN_specular_fog : constant := 1;  

   GL_EXT_light_texture : constant := 1;  

   GL_SGIX_blend_alpha_minmax : constant := 1;  

   GL_EXT_bgra : constant := 1;  

   GL_SGIX_async : constant := 1;  

   GL_SGIX_async_pixel : constant := 1;  

   GL_SGIX_async_histogram : constant := 1;  

   GL_INTEL_parallel_arrays : constant := 1;  

   GL_HP_occlusion_test : constant := 1;  

   GL_EXT_pixel_transform : constant := 1;  

   GL_EXT_pixel_transform_color_table : constant := 1;  

   GL_EXT_shared_texture_palette : constant := 1;  

   GL_EXT_separate_specular_color : constant := 1;  

   GL_EXT_secondary_color : constant := 1;  

   GL_EXT_texture_perturb_normal : constant := 1;  

   GL_EXT_multi_draw_arrays : constant := 1;  

   GL_EXT_fog_coord : constant := 1;  

   GL_REND_screen_coordinates : constant := 1;  

   GL_EXT_coordinate_frame : constant := 1;  

   GL_EXT_texture_env_combine : constant := 1;  

   GL_APPLE_specular_vector : constant := 1;  

   GL_APPLE_transform_hint : constant := 1;  

   GL_SGIX_fog_scale : constant := 1;  

   GL_SUNX_constant_data : constant := 1;  

   GL_SUN_global_alpha : constant := 1;  

   GL_SUN_triangle_list : constant := 1;  

   GL_SUN_vertex : constant := 1;  

   GL_EXT_blend_func_separate : constant := 1;  

   GL_INGR_blend_func_separate : constant := 1;  

   GL_INGR_color_clamp : constant := 1;  

   GL_INGR_interlace_read : constant := 1;  

   GL_EXT_stencil_wrap : constant := 1;  

   GL_EXT_422_pixels : constant := 1;  

   GL_NV_texgen_reflection : constant := 1;  

   GL_SUN_convolution_border_modes : constant := 1;  

   GL_EXT_texture_env_add : constant := 1;  

   GL_EXT_texture_lod_bias : constant := 1;  

   GL_EXT_texture_filter_anisotropic : constant := 1;  

   GL_EXT_vertex_weighting : constant := 1;  

   GL_NV_light_max_exponent : constant := 1;  

   GL_NV_vertex_array_range : constant := 1;  

   GL_NV_register_combiners : constant := 1;  

   GL_NV_fog_distance : constant := 1;  

   GL_NV_texgen_emboss : constant := 1;  

   GL_NV_blend_square : constant := 1;  

   GL_NV_texture_env_combine4 : constant := 1;  

   GL_MESA_resize_buffers : constant := 1;  

   GL_MESA_window_pos : constant := 1;  

   GL_IBM_cull_vertex : constant := 1;  

   GL_IBM_multimode_draw_arrays : constant := 1;  

   GL_IBM_vertex_array_lists : constant := 1;  

   GL_SGIX_subsample : constant := 1;  

   GL_SGIX_ycrcba : constant := 1;  

   GL_SGIX_ycrcb_subsample : constant := 1;  

   GL_SGIX_depth_pass_instrument : constant := 1;  

   GL_3DFX_texture_compression_FXT1 : constant := 1;  

   GL_3DFX_multisample : constant := 1;  

   GL_3DFX_tbuffer : constant := 1;  

   GL_EXT_multisample : constant := 1;  

   GL_SGIX_vertex_preclip : constant := 1;  

   GL_SGIX_convolution_accuracy : constant := 1;  

   GL_SGIX_resample : constant := 1;  

   GL_SGIS_point_line_texgen : constant := 1;  

   GL_SGIS_texture_color_mask : constant := 1;  

   GL_SGIX_igloo_interface : constant := 1;  

   GL_EXT_texture_env_dot3 : constant := 1;  

   GL_ATI_texture_mirror_once : constant := 1;  

   GL_NV_fence : constant := 1;  

   GL_NV_evaluators : constant := 1;  

   GL_NV_packed_depth_stencil : constant := 1;  

   GL_NV_register_combiners2 : constant := 1;  

   GL_NV_texture_compression_vtc : constant := 1;  

   GL_NV_texture_rectangle : constant := 1;  

   GL_NV_texture_shader : constant := 1;  

   GL_NV_texture_shader2 : constant := 1;  

   GL_NV_vertex_array_range2 : constant := 1;  

   GL_NV_vertex_program : constant := 1;  

   GL_SGIX_texture_coordinate_clamp : constant := 1;  

   GL_SGIX_scalebias_hint : constant := 1;  

   GL_OML_interlace : constant := 1;  

   GL_OML_subsample : constant := 1;  

   GL_OML_resample : constant := 1;  

   GL_NV_copy_depth_to_color : constant := 1;  

   GL_ATI_envmap_bumpmap : constant := 1;  

   GL_ATI_fragment_shader : constant := 1;  

   GL_ATI_pn_triangles : constant := 1;  

   GL_ATI_vertex_array_object : constant := 1;  

   GL_EXT_vertex_shader : constant := 1;  

   GL_ATI_vertex_streams : constant := 1;  

   GL_ATI_element_array : constant := 1;  

   GL_SUN_mesh_array : constant := 1;  

   GL_SUN_slice_accum : constant := 1;  

   GL_NV_multisample_filter_hint : constant := 1;  

   GL_NV_depth_clamp : constant := 1;  

   GL_NV_occlusion_query : constant := 1;  

   GL_NV_point_sprite : constant := 1;  

   GL_NV_texture_shader3 : constant := 1;  

   GL_NV_vertex_program1_1 : constant := 1;  

   GL_EXT_shadow_funcs : constant := 1;  

   GL_EXT_stencil_two_side : constant := 1;  

   GL_ATI_text_fragment_shader : constant := 1;  

   GL_APPLE_client_storage : constant := 1;  

   GL_APPLE_element_array : constant := 1;  

   GL_APPLE_fence : constant := 1;  

   GL_APPLE_vertex_array_object : constant := 1;  

   GL_APPLE_vertex_array_range : constant := 1;  

   GL_APPLE_ycbcr_422 : constant := 1;  

   GL_S3_s3tc : constant := 1;  

   GL_ATI_draw_buffers : constant := 1;  

   GL_ATI_pixel_format_float : constant := 1;  

   GL_ATI_texture_env_combine3 : constant := 1;  

   GL_ATI_texture_float : constant := 1;  

   GL_NV_float_buffer : constant := 1;  

   GL_NV_fragment_program : constant := 1;  

   GL_NV_half_float : constant := 1;  

   GL_NV_pixel_data_range : constant := 1;  

   GL_NV_primitive_restart : constant := 1;  

   GL_NV_texture_expand_normal : constant := 1;  

   GL_NV_vertex_program2 : constant := 1;  

   GL_ATI_map_object_buffer : constant := 1;  

   GL_ATI_separate_stencil : constant := 1;  

   GL_ATI_vertex_attrib_array_object : constant := 1;  

   GL_OES_read_format : constant := 1;  

   GL_EXT_depth_bounds_test : constant := 1;  

   GL_EXT_texture_mirror_clamp : constant := 1;  

   GL_EXT_blend_equation_separate : constant := 1;  

   GL_MESA_pack_invert : constant := 1;  

   GL_MESA_ycbcr_texture : constant := 1;  

   GL_EXT_pixel_buffer_object : constant := 1;  

   GL_NV_fragment_program_option : constant := 1;  

   GL_NV_fragment_program2 : constant := 1;  

   GL_NV_vertex_program2_option : constant := 1;  

   GL_NV_vertex_program3 : constant := 1;  

   GL_EXT_framebuffer_object : constant := 1;  

   GL_GREMEDY_string_marker : constant := 1;  

   GL_EXT_packed_depth_stencil : constant := 1;  

   GL_EXT_stencil_clear_tag : constant := 1;  

   GL_EXT_texture_sRGB : constant := 1;  

   GL_EXT_framebuffer_blit : constant := 1;  

   GL_EXT_framebuffer_multisample : constant := 1;  

   GL_MESAX_texture_stack : constant := 1;  

   GL_EXT_timer_query : constant := 1;  

   GL_EXT_gpu_program_parameters : constant := 1;  

   GL_APPLE_flush_buffer_range : constant := 1;  

   GL_NV_gpu_program4 : constant := 1;  

   GL_NV_geometry_program4 : constant := 1;  

   GL_EXT_geometry_shader4 : constant := 1;  

   GL_NV_vertex_program4 : constant := 1;  

   GL_EXT_gpu_shader4 : constant := 1;  

   GL_EXT_draw_instanced : constant := 1;  

   GL_EXT_packed_float : constant := 1;  

   GL_EXT_texture_array : constant := 1;  

   GL_EXT_texture_buffer_object : constant := 1;  

   GL_EXT_texture_compression_latc : constant := 1;  

   GL_EXT_texture_compression_rgtc : constant := 1;  

   GL_EXT_texture_shared_exponent : constant := 1;  

   GL_NV_depth_buffer_float : constant := 1;  

   GL_NV_fragment_program4 : constant := 1;  

   GL_NV_framebuffer_multisample_coverage : constant := 1;  

   GL_EXT_framebuffer_sRGB : constant := 1;  

   GL_NV_geometry_shader4 : constant := 1;  

   GL_NV_parameter_buffer_object : constant := 1;  

   GL_EXT_draw_buffers2 : constant := 1;  

   GL_NV_transform_feedback : constant := 1;  

   GL_EXT_bindable_uniform : constant := 1;  

   GL_EXT_texture_integer : constant := 1;  

   GL_GREMEDY_frame_terminator : constant := 1;  

   GL_NV_conditional_render : constant := 1;  

   GL_NV_present_video : constant := 1;  

   GL_EXT_transform_feedback : constant := 1;  

   GL_EXT_direct_state_access : constant := 1;  

   GL_EXT_vertex_array_bgra : constant := 1;  

   GL_EXT_texture_swizzle : constant := 1;  

   GL_NV_explicit_multisample : constant := 1;  

   GL_NV_transform_feedback2 : constant := 1;  

   GL_ATI_meminfo : constant := 1;  

   GL_AMD_performance_monitor : constant := 1;  

   GL_AMD_texture_texture4 : constant := 1;  

   GL_AMD_vertex_shader_tesselator : constant := 1;  

   GL_EXT_provoking_vertex : constant := 1;  

   GL_EXT_texture_snorm : constant := 1;  

   GL_AMD_draw_buffers_blend : constant := 1;  

   GL_APPLE_texture_range : constant := 1;  

   GL_APPLE_float_pixels : constant := 1;  

   GL_APPLE_vertex_program_evaluators : constant := 1;  

   GL_APPLE_aux_depth_stencil : constant := 1;  

   GL_APPLE_object_purgeable : constant := 1;  

   GL_APPLE_row_bytes : constant := 1;  

   GL_APPLE_rgb_422 : constant := 1;  

   GL_NV_video_capture : constant := 1;  

   GL_NV_copy_image : constant := 1;  

   GL_EXT_separate_shader_objects : constant := 1;  

   GL_NV_parameter_buffer_object2 : constant := 1;  

   GL_NV_shader_buffer_load : constant := 1;  

   GL_NV_vertex_buffer_unified_memory : constant := 1;  

   GL_NV_texture_barrier : constant := 1;  

   GL_AMD_shader_stencil_export : constant := 1;  

   GL_AMD_seamless_cubemap_per_texture : constant := 1;  

   GL_AMD_conservative_depth : constant := 1;  

   GL_EXT_shader_image_load_store : constant := 1;  

   GL_EXT_vertex_attrib_64bit : constant := 1;  

   GL_NV_gpu_program5 : constant := 1;  

   GL_NV_gpu_shader5 : constant := 1;  

   GL_NV_shader_buffer_store : constant := 1;  

   GL_NV_tessellation_program5 : constant := 1;  

   GL_NV_vertex_attrib_integer_64bit : constant := 1;  

   GL_NV_multisample_coverage : constant := 1;  

   GL_AMD_name_gen_delete : constant := 1;  

   GL_AMD_debug_output : constant := 1;  

   GL_NV_vdpau_interop : constant := 1;  

   GL_AMD_transform_feedback3_lines_triangles : constant := 1;  

   GL_AMD_depth_clamp_separate : constant := 1;  

   GL_EXT_texture_sRGB_decode : constant := 1;  

   GL_NV_texture_multisample : constant := 1;  

   GL_AMD_blend_minmax_factor : constant := 1;  

   GL_AMD_sample_positions : constant := 1;  

   GL_EXT_x11_sync_object : constant := 1;  

   GL_AMD_multi_draw_indirect : constant := 1;  

   GL_EXT_framebuffer_multisample_blit_scaled : constant := 1;  

  --** Copyright (c) 2007-2011 The Khronos Group Inc.
  --**
  --** Permission is hereby granted, free of charge, to any person obtaining a
  --** copy of this software and/or associated documentation files (the
  --** "Materials"), to deal in the Materials without restriction, including
  --** without limitation the rights to use, copy, modify, merge, publish,
  --** distribute, sublicense, and/or sell copies of the Materials, and to
  --** permit persons to whom the Materials are furnished to do so, subject to
  --** the following conditions:
  --**
  --** The above copyright notice and this permission notice shall be included
  --** in all copies or substantial portions of the Materials.
  --**
  --** THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  --** EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  --** MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
  --** IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
  --** CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
  --** TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
  --** MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.
  --

  -- Header file version number, required by OpenGL ABI for Linux
  -- glext.h last updated $Date: 2011-08-08 00:34:29 -0700 (Mon, 08 Aug 2011) $
  -- Current version at http://www.opengl.org/registry/
  -- Function declaration macros - to move into glplatform.h
  --***********************************************************
  -- Reuse tokens from ARB_depth_buffer_float
  -- reuse GL_DEPTH_COMPONENT32F
  -- reuse GL_DEPTH32F_STENCIL8
  -- reuse GL_FLOAT_32_UNSIGNED_INT_24_8_REV
  -- Reuse tokens from ARB_framebuffer_object
  -- reuse GL_INVALID_FRAMEBUFFER_OPERATION
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE
  -- reuse GL_FRAMEBUFFER_DEFAULT
  -- reuse GL_FRAMEBUFFER_UNDEFINED
  -- reuse GL_DEPTH_STENCIL_ATTACHMENT
  -- reuse GL_INDEX
  -- reuse GL_MAX_RENDERBUFFER_SIZE
  -- reuse GL_DEPTH_STENCIL
  -- reuse GL_UNSIGNED_INT_24_8
  -- reuse GL_DEPTH24_STENCIL8
  -- reuse GL_TEXTURE_STENCIL_SIZE
  -- reuse GL_TEXTURE_RED_TYPE
  -- reuse GL_TEXTURE_GREEN_TYPE
  -- reuse GL_TEXTURE_BLUE_TYPE
  -- reuse GL_TEXTURE_ALPHA_TYPE
  -- reuse GL_TEXTURE_DEPTH_TYPE
  -- reuse GL_UNSIGNED_NORMALIZED
  -- reuse GL_FRAMEBUFFER_BINDING
  -- reuse GL_DRAW_FRAMEBUFFER_BINDING
  -- reuse GL_RENDERBUFFER_BINDING
  -- reuse GL_READ_FRAMEBUFFER
  -- reuse GL_DRAW_FRAMEBUFFER
  -- reuse GL_READ_FRAMEBUFFER_BINDING
  -- reuse GL_RENDERBUFFER_SAMPLES
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
  -- reuse GL_FRAMEBUFFER_COMPLETE
  -- reuse GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
  -- reuse GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
  -- reuse GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
  -- reuse GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER
  -- reuse GL_FRAMEBUFFER_UNSUPPORTED
  -- reuse GL_MAX_COLOR_ATTACHMENTS
  -- reuse GL_COLOR_ATTACHMENT0
  -- reuse GL_COLOR_ATTACHMENT1
  -- reuse GL_COLOR_ATTACHMENT2
  -- reuse GL_COLOR_ATTACHMENT3
  -- reuse GL_COLOR_ATTACHMENT4
  -- reuse GL_COLOR_ATTACHMENT5
  -- reuse GL_COLOR_ATTACHMENT6
  -- reuse GL_COLOR_ATTACHMENT7
  -- reuse GL_COLOR_ATTACHMENT8
  -- reuse GL_COLOR_ATTACHMENT9
  -- reuse GL_COLOR_ATTACHMENT10
  -- reuse GL_COLOR_ATTACHMENT11
  -- reuse GL_COLOR_ATTACHMENT12
  -- reuse GL_COLOR_ATTACHMENT13
  -- reuse GL_COLOR_ATTACHMENT14
  -- reuse GL_COLOR_ATTACHMENT15
  -- reuse GL_DEPTH_ATTACHMENT
  -- reuse GL_STENCIL_ATTACHMENT
  -- reuse GL_FRAMEBUFFER
  -- reuse GL_RENDERBUFFER
  -- reuse GL_RENDERBUFFER_WIDTH
  -- reuse GL_RENDERBUFFER_HEIGHT
  -- reuse GL_RENDERBUFFER_INTERNAL_FORMAT
  -- reuse GL_STENCIL_INDEX1
  -- reuse GL_STENCIL_INDEX4
  -- reuse GL_STENCIL_INDEX8
  -- reuse GL_STENCIL_INDEX16
  -- reuse GL_RENDERBUFFER_RED_SIZE
  -- reuse GL_RENDERBUFFER_GREEN_SIZE
  -- reuse GL_RENDERBUFFER_BLUE_SIZE
  -- reuse GL_RENDERBUFFER_ALPHA_SIZE
  -- reuse GL_RENDERBUFFER_DEPTH_SIZE
  -- reuse GL_RENDERBUFFER_STENCIL_SIZE
  -- reuse GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE
  -- reuse GL_MAX_SAMPLES
  -- Reuse tokens from ARB_framebuffer_sRGB
  -- reuse GL_FRAMEBUFFER_SRGB
  -- Reuse tokens from ARB_half_float_vertex
  -- reuse GL_HALF_FLOAT
  -- Reuse tokens from ARB_map_buffer_range
  -- reuse GL_MAP_READ_BIT
  -- reuse GL_MAP_WRITE_BIT
  -- reuse GL_MAP_INVALIDATE_RANGE_BIT
  -- reuse GL_MAP_INVALIDATE_BUFFER_BIT
  -- reuse GL_MAP_FLUSH_EXPLICIT_BIT
  -- reuse GL_MAP_UNSYNCHRONIZED_BIT
  -- Reuse tokens from ARB_texture_compression_rgtc
  -- reuse GL_COMPRESSED_RED_RGTC1
  -- reuse GL_COMPRESSED_SIGNED_RED_RGTC1
  -- reuse GL_COMPRESSED_RG_RGTC2
  -- reuse GL_COMPRESSED_SIGNED_RG_RGTC2
  -- Reuse tokens from ARB_texture_rg
  -- reuse GL_RG
  -- reuse GL_RG_INTEGER
  -- reuse GL_R8
  -- reuse GL_R16
  -- reuse GL_RG8
  -- reuse GL_RG16
  -- reuse GL_R16F
  -- reuse GL_R32F
  -- reuse GL_RG16F
  -- reuse GL_RG32F
  -- reuse GL_R8I
  -- reuse GL_R8UI
  -- reuse GL_R16I
  -- reuse GL_R16UI
  -- reuse GL_R32I
  -- reuse GL_R32UI
  -- reuse GL_RG8I
  -- reuse GL_RG8UI
  -- reuse GL_RG16I
  -- reuse GL_RG16UI
  -- reuse GL_RG32I
  -- reuse GL_RG32UI
  -- Reuse tokens from ARB_vertex_array_object
  -- reuse GL_VERTEX_ARRAY_BINDING
  -- Reuse tokens from ARB_framebuffer_object
  -- reuse GL_TEXTURE_LUMINANCE_TYPE
  -- reuse GL_TEXTURE_INTENSITY_TYPE
  -- Reuse tokens from ARB_copy_buffer
  -- reuse GL_COPY_READ_BUFFER
  -- reuse GL_COPY_WRITE_BUFFER
  -- Reuse tokens from ARB_draw_instanced (none)
  -- Reuse tokens from ARB_uniform_buffer_object
  -- reuse GL_UNIFORM_BUFFER
  -- reuse GL_UNIFORM_BUFFER_BINDING
  -- reuse GL_UNIFORM_BUFFER_START
  -- reuse GL_UNIFORM_BUFFER_SIZE
  -- reuse GL_MAX_VERTEX_UNIFORM_BLOCKS
  -- reuse GL_MAX_FRAGMENT_UNIFORM_BLOCKS
  -- reuse GL_MAX_COMBINED_UNIFORM_BLOCKS
  -- reuse GL_MAX_UNIFORM_BUFFER_BINDINGS
  -- reuse GL_MAX_UNIFORM_BLOCK_SIZE
  -- reuse GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
  -- reuse GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
  -- reuse GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
  -- reuse GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
  -- reuse GL_ACTIVE_UNIFORM_BLOCKS
  -- reuse GL_UNIFORM_TYPE
  -- reuse GL_UNIFORM_SIZE
  -- reuse GL_UNIFORM_NAME_LENGTH
  -- reuse GL_UNIFORM_BLOCK_INDEX
  -- reuse GL_UNIFORM_OFFSET
  -- reuse GL_UNIFORM_ARRAY_STRIDE
  -- reuse GL_UNIFORM_MATRIX_STRIDE
  -- reuse GL_UNIFORM_IS_ROW_MAJOR
  -- reuse GL_UNIFORM_BLOCK_BINDING
  -- reuse GL_UNIFORM_BLOCK_DATA_SIZE
  -- reuse GL_UNIFORM_BLOCK_NAME_LENGTH
  -- reuse GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
  -- reuse GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
  -- reuse GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
  -- reuse GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
  -- reuse GL_INVALID_INDEX
  -- reuse GL_MAX_VARYING_COMPONENTS
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
  -- Reuse tokens from ARB_depth_clamp
  -- reuse GL_DEPTH_CLAMP
  -- Reuse tokens from ARB_draw_elements_base_vertex (none)
  -- Reuse tokens from ARB_fragment_coord_conventions (none)
  -- Reuse tokens from ARB_provoking_vertex
  -- reuse GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
  -- reuse GL_FIRST_VERTEX_CONVENTION
  -- reuse GL_LAST_VERTEX_CONVENTION
  -- reuse GL_PROVOKING_VERTEX
  -- Reuse tokens from ARB_seamless_cube_map
  -- reuse GL_TEXTURE_CUBE_MAP_SEAMLESS
  -- Reuse tokens from ARB_sync
  -- reuse GL_MAX_SERVER_WAIT_TIMEOUT
  -- reuse GL_OBJECT_TYPE
  -- reuse GL_SYNC_CONDITION
  -- reuse GL_SYNC_STATUS
  -- reuse GL_SYNC_FLAGS
  -- reuse GL_SYNC_FENCE
  -- reuse GL_SYNC_GPU_COMMANDS_COMPLETE
  -- reuse GL_UNSIGNALED
  -- reuse GL_SIGNALED
  -- reuse GL_ALREADY_SIGNALED
  -- reuse GL_TIMEOUT_EXPIRED
  -- reuse GL_CONDITION_SATISFIED
  -- reuse GL_WAIT_FAILED
  -- reuse GL_TIMEOUT_IGNORED
  -- reuse GL_SYNC_FLUSH_COMMANDS_BIT
  -- reuse GL_TIMEOUT_IGNORED
  -- Reuse tokens from ARB_texture_multisample
  -- reuse GL_SAMPLE_POSITION
  -- reuse GL_SAMPLE_MASK
  -- reuse GL_SAMPLE_MASK_VALUE
  -- reuse GL_MAX_SAMPLE_MASK_WORDS
  -- reuse GL_TEXTURE_2D_MULTISAMPLE
  -- reuse GL_PROXY_TEXTURE_2D_MULTISAMPLE
  -- reuse GL_TEXTURE_2D_MULTISAMPLE_ARRAY
  -- reuse GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
  -- reuse GL_TEXTURE_BINDING_2D_MULTISAMPLE
  -- reuse GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
  -- reuse GL_TEXTURE_SAMPLES
  -- reuse GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
  -- reuse GL_SAMPLER_2D_MULTISAMPLE
  -- reuse GL_INT_SAMPLER_2D_MULTISAMPLE
  -- reuse GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
  -- reuse GL_SAMPLER_2D_MULTISAMPLE_ARRAY
  -- reuse GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
  -- reuse GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
  -- reuse GL_MAX_COLOR_TEXTURE_SAMPLES
  -- reuse GL_MAX_DEPTH_TEXTURE_SAMPLES
  -- reuse GL_MAX_INTEGER_SAMPLES
  -- Don't need to reuse tokens from ARB_vertex_array_bgra since they're already in 1.2 core
  -- Reuse tokens from ARB_blend_func_extended
  -- reuse GL_SRC1_COLOR
  -- reuse GL_ONE_MINUS_SRC1_COLOR
  -- reuse GL_ONE_MINUS_SRC1_ALPHA
  -- reuse GL_MAX_DUAL_SOURCE_DRAW_BUFFERS
  -- Reuse tokens from ARB_explicit_attrib_location (none)
  -- Reuse tokens from ARB_occlusion_query2
  -- reuse GL_ANY_SAMPLES_PASSED
  -- Reuse tokens from ARB_sampler_objects
  -- reuse GL_SAMPLER_BINDING
  -- Reuse tokens from ARB_shader_bit_encoding (none)
  -- Reuse tokens from ARB_texture_rgb10_a2ui
  -- reuse GL_RGB10_A2UI
  -- Reuse tokens from ARB_texture_swizzle
  -- reuse GL_TEXTURE_SWIZZLE_R
  -- reuse GL_TEXTURE_SWIZZLE_G
  -- reuse GL_TEXTURE_SWIZZLE_B
  -- reuse GL_TEXTURE_SWIZZLE_A
  -- reuse GL_TEXTURE_SWIZZLE_RGBA
  -- Reuse tokens from ARB_timer_query
  -- reuse GL_TIME_ELAPSED
  -- reuse GL_TIMESTAMP
  -- Reuse tokens from ARB_vertex_type_2_10_10_10_rev
  -- reuse GL_INT_2_10_10_10_REV
  -- Reuse tokens from ARB_texture_query_lod (none)
  -- Reuse tokens from ARB_draw_buffers_blend (none)
  -- Reuse tokens from ARB_draw_indirect
  -- reuse GL_DRAW_INDIRECT_BUFFER
  -- reuse GL_DRAW_INDIRECT_BUFFER_BINDING
  -- Reuse tokens from ARB_gpu_shader5
  -- reuse GL_GEOMETRY_SHADER_INVOCATIONS
  -- reuse GL_MAX_GEOMETRY_SHADER_INVOCATIONS
  -- reuse GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
  -- reuse GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
  -- reuse GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
  -- reuse GL_MAX_VERTEX_STREAMS
  -- Reuse tokens from ARB_gpu_shader_fp64
  -- reuse GL_DOUBLE_VEC2
  -- reuse GL_DOUBLE_VEC3
  -- reuse GL_DOUBLE_VEC4
  -- reuse GL_DOUBLE_MAT2
  -- reuse GL_DOUBLE_MAT3
  -- reuse GL_DOUBLE_MAT4
  -- reuse GL_DOUBLE_MAT2x3
  -- reuse GL_DOUBLE_MAT2x4
  -- reuse GL_DOUBLE_MAT3x2
  -- reuse GL_DOUBLE_MAT3x4
  -- reuse GL_DOUBLE_MAT4x2
  -- reuse GL_DOUBLE_MAT4x3
  -- Reuse tokens from ARB_shader_subroutine
  -- reuse GL_ACTIVE_SUBROUTINES
  -- reuse GL_ACTIVE_SUBROUTINE_UNIFORMS
  -- reuse GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
  -- reuse GL_ACTIVE_SUBROUTINE_MAX_LENGTH
  -- reuse GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
  -- reuse GL_MAX_SUBROUTINES
  -- reuse GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS
  -- reuse GL_NUM_COMPATIBLE_SUBROUTINES
  -- reuse GL_COMPATIBLE_SUBROUTINES
  -- Reuse tokens from ARB_tessellation_shader
  -- reuse GL_PATCHES
  -- reuse GL_PATCH_VERTICES
  -- reuse GL_PATCH_DEFAULT_INNER_LEVEL
  -- reuse GL_PATCH_DEFAULT_OUTER_LEVEL
  -- reuse GL_TESS_CONTROL_OUTPUT_VERTICES
  -- reuse GL_TESS_GEN_MODE
  -- reuse GL_TESS_GEN_SPACING
  -- reuse GL_TESS_GEN_VERTEX_ORDER
  -- reuse GL_TESS_GEN_POINT_MODE
  -- reuse GL_ISOLINES
  -- reuse GL_FRACTIONAL_ODD
  -- reuse GL_FRACTIONAL_EVEN
  -- reuse GL_MAX_PATCH_VERTICES
  -- reuse GL_MAX_TESS_GEN_LEVEL
  -- reuse GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
  -- reuse GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
  -- reuse GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
  -- reuse GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
  -- reuse GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
  -- reuse GL_MAX_TESS_PATCH_COMPONENTS
  -- reuse GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
  -- reuse GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
  -- reuse GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
  -- reuse GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS
  -- reuse GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
  -- reuse GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
  -- reuse GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
  -- reuse GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
  -- reuse GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
  -- reuse GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
  -- reuse GL_TESS_EVALUATION_SHADER
  -- reuse GL_TESS_CONTROL_SHADER
  -- Reuse tokens from ARB_texture_buffer_object_rgb32 (none)
  -- Reuse tokens from ARB_transform_feedback2
  -- reuse GL_TRANSFORM_FEEDBACK
  -- reuse GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED
  -- reuse GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
  -- reuse GL_TRANSFORM_FEEDBACK_BINDING
  -- Reuse tokens from ARB_transform_feedback3
  -- reuse GL_MAX_TRANSFORM_FEEDBACK_BUFFERS
  -- reuse GL_MAX_VERTEX_STREAMS
  -- Reuse tokens from ARB_ES2_compatibility
  -- reuse GL_FIXED
  -- reuse GL_IMPLEMENTATION_COLOR_READ_TYPE
  -- reuse GL_IMPLEMENTATION_COLOR_READ_FORMAT
  -- reuse GL_LOW_FLOAT
  -- reuse GL_MEDIUM_FLOAT
  -- reuse GL_HIGH_FLOAT
  -- reuse GL_LOW_INT
  -- reuse GL_MEDIUM_INT
  -- reuse GL_HIGH_INT
  -- reuse GL_SHADER_COMPILER
  -- reuse GL_NUM_SHADER_BINARY_FORMATS
  -- reuse GL_MAX_VERTEX_UNIFORM_VECTORS
  -- reuse GL_MAX_VARYING_VECTORS
  -- reuse GL_MAX_FRAGMENT_UNIFORM_VECTORS
  -- Reuse tokens from ARB_get_program_binary
  -- reuse GL_PROGRAM_BINARY_RETRIEVABLE_HINT
  -- reuse GL_PROGRAM_BINARY_LENGTH
  -- reuse GL_NUM_PROGRAM_BINARY_FORMATS
  -- reuse GL_PROGRAM_BINARY_FORMATS
  -- Reuse tokens from ARB_separate_shader_objects
  -- reuse GL_VERTEX_SHADER_BIT
  -- reuse GL_FRAGMENT_SHADER_BIT
  -- reuse GL_GEOMETRY_SHADER_BIT
  -- reuse GL_TESS_CONTROL_SHADER_BIT
  -- reuse GL_TESS_EVALUATION_SHADER_BIT
  -- reuse GL_ALL_SHADER_BITS
  -- reuse GL_PROGRAM_SEPARABLE
  -- reuse GL_ACTIVE_PROGRAM
  -- reuse GL_PROGRAM_PIPELINE_BINDING
  -- Reuse tokens from ARB_shader_precision (none)
  -- Reuse tokens from ARB_vertex_attrib_64bit - all are in GL 3.0 and 4.0 already
  -- Reuse tokens from ARB_viewport_array - some are in GL 1.1 and ARB_provoking_vertex already
  -- reuse GL_MAX_VIEWPORTS
  -- reuse GL_VIEWPORT_SUBPIXEL_BITS
  -- reuse GL_VIEWPORT_BOUNDS_RANGE
  -- reuse GL_LAYER_PROVOKING_VERTEX
  -- reuse GL_VIEWPORT_INDEX_PROVOKING_VERTEX
  -- reuse GL_UNDEFINED_VERTEX
  -- Reuse tokens from ARB_base_instance (none)
  -- Reuse tokens from ARB_shading_language_420pack (none)
  -- Reuse tokens from ARB_transform_feedback_instanced (none)
  -- Reuse tokens from ARB_compressed_texture_pixel_storage
  -- reuse GL_UNPACK_COMPRESSED_BLOCK_WIDTH
  -- reuse GL_UNPACK_COMPRESSED_BLOCK_HEIGHT
  -- reuse GL_UNPACK_COMPRESSED_BLOCK_DEPTH
  -- reuse GL_UNPACK_COMPRESSED_BLOCK_SIZE
  -- reuse GL_PACK_COMPRESSED_BLOCK_WIDTH
  -- reuse GL_PACK_COMPRESSED_BLOCK_HEIGHT
  -- reuse GL_PACK_COMPRESSED_BLOCK_DEPTH
  -- reuse GL_PACK_COMPRESSED_BLOCK_SIZE
  -- Reuse tokens from ARB_conservative_depth (none)
  -- Reuse tokens from ARB_internalformat_query
  -- reuse GL_NUM_SAMPLE_COUNTS
  -- Reuse tokens from ARB_map_buffer_alignment
  -- reuse GL_MIN_MAP_BUFFER_ALIGNMENT
  -- Reuse tokens from ARB_shader_atomic_counters
  -- reuse GL_ATOMIC_COUNTER_BUFFER
  -- reuse GL_ATOMIC_COUNTER_BUFFER_BINDING
  -- reuse GL_ATOMIC_COUNTER_BUFFER_START
  -- reuse GL_ATOMIC_COUNTER_BUFFER_SIZE
  -- reuse GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE
  -- reuse GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS
  -- reuse GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES
  -- reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER
  -- reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER
  -- reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
  -- reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER
  -- reuse GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER
  -- reuse GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
  -- reuse GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
  -- reuse GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
  -- reuse GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
  -- reuse GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
  -- reuse GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
  -- reuse GL_MAX_VERTEX_ATOMIC_COUNTERS
  -- reuse GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS
  -- reuse GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS
  -- reuse GL_MAX_GEOMETRY_ATOMIC_COUNTERS
  -- reuse GL_MAX_FRAGMENT_ATOMIC_COUNTERS
  -- reuse GL_MAX_COMBINED_ATOMIC_COUNTERS
  -- reuse GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE
  -- reuse GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS
  -- reuse GL_ACTIVE_ATOMIC_COUNTER_BUFFERS
  -- reuse GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX
  -- reuse GL_UNSIGNED_INT_ATOMIC_COUNTER
  -- Reuse tokens from ARB_shader_image_load_store
  -- reuse GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
  -- reuse GL_ELEMENT_ARRAY_BARRIER_BIT
  -- reuse GL_UNIFORM_BARRIER_BIT
  -- reuse GL_TEXTURE_FETCH_BARRIER_BIT
  -- reuse GL_SHADER_IMAGE_ACCESS_BARRIER_BIT
  -- reuse GL_COMMAND_BARRIER_BIT
  -- reuse GL_PIXEL_BUFFER_BARRIER_BIT
  -- reuse GL_TEXTURE_UPDATE_BARRIER_BIT
  -- reuse GL_BUFFER_UPDATE_BARRIER_BIT
  -- reuse GL_FRAMEBUFFER_BARRIER_BIT
  -- reuse GL_TRANSFORM_FEEDBACK_BARRIER_BIT
  -- reuse GL_ATOMIC_COUNTER_BARRIER_BIT
  -- reuse GL_ALL_BARRIER_BITS
  -- reuse GL_MAX_IMAGE_UNITS
  -- reuse GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
  -- reuse GL_IMAGE_BINDING_NAME
  -- reuse GL_IMAGE_BINDING_LEVEL
  -- reuse GL_IMAGE_BINDING_LAYERED
  -- reuse GL_IMAGE_BINDING_LAYER
  -- reuse GL_IMAGE_BINDING_ACCESS
  -- reuse GL_IMAGE_1D
  -- reuse GL_IMAGE_2D
  -- reuse GL_IMAGE_3D
  -- reuse GL_IMAGE_2D_RECT
  -- reuse GL_IMAGE_CUBE
  -- reuse GL_IMAGE_BUFFER
  -- reuse GL_IMAGE_1D_ARRAY
  -- reuse GL_IMAGE_2D_ARRAY
  -- reuse GL_IMAGE_CUBE_MAP_ARRAY
  -- reuse GL_IMAGE_2D_MULTISAMPLE
  -- reuse GL_IMAGE_2D_MULTISAMPLE_ARRAY
  -- reuse GL_INT_IMAGE_1D
  -- reuse GL_INT_IMAGE_2D
  -- reuse GL_INT_IMAGE_3D
  -- reuse GL_INT_IMAGE_2D_RECT
  -- reuse GL_INT_IMAGE_CUBE
  -- reuse GL_INT_IMAGE_BUFFER
  -- reuse GL_INT_IMAGE_1D_ARRAY
  -- reuse GL_INT_IMAGE_2D_ARRAY
  -- reuse GL_INT_IMAGE_CUBE_MAP_ARRAY
  -- reuse GL_INT_IMAGE_2D_MULTISAMPLE
  -- reuse GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
  -- reuse GL_UNSIGNED_INT_IMAGE_1D
  -- reuse GL_UNSIGNED_INT_IMAGE_2D
  -- reuse GL_UNSIGNED_INT_IMAGE_3D
  -- reuse GL_UNSIGNED_INT_IMAGE_2D_RECT
  -- reuse GL_UNSIGNED_INT_IMAGE_CUBE
  -- reuse GL_UNSIGNED_INT_IMAGE_BUFFER
  -- reuse GL_UNSIGNED_INT_IMAGE_1D_ARRAY
  -- reuse GL_UNSIGNED_INT_IMAGE_2D_ARRAY
  -- reuse GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
  -- reuse GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
  -- reuse GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
  -- reuse GL_MAX_IMAGE_SAMPLES
  -- reuse GL_IMAGE_BINDING_FORMAT
  -- reuse GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
  -- reuse GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
  -- reuse GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
  -- reuse GL_MAX_VERTEX_IMAGE_UNIFORMS
  -- reuse GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS
  -- reuse GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS
  -- reuse GL_MAX_GEOMETRY_IMAGE_UNIFORMS
  -- reuse GL_MAX_FRAGMENT_IMAGE_UNIFORMS
  -- reuse GL_MAX_COMBINED_IMAGE_UNIFORMS
  -- Reuse tokens from ARB_shading_language_packing (none)
  -- Reuse tokens from ARB_texture_storage
  -- reuse GL_TEXTURE_IMMUTABLE_FORMAT
  -- reuse GL_MAX_VARYING_COMPONENTS
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
  -- ARB_compatibility just defines tokens from core 3.0
  -- reuse GL_BGRA
  -- reuse GL_SRC1_ALPHA
  -- reuse GL_UNSIGNED_INT_2_10_10_10_REV
  -- reuse GL_MAX_VERTEX_STREAMS
  -- reuse GL_DOUBLE
  -- reuse GL_UNIFORM_SIZE
  -- reuse GL_UNIFORM_NAME_LENGTH
  -- reuse GL_TRIANGLES
  -- reuse GL_QUADS
  -- reuse GL_EQUAL
  -- reuse GL_CCW
  -- reuse GL_CW
  -- reuse GL_RGB32F
  -- reuse GL_RGB32UI
  -- reuse GL_RGB32I
  -- reuse GL_RGB32I
  -- reuse GL_DOUBLE_VEC2
  -- reuse GL_DOUBLE_VEC3
  -- reuse GL_DOUBLE_VEC4
  -- reuse GL_DOUBLE_MAT2
  -- reuse GL_DOUBLE_MAT3
  -- reuse GL_DOUBLE_MAT4
  -- reuse GL_DOUBLE_MAT2x3
  -- reuse GL_DOUBLE_MAT2x4
  -- reuse GL_DOUBLE_MAT3x2
  -- reuse GL_DOUBLE_MAT3x4
  -- reuse GL_DOUBLE_MAT4x2
  -- reuse GL_DOUBLE_MAT4x3
  -- reuse GL_SCISSOR_BOX
  -- reuse GL_VIEWPORT
  -- reuse GL_DEPTH_RANGE
  -- reuse GL_SCISSOR_TEST
  -- reuse GL_FIRST_VERTEX_CONVENTION
  -- reuse GL_LAST_VERTEX_CONVENTION
  -- reuse GL_PROVOKING_VERTEX
  -- reuse GL_NO_ERROR
  -- reuse GL_FRAGMENT_DEPTH_EXT
  -- reuse GL_TEXTURE0_ARB
  -- reuse GL_TEXTURE1_ARB
  -- reuse GL_ZERO
  -- reuse GL_NONE
  -- reuse GL_FOG
  -- reuse GL_EYE_PLANE
  -- reuse GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV
  -- reuse GL_MAX_PROGRAM_CALL_DEPTH_NV
  -- reuse GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB
  -- reuse GL_GEOMETRY_VERTICES_OUT_EXT
  -- reuse GL_GEOMETRY_INPUT_TYPE_EXT
  -- reuse GL_GEOMETRY_OUTPUT_TYPE_EXT
  -- reuse GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT
  -- reuse GL_LINES_ADJACENCY_EXT
  -- reuse GL_LINE_STRIP_ADJACENCY_EXT
  -- reuse GL_TRIANGLES_ADJACENCY_EXT
  -- reuse GL_TRIANGLE_STRIP_ADJACENCY_EXT
  -- reuse GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT
  -- reuse GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT
  -- reuse GL_PROGRAM_POINT_SIZE_EXT
  -- reuse GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT
  -- reuse GL_BGRA
  -- reuse GL_RED_SNORM
  -- reuse GL_RG_SNORM
  -- reuse GL_RGB_SNORM
  -- reuse GL_RGBA_SNORM
  -- reuse GL_R8_SNORM
  -- reuse GL_RG8_SNORM
  -- reuse GL_RGB8_SNORM
  -- reuse GL_RGBA8_SNORM
  -- reuse GL_R16_SNORM
  -- reuse GL_RG16_SNORM
  -- reuse GL_RGB16_SNORM
  -- reuse GL_RGBA16_SNORM
  -- reuse GL_SIGNED_NORMALIZED
  -- reuse GL_STORAGE_CACHED_APPLE
  -- reuse GL_STORAGE_SHARED_APPLE
  -- reuse GL_UNSIGNED_SHORT_8_8_APPLE
  -- reuse GL_UNSIGNED_SHORT_8_8_REV_APPLE
  -- reuse GL_TEXTURE_CUBE_MAP_SEAMLESS
  -- reuse GL_DOUBLE
  -- reuse GL_PATCHES
  -- reuse GL_READ_WRITE
  -- reuse GL_WRITE_ONLY
  -- reuse GL_INT64_NV
  -- reuse GL_UNSIGNED_INT64_NV
  --***********************************************************
  -- GL type for program/shader text
   subtype GLchar is char;  

  -- GL types for handling large vertex buffer objects
   subtype GLintptr is stddef_h.ptrdiff_t;  

   subtype GLsizeiptr is stddef_h.ptrdiff_t;  

  -- GL types for handling large vertex buffer objects
   subtype GLintptrARB is stddef_h.ptrdiff_t;  

   subtype GLsizeiptrARB is stddef_h.ptrdiff_t;  

  -- GL types for program/shader text and shader object handles
   subtype GLcharARB is char;  

   subtype GLhandleARB is unsigned;  

  -- GL type for "half" precision (s10e5) float data in host memory
   subtype GLhalfARB is unsigned_short;  

   subtype GLhalfNV is unsigned_short;  

  -- This code block is duplicated in glxext.h, so must be protected
  -- Define int32_t, int64_t, and uint64_t types for UST/MSC
  -- (as used in the GL_EXT_timer_query extension).
  -- Fallback if nothing above works
   subtype GLint64EXT is stdint_h.int64_t;  

   subtype GLuint64EXT is stdint_h.uint64_t;  

   subtype GLint64 is stdint_h.int64_t;  

   subtype GLuint64 is stdint_h.uint64_t;  

   --  skipped empty struct uu_GLsync

   type GLsync is new System.Address;  

  -- These incomplete types let us declare types compatible with OpenCL's cl_context and cl_event
   --  skipped empty struct u_cl_context

   --  skipped empty struct u_cl_event

   type GLDEBUGPROCARB is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : access GLchar;
         arg7 : System.Address);  

   type GLDEBUGPROCAMD is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : access GLchar;
         arg6 : System.Address);  

   subtype GLvdpauSurfaceNV is GLintptr;  

   type PFNGLCOLORTABLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  

   type PFNGLCOLORTABLEPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLCOLORTABLEPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLCOPYCOLORTABLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  

   type PFNGLGETCOLORTABLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  

   type PFNGLGETCOLORTABLEPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETCOLORTABLEPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLCOLORSUBTABLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  

   type PFNGLCOPYCOLORSUBTABLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  

   type PFNGLCONVOLUTIONFILTER1DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  

   type PFNGLCONVOLUTIONFILTER2DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : System.Address);  

   type PFNGLCONVOLUTIONPARAMETERFPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  

   type PFNGLCONVOLUTIONPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLCONVOLUTIONPARAMETERIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  

   type PFNGLCONVOLUTIONPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLCOPYCONVOLUTIONFILTER1DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  

   type PFNGLCOPYCONVOLUTIONFILTER2DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  

   type PFNGLGETCONVOLUTIONFILTERPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  

   type PFNGLGETCONVOLUTIONPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETCONVOLUTIONPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETSEPARABLEFILTERPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : System.Address;
         arg6 : System.Address);  

   type PFNGLSEPARABLEFILTER2DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : System.Address;
         arg8 : System.Address);  

   type PFNGLGETHISTOGRAMPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : System.Address);  

   type PFNGLGETHISTOGRAMPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETHISTOGRAMPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETMINMAXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : System.Address);  

   type PFNGLGETMINMAXPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETMINMAXPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLHISTOGRAMPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLboolean);  

   type PFNGLMINMAXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean);  

   type PFNGLRESETHISTOGRAMPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLRESETMINMAXPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLCLIENTACTIVETEXTUREPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLMULTITEXCOORD1DPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLdouble);  

   type PFNGLMULTITEXCOORD1DVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLMULTITEXCOORD1FPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  

   type PFNGLMULTITEXCOORD1FVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLMULTITEXCOORD1IPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLMULTITEXCOORD1IVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLMULTITEXCOORD1SPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLshort);  

   type PFNGLMULTITEXCOORD1SVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  

   type PFNGLMULTITEXCOORD2DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLMULTITEXCOORD2DVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLMULTITEXCOORD2FPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLMULTITEXCOORD2FVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLMULTITEXCOORD2IPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLMULTITEXCOORD2IVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLMULTITEXCOORD2SPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  

   type PFNGLMULTITEXCOORD2SVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  

   type PFNGLMULTITEXCOORD3DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLMULTITEXCOORD3DVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLMULTITEXCOORD3FPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLMULTITEXCOORD3FVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLMULTITEXCOORD3IPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  

   type PFNGLMULTITEXCOORD3IVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLMULTITEXCOORD3SPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  

   type PFNGLMULTITEXCOORD3SVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  

   type PFNGLMULTITEXCOORD4DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  

   type PFNGLMULTITEXCOORD4DVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLMULTITEXCOORD4FPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  

   type PFNGLMULTITEXCOORD4FVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLMULTITEXCOORD4IPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  

   type PFNGLMULTITEXCOORD4IVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLMULTITEXCOORD4SPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort;
         arg5 : gl_h.GLshort);  

   type PFNGLMULTITEXCOORD4SVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  

   type PFNGLLOADTRANSPOSEMATRIXFPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLLOADTRANSPOSEMATRIXDPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLMULTTRANSPOSEMATRIXFPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLMULTTRANSPOSEMATRIXDPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLBLENDFUNCSEPARATEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  

   type PFNGLMULTIDRAWARRAYSPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : access gl_h.GLint;
         arg3 : access gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  

   type PFNGLMULTIDRAWELEMENTSPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : access gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei);  

   type PFNGLPOINTPARAMETERFPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  

   type PFNGLPOINTPARAMETERFVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLPOINTPARAMETERIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLPOINTPARAMETERIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLFOGCOORDFPROC is access procedure (arg1 : gl_h.GLfloat);  

   type PFNGLFOGCOORDFVPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLFOGCOORDDPROC is access procedure (arg1 : gl_h.GLdouble);  

   type PFNGLFOGCOORDDVPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLFOGCOORDPOINTERPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  

   type PFNGLSECONDARYCOLOR3BPROC is access procedure
        (arg1 : gl_h.GLbyte;
         arg2 : gl_h.GLbyte;
         arg3 : gl_h.GLbyte);  

   type PFNGLSECONDARYCOLOR3BVPROC is access procedure (arg1 : access gl_h.GLbyte);  

   type PFNGLSECONDARYCOLOR3DPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLSECONDARYCOLOR3DVPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLSECONDARYCOLOR3FPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLSECONDARYCOLOR3FVPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLSECONDARYCOLOR3IPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLSECONDARYCOLOR3IVPROC is access procedure (arg1 : access gl_h.GLint);  

   type PFNGLSECONDARYCOLOR3SPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  

   type PFNGLSECONDARYCOLOR3SVPROC is access procedure (arg1 : access gl_h.GLshort);  

   type PFNGLSECONDARYCOLOR3UBPROC is access procedure
        (arg1 : gl_h.GLubyte;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte);  

   type PFNGLSECONDARYCOLOR3UBVPROC is access procedure (arg1 : access gl_h.GLubyte);  

   type PFNGLSECONDARYCOLOR3UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLSECONDARYCOLOR3UIVPROC is access procedure (arg1 : access gl_h.GLuint);  

   type PFNGLSECONDARYCOLOR3USPROC is access procedure
        (arg1 : gl_h.GLushort;
         arg2 : gl_h.GLushort;
         arg3 : gl_h.GLushort);  

   type PFNGLSECONDARYCOLOR3USVPROC is access procedure (arg1 : access gl_h.GLushort);  

   type PFNGLSECONDARYCOLORPOINTERPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  

   type PFNGLWINDOWPOS2DPROC is access procedure (arg1 : gl_h.GLdouble; arg2 : gl_h.GLdouble);  

   type PFNGLWINDOWPOS2DVPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLWINDOWPOS2FPROC is access procedure (arg1 : gl_h.GLfloat; arg2 : gl_h.GLfloat);  

   type PFNGLWINDOWPOS2FVPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLWINDOWPOS2IPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLint);  

   type PFNGLWINDOWPOS2IVPROC is access procedure (arg1 : access gl_h.GLint);  

   type PFNGLWINDOWPOS2SPROC is access procedure (arg1 : gl_h.GLshort; arg2 : gl_h.GLshort);  

   type PFNGLWINDOWPOS2SVPROC is access procedure (arg1 : access gl_h.GLshort);  

   type PFNGLWINDOWPOS3DPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLWINDOWPOS3DVPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLWINDOWPOS3FPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLWINDOWPOS3FVPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLWINDOWPOS3IPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLWINDOWPOS3IVPROC is access procedure (arg1 : access gl_h.GLint);  

   type PFNGLWINDOWPOS3SPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  

   type PFNGLWINDOWPOS3SVPROC is access procedure (arg1 : access gl_h.GLshort);  

   type PFNGLGENQUERIESPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLDELETEQUERIESPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISQUERYPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLBEGINQUERYPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLENDQUERYPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLGETQUERYIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETQUERYOBJECTIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETQUERYOBJECTUIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLBINDBUFFERPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDELETEBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISBUFFERPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLBUFFERDATAPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLsizeiptr;
         arg3 : System.Address;
         arg4 : gl_h.GLenum);  

   type PFNGLBUFFERSUBDATAPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLintptr;
         arg3 : GLsizeiptr;
         arg4 : System.Address);  

   type PFNGLGETBUFFERSUBDATAPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLintptr;
         arg3 : GLsizeiptr;
         arg4 : System.Address);  

   type PFNGLMAPBUFFERPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum) return System.Address;  

   type PFNGLUNMAPBUFFERPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLboolean;  

   type PFNGLGETBUFFERPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETBUFFERPOINTERVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLBLENDEQUATIONSEPARATEPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  

   type PFNGLDRAWBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLenum);  

   type PFNGLSTENCILOPSEPARATEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  

   type PFNGLSTENCILFUNCSEPARATEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLuint);  

   type PFNGLSTENCILMASKSEPARATEPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLATTACHSHADERPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  

   type PFNGLBINDATTRIBLOCATIONPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : access GLchar);  

   type PFNGLCOMPILESHADERPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLCREATEPROGRAMPROC is access function return gl_h.GLuint;  

   type PFNGLCREATESHADERPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLuint;  

   type PFNGLDELETEPROGRAMPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLDELETESHADERPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLDETACHSHADERPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  

   type PFNGLDISABLEVERTEXATTRIBARRAYPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLENABLEVERTEXATTRIBARRAYPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLGETACTIVEATTRIBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLint;
         arg6 : access gl_h.GLenum;
         arg7 : access GLchar);  

   type PFNGLGETACTIVEUNIFORMPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLint;
         arg6 : access gl_h.GLenum;
         arg7 : access GLchar);  

   type PFNGLGETATTACHEDSHADERSPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  

   type PFNGLGETATTRIBLOCATIONPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLint;  

   type PFNGLGETPROGRAMIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETPROGRAMINFOLOGPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLchar);  

   type PFNGLGETSHADERIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETSHADERINFOLOGPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLchar);  

   type PFNGLGETSHADERSOURCEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLchar);  

   type PFNGLGETUNIFORMLOCATIONPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLint;  

   type PFNGLGETUNIFORMFVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETUNIFORMIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLint);  

   type PFNGLGETVERTEXATTRIBDVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLdouble);  

   type PFNGLGETVERTEXATTRIBFVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETVERTEXATTRIBIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETVERTEXATTRIBPOINTERVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLISPROGRAMPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLISSHADERPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLLINKPROGRAMPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLSHADERSOURCEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address;
         arg4 : access gl_h.GLint);  

   type PFNGLUSEPROGRAMPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLUNIFORM1FPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLfloat);  

   type PFNGLUNIFORM2FPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLUNIFORM3FPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLUNIFORM4FPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  

   type PFNGLUNIFORM1IPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLint);  

   type PFNGLUNIFORM2IPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLUNIFORM3IPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  

   type PFNGLUNIFORM4IPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  

   type PFNGLUNIFORM1FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLUNIFORM2FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLUNIFORM3FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLUNIFORM4FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLUNIFORM1IVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  

   type PFNGLUNIFORM2IVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  

   type PFNGLUNIFORM3IVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  

   type PFNGLUNIFORM4IVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  

   type PFNGLUNIFORMMATRIX2FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  

   type PFNGLUNIFORMMATRIX3FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  

   type PFNGLUNIFORMMATRIX4FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  

   type PFNGLVALIDATEPROGRAMPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIB1DPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB1DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB1FPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB1FVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB1SPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLshort);  

   type PFNGLVERTEXATTRIB1SVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB2DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB2DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB2FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB2FVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB2SPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  

   type PFNGLVERTEXATTRIB2SVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB3DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB3DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB3FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB3FVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB3SPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  

   type PFNGLVERTEXATTRIB3SVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB4NBVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  

   type PFNGLVERTEXATTRIB4NIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXATTRIB4NSVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB4NUBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLubyte);  

   type PFNGLVERTEXATTRIB4NUBVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  

   type PFNGLVERTEXATTRIB4NUIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIB4NUSVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  

   type PFNGLVERTEXATTRIB4BVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  

   type PFNGLVERTEXATTRIB4DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB4DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB4FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB4FVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB4IVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXATTRIB4SPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort;
         arg5 : gl_h.GLshort);  

   type PFNGLVERTEXATTRIB4SVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB4UBVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  

   type PFNGLVERTEXATTRIB4UIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIB4USVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  

   type PFNGLVERTEXATTRIBPOINTERPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLsizei;
         arg6 : System.Address);  

   type PFNGLUNIFORMMATRIX2X3FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  

   type PFNGLUNIFORMMATRIX3X2FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  

   type PFNGLUNIFORMMATRIX2X4FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  

   type PFNGLUNIFORMMATRIX4X2FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  

   type PFNGLUNIFORMMATRIX3X4FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  

   type PFNGLUNIFORMMATRIX4X3FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  

  -- OpenGL 3.0 also reuses entry points from these extensions:
  -- ARB_framebuffer_object
  -- ARB_map_buffer_range
  -- ARB_vertex_array_object
   type PFNGLCOLORMASKIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLboolean);  

   type PFNGLGETBOOLEANI_VPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLboolean);  

   type PFNGLGETINTEGERI_VPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  

   type PFNGLENABLEIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDISABLEIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLISENABLEDIPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLBEGINTRANSFORMFEEDBACKPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLENDTRANSFORMFEEDBACKPROC is access procedure;  

   type PFNGLBINDBUFFERRANGEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : GLintptr;
         arg5 : GLsizeiptr);  

   type PFNGLBINDBUFFERBASEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLTRANSFORMFEEDBACKVARYINGSPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address;
         arg4 : gl_h.GLenum);  

   type PFNGLGETTRANSFORMFEEDBACKVARYINGPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLsizei;
         arg6 : access gl_h.GLenum;
         arg7 : access GLchar);  

   type PFNGLCLAMPCOLORPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  

   type PFNGLBEGINCONDITIONALRENDERPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLENDCONDITIONALRENDERPROC is access procedure;  

   type PFNGLVERTEXATTRIBIPOINTERPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  

   type PFNGLGETVERTEXATTRIBIIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETVERTEXATTRIBIUIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI1IPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLint);  

   type PFNGLVERTEXATTRIBI2IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLVERTEXATTRIBI3IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  

   type PFNGLVERTEXATTRIBI4IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  

   type PFNGLVERTEXATTRIBI1UIPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI2UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI3UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI4UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI1IVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXATTRIBI2IVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXATTRIBI3IVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXATTRIBI4IVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXATTRIBI1UIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI2UIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI3UIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI4UIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI4BVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  

   type PFNGLVERTEXATTRIBI4SVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIBI4UBVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  

   type PFNGLVERTEXATTRIBI4USVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  

   type PFNGLGETUNIFORMUIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLuint);  

   type PFNGLBINDFRAGDATALOCATIONPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : access GLchar);  

   type PFNGLGETFRAGDATALOCATIONPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLint;  

   type PFNGLUNIFORM1UIPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLuint);  

   type PFNGLUNIFORM2UIPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLUNIFORM3UIPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  

   type PFNGLUNIFORM4UIPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  

   type PFNGLUNIFORM1UIVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  

   type PFNGLUNIFORM2UIVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  

   type PFNGLUNIFORM3UIVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  

   type PFNGLUNIFORM4UIVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  

   type PFNGLTEXPARAMETERIIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLTEXPARAMETERIUIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLGETTEXPARAMETERIIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETTEXPARAMETERIUIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLCLEARBUFFERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLint);  

   type PFNGLCLEARBUFFERUIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLuint);  

   type PFNGLCLEARBUFFERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLCLEARBUFFERFIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLint);  

   --  type PFNGLGETSTRINGIPROC is
   --    access function (arg1 : gl_h.GLenum;
   --                     arg2 : gl_h.GLuint)
   --                     return access gl_h.GLubyte;
   type PFNGLGETSTRINGIPROC is
     access function (arg1 : gl_h.GLenum;
                      arg2 : gl_h.GLuint)
                      return gl_h.GLubyte_Ptr;

  -- OpenGL 3.1 also reuses entry points from these extensions:
  -- ARB_copy_buffer
  -- ARB_uniform_buffer_object
   type PFNGLDRAWARRAYSINSTANCEDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  

   type PFNGLDRAWELEMENTSINSTANCEDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei);  

   type PFNGLTEXBUFFERPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  

   type PFNGLPRIMITIVERESTARTINDEXPROC is access procedure (arg1 : gl_h.GLuint);  

  -- OpenGL 3.2 also reuses entry points from these extensions:
  -- ARB_draw_elements_base_vertex
  -- ARB_provoking_vertex
  -- ARB_sync
  -- ARB_texture_multisample
   type PFNGLGETINTEGER64I_VPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access GLint64);  

   type PFNGLGETBUFFERPARAMETERI64VPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access GLint64);  

   type PFNGLFRAMEBUFFERTEXTUREPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint);  

  -- OpenGL 3.3 also reuses entry points from these extensions:
  -- ARB_blend_func_extended
  -- ARB_sampler_objects
  -- ARB_explicit_attrib_location, but it has none
  -- ARB_occlusion_query2 (no entry points)
  -- ARB_shader_bit_encoding (no entry points)
  -- ARB_texture_rgb10_a2ui (no entry points)
  -- ARB_texture_swizzle (no entry points)
  -- ARB_timer_query
  -- ARB_vertex_type_2_10_10_10_rev
   type PFNGLVERTEXATTRIBDIVISORPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  

  -- OpenGL 4.0 also reuses entry points from these extensions:
  -- ARB_texture_query_lod (no entry points)
  -- ARB_draw_indirect
  -- ARB_gpu_shader5 (no entry points)
  -- ARB_gpu_shader_fp64
  -- ARB_shader_subroutine
  -- ARB_tessellation_shader
  -- ARB_texture_buffer_object_rgb32 (no entry points)
  -- ARB_texture_cube_map_array (no entry points)
  -- ARB_texture_gather (no entry points)
  -- ARB_transform_feedback2
  -- ARB_transform_feedback3
   type PFNGLMINSAMPLESHADINGPROC is access procedure (arg1 : gl_h.GLclampf);  

   type PFNGLBLENDEQUATIONIPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLBLENDEQUATIONSEPARATEIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum);  

   type PFNGLBLENDFUNCIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum);  

   type PFNGLBLENDFUNCSEPARATEIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum);  

  -- OpenGL 4.1 reuses entry points from these extensions:
  -- ARB_ES2_compatibility
  -- ARB_get_program_binary
  -- ARB_separate_shader_objects
  -- ARB_shader_precision (no entry points)
  -- ARB_vertex_attrib_64bit
  -- ARB_viewport_array
  -- OpenGL 4.2 reuses entry points from these extensions:
  -- ARB_base_instance
  -- ARB_shading_language_420pack (no entry points)
  -- ARB_transform_feedback_instanced
  -- ARB_compressed_texture_pixel_storage (no entry points)
  -- ARB_conservative_depth (no entry points)
  -- ARB_internalformat_query
  -- ARB_map_buffer_alignment (no entry points)
  -- ARB_shader_atomic_counters
  -- ARB_shader_image_load_store
  -- ARB_shading_language_packing (no entry points)
  -- ARB_texture_storage
   type PFNGLLOADTRANSPOSEMATRIXFARBPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLLOADTRANSPOSEMATRIXDARBPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLMULTTRANSPOSEMATRIXFARBPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLMULTTRANSPOSEMATRIXDARBPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLSAMPLECOVERAGEARBPROC is access procedure (arg1 : gl_h.GLclampf; arg2 : gl_h.GLboolean);  

   type PFNGLCOMPRESSEDTEXIMAGE3DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLsizei;
         arg9 : System.Address);  

   type PFNGLCOMPRESSEDTEXIMAGE2DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : System.Address);  

   type PFNGLCOMPRESSEDTEXIMAGE1DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : System.Address);  

   type PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLenum;
         arg10 : gl_h.GLsizei;
         arg11 : System.Address);  

   type PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLenum;
         arg8 : gl_h.GLsizei;
         arg9 : System.Address);  

   type PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLsizei;
         arg7 : System.Address);  

   type PFNGLGETCOMPRESSEDTEXIMAGEARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : System.Address);  

   type PFNGLPOINTPARAMETERFARBPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  

   type PFNGLPOINTPARAMETERFVARBPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLWEIGHTBVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLbyte);  

   type PFNGLWEIGHTSVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLshort);  

   type PFNGLWEIGHTIVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLint);  

   type PFNGLWEIGHTFVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLfloat);  

   type PFNGLWEIGHTDVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLdouble);  

   type PFNGLWEIGHTUBVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLubyte);  

   type PFNGLWEIGHTUSVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLushort);  

   type PFNGLWEIGHTUIVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLuint);  

   type PFNGLWEIGHTPOINTERARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  

   type PFNGLVERTEXBLENDARBPROC is access procedure (arg1 : gl_h.GLint);  

   type PFNGLCURRENTPALETTEMATRIXARBPROC is access procedure (arg1 : gl_h.GLint);  

   type PFNGLMATRIXINDEXUBVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLubyte);  

   type PFNGLMATRIXINDEXUSVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLushort);  

   type PFNGLMATRIXINDEXUIVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLuint);  

   type PFNGLMATRIXINDEXPOINTERARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  

   type PFNGLWINDOWPOS2DARBPROC is access procedure (arg1 : gl_h.GLdouble; arg2 : gl_h.GLdouble);  

   type PFNGLWINDOWPOS2DVARBPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLWINDOWPOS2FARBPROC is access procedure (arg1 : gl_h.GLfloat; arg2 : gl_h.GLfloat);  

   type PFNGLWINDOWPOS2FVARBPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLWINDOWPOS2IARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLint);  

   type PFNGLWINDOWPOS2IVARBPROC is access procedure (arg1 : access gl_h.GLint);  

   type PFNGLWINDOWPOS2SARBPROC is access procedure (arg1 : gl_h.GLshort; arg2 : gl_h.GLshort);  

   type PFNGLWINDOWPOS2SVARBPROC is access procedure (arg1 : access gl_h.GLshort);  

   type PFNGLWINDOWPOS3DARBPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLWINDOWPOS3DVARBPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLWINDOWPOS3FARBPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLWINDOWPOS3FVARBPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLWINDOWPOS3IARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLWINDOWPOS3IVARBPROC is access procedure (arg1 : access gl_h.GLint);  

   type PFNGLWINDOWPOS3SARBPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  

   type PFNGLWINDOWPOS3SVARBPROC is access procedure (arg1 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB1DARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB1DVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB1FARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB1FVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB1SARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLshort);  

   type PFNGLVERTEXATTRIB1SVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB2DARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB2DVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB2FARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB2FVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB2SARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  

   type PFNGLVERTEXATTRIB2SVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB3DARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB3DVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB3FARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB3FVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB3SARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  

   type PFNGLVERTEXATTRIB3SVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB4NBVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  

   type PFNGLVERTEXATTRIB4NIVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXATTRIB4NSVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB4NUBARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLubyte);  

   type PFNGLVERTEXATTRIB4NUBVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  

   type PFNGLVERTEXATTRIB4NUIVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIB4NUSVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  

   type PFNGLVERTEXATTRIB4BVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  

   type PFNGLVERTEXATTRIB4DARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB4DVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB4FARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB4FVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB4IVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXATTRIB4SARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort;
         arg5 : gl_h.GLshort);  

   type PFNGLVERTEXATTRIB4SVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB4UBVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  

   type PFNGLVERTEXATTRIB4UIVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIB4USVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  

   type PFNGLVERTEXATTRIBPOINTERARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLsizei;
         arg6 : System.Address);  

   type PFNGLENABLEVERTEXATTRIBARRAYARBPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLDISABLEVERTEXATTRIBARRAYARBPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLPROGRAMSTRINGARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  

   type PFNGLBINDPROGRAMARBPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDELETEPROGRAMSARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENPROGRAMSARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLPROGRAMENVPARAMETER4DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble);  

   type PFNGLPROGRAMENVPARAMETER4DVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  

   type PFNGLPROGRAMENVPARAMETER4FARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  

   type PFNGLPROGRAMENVPARAMETER4FVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLPROGRAMLOCALPARAMETER4DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble);  

   type PFNGLPROGRAMLOCALPARAMETER4DVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  

   type PFNGLPROGRAMLOCALPARAMETER4FARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  

   type PFNGLPROGRAMLOCALPARAMETER4FVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETPROGRAMENVPARAMETERDVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  

   type PFNGLGETPROGRAMENVPARAMETERFVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  

   type PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETPROGRAMIVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETPROGRAMSTRINGARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLGETVERTEXATTRIBDVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLdouble);  

   type PFNGLGETVERTEXATTRIBFVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETVERTEXATTRIBIVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETVERTEXATTRIBPOINTERVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLISPROGRAMARBPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

  -- All ARB_fragment_program entry points are shared with ARB_vertex_program.
   type PFNGLBINDBUFFERARBPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDELETEBUFFERSARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENBUFFERSARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISBUFFERARBPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLBUFFERDATAARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLsizeiptrARB;
         arg3 : System.Address;
         arg4 : gl_h.GLenum);  

   type PFNGLBUFFERSUBDATAARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLintptrARB;
         arg3 : GLsizeiptrARB;
         arg4 : System.Address);  

   type PFNGLGETBUFFERSUBDATAARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLintptrARB;
         arg3 : GLsizeiptrARB;
         arg4 : System.Address);  

   type PFNGLMAPBUFFERARBPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum) return System.Address;  

   type PFNGLUNMAPBUFFERARBPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLboolean;  

   type PFNGLGETBUFFERPARAMETERIVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETBUFFERPOINTERVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLGENQUERIESARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLDELETEQUERIESARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISQUERYARBPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLBEGINQUERYARBPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLENDQUERYARBPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLGETQUERYIVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETQUERYOBJECTIVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETQUERYOBJECTUIVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLDELETEOBJECTARBPROC is access procedure (arg1 : GLhandleARB);  

   type PFNGLGETHANDLEARBPROC is access function (arg1 : gl_h.GLenum) return GLhandleARB;  

   type PFNGLDETACHOBJECTARBPROC is access procedure (arg1 : GLhandleARB; arg2 : GLhandleARB);  

   type PFNGLCREATESHADEROBJECTARBPROC is access function (arg1 : gl_h.GLenum) return GLhandleARB;  

   type PFNGLSHADERSOURCEARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address;
         arg4 : access gl_h.GLint);  

   type PFNGLCOMPILESHADERARBPROC is access procedure (arg1 : GLhandleARB);  

   type PFNGLCREATEPROGRAMOBJECTARBPROC is access function return GLhandleARB;  

   type PFNGLATTACHOBJECTARBPROC is access procedure (arg1 : GLhandleARB; arg2 : GLhandleARB);  

   type PFNGLLINKPROGRAMARBPROC is access procedure (arg1 : GLhandleARB);  

   type PFNGLUSEPROGRAMOBJECTARBPROC is access procedure (arg1 : GLhandleARB);  

   type PFNGLVALIDATEPROGRAMARBPROC is access procedure (arg1 : GLhandleARB);  

   type PFNGLUNIFORM1FARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLfloat);  

   type PFNGLUNIFORM2FARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLUNIFORM3FARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLUNIFORM4FARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  

   type PFNGLUNIFORM1IARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLint);  

   type PFNGLUNIFORM2IARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLUNIFORM3IARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  

   type PFNGLUNIFORM4IARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  

   type PFNGLUNIFORM1FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLUNIFORM2FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLUNIFORM3FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLUNIFORM4FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLUNIFORM1IVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  

   type PFNGLUNIFORM2IVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  

   type PFNGLUNIFORM3IVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  

   type PFNGLUNIFORM4IVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  

   type PFNGLUNIFORMMATRIX2FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  

   type PFNGLUNIFORMMATRIX3FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  

   type PFNGLUNIFORMMATRIX4FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETOBJECTPARAMETERFVARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETOBJECTPARAMETERIVARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETINFOLOGARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLcharARB);  

   type PFNGLGETATTACHEDOBJECTSARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLhandleARB);  

   type PFNGLGETUNIFORMLOCATIONARBPROC is access function (arg1 : GLhandleARB; arg2 : access GLcharARB) return gl_h.GLint;  

   type PFNGLGETACTIVEUNIFORMARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLint;
         arg6 : access gl_h.GLenum;
         arg7 : access GLcharARB);  

   type PFNGLGETUNIFORMFVARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETUNIFORMIVARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLint);  

   type PFNGLGETSHADERSOURCEARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLcharARB);  

   type PFNGLBINDATTRIBLOCATIONARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLuint;
         arg3 : access GLcharARB);  

   type PFNGLGETACTIVEATTRIBARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLint;
         arg6 : access gl_h.GLenum;
         arg7 : access GLcharARB);  

   type PFNGLGETATTRIBLOCATIONARBPROC is access function (arg1 : GLhandleARB; arg2 : access GLcharARB) return gl_h.GLint;  

   type PFNGLDRAWBUFFERSARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLenum);  

   type PFNGLCLAMPCOLORARBPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  

   type PFNGLDRAWARRAYSINSTANCEDARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  

   type PFNGLDRAWELEMENTSINSTANCEDARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei);  

   type PFNGLISRENDERBUFFERPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLBINDRENDERBUFFERPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDELETERENDERBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENRENDERBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLRENDERBUFFERSTORAGEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  

   type PFNGLGETRENDERBUFFERPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLISFRAMEBUFFERPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLBINDFRAMEBUFFERPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDELETEFRAMEBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENFRAMEBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLCHECKFRAMEBUFFERSTATUSPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLenum;  

   type PFNGLFRAMEBUFFERTEXTURE1DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint);  

   type PFNGLFRAMEBUFFERTEXTURE2DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint);  

   type PFNGLFRAMEBUFFERTEXTURE3DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  

   type PFNGLFRAMEBUFFERRENDERBUFFERPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint);  

   type PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGENERATEMIPMAPPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLBLITFRAMEBUFFERPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLint;
         arg9 : gl_h.GLbitfield;
         arg10 : gl_h.GLenum);  

   type PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei);  

   type PFNGLFRAMEBUFFERTEXTURELAYERPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  

   type PFNGLPROGRAMPARAMETERIARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  

   type PFNGLFRAMEBUFFERTEXTUREARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint);  

   type PFNGLFRAMEBUFFERTEXTURELAYERARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  

   type PFNGLFRAMEBUFFERTEXTUREFACEARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLenum);  

   type PFNGLVERTEXATTRIBDIVISORARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  

   type PFNGLMAPBUFFERRANGEPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : GLintptr;
         arg3 : GLsizeiptr;
         arg4 : gl_h.GLbitfield) return System.Address;  

   type PFNGLFLUSHMAPPEDBUFFERRANGEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLintptr;
         arg3 : GLsizeiptr);  

   type PFNGLTEXBUFFERARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  

   type PFNGLBINDVERTEXARRAYPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLDELETEVERTEXARRAYSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENVERTEXARRAYSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISVERTEXARRAYPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLGETUNIFORMINDICESPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address;
         arg4 : access gl_h.GLuint);  

   type PFNGLGETACTIVEUNIFORMSIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLint);  

   type PFNGLGETACTIVEUNIFORMNAMEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access GLchar);  

   type PFNGLGETUNIFORMBLOCKINDEXPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLuint;  

   type PFNGLGETACTIVEUNIFORMBLOCKIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access GLchar);  

   type PFNGLUNIFORMBLOCKBINDINGPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLCOPYBUFFERSUBDATAPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : GLintptr;
         arg4 : GLintptr;
         arg5 : GLsizeiptr);  

   type PFNGLDRAWELEMENTSBASEVERTEXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLint);  

   type PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : System.Address;
         arg7 : gl_h.GLint);  

   type PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint);  

   type PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : access gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei;
         arg6 : access gl_h.GLint);  

   type PFNGLPROVOKINGVERTEXPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLFENCESYNCPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLbitfield) return GLsync;  

   type PFNGLISSYNCPROC is access function (arg1 : GLsync) return gl_h.GLboolean;  

   type PFNGLDELETESYNCPROC is access procedure (arg1 : GLsync);  

   type PFNGLCLIENTWAITSYNCPROC is access function
        (arg1 : GLsync;
         arg2 : gl_h.GLbitfield;
         arg3 : GLuint64) return gl_h.GLenum;  

   type PFNGLWAITSYNCPROC is access procedure
        (arg1 : GLsync;
         arg2 : gl_h.GLbitfield;
         arg3 : GLuint64);  

   type PFNGLGETINTEGER64VPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access GLint64);  

   type PFNGLGETSYNCIVPROC is access procedure
        (arg1 : GLsync;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLint);  

   type PFNGLTEXIMAGE2DMULTISAMPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLboolean);  

   type PFNGLTEXIMAGE3DMULTISAMPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLboolean);  

   type PFNGLGETMULTISAMPLEFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLSAMPLEMASKIPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLbitfield);  

   type PFNGLBLENDEQUATIONIARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLBLENDEQUATIONSEPARATEIARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum);  

   type PFNGLBLENDFUNCIARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum);  

   type PFNGLBLENDFUNCSEPARATEIARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum);  

   type PFNGLMINSAMPLESHADINGARBPROC is access procedure (arg1 : gl_h.GLclampf);  

   type PFNGLNAMEDSTRINGARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : access GLchar;
         arg4 : gl_h.GLint;
         arg5 : access GLchar);  

   type PFNGLDELETENAMEDSTRINGARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access GLchar);  

   type PFNGLCOMPILESHADERINCLUDEARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address;
         arg4 : access gl_h.GLint);  

   type PFNGLISNAMEDSTRINGARBPROC is access function (arg1 : gl_h.GLint; arg2 : access GLchar) return gl_h.GLboolean;  

   type PFNGLGETNAMEDSTRINGARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : access GLchar;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint;
         arg5 : access GLchar);  

   type PFNGLGETNAMEDSTRINGIVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : access GLchar;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLBINDFRAGDATALOCATIONINDEXEDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : access GLchar);  

   type PFNGLGETFRAGDATAINDEXPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLint;  

   type PFNGLGENSAMPLERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLDELETESAMPLERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISSAMPLERPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLBINDSAMPLERPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  

   type PFNGLSAMPLERPARAMETERIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  

   type PFNGLSAMPLERPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLSAMPLERPARAMETERFPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  

   type PFNGLSAMPLERPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLSAMPLERPARAMETERIIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLSAMPLERPARAMETERIUIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLGETSAMPLERPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETSAMPLERPARAMETERIIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETSAMPLERPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETSAMPLERPARAMETERIUIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLQUERYCOUNTERPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLGETQUERYOBJECTI64VPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLint64);  

   type PFNGLGETQUERYOBJECTUI64VPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLuint64);  

   type PFNGLVERTEXP2UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLVERTEXP2UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXP3UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLVERTEXP3UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXP4UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLVERTEXP4UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  

   type PFNGLTEXCOORDP1UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLTEXCOORDP1UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  

   type PFNGLTEXCOORDP2UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLTEXCOORDP2UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  

   type PFNGLTEXCOORDP3UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLTEXCOORDP3UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  

   type PFNGLTEXCOORDP4UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLTEXCOORDP4UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  

   type PFNGLMULTITEXCOORDP1UIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  

   type PFNGLMULTITEXCOORDP1UIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLMULTITEXCOORDP2UIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  

   type PFNGLMULTITEXCOORDP2UIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLMULTITEXCOORDP3UIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  

   type PFNGLMULTITEXCOORDP3UIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLMULTITEXCOORDP4UIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  

   type PFNGLMULTITEXCOORDP4UIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLNORMALP3UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLNORMALP3UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  

   type PFNGLCOLORP3UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLCOLORP3UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  

   type PFNGLCOLORP4UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLCOLORP4UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  

   type PFNGLSECONDARYCOLORP3UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLSECONDARYCOLORP3UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBP1UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBP1UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBP2UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBP2UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBP3UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBP3UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBP4UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBP4UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLuint);  

   type PFNGLDRAWARRAYSINDIRECTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : System.Address);  

   type PFNGLDRAWELEMENTSINDIRECTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLUNIFORM1DPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLdouble);  

   type PFNGLUNIFORM2DPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLUNIFORM3DPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLUNIFORM4DPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  

   type PFNGLUNIFORM1DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  

   type PFNGLUNIFORM2DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  

   type PFNGLUNIFORM3DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  

   type PFNGLUNIFORM4DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  

   type PFNGLUNIFORMMATRIX2DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  

   type PFNGLUNIFORMMATRIX3DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  

   type PFNGLUNIFORMMATRIX4DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  

   type PFNGLUNIFORMMATRIX2X3DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  

   type PFNGLUNIFORMMATRIX2X4DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  

   type PFNGLUNIFORMMATRIX3X2DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  

   type PFNGLUNIFORMMATRIX3X4DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  

   type PFNGLUNIFORMMATRIX4X2DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  

   type PFNGLUNIFORMMATRIX4X3DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  

   type PFNGLGETUNIFORMDVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLdouble);  

   type PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC is access function
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLchar) return gl_h.GLint;  

   type PFNGLGETSUBROUTINEINDEXPROC is access function
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLchar) return gl_h.GLuint;  

   type PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLint);  

   type PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLsizei;
         arg6 : access GLchar);  

   type PFNGLGETACTIVESUBROUTINENAMEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLsizei;
         arg6 : access GLchar);  

   type PFNGLUNIFORMSUBROUTINESUIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  

   type PFNGLGETUNIFORMSUBROUTINEUIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLuint);  

   type PFNGLGETPROGRAMSTAGEIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLPATCHPARAMETERIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLPATCHPARAMETERFVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLBINDTRANSFORMFEEDBACKPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDELETETRANSFORMFEEDBACKSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENTRANSFORMFEEDBACKSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISTRANSFORMFEEDBACKPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLPAUSETRANSFORMFEEDBACKPROC is access procedure;  

   type PFNGLRESUMETRANSFORMFEEDBACKPROC is access procedure;  

   type PFNGLDRAWTRANSFORMFEEDBACKPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLBEGINQUERYINDEXEDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLENDQUERYINDEXEDPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLGETQUERYINDEXEDIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLRELEASESHADERCOMPILERPROC is access procedure;  

   type PFNGLSHADERBINARYPROC is access procedure
        (arg1 : gl_h.GLsizei;
         arg2 : access gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei);  

   type PFNGLGETSHADERPRECISIONFORMATPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint;
         arg4 : access gl_h.GLint);  

   type PFNGLDEPTHRANGEFPROC is access procedure (arg1 : gl_h.GLclampf; arg2 : gl_h.GLclampf);  

   type PFNGLCLEARDEPTHFPROC is access procedure (arg1 : gl_h.GLclampf);  

   type PFNGLGETPROGRAMBINARYPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access gl_h.GLenum;
         arg5 : System.Address);  

   type PFNGLPROGRAMBINARYPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address;
         arg4 : gl_h.GLsizei);  

   type PFNGLPROGRAMPARAMETERIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  

   type PFNGLUSEPROGRAMSTAGESPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLbitfield;
         arg3 : gl_h.GLuint);  

   type PFNGLACTIVESHADERPROGRAMPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  

   type PFNGLCREATESHADERPROGRAMVPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address) return gl_h.GLuint;  

   type PFNGLBINDPROGRAMPIPELINEPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLDELETEPROGRAMPIPELINESPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENPROGRAMPIPELINESPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISPROGRAMPIPELINEPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLGETPROGRAMPIPELINEIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM1IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM1IVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM1FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM1FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM1DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM1DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM1UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM1UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM2IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM2IVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM2FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM2FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM2DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM2DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM2UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM2UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM3IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM3IVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM3FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM3FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM3DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM3DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM3UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM3UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM4IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM4IVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM4FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM4FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM4DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM4DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM4UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM4UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORMMATRIX2FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX3FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX4FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX2DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX3DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX4DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLVALIDATEPROGRAMPIPELINEPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLGETPROGRAMPIPELINEINFOLOGPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLchar);  

   type PFNGLVERTEXATTRIBL1DPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL2DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL3DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL4DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL1DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL2DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL3DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL4DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBLPOINTERPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  

   type PFNGLGETVERTEXATTRIBLDVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLdouble);  

   type PFNGLVIEWPORTARRAYVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLVIEWPORTINDEXEDFPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  

   type PFNGLVIEWPORTINDEXEDFVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLSCISSORARRAYVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  

   type PFNGLSCISSORINDEXEDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei);  

   type PFNGLSCISSORINDEXEDVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLDEPTHRANGEARRAYVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLclampd);  

   type PFNGLDEPTHRANGEINDEXEDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLclampd;
         arg3 : gl_h.GLclampd);  

   type PFNGLGETFLOATI_VPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETDOUBLEI_VPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  

   type PFNGLCREATESYNCFROMCLEVENTARBPROC is access function
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : gl_h.GLbitfield) return GLsync;  

   type PFNGLDEBUGMESSAGECONTROLARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLuint;
         arg6 : gl_h.GLboolean);  

   type PFNGLDEBUGMESSAGEINSERTARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : access GLchar);  

   type PFNGLDEBUGMESSAGECALLBACKARBPROC is
     access procedure (
                       arg1 : access procedure
                         (arg1 : gl_h.GLenum;
                          arg2 : gl_h.GLenum;
                          arg3 : gl_h.GLuint;
                          arg4 : gl_h.GLenum;
                          arg5 : gl_h.GLsizei;
                          arg6 : access GLchar;
                          arg7 : System.Address);
                       arg2 : System.Address);

   type PFNGLGETDEBUGMESSAGELOGARBPROC is access function
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLenum;
         arg4 : access gl_h.GLenum;
         arg5 : access gl_h.GLuint;
         arg6 : access gl_h.GLenum;
         arg7 : access gl_h.GLsizei;
         arg8 : access GLchar) return gl_h.GLuint;  

   type PFNGLGETGRAPHICSRESETSTATUSARBPROC is access function return gl_h.GLenum;  

   type PFNGLGETNMAPDVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  

   type PFNGLGETNMAPFVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETNMAPIVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  

   type PFNGLGETNPIXELMAPFVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETNPIXELMAPUIVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  

   type PFNGLGETNPIXELMAPUSVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLushort);  

   type PFNGLGETNPOLYGONSTIPPLEARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLubyte);  

   type PFNGLGETNCOLORTABLEARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  

   type PFNGLGETNCONVOLUTIONFILTERARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  

   type PFNGLGETNSEPARABLEFILTERARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address;
         arg6 : gl_h.GLsizei;
         arg7 : System.Address;
         arg8 : System.Address);  

   type PFNGLGETNHISTOGRAMARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : System.Address);  

   type PFNGLGETNMINMAXARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : System.Address);  

   type PFNGLGETNTEXIMAGEARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : System.Address);  

   type PFNGLREADNPIXELSARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLsizei;
         arg8 : System.Address);  

   type PFNGLGETNCOMPRESSEDTEXIMAGEARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  

   type PFNGLGETNUNIFORMFVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETNUNIFORMIVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  

   type PFNGLGETNUNIFORMUIVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  

   type PFNGLGETNUNIFORMDVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  

   type PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLuint);  

   type PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLuint);  

   type PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLuint);  

   type PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei);  

   type PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei);  

   type PFNGLGETINTERNALFORMATIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLint);  

   type PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLBINDIMAGETEXTUREPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLenum);  

   type PFNGLMEMORYBARRIERPROC is access procedure (arg1 : gl_h.GLbitfield);  

   type PFNGLTEXSTORAGE1DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei);  

   type PFNGLTEXSTORAGE2DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei);  

   type PFNGLTEXSTORAGE3DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  

   type PFNGLTEXTURESTORAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei);  

   type PFNGLTEXTURESTORAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  

   type PFNGLTEXTURESTORAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei);  

   type PFNGLBLENDCOLOREXTPROC is access procedure
        (arg1 : gl_h.GLclampf;
         arg2 : gl_h.GLclampf;
         arg3 : gl_h.GLclampf;
         arg4 : gl_h.GLclampf);  

   type PFNGLPOLYGONOFFSETEXTPROC is access procedure (arg1 : gl_h.GLfloat; arg2 : gl_h.GLfloat);  

   type PFNGLTEXIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLenum;
         arg9 : gl_h.GLenum;
         arg10 : System.Address);  

   type PFNGLTEXSUBIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLenum;
         arg10 : gl_h.GLenum;
         arg11 : System.Address);  

   type PFNGLGETTEXFILTERFUNCSGISPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLTEXFILTERFUNCSGISPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLTEXSUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : System.Address);  

   type PFNGLTEXSUBIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLenum;
         arg8 : gl_h.GLenum;
         arg9 : System.Address);  

   type PFNGLCOPYTEXIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLint);  

   type PFNGLCOPYTEXIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLint);  

   type PFNGLCOPYTEXSUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei);  

   type PFNGLCOPYTEXSUBIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei);  

   type PFNGLCOPYTEXSUBIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLsizei);  

   type PFNGLGETHISTOGRAMEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : System.Address);  

   type PFNGLGETHISTOGRAMPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETHISTOGRAMPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETMINMAXEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : System.Address);  

   type PFNGLGETMINMAXPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETMINMAXPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLHISTOGRAMEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLboolean);  

   type PFNGLMINMAXEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean);  

   type PFNGLRESETHISTOGRAMEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLRESETMINMAXEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLCONVOLUTIONFILTER1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  

   type PFNGLCONVOLUTIONFILTER2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : System.Address);  

   type PFNGLCONVOLUTIONPARAMETERFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  

   type PFNGLCONVOLUTIONPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLCONVOLUTIONPARAMETERIEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  

   type PFNGLCONVOLUTIONPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  

   type PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  

   type PFNGLGETCONVOLUTIONFILTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  

   type PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETSEPARABLEFILTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : System.Address;
         arg6 : System.Address);  

   type PFNGLSEPARABLEFILTER2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : System.Address;
         arg8 : System.Address);  

   type PFNGLCOLORTABLESGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  

   type PFNGLCOLORTABLEPARAMETERFVSGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLCOLORTABLEPARAMETERIVSGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLCOPYCOLORTABLESGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  

   type PFNGLGETCOLORTABLESGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  

   type PFNGLGETCOLORTABLEPARAMETERFVSGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETCOLORTABLEPARAMETERIVSGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLPIXELTEXGENSGIXPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLPIXELTEXGENPARAMETERISGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLPIXELTEXGENPARAMETERIVSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLPIXELTEXGENPARAMETERFSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  

   type PFNGLPIXELTEXGENPARAMETERFVSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLGETPIXELTEXGENPARAMETERIVSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLGETPIXELTEXGENPARAMETERFVSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLTEXIMAGE4DSGISPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLint;
         arg9 : gl_h.GLenum;
         arg10 : gl_h.GLenum;
         arg11 : System.Address);  

   type PFNGLTEXSUBIMAGE4DSGISPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLsizei;
         arg10 : gl_h.GLsizei;
         arg11 : gl_h.GLenum;
         arg12 : gl_h.GLenum;
         arg13 : System.Address);  

   type PFNGLARETEXTURESRESIDENTEXTPROC is access function
        (arg1 : gl_h.GLsizei;
         arg2 : access gl_h.GLuint;
         arg3 : access gl_h.GLboolean) return gl_h.GLboolean;  

   type PFNGLBINDTEXTUREEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDELETETEXTURESEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENTEXTURESEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISTEXTUREEXTPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLPRIORITIZETEXTURESEXTPROC is access procedure
        (arg1 : gl_h.GLsizei;
         arg2 : access gl_h.GLuint;
         arg3 : access gl_h.GLclampf);  

   type PFNGLDETAILTEXFUNCSGISPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETDETAILTEXFUNCSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLSHARPENTEXFUNCSGISPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETSHARPENTEXFUNCSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLSAMPLEMASKSGISPROC is access procedure (arg1 : gl_h.GLclampf; arg2 : gl_h.GLboolean);  

   type PFNGLSAMPLEPATTERNSGISPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLARRAYELEMENTEXTPROC is access procedure (arg1 : gl_h.GLint);  

   type PFNGLCOLORPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  

   type PFNGLDRAWARRAYSEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei);  

   type PFNGLEDGEFLAGPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLsizei;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLboolean);  

   type PFNGLGETPOINTERVEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : System.Address);  

   type PFNGLINDEXPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  

   type PFNGLNORMALPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  

   type PFNGLTEXCOORDPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  

   type PFNGLVERTEXPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  

   type PFNGLBLENDEQUATIONEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLSPRITEPARAMETERFSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  

   type PFNGLSPRITEPARAMETERFVSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLSPRITEPARAMETERISGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLSPRITEPARAMETERIVSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLPOINTPARAMETERFEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  

   type PFNGLPOINTPARAMETERFVEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLPOINTPARAMETERFSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  

   type PFNGLPOINTPARAMETERFVSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLGETINSTRUMENTSSGIXPROC is access function return gl_h.GLint;  

   type PFNGLINSTRUMENTSBUFFERSGIXPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLint);  

   type PFNGLPOLLINSTRUMENTSSGIXPROC is access function (arg1 : access gl_h.GLint) return gl_h.GLint;  

   type PFNGLREADINSTRUMENTSSGIXPROC is access procedure (arg1 : gl_h.GLint);  

   type PFNGLSTARTINSTRUMENTSSGIXPROC is access procedure;  

   type PFNGLSTOPINSTRUMENTSSGIXPROC is access procedure (arg1 : gl_h.GLint);  

   type PFNGLFRAMEZOOMSGIXPROC is access procedure (arg1 : gl_h.GLint);  

   type PFNGLTAGSAMPLEBUFFERSGIXPROC is access procedure;  

   type PFNGLDEFORMATIONMAP3DSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLdouble;
         arg7 : gl_h.GLdouble;
         arg8 : gl_h.GLint;
         arg9 : gl_h.GLint;
         arg10 : gl_h.GLdouble;
         arg11 : gl_h.GLdouble;
         arg12 : gl_h.GLint;
         arg13 : gl_h.GLint;
         arg14 : access gl_h.GLdouble);  

   type PFNGLDEFORMATIONMAP3FSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLint;
         arg9 : gl_h.GLint;
         arg10 : gl_h.GLfloat;
         arg11 : gl_h.GLfloat;
         arg12 : gl_h.GLint;
         arg13 : gl_h.GLint;
         arg14 : access gl_h.GLfloat);  

   type PFNGLDEFORMSGIXPROC is access procedure (arg1 : gl_h.GLbitfield);  

   type PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC is access procedure (arg1 : gl_h.GLbitfield);  

   type PFNGLREFERENCEPLANESGIXPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLFLUSHRASTERSGIXPROC is access procedure;  

   type PFNGLFOGFUNCSGISPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLfloat);  

   type PFNGLGETFOGFUNCSGISPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLIMAGETRANSFORMPARAMETERIHPPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  

   type PFNGLIMAGETRANSFORMPARAMETERFHPPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  

   type PFNGLIMAGETRANSFORMPARAMETERIVHPPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLIMAGETRANSFORMPARAMETERFVHPPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLCOLORSUBTABLEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  

   type PFNGLCOPYCOLORSUBTABLEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  

   type PFNGLHINTPGIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLCOLORTABLEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  

   type PFNGLGETCOLORTABLEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  

   type PFNGLGETCOLORTABLEPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETCOLORTABLEPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETLISTPARAMETERFVSGIXPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETLISTPARAMETERIVSGIXPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLLISTPARAMETERFSGIXPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  

   type PFNGLLISTPARAMETERFVSGIXPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLLISTPARAMETERISGIXPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  

   type PFNGLLISTPARAMETERIVSGIXPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLINDEXMATERIALEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  

   type PFNGLINDEXFUNCEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLclampf);  

   type PFNGLLOCKARRAYSEXTPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLsizei);  

   type PFNGLUNLOCKARRAYSEXTPROC is access procedure;  

   type PFNGLCULLPARAMETERDVEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLCULLPARAMETERFVEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLFRAGMENTCOLORMATERIALSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  

   type PFNGLFRAGMENTLIGHTFSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  

   type PFNGLFRAGMENTLIGHTFVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLFRAGMENTLIGHTISGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  

   type PFNGLFRAGMENTLIGHTIVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLFRAGMENTLIGHTMODELFSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  

   type PFNGLFRAGMENTLIGHTMODELFVSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLFRAGMENTLIGHTMODELISGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLFRAGMENTLIGHTMODELIVSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLFRAGMENTMATERIALFSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  

   type PFNGLFRAGMENTMATERIALFVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLFRAGMENTMATERIALISGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  

   type PFNGLFRAGMENTMATERIALIVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETFRAGMENTLIGHTFVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETFRAGMENTLIGHTIVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETFRAGMENTMATERIALFVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETFRAGMENTMATERIALIVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLLIGHTENVISGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLDRAWRANGEELEMENTSEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  

   type PFNGLAPPLYTEXTUREEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLTEXTURELIGHTEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLTEXTUREMATERIALEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  

   type PFNGLASYNCMARKERSGIXPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLFINISHASYNCSGIXPROC is access function (arg1 : access gl_h.GLuint) return gl_h.GLint;  

   type PFNGLPOLLASYNCSGIXPROC is access function (arg1 : access gl_h.GLuint) return gl_h.GLint;  

   type PFNGLGENASYNCMARKERSSGIXPROC is access function (arg1 : gl_h.GLsizei) return gl_h.GLuint;  

   type PFNGLDELETEASYNCMARKERSSGIXPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLsizei);  

   type PFNGLISASYNCMARKERSGIXPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLVERTEXPOINTERVINTELPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLNORMALPOINTERVINTELPROC is access procedure (arg1 : gl_h.GLenum; arg2 : System.Address);  

   type PFNGLCOLORPOINTERVINTELPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLTEXCOORDPOINTERVINTELPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLPIXELTRANSFORMPARAMETERIEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  

   type PFNGLPIXELTRANSFORMPARAMETERFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  

   type PFNGLPIXELTRANSFORMPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLPIXELTRANSFORMPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLSECONDARYCOLOR3BEXTPROC is access procedure
        (arg1 : gl_h.GLbyte;
         arg2 : gl_h.GLbyte;
         arg3 : gl_h.GLbyte);  

   type PFNGLSECONDARYCOLOR3BVEXTPROC is access procedure (arg1 : access gl_h.GLbyte);  

   type PFNGLSECONDARYCOLOR3DEXTPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLSECONDARYCOLOR3DVEXTPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLSECONDARYCOLOR3FEXTPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLSECONDARYCOLOR3FVEXTPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLSECONDARYCOLOR3IEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLSECONDARYCOLOR3IVEXTPROC is access procedure (arg1 : access gl_h.GLint);  

   type PFNGLSECONDARYCOLOR3SEXTPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  

   type PFNGLSECONDARYCOLOR3SVEXTPROC is access procedure (arg1 : access gl_h.GLshort);  

   type PFNGLSECONDARYCOLOR3UBEXTPROC is access procedure
        (arg1 : gl_h.GLubyte;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte);  

   type PFNGLSECONDARYCOLOR3UBVEXTPROC is access procedure (arg1 : access gl_h.GLubyte);  

   type PFNGLSECONDARYCOLOR3UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLSECONDARYCOLOR3UIVEXTPROC is access procedure (arg1 : access gl_h.GLuint);  

   type PFNGLSECONDARYCOLOR3USEXTPROC is access procedure
        (arg1 : gl_h.GLushort;
         arg2 : gl_h.GLushort;
         arg3 : gl_h.GLushort);  

   type PFNGLSECONDARYCOLOR3USVEXTPROC is access procedure (arg1 : access gl_h.GLushort);  

   type PFNGLSECONDARYCOLORPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  

   type PFNGLTEXTURENORMALEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLMULTIDRAWARRAYSEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : access gl_h.GLint;
         arg3 : access gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  

   type PFNGLMULTIDRAWELEMENTSEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : access gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei);  

   type PFNGLFOGCOORDFEXTPROC is access procedure (arg1 : gl_h.GLfloat);  

   type PFNGLFOGCOORDFVEXTPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLFOGCOORDDEXTPROC is access procedure (arg1 : gl_h.GLdouble);  

   type PFNGLFOGCOORDDVEXTPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLFOGCOORDPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  

   type PFNGLTANGENT3BEXTPROC is access procedure
        (arg1 : gl_h.GLbyte;
         arg2 : gl_h.GLbyte;
         arg3 : gl_h.GLbyte);  

   type PFNGLTANGENT3BVEXTPROC is access procedure (arg1 : access gl_h.GLbyte);  

   type PFNGLTANGENT3DEXTPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLTANGENT3DVEXTPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLTANGENT3FEXTPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLTANGENT3FVEXTPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLTANGENT3IEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLTANGENT3IVEXTPROC is access procedure (arg1 : access gl_h.GLint);  

   type PFNGLTANGENT3SEXTPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  

   type PFNGLTANGENT3SVEXTPROC is access procedure (arg1 : access gl_h.GLshort);  

   type PFNGLBINORMAL3BEXTPROC is access procedure
        (arg1 : gl_h.GLbyte;
         arg2 : gl_h.GLbyte;
         arg3 : gl_h.GLbyte);  

   type PFNGLBINORMAL3BVEXTPROC is access procedure (arg1 : access gl_h.GLbyte);  

   type PFNGLBINORMAL3DEXTPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLBINORMAL3DVEXTPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLBINORMAL3FEXTPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLBINORMAL3FVEXTPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLBINORMAL3IEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLBINORMAL3IVEXTPROC is access procedure (arg1 : access gl_h.GLint);  

   type PFNGLBINORMAL3SEXTPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  

   type PFNGLBINORMAL3SVEXTPROC is access procedure (arg1 : access gl_h.GLshort);  

   type PFNGLTANGENTPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  

   type PFNGLBINORMALPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  

   type PFNGLFINISHTEXTURESUNXPROC is access procedure;  

   type PFNGLGLOBALALPHAFACTORBSUNPROC is access procedure (arg1 : gl_h.GLbyte);  

   type PFNGLGLOBALALPHAFACTORSSUNPROC is access procedure (arg1 : gl_h.GLshort);  

   type PFNGLGLOBALALPHAFACTORISUNPROC is access procedure (arg1 : gl_h.GLint);  

   type PFNGLGLOBALALPHAFACTORFSUNPROC is access procedure (arg1 : gl_h.GLfloat);  

   type PFNGLGLOBALALPHAFACTORDSUNPROC is access procedure (arg1 : gl_h.GLdouble);  

   type PFNGLGLOBALALPHAFACTORUBSUNPROC is access procedure (arg1 : gl_h.GLubyte);  

   type PFNGLGLOBALALPHAFACTORUSSUNPROC is access procedure (arg1 : gl_h.GLushort);  

   type PFNGLGLOBALALPHAFACTORUISUNPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLREPLACEMENTCODEUISUNPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLREPLACEMENTCODEUSSUNPROC is access procedure (arg1 : gl_h.GLushort);  

   type PFNGLREPLACEMENTCODEUBSUNPROC is access procedure (arg1 : gl_h.GLubyte);  

   type PFNGLREPLACEMENTCODEUIVSUNPROC is access procedure (arg1 : access gl_h.GLuint);  

   type PFNGLREPLACEMENTCODEUSVSUNPROC is access procedure (arg1 : access gl_h.GLushort);  

   type PFNGLREPLACEMENTCODEUBVSUNPROC is access procedure (arg1 : access gl_h.GLubyte);  

   type PFNGLREPLACEMENTCODEPOINTERSUNPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  

   type PFNGLCOLOR4UBVERTEX2FSUNPROC is access procedure
        (arg1 : gl_h.GLubyte;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  

   type PFNGLCOLOR4UBVERTEX2FVSUNPROC is access procedure (arg1 : access gl_h.GLubyte; arg2 : access gl_h.GLfloat);  

   type PFNGLCOLOR4UBVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLubyte;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat);  

   type PFNGLCOLOR4UBVERTEX3FVSUNPROC is access procedure (arg1 : access gl_h.GLubyte; arg2 : access gl_h.GLfloat);  

   type PFNGLCOLOR3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  

   type PFNGLCOLOR3FVERTEX3FVSUNPROC is access procedure (arg1 : access gl_h.GLfloat; arg2 : access gl_h.GLfloat);  

   type PFNGLNORMAL3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  

   type PFNGLNORMAL3FVERTEX3FVSUNPROC is access procedure (arg1 : access gl_h.GLfloat; arg2 : access gl_h.GLfloat);  

   type PFNGLCOLOR4FNORMAL3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat;
         arg9 : gl_h.GLfloat;
         arg10 : gl_h.GLfloat);  

   type PFNGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLfloat;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat);  

   type PFNGLTEXCOORD2FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  

   type PFNGLTEXCOORD2FVERTEX3FVSUNPROC is access procedure (arg1 : access gl_h.GLfloat; arg2 : access gl_h.GLfloat);  

   type PFNGLTEXCOORD4FVERTEX4FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat);  

   type PFNGLTEXCOORD4FVERTEX4FVSUNPROC is access procedure (arg1 : access gl_h.GLfloat; arg2 : access gl_h.GLfloat);  

   type PFNGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLubyte;
         arg6 : gl_h.GLubyte;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat;
         arg9 : gl_h.GLfloat);  

   type PFNGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLfloat;
         arg2 : access gl_h.GLubyte;
         arg3 : access gl_h.GLfloat);  

   type PFNGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat);  

   type PFNGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLfloat;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat);  

   type PFNGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat);  

   type PFNGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLfloat;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat);  

   type PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat;
         arg9 : gl_h.GLfloat;
         arg10 : gl_h.GLfloat;
         arg11 : gl_h.GLfloat;
         arg12 : gl_h.GLfloat);  

   type PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLfloat;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat;
         arg4 : access gl_h.GLfloat);  

   type PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat;
         arg9 : gl_h.GLfloat;
         arg10 : gl_h.GLfloat;
         arg11 : gl_h.GLfloat;
         arg12 : gl_h.GLfloat;
         arg13 : gl_h.GLfloat;
         arg14 : gl_h.GLfloat;
         arg15 : gl_h.GLfloat);  

   type PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC is access procedure
        (arg1 : access gl_h.GLfloat;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat;
         arg4 : access gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUIVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUIVERTEX3FVSUNPROC is access procedure (arg1 : access gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLubyte;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLubyte;
         arg3 : access gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat;
         arg9 : gl_h.GLfloat;
         arg10 : gl_h.GLfloat;
         arg11 : gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat;
         arg4 : access gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat;
         arg9 : gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat;
         arg4 : access gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat;
         arg9 : gl_h.GLfloat;
         arg10 : gl_h.GLfloat;
         arg11 : gl_h.GLfloat;
         arg12 : gl_h.GLfloat;
         arg13 : gl_h.GLfloat);  

   type PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat;
         arg4 : access gl_h.GLfloat;
         arg5 : access gl_h.GLfloat);  

   type PFNGLBLENDFUNCSEPARATEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  

   type PFNGLBLENDFUNCSEPARATEINGRPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  

   type PFNGLVERTEXWEIGHTFEXTPROC is access procedure (arg1 : gl_h.GLfloat);  

   type PFNGLVERTEXWEIGHTFVEXTPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLVERTEXWEIGHTPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLsizei;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  

   type PFNGLFLUSHVERTEXARRAYRANGENVPROC is access procedure;  

   type PFNGLVERTEXARRAYRANGENVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : System.Address);  

   type PFNGLCOMBINERPARAMETERFVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLCOMBINERPARAMETERFNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  

   type PFNGLCOMBINERPARAMETERIVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLCOMBINERPARAMETERINVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLCOMBINERINPUTNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum);  

   type PFNGLCOMBINEROUTPUTNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLenum;
         arg8 : gl_h.GLboolean;
         arg9 : gl_h.GLboolean;
         arg10 : gl_h.GLboolean);  

   type PFNGLFINALCOMBINERINPUTNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  

   type PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLfloat);  

   type PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLint);  

   type PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLRESIZEBUFFERSMESAPROC is access procedure;  

   type PFNGLWINDOWPOS2DMESAPROC is access procedure (arg1 : gl_h.GLdouble; arg2 : gl_h.GLdouble);  

   type PFNGLWINDOWPOS2DVMESAPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLWINDOWPOS2FMESAPROC is access procedure (arg1 : gl_h.GLfloat; arg2 : gl_h.GLfloat);  

   type PFNGLWINDOWPOS2FVMESAPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLWINDOWPOS2IMESAPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLint);  

   type PFNGLWINDOWPOS2IVMESAPROC is access procedure (arg1 : access gl_h.GLint);  

   type PFNGLWINDOWPOS2SMESAPROC is access procedure (arg1 : gl_h.GLshort; arg2 : gl_h.GLshort);  

   type PFNGLWINDOWPOS2SVMESAPROC is access procedure (arg1 : access gl_h.GLshort);  

   type PFNGLWINDOWPOS3DMESAPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLWINDOWPOS3DVMESAPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLWINDOWPOS3FMESAPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLWINDOWPOS3FVMESAPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLWINDOWPOS3IMESAPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLWINDOWPOS3IVMESAPROC is access procedure (arg1 : access gl_h.GLint);  

   type PFNGLWINDOWPOS3SMESAPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  

   type PFNGLWINDOWPOS3SVMESAPROC is access procedure (arg1 : access gl_h.GLshort);  

   type PFNGLWINDOWPOS4DMESAPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLWINDOWPOS4DVMESAPROC is access procedure (arg1 : access gl_h.GLdouble);  

   type PFNGLWINDOWPOS4FMESAPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLWINDOWPOS4FVMESAPROC is access procedure (arg1 : access gl_h.GLfloat);  

   type PFNGLWINDOWPOS4IMESAPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  

   type PFNGLWINDOWPOS4IVMESAPROC is access procedure (arg1 : access gl_h.GLint);  

   type PFNGLWINDOWPOS4SMESAPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  

   type PFNGLWINDOWPOS4SVMESAPROC is access procedure (arg1 : access gl_h.GLshort);  

   type PFNGLMULTIMODEDRAWARRAYSIBMPROC is access procedure
        (arg1 : access gl_h.GLenum;
         arg2 : access gl_h.GLint;
         arg3 : access gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLint);  

   type PFNGLMULTIMODEDRAWELEMENTSIBMPROC is access procedure
        (arg1 : access gl_h.GLenum;
         arg2 : access gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint);  

   type PFNGLCOLORPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : System.Address;
         arg5 : gl_h.GLint);  

   type PFNGLSECONDARYCOLORPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : System.Address;
         arg5 : gl_h.GLint);  

   type PFNGLEDGEFLAGPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : System.Address;
         arg3 : gl_h.GLint);  

   type PFNGLFOGCOORDPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : System.Address;
         arg4 : gl_h.GLint);  

   type PFNGLINDEXPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : System.Address;
         arg4 : gl_h.GLint);  

   type PFNGLNORMALPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : System.Address;
         arg4 : gl_h.GLint);  

   type PFNGLTEXCOORDPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : System.Address;
         arg5 : gl_h.GLint);  

   type PFNGLVERTEXPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : System.Address;
         arg5 : gl_h.GLint);  

   type PFNGLTBUFFERMASK3DFXPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLSAMPLEMASKEXTPROC is access procedure (arg1 : gl_h.GLclampf; arg2 : gl_h.GLboolean);  

   type PFNGLSAMPLEPATTERNEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLTEXTURECOLORMASKSGISPROC is access procedure
        (arg1 : gl_h.GLboolean;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLboolean);  

   type PFNGLIGLOOINTERFACESGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : System.Address);  

   type PFNGLDELETEFENCESNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENFENCESNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISFENCENVPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLTESTFENCENVPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLGETFENCEIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLFINISHFENCENVPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLSETFENCENVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLMAPCONTROLPOINTSNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLboolean;
         arg9 : System.Address);  

   type PFNGLMAPPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLMAPPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETMAPCONTROLPOINTSNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLboolean;
         arg7 : System.Address);  

   type PFNGLGETMAPPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETMAPPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETMAPATTRIBPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETMAPATTRIBPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLEVALMAPSNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  

   type PFNGLCOMBINERSTAGEPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLAREPROGRAMSRESIDENTNVPROC is access function
        (arg1 : gl_h.GLsizei;
         arg2 : access gl_h.GLuint;
         arg3 : access gl_h.GLboolean) return gl_h.GLboolean;  

   type PFNGLBINDPROGRAMNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDELETEPROGRAMSNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLEXECUTEPROGRAMNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGENPROGRAMSNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGETPROGRAMPARAMETERDVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLdouble);  

   type PFNGLGETPROGRAMPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETPROGRAMIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETPROGRAMSTRINGNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLubyte);  

   type PFNGLGETTRACKMATRIXIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETVERTEXATTRIBDVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLdouble);  

   type PFNGLGETVERTEXATTRIBFVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETVERTEXATTRIBIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETVERTEXATTRIBPOINTERVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLISPROGRAMNVPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLLOADPROGRAMNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLubyte);  

   type PFNGLPROGRAMPARAMETER4DNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble);  

   type PFNGLPROGRAMPARAMETER4DVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  

   type PFNGLPROGRAMPARAMETER4FNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  

   type PFNGLPROGRAMPARAMETER4FVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLPROGRAMPARAMETERS4DVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  

   type PFNGLPROGRAMPARAMETERS4FVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLREQUESTRESIDENTPROGRAMSNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLTRACKMATRIXNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  

   type PFNGLVERTEXATTRIBPOINTERNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  

   type PFNGLVERTEXATTRIB1DNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB1DVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB1FNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB1FVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB1SNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLshort);  

   type PFNGLVERTEXATTRIB1SVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB2DNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB2DVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB2FNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB2FVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB2SNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  

   type PFNGLVERTEXATTRIB2SVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB3DNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB3DVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB3FNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB3FVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB3SNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  

   type PFNGLVERTEXATTRIB3SVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB4DNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB4DVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIB4FNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB4FVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIB4SNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort;
         arg5 : gl_h.GLshort);  

   type PFNGLVERTEXATTRIB4SVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIB4UBNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLubyte);  

   type PFNGLVERTEXATTRIB4UBVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  

   type PFNGLVERTEXATTRIBS1DVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBS1FVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIBS1SVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIBS2DVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBS2FVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIBS2SVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIBS3DVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBS3FVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIBS3SVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIBS4DVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBS4FVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  

   type PFNGLVERTEXATTRIBS4SVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIBS4UBVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte);  

   type PFNGLTEXBUMPPARAMETERIVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLTEXBUMPPARAMETERFVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLGETTEXBUMPPARAMETERIVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLGETTEXBUMPPARAMETERFVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLGENFRAGMENTSHADERSATIPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLuint;  

   type PFNGLBINDFRAGMENTSHADERATIPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLDELETEFRAGMENTSHADERATIPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLBEGINFRAGMENTSHADERATIPROC is access procedure;  

   type PFNGLENDFRAGMENTSHADERATIPROC is access procedure;  

   type PFNGLPASSTEXCOORDATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum);  

   type PFNGLSAMPLEMAPATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum);  

   type PFNGLCOLORFRAGMENTOP1ATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint;
         arg7 : gl_h.GLuint);  

   type PFNGLCOLORFRAGMENTOP2ATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint;
         arg7 : gl_h.GLuint;
         arg8 : gl_h.GLuint;
         arg9 : gl_h.GLuint;
         arg10 : gl_h.GLuint);  

   type PFNGLCOLORFRAGMENTOP3ATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint;
         arg7 : gl_h.GLuint;
         arg8 : gl_h.GLuint;
         arg9 : gl_h.GLuint;
         arg10 : gl_h.GLuint;
         arg11 : gl_h.GLuint;
         arg12 : gl_h.GLuint;
         arg13 : gl_h.GLuint);  

   type PFNGLALPHAFRAGMENTOP1ATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint);  

   type PFNGLALPHAFRAGMENTOP2ATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint;
         arg7 : gl_h.GLuint;
         arg8 : gl_h.GLuint;
         arg9 : gl_h.GLuint);  

   type PFNGLALPHAFRAGMENTOP3ATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint;
         arg7 : gl_h.GLuint;
         arg8 : gl_h.GLuint;
         arg9 : gl_h.GLuint;
         arg10 : gl_h.GLuint;
         arg11 : gl_h.GLuint;
         arg12 : gl_h.GLuint);  

   type PFNGLSETFRAGMENTSHADERCONSTANTATIPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLPNTRIANGLESIATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLPNTRIANGLESFATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  

   type PFNGLNEWOBJECTBUFFERATIPROC is access function
        (arg1 : gl_h.GLsizei;
         arg2 : System.Address;
         arg3 : gl_h.GLenum) return gl_h.GLuint;  

   type PFNGLISOBJECTBUFFERATIPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLUPDATEOBJECTBUFFERATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address;
         arg5 : gl_h.GLenum);  

   type PFNGLGETOBJECTBUFFERFVATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETOBJECTBUFFERIVATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLFREEOBJECTBUFFERATIPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLARRAYOBJECTATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint);  

   type PFNGLGETARRAYOBJECTFVATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETARRAYOBJECTIVATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLVARIANTARRAYOBJECTATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  

   type PFNGLGETVARIANTARRAYOBJECTFVATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETVARIANTARRAYOBJECTIVATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLBEGINVERTEXSHADEREXTPROC is access procedure;  

   type PFNGLENDVERTEXSHADEREXTPROC is access procedure;  

   type PFNGLBINDVERTEXSHADEREXTPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLGENVERTEXSHADERSEXTPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLuint;  

   type PFNGLDELETEVERTEXSHADEREXTPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLSHADEROP1EXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLSHADEROP2EXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  

   type PFNGLSHADEROP3EXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  

   type PFNGLSWIZZLEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum);  

   type PFNGLWRITEMASKEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum);  

   type PFNGLINSERTCOMPONENTEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLEXTRACTCOMPONENTEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLGENSYMBOLSEXTPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint) return gl_h.GLuint;  

   type PFNGLSETINVARIANTEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLSETLOCALCONSTANTEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLVARIANTBVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  

   type PFNGLVARIANTSVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVARIANTIVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVARIANTFVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  

   type PFNGLVARIANTDVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVARIANTUBVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  

   type PFNGLVARIANTUSVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  

   type PFNGLVARIANTUIVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVARIANTPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : System.Address);  

   type PFNGLENABLEVARIANTCLIENTSTATEEXTPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLDISABLEVARIANTCLIENTSTATEEXTPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLBINDLIGHTPARAMETEREXTPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum) return gl_h.GLuint;  

   type PFNGLBINDMATERIALPARAMETEREXTPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum) return gl_h.GLuint;  

   type PFNGLBINDTEXGENPARAMETEREXTPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum) return gl_h.GLuint;  

   type PFNGLBINDTEXTUREUNITPARAMETEREXTPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum) return gl_h.GLuint;  

   type PFNGLBINDPARAMETEREXTPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLuint;  

   type PFNGLISVARIANTENABLEDEXTPROC is access function (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum) return gl_h.GLboolean;  

   type PFNGLGETVARIANTBOOLEANVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLboolean);  

   type PFNGLGETVARIANTINTEGERVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETVARIANTFLOATVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETVARIANTPOINTERVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLGETINVARIANTBOOLEANVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLboolean);  

   type PFNGLGETINVARIANTINTEGERVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETINVARIANTFLOATVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETLOCALCONSTANTBOOLEANVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLboolean);  

   type PFNGLGETLOCALCONSTANTINTEGERVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETLOCALCONSTANTFLOATVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLVERTEXSTREAM1SATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLshort);  

   type PFNGLVERTEXSTREAM1SVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXSTREAM1IATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLVERTEXSTREAM1IVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXSTREAM1FATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  

   type PFNGLVERTEXSTREAM1FVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXSTREAM1DATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLdouble);  

   type PFNGLVERTEXSTREAM1DVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXSTREAM2SATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  

   type PFNGLVERTEXSTREAM2SVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXSTREAM2IATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLVERTEXSTREAM2IVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXSTREAM2FATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  

   type PFNGLVERTEXSTREAM2FVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXSTREAM2DATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLVERTEXSTREAM2DVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXSTREAM3SATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  

   type PFNGLVERTEXSTREAM3SVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXSTREAM3IATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  

   type PFNGLVERTEXSTREAM3IVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXSTREAM3FATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLVERTEXSTREAM3FVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXSTREAM3DATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLVERTEXSTREAM3DVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXSTREAM4SATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort;
         arg5 : gl_h.GLshort);  

   type PFNGLVERTEXSTREAM4SVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXSTREAM4IATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  

   type PFNGLVERTEXSTREAM4IVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXSTREAM4FATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  

   type PFNGLVERTEXSTREAM4FVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLVERTEXSTREAM4DATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  

   type PFNGLVERTEXSTREAM4DVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLNORMALSTREAM3BATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLbyte;
         arg3 : gl_h.GLbyte;
         arg4 : gl_h.GLbyte);  

   type PFNGLNORMALSTREAM3BVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLbyte);  

   type PFNGLNORMALSTREAM3SATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  

   type PFNGLNORMALSTREAM3SVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  

   type PFNGLNORMALSTREAM3IATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  

   type PFNGLNORMALSTREAM3IVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLNORMALSTREAM3FATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLNORMALSTREAM3FVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLNORMALSTREAM3DATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLNORMALSTREAM3DVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLCLIENTACTIVEVERTEXSTREAMATIPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLVERTEXBLENDENVIATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLVERTEXBLENDENVFATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  

   type PFNGLELEMENTPOINTERATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : System.Address);  

   type PFNGLDRAWELEMENTARRAYATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLsizei);  

   type PFNGLDRAWRANGEELEMENTARRAYATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei);  

   type PFNGLDRAWMESHARRAYSSUNPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  

   type PFNGLGENOCCLUSIONQUERIESNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLDELETEOCCLUSIONQUERIESNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISOCCLUSIONQUERYNVPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLBEGINOCCLUSIONQUERYNVPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLENDOCCLUSIONQUERYNVPROC is access procedure;  

   type PFNGLGETOCCLUSIONQUERYIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETOCCLUSIONQUERYUIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLPOINTPARAMETERINVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLPOINTPARAMETERIVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  

   type PFNGLACTIVESTENCILFACEEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLELEMENTPOINTERAPPLEPROC is access procedure (arg1 : gl_h.GLenum; arg2 : System.Address);  

   type PFNGLDRAWELEMENTARRAYAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei);  

   type PFNGLDRAWRANGEELEMENTARRAYAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  

   type PFNGLMULTIDRAWELEMENTARRAYAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : access gl_h.GLint;
         arg3 : access gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  

   type PFNGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLint;
         arg5 : access gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  

   type PFNGLGENFENCESAPPLEPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLDELETEFENCESAPPLEPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLSETFENCEAPPLEPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLISFENCEAPPLEPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLTESTFENCEAPPLEPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLFINISHFENCEAPPLEPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLTESTOBJECTAPPLEPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLFINISHOBJECTAPPLEPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLBINDVERTEXARRAYAPPLEPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLDELETEVERTEXARRAYSAPPLEPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENVERTEXARRAYSAPPLEPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISVERTEXARRAYAPPLEPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLVERTEXARRAYRANGEAPPLEPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : System.Address);  

   type PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : System.Address);  

   type PFNGLVERTEXARRAYPARAMETERIAPPLEPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLDRAWBUFFERSATIPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLenum);  

  -- This is really a WGL extension, but defines some associated GL enums.
  -- * ATI does not export "GL_ATI_pixel_format_float" in the GL_EXTENSIONS string.
  --

  -- Some NV_fragment_program entry points are shared with ARB_vertex_program.
   type PFNGLPROGRAMNAMEDPARAMETER4FNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat);  

   type PFNGLPROGRAMNAMEDPARAMETER4DNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble;
         arg7 : gl_h.GLdouble);  

   type PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte;
         arg4 : access gl_h.GLfloat);  

   type PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte;
         arg4 : access gl_h.GLdouble);  

   type PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte;
         arg4 : access gl_h.GLdouble);  

   type PFNGLVERTEX2HNVPROC is access procedure (arg1 : GLhalfNV; arg2 : GLhalfNV);  

   type PFNGLVERTEX2HVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLVERTEX3HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  

   type PFNGLVERTEX3HVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLVERTEX4HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV);  

   type PFNGLVERTEX4HVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLNORMAL3HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  

   type PFNGLNORMAL3HVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLCOLOR3HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  

   type PFNGLCOLOR3HVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLCOLOR4HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV);  

   type PFNGLCOLOR4HVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLTEXCOORD1HNVPROC is access procedure (arg1 : GLhalfNV);  

   type PFNGLTEXCOORD1HVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLTEXCOORD2HNVPROC is access procedure (arg1 : GLhalfNV; arg2 : GLhalfNV);  

   type PFNGLTEXCOORD2HVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLTEXCOORD3HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  

   type PFNGLTEXCOORD3HVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLTEXCOORD4HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV);  

   type PFNGLTEXCOORD4HVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLMULTITEXCOORD1HNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : GLhalfNV);  

   type PFNGLMULTITEXCOORD1HVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access GLhalfNV);  

   type PFNGLMULTITEXCOORD2HNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  

   type PFNGLMULTITEXCOORD2HVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access GLhalfNV);  

   type PFNGLMULTITEXCOORD3HNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV);  

   type PFNGLMULTITEXCOORD3HVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access GLhalfNV);  

   type PFNGLMULTITEXCOORD4HNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV;
         arg5 : GLhalfNV);  

   type PFNGLMULTITEXCOORD4HVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access GLhalfNV);  

   type PFNGLFOGCOORDHNVPROC is access procedure (arg1 : GLhalfNV);  

   type PFNGLFOGCOORDHVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLSECONDARYCOLOR3HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  

   type PFNGLSECONDARYCOLOR3HVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLVERTEXWEIGHTHNVPROC is access procedure (arg1 : GLhalfNV);  

   type PFNGLVERTEXWEIGHTHVNVPROC is access procedure (arg1 : access GLhalfNV);  

   type PFNGLVERTEXATTRIB1HNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : GLhalfNV);  

   type PFNGLVERTEXATTRIB1HVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLhalfNV);  

   type PFNGLVERTEXATTRIB2HNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  

   type PFNGLVERTEXATTRIB2HVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLhalfNV);  

   type PFNGLVERTEXATTRIB3HNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV);  

   type PFNGLVERTEXATTRIB3HVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLhalfNV);  

   type PFNGLVERTEXATTRIB4HNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV;
         arg5 : GLhalfNV);  

   type PFNGLVERTEXATTRIB4HVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLhalfNV);  

   type PFNGLVERTEXATTRIBS1HVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLhalfNV);  

   type PFNGLVERTEXATTRIBS2HVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLhalfNV);  

   type PFNGLVERTEXATTRIBS3HVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLhalfNV);  

   type PFNGLVERTEXATTRIBS4HVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLhalfNV);  

   type PFNGLPIXELDATARANGENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  

   type PFNGLFLUSHPIXELDATARANGENVPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLPRIMITIVERESTARTNVPROC is access procedure;  

   type PFNGLPRIMITIVERESTARTINDEXNVPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLMAPOBJECTBUFFERATIPROC is access function (arg1 : gl_h.GLuint) return System.Address;  

   type PFNGLUNMAPOBJECTBUFFERATIPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLSTENCILOPSEPARATEATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  

   type PFNGLSTENCILFUNCSEPARATEATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBARRAYOBJECTATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLuint;
         arg7 : gl_h.GLuint);  

   type PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLDEPTHBOUNDSEXTPROC is access procedure (arg1 : gl_h.GLclampd; arg2 : gl_h.GLclampd);  

   type PFNGLBLENDEQUATIONSEPARATEEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  

   type PFNGLISRENDERBUFFEREXTPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLBINDRENDERBUFFEREXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDELETERENDERBUFFERSEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENRENDERBUFFERSEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLRENDERBUFFERSTORAGEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  

   type PFNGLGETRENDERBUFFERPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLISFRAMEBUFFEREXTPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLBINDFRAMEBUFFEREXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDELETEFRAMEBUFFERSEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENFRAMEBUFFERSEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLCHECKFRAMEBUFFERSTATUSEXTPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLenum;  

   type PFNGLFRAMEBUFFERTEXTURE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint);  

   type PFNGLFRAMEBUFFERTEXTURE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint);  

   type PFNGLFRAMEBUFFERTEXTURE3DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  

   type PFNGLFRAMEBUFFERRENDERBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint);  

   type PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGENERATEMIPMAPEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLSTRINGMARKERGREMEDYPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : System.Address);  

   type PFNGLSTENCILCLEARTAGEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : gl_h.GLuint);  

   type PFNGLBLITFRAMEBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLint;
         arg9 : gl_h.GLbitfield;
         arg10 : gl_h.GLenum);  

   type PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei);  

   type PFNGLGETQUERYOBJECTI64VEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLint64EXT);  

   type PFNGLGETQUERYOBJECTUI64VEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLuint64EXT);  

   type PFNGLPROGRAMENVPARAMETERS4FVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLPROGRAMLOCALPARAMETERS4FVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLBUFFERPARAMETERIAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  

   type PFNGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLintptr;
         arg3 : GLsizeiptr);  

   type PFNGLPROGRAMLOCALPARAMETERI4INVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  

   type PFNGLPROGRAMLOCALPARAMETERI4IVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  

   type PFNGLPROGRAMLOCALPARAMETERSI4IVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  

   type PFNGLPROGRAMLOCALPARAMETERI4UINVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint);  

   type PFNGLPROGRAMLOCALPARAMETERI4UIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  

   type PFNGLPROGRAMLOCALPARAMETERSI4UIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  

   type PFNGLPROGRAMENVPARAMETERI4INVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  

   type PFNGLPROGRAMENVPARAMETERI4IVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  

   type PFNGLPROGRAMENVPARAMETERSI4IVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  

   type PFNGLPROGRAMENVPARAMETERI4UINVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint);  

   type PFNGLPROGRAMENVPARAMETERI4UIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  

   type PFNGLPROGRAMENVPARAMETERSI4UIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  

   type PFNGLGETPROGRAMLOCALPARAMETERIIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  

   type PFNGLGETPROGRAMLOCALPARAMETERIUIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  

   type PFNGLGETPROGRAMENVPARAMETERIIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  

   type PFNGLGETPROGRAMENVPARAMETERIUIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  

   type PFNGLPROGRAMVERTEXLIMITNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  

   type PFNGLFRAMEBUFFERTEXTUREEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint);  

   type PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  

   type PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLenum);  

   type PFNGLPROGRAMPARAMETERIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  

   type PFNGLVERTEXATTRIBI1IEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLint);  

   type PFNGLVERTEXATTRIBI2IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLVERTEXATTRIBI3IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  

   type PFNGLVERTEXATTRIBI4IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  

   type PFNGLVERTEXATTRIBI1UIEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI2UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI3UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI4UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI1IVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXATTRIBI2IVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXATTRIBI3IVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXATTRIBI4IVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  

   type PFNGLVERTEXATTRIBI1UIVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI2UIVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI3UIVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI4UIVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  

   type PFNGLVERTEXATTRIBI4BVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  

   type PFNGLVERTEXATTRIBI4SVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  

   type PFNGLVERTEXATTRIBI4UBVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  

   type PFNGLVERTEXATTRIBI4USVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  

   type PFNGLVERTEXATTRIBIPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  

   type PFNGLGETVERTEXATTRIBIIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETVERTEXATTRIBIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLGETUNIFORMUIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLuint);  

   type PFNGLBINDFRAGDATALOCATIONEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : access GLchar);  

   type PFNGLGETFRAGDATALOCATIONEXTPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLint;  

   type PFNGLUNIFORM1UIEXTPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLuint);  

   type PFNGLUNIFORM2UIEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLUNIFORM3UIEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  

   type PFNGLUNIFORM4UIEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  

   type PFNGLUNIFORM1UIVEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  

   type PFNGLUNIFORM2UIVEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  

   type PFNGLUNIFORM3UIVEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  

   type PFNGLUNIFORM4UIVEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  

   type PFNGLDRAWARRAYSINSTANCEDEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  

   type PFNGLDRAWELEMENTSINSTANCEDEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei);  

   type PFNGLTEXBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  

   type PFNGLDEPTHRANGEDNVPROC is access procedure (arg1 : gl_h.GLdouble; arg2 : gl_h.GLdouble);  

   type PFNGLCLEARDEPTHDNVPROC is access procedure (arg1 : gl_h.GLdouble);  

   type PFNGLDEPTHBOUNDSDNVPROC is access procedure (arg1 : gl_h.GLdouble; arg2 : gl_h.GLdouble);  

   type PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  

   type PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLint);  

   type PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLuint);  

   type PFNGLCOLORMASKINDEXEDEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLboolean);  

   type PFNGLGETBOOLEANINDEXEDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLboolean);  

   type PFNGLGETINTEGERINDEXEDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  

   type PFNGLENABLEINDEXEDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDISABLEINDEXEDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLISENABLEDINDEXEDEXTPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLBEGINTRANSFORMFEEDBACKNVPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLENDTRANSFORMFEEDBACKNVPROC is access procedure;  

   type PFNGLTRANSFORMFEEDBACKATTRIBSNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : access gl_h.GLint;
         arg3 : gl_h.GLenum);  

   type PFNGLBINDBUFFERRANGENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : GLintptr;
         arg5 : GLsizeiptr);  

   type PFNGLBINDBUFFEROFFSETNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : GLintptr);  

   type PFNGLBINDBUFFERBASENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLTRANSFORMFEEDBACKVARYINGSNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint;
         arg4 : gl_h.GLenum);  

   type PFNGLACTIVEVARYINGNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLchar);  

   type PFNGLGETVARYINGLOCATIONNVPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLint;  

   type PFNGLGETACTIVEVARYINGNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLsizei;
         arg6 : access gl_h.GLenum;
         arg7 : access GLchar);  

   type PFNGLGETTRANSFORMFEEDBACKVARYINGNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  

   type PFNGLTRANSFORMFEEDBACKSTREAMATTRIBSNVPROC is access procedure
        (arg1 : gl_h.GLsizei;
         arg2 : access gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint;
         arg5 : gl_h.GLenum);  

   type PFNGLUNIFORMBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint);  

   type PFNGLGETUNIFORMBUFFERSIZEEXTPROC is access function (arg1 : gl_h.GLuint; arg2 : gl_h.GLint) return gl_h.GLint;  

   type PFNGLGETUNIFORMOFFSETEXTPROC is access function (arg1 : gl_h.GLuint; arg2 : gl_h.GLint) return GLintptr;  

   type PFNGLTEXPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLTEXPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLGETTEXPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETTEXPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLCLEARCOLORIIEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  

   type PFNGLCLEARCOLORIUIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  

   type PFNGLFRAMETERMINATORGREMEDYPROC is access procedure;  

   type PFNGLBEGINCONDITIONALRENDERNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLENDCONDITIONALRENDERNVPROC is access procedure;  

   type PFNGLPRESENTFRAMEKEYEDNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLuint64EXT;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLuint;
         arg8 : gl_h.GLuint;
         arg9 : gl_h.GLenum;
         arg10 : gl_h.GLuint;
         arg11 : gl_h.GLuint);  

   type PFNGLPRESENTFRAMEDUALFILLNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLuint64EXT;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLuint;
         arg8 : gl_h.GLenum;
         arg9 : gl_h.GLuint;
         arg10 : gl_h.GLenum;
         arg11 : gl_h.GLuint;
         arg12 : gl_h.GLenum;
         arg13 : gl_h.GLuint);  

   type PFNGLGETVIDEOIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETVIDEOUIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  

   type PFNGLGETVIDEOI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLint64EXT);  

   type PFNGLGETVIDEOUI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLuint64EXT);  

   type PFNGLBEGINTRANSFORMFEEDBACKEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLENDTRANSFORMFEEDBACKEXTPROC is access procedure;  

   type PFNGLBINDBUFFERRANGEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : GLintptr;
         arg5 : GLsizeiptr);  

   type PFNGLBINDBUFFEROFFSETEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : GLintptr);  

   type PFNGLBINDBUFFERBASEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  

   type PFNGLTRANSFORMFEEDBACKVARYINGSEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address;
         arg4 : gl_h.GLenum);  

   type PFNGLGETTRANSFORMFEEDBACKVARYINGEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLsizei;
         arg6 : access gl_h.GLenum;
         arg7 : access GLchar);  

   type PFNGLCLIENTATTRIBDEFAULTEXTPROC is access procedure (arg1 : gl_h.GLbitfield);  

   type PFNGLPUSHCLIENTATTRIBDEFAULTEXTPROC is access procedure (arg1 : gl_h.GLbitfield);  

   type PFNGLMATRIXLOADFEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLMATRIXLOADDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLMATRIXMULTFEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLMATRIXMULTDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLMATRIXLOADIDENTITYEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLMATRIXROTATEFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  

   type PFNGLMATRIXROTATEDEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  

   type PFNGLMATRIXSCALEFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLMATRIXSCALEDEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLMATRIXTRANSLATEFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLMATRIXTRANSLATEDEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLMATRIXFRUSTUMEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble;
         arg7 : gl_h.GLdouble);  

   type PFNGLMATRIXORTHOEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble;
         arg7 : gl_h.GLdouble);  

   type PFNGLMATRIXPOPEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLMATRIXPUSHEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLMATRIXLOADTRANSPOSEFEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLMATRIXLOADTRANSPOSEDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLMATRIXMULTTRANSPOSEFEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  

   type PFNGLMATRIXMULTTRANSPOSEDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  

   type PFNGLTEXTUREPARAMETERFEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLfloat);  

   type PFNGLTEXTUREPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLTEXTUREPARAMETERIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLint);  

   type PFNGLTEXTUREPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLTEXTUREIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLenum;
         arg8 : gl_h.GLenum;
         arg9 : System.Address);  

   type PFNGLTEXTUREIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLenum;
         arg9 : gl_h.GLenum;
         arg10 : System.Address);  

   type PFNGLTEXTURESUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLenum;
         arg8 : System.Address);  

   type PFNGLTEXTURESUBIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLenum;
         arg9 : gl_h.GLenum;
         arg10 : System.Address);  

   type PFNGLCOPYTEXTUREIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLint);  

   type PFNGLCOPYTEXTUREIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLint);  

   type PFNGLCOPYTEXTURESUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei);  

   type PFNGLCOPYTEXTURESUBIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLsizei);  

   type PFNGLGETTEXTUREIMAGEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  

   type PFNGLGETTEXTUREPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETTEXTUREPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETTEXTURELEVELPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLfloat);  

   type PFNGLGETTEXTURELEVELPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLint);  

   type PFNGLTEXTUREIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLint;
         arg9 : gl_h.GLenum;
         arg10 : gl_h.GLenum;
         arg11 : System.Address);  

   type PFNGLTEXTURESUBIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLsizei;
         arg10 : gl_h.GLenum;
         arg11 : gl_h.GLenum;
         arg12 : System.Address);  

   type PFNGLCOPYTEXTURESUBIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLint;
         arg9 : gl_h.GLsizei;
         arg10 : gl_h.GLsizei);  

   type PFNGLMULTITEXPARAMETERFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLfloat);  

   type PFNGLMULTITEXPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLMULTITEXPARAMETERIEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLint);  

   type PFNGLMULTITEXPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLMULTITEXIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLenum;
         arg8 : gl_h.GLenum;
         arg9 : System.Address);  

   type PFNGLMULTITEXIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLenum;
         arg9 : gl_h.GLenum;
         arg10 : System.Address);  

   type PFNGLMULTITEXSUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLenum;
         arg8 : System.Address);  

   type PFNGLMULTITEXSUBIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLenum;
         arg9 : gl_h.GLenum;
         arg10 : System.Address);  

   type PFNGLCOPYMULTITEXIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLint);  

   type PFNGLCOPYMULTITEXIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLint);  

   type PFNGLCOPYMULTITEXSUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei);  

   type PFNGLCOPYMULTITEXSUBIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLsizei);  

   type PFNGLGETMULTITEXIMAGEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  

   type PFNGLGETMULTITEXPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETMULTITEXPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETMULTITEXLEVELPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLfloat);  

   type PFNGLGETMULTITEXLEVELPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLint);  

   type PFNGLMULTITEXIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLint;
         arg9 : gl_h.GLenum;
         arg10 : gl_h.GLenum;
         arg11 : System.Address);  

   type PFNGLMULTITEXSUBIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLsizei;
         arg10 : gl_h.GLenum;
         arg11 : gl_h.GLenum;
         arg12 : System.Address);  

   type PFNGLCOPYMULTITEXSUBIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLint;
         arg9 : gl_h.GLsizei;
         arg10 : gl_h.GLsizei);  

   type PFNGLBINDMULTITEXTUREEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  

   type PFNGLENABLECLIENTSTATEINDEXEDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDISABLECLIENTSTATEINDEXEDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLMULTITEXCOORDPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  

   type PFNGLMULTITEXENVFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLfloat);  

   type PFNGLMULTITEXENVFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLMULTITEXENVIEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLint);  

   type PFNGLMULTITEXENVIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLMULTITEXGENDEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLdouble);  

   type PFNGLMULTITEXGENDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLdouble);  

   type PFNGLMULTITEXGENFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLfloat);  

   type PFNGLMULTITEXGENFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLMULTITEXGENIEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLint);  

   type PFNGLMULTITEXGENIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETMULTITEXENVFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETMULTITEXENVIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETMULTITEXGENDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLdouble);  

   type PFNGLGETMULTITEXGENFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETMULTITEXGENIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETFLOATINDEXEDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLGETDOUBLEINDEXEDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  

   type PFNGLGETPOINTERINDEXEDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : System.Address);  

   type PFNGLCOMPRESSEDTEXTUREIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLint;
         arg9 : gl_h.GLsizei;
         arg10 : System.Address);  

   type PFNGLCOMPRESSEDTEXTUREIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLsizei;
         arg9 : System.Address);  

   type PFNGLCOMPRESSEDTEXTUREIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : System.Address);  

   type PFNGLCOMPRESSEDTEXTURESUBIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLsizei;
         arg10 : gl_h.GLenum;
         arg11 : gl_h.GLsizei;
         arg12 : System.Address);  

   type PFNGLCOMPRESSEDTEXTURESUBIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLenum;
         arg9 : gl_h.GLsizei;
         arg10 : System.Address);  

   type PFNGLCOMPRESSEDTEXTURESUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLsizei;
         arg8 : System.Address);  

   type PFNGLGETCOMPRESSEDTEXTUREIMAGEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : System.Address);  

   type PFNGLCOMPRESSEDMULTITEXIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLint;
         arg9 : gl_h.GLsizei;
         arg10 : System.Address);  

   type PFNGLCOMPRESSEDMULTITEXIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLsizei;
         arg9 : System.Address);  

   type PFNGLCOMPRESSEDMULTITEXIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : System.Address);  

   type PFNGLCOMPRESSEDMULTITEXSUBIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLsizei;
         arg10 : gl_h.GLenum;
         arg11 : gl_h.GLsizei;
         arg12 : System.Address);  

   type PFNGLCOMPRESSEDMULTITEXSUBIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLenum;
         arg9 : gl_h.GLsizei;
         arg10 : System.Address);  

   type PFNGLCOMPRESSEDMULTITEXSUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLsizei;
         arg8 : System.Address);  

   type PFNGLGETCOMPRESSEDMULTITEXIMAGEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : System.Address);  

   type PFNGLNAMEDPROGRAMSTRINGEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  

   type PFNGLNAMEDPROGRAMLOCALPARAMETER4DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble;
         arg7 : gl_h.GLdouble);  

   type PFNGLNAMEDPROGRAMLOCALPARAMETER4DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLdouble);  

   type PFNGLNAMEDPROGRAMLOCALPARAMETER4FEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat);  

   type PFNGLNAMEDPROGRAMLOCALPARAMETER4FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETNAMEDPROGRAMLOCALPARAMETERDVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLdouble);  

   type PFNGLGETNAMEDPROGRAMLOCALPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETNAMEDPROGRAMIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETNAMEDPROGRAMSTRINGEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  

   type PFNGLNAMEDPROGRAMLOCALPARAMETERS4FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLfloat);  

   type PFNGLNAMEDPROGRAMLOCALPARAMETERI4IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint);  

   type PFNGLNAMEDPROGRAMLOCALPARAMETERI4IVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLint);  

   type PFNGLNAMEDPROGRAMLOCALPARAMETERSI4IVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLint);  

   type PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint;
         arg7 : gl_h.GLuint);  

   type PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLuint);  

   type PFNGLNAMEDPROGRAMLOCALPARAMETERSI4UIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLuint);  

   type PFNGLGETNAMEDPROGRAMLOCALPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLint);  

   type PFNGLGETNAMEDPROGRAMLOCALPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLuint);  

   type PFNGLTEXTUREPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLTEXTUREPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLuint);  

   type PFNGLGETTEXTUREPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETTEXTUREPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLuint);  

   type PFNGLMULTITEXPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLMULTITEXPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLuint);  

   type PFNGLGETMULTITEXPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETMULTITEXPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM1FEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM2FEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM3FEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM4FEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM1IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM2IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM3IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM4IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM1FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM2FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM3FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM4FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM1IVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM2IVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM3IVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  

   type PFNGLPROGRAMUNIFORM4IVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  

   type PFNGLPROGRAMUNIFORMMATRIX2FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX3FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX4FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX2X3FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX3X2FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX2X4FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX4X2FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX3X4FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORMMATRIX4X3FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  

   type PFNGLPROGRAMUNIFORM1UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM2UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM3UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM4UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM1UIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM2UIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM3UIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM4UIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  

   type PFNGLNAMEDBUFFERDATAEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLsizeiptr;
         arg3 : System.Address;
         arg4 : gl_h.GLenum);  

   type PFNGLNAMEDBUFFERSUBDATAEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLintptr;
         arg3 : GLsizeiptr;
         arg4 : System.Address);  

   type PFNGLMAPNAMEDBUFFEREXTPROC is access function (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum) return System.Address;  

   type PFNGLUNMAPNAMEDBUFFEREXTPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLMAPNAMEDBUFFERRANGEEXTPROC is access function
        (arg1 : gl_h.GLuint;
         arg2 : GLintptr;
         arg3 : GLsizeiptr;
         arg4 : gl_h.GLbitfield) return System.Address;  

   type PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLintptr;
         arg3 : GLsizeiptr);  

   type PFNGLNAMEDCOPYBUFFERSUBDATAEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : GLintptr;
         arg4 : GLintptr;
         arg5 : GLsizeiptr);  

   type PFNGLGETNAMEDBUFFERPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETNAMEDBUFFERPOINTERVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLGETNAMEDBUFFERSUBDATAEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLintptr;
         arg3 : GLsizeiptr;
         arg4 : System.Address);  

   type PFNGLTEXTUREBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint);  

   type PFNGLMULTITEXBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint);  

   type PFNGLNAMEDRENDERBUFFERSTORAGEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  

   type PFNGLGETNAMEDRENDERBUFFERPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLCHECKNAMEDFRAMEBUFFERSTATUSEXTPROC is access function (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum) return gl_h.GLenum;  

   type PFNGLNAMEDFRAMEBUFFERTEXTURE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint);  

   type PFNGLNAMEDFRAMEBUFFERTEXTURE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint);  

   type PFNGLNAMEDFRAMEBUFFERTEXTURE3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  

   type PFNGLNAMEDFRAMEBUFFERRENDERBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint);  

   type PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGENERATETEXTUREMIPMAPEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLGENERATEMULTITEXMIPMAPEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  

   type PFNGLFRAMEBUFFERDRAWBUFFEREXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLFRAMEBUFFERDRAWBUFFERSEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLenum);  

   type PFNGLFRAMEBUFFERREADBUFFEREXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLGETFRAMEBUFFERPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei);  

   type PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLECOVERAGEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  

   type PFNGLNAMEDFRAMEBUFFERTEXTUREEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint);  

   type PFNGLNAMEDFRAMEBUFFERTEXTURELAYEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  

   type PFNGLNAMEDFRAMEBUFFERTEXTUREFACEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLenum);  

   type PFNGLTEXTURERENDERBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  

   type PFNGLMULTITEXRENDERBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  

   type PFNGLPROGRAMUNIFORM1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM4DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM1DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM2DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM3DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORM4DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX2DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX3DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX4DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX2X3DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX2X4DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX3X2DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX3X4DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX4X2DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLPROGRAMUNIFORMMATRIX4X3DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  

   type PFNGLGETMULTISAMPLEFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLSAMPLEMASKINDEXEDNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLbitfield);  

   type PFNGLTEXRENDERBUFFERNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLBINDTRANSFORMFEEDBACKNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLDELETETRANSFORMFEEDBACKSNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLGENTRANSFORMFEEDBACKSNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLISTRANSFORMFEEDBACKNVPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLPAUSETRANSFORMFEEDBACKNVPROC is access procedure;  

   type PFNGLRESUMETRANSFORMFEEDBACKNVPROC is access procedure;  

   type PFNGLDRAWTRANSFORMFEEDBACKNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLGETPERFMONITORGROUPSAMDPROC is access procedure
        (arg1 : access gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  

   type PFNGLGETPERFMONITORCOUNTERSAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : access gl_h.GLint;
         arg3 : access gl_h.GLint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLuint);  

   type PFNGLGETPERFMONITORGROUPSTRINGAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLchar);  

   type PFNGLGETPERFMONITORCOUNTERSTRINGAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access GLchar);  

   type PFNGLGETPERFMONITORCOUNTERINFOAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  

   type PFNGLGENPERFMONITORSAMDPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLDELETEPERFMONITORSAMDPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  

   type PFNGLSELECTPERFMONITORCOUNTERSAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : access gl_h.GLuint);  

   type PFNGLBEGINPERFMONITORAMDPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLENDPERFMONITORAMDPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLGETPERFMONITORCOUNTERDATAAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint;
         arg5 : access gl_h.GLint);  

   type PFNGLTESSELLATIONFACTORAMDPROC is access procedure (arg1 : gl_h.GLfloat);  

   type PFNGLTESSELLATIONMODEAMDPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLPROVOKINGVERTEXEXTPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLBLENDFUNCINDEXEDAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum);  

   type PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum);  

   type PFNGLBLENDEQUATIONINDEXEDAMDPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum);  

   type PFNGLTEXTURERANGEAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  

   type PFNGLGETTEXPARAMETERPOINTERVAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  

   type PFNGLENABLEVERTEXATTRIBAPPLEPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLDISABLEVERTEXATTRIBAPPLEPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLISVERTEXATTRIBENABLEDAPPLEPROC is access function (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum) return gl_h.GLboolean;  

   type PFNGLMAPVERTEXATTRIB1DAPPLEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : access gl_h.GLdouble);  

   type PFNGLMAPVERTEXATTRIB1FAPPLEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : access gl_h.GLfloat);  

   type PFNGLMAPVERTEXATTRIB2DAPPLEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLdouble;
         arg8 : gl_h.GLdouble;
         arg9 : gl_h.GLint;
         arg10 : gl_h.GLint;
         arg11 : access gl_h.GLdouble);  

   type PFNGLMAPVERTEXATTRIB2FAPPLEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat;
         arg9 : gl_h.GLint;
         arg10 : gl_h.GLint;
         arg11 : access gl_h.GLfloat);  

   type PFNGLOBJECTPURGEABLEAPPLEPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum) return gl_h.GLenum;  

   type PFNGLOBJECTUNPURGEABLEAPPLEPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum) return gl_h.GLenum;  

   type PFNGLGETOBJECTPARAMETERIVAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLBEGINVIDEOCAPTURENVPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLBINDVIDEOCAPTURESTREAMBUFFERNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : GLintptrARB);  

   type PFNGLBINDVIDEOCAPTURESTREAMTEXTURENVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLuint);  

   type PFNGLENDVIDEOCAPTURENVPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLGETVIDEOCAPTUREIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  

   type PFNGLGETVIDEOCAPTURESTREAMIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLGETVIDEOCAPTURESTREAMFVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLGETVIDEOCAPTURESTREAMDVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLdouble);  

   type PFNGLVIDEOCAPTURENVPROC is access function
        (arg1 : gl_h.GLuint;
         arg2 : access gl_h.GLuint;
         arg3 : access GLuint64EXT) return gl_h.GLenum;  

   type PFNGLVIDEOCAPTURESTREAMPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  

   type PFNGLVIDEOCAPTURESTREAMPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  

   type PFNGLVIDEOCAPTURESTREAMPARAMETERDVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLdouble);  

   type PFNGLCOPYIMAGESUBDATANVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLuint;
         arg8 : gl_h.GLenum;
         arg9 : gl_h.GLint;
         arg10 : gl_h.GLint;
         arg11 : gl_h.GLint;
         arg12 : gl_h.GLint;
         arg13 : gl_h.GLsizei;
         arg14 : gl_h.GLsizei;
         arg15 : gl_h.GLsizei);  

   type PFNGLUSESHADERPROGRAMEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  

   type PFNGLACTIVEPROGRAMEXTPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLCREATESHADERPROGRAMEXTPROC is access function (arg1 : gl_h.GLenum; arg2 : access GLchar) return gl_h.GLuint;  

   type PFNGLMAKEBUFFERRESIDENTNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  

   type PFNGLMAKEBUFFERNONRESIDENTNVPROC is access procedure (arg1 : gl_h.GLenum);  

   type PFNGLISBUFFERRESIDENTNVPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLboolean;  

   type PFNGLMAKENAMEDBUFFERRESIDENTNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  

   type PFNGLMAKENAMEDBUFFERNONRESIDENTNVPROC is access procedure (arg1 : gl_h.GLuint);  

   type PFNGLISNAMEDBUFFERRESIDENTNVPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLGETBUFFERPARAMETERUI64VNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access GLuint64EXT);  

   type PFNGLGETNAMEDBUFFERPARAMETERUI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLuint64EXT);  

   type PFNGLGETINTEGERUI64VNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access GLuint64EXT);  

   type PFNGLUNIFORMUI64NVPROC is access procedure (arg1 : gl_h.GLint; arg2 : GLuint64EXT);  

   type PFNGLUNIFORMUI64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLuint64EXT);  

   type PFNGLGETUNIFORMUI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access GLuint64EXT);  

   type PFNGLPROGRAMUNIFORMUI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLuint64EXT);  

   type PFNGLPROGRAMUNIFORMUI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLuint64EXT);  

   type PFNGLBUFFERADDRESSRANGENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : GLuint64EXT;
         arg4 : GLsizeiptr);  

   type PFNGLVERTEXFORMATNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei);  

   type PFNGLNORMALFORMATNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLsizei);  

   type PFNGLCOLORFORMATNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei);  

   type PFNGLINDEXFORMATNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLsizei);  

   type PFNGLTEXCOORDFORMATNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei);  

   type PFNGLEDGEFLAGFORMATNVPROC is access procedure (arg1 : gl_h.GLsizei);  

   type PFNGLSECONDARYCOLORFORMATNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei);  

   type PFNGLFOGCOORDFORMATNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLsizei);  

   type PFNGLVERTEXATTRIBFORMATNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLsizei);  

   type PFNGLVERTEXATTRIBIFORMATNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei);  

   type PFNGLGETINTEGERUI64I_VNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access GLuint64EXT);  

   type PFNGLTEXTUREBARRIERNVPROC is access procedure;  

   type PFNGLBINDIMAGETEXTUREEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLint);  

   type PFNGLMEMORYBARRIEREXTPROC is access procedure (arg1 : gl_h.GLbitfield);  

   type PFNGLVERTEXATTRIBL1DEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL4DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL1DVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL2DVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL3DVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBL4DVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  

   type PFNGLVERTEXATTRIBLPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  

   type PFNGLGETVERTEXATTRIBLDVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLdouble);  

   type PFNGLVERTEXARRAYVERTEXATTRIBLOFFSETEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLsizei;
         arg7 : GLintptr);  

   type PFNGLPROGRAMSUBROUTINEPARAMETERSUIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  

   type PFNGLGETPROGRAMSUBROUTINEPARAMETERUIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  

   type PFNGLUNIFORM1I64NVPROC is access procedure (arg1 : gl_h.GLint; arg2 : GLint64EXT);  

   type PFNGLUNIFORM2I64NVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : GLint64EXT;
         arg3 : GLint64EXT);  

   type PFNGLUNIFORM3I64NVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : GLint64EXT;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT);  

   type PFNGLUNIFORM4I64NVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : GLint64EXT;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT;
         arg5 : GLint64EXT);  

   type PFNGLUNIFORM1I64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLint64EXT);  

   type PFNGLUNIFORM2I64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLint64EXT);  

   type PFNGLUNIFORM3I64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLint64EXT);  

   type PFNGLUNIFORM4I64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLint64EXT);  

   type PFNGLUNIFORM1UI64NVPROC is access procedure (arg1 : gl_h.GLint; arg2 : GLuint64EXT);  

   type PFNGLUNIFORM2UI64NVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : GLuint64EXT;
         arg3 : GLuint64EXT);  

   type PFNGLUNIFORM3UI64NVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : GLuint64EXT;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT);  

   type PFNGLUNIFORM4UI64NVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : GLuint64EXT;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT;
         arg5 : GLuint64EXT);  

   type PFNGLUNIFORM1UI64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLuint64EXT);  

   type PFNGLUNIFORM2UI64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLuint64EXT);  

   type PFNGLUNIFORM3UI64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLuint64EXT);  

   type PFNGLUNIFORM4UI64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLuint64EXT);  

   type PFNGLGETUNIFORMI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access GLint64EXT);  

   type PFNGLPROGRAMUNIFORM1I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLint64EXT);  

   type PFNGLPROGRAMUNIFORM2I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT);  

   type PFNGLPROGRAMUNIFORM3I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT;
         arg5 : GLint64EXT);  

   type PFNGLPROGRAMUNIFORM4I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT;
         arg5 : GLint64EXT;
         arg6 : GLint64EXT);  

   type PFNGLPROGRAMUNIFORM1I64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLint64EXT);  

   type PFNGLPROGRAMUNIFORM2I64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLint64EXT);  

   type PFNGLPROGRAMUNIFORM3I64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLint64EXT);  

   type PFNGLPROGRAMUNIFORM4I64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLint64EXT);  

   type PFNGLPROGRAMUNIFORM1UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLuint64EXT);  

   type PFNGLPROGRAMUNIFORM2UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT);  

   type PFNGLPROGRAMUNIFORM3UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT;
         arg5 : GLuint64EXT);  

   type PFNGLPROGRAMUNIFORM4UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT;
         arg5 : GLuint64EXT;
         arg6 : GLuint64EXT);  

   type PFNGLPROGRAMUNIFORM1UI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLuint64EXT);  

   type PFNGLPROGRAMUNIFORM2UI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLuint64EXT);  

   type PFNGLPROGRAMUNIFORM3UI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLuint64EXT);  

   type PFNGLPROGRAMUNIFORM4UI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLuint64EXT);  

   type PFNGLVERTEXATTRIBL1I64NVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : GLint64EXT);  

   type PFNGLVERTEXATTRIBL2I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLint64EXT;
         arg3 : GLint64EXT);  

   type PFNGLVERTEXATTRIBL3I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLint64EXT;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT);  

   type PFNGLVERTEXATTRIBL4I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLint64EXT;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT;
         arg5 : GLint64EXT);  

   type PFNGLVERTEXATTRIBL1I64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLint64EXT);  

   type PFNGLVERTEXATTRIBL2I64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLint64EXT);  

   type PFNGLVERTEXATTRIBL3I64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLint64EXT);  

   type PFNGLVERTEXATTRIBL4I64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLint64EXT);  

   type PFNGLVERTEXATTRIBL1UI64NVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : GLuint64EXT);  

   type PFNGLVERTEXATTRIBL2UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLuint64EXT;
         arg3 : GLuint64EXT);  

   type PFNGLVERTEXATTRIBL3UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLuint64EXT;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT);  

   type PFNGLVERTEXATTRIBL4UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLuint64EXT;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT;
         arg5 : GLuint64EXT);  

   type PFNGLVERTEXATTRIBL1UI64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLuint64EXT);  

   type PFNGLVERTEXATTRIBL2UI64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLuint64EXT);  

   type PFNGLVERTEXATTRIBL3UI64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLuint64EXT);  

   type PFNGLVERTEXATTRIBL4UI64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLuint64EXT);  

   type PFNGLGETVERTEXATTRIBLI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLint64EXT);  

   type PFNGLGETVERTEXATTRIBLUI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLuint64EXT);  

   type PFNGLVERTEXATTRIBLFORMATNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei);  

   type PFNGLGENNAMESAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  

   type PFNGLDELETENAMESAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  

   type PFNGLISNAMEAMDPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint) return gl_h.GLboolean;  

   type PFNGLDEBUGMESSAGEENABLEAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint;
         arg5 : gl_h.GLboolean);  

   type PFNGLDEBUGMESSAGEINSERTAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access GLchar);  

   type PFNGLDEBUGMESSAGECALLBACKAMDPROC is access procedure (arg1 : access procedure
           (arg1 : gl_h.GLuint;
            arg2 : gl_h.GLenum;
            arg3 : gl_h.GLenum;
            arg4 : gl_h.GLsizei;
            arg5 : access GLchar;
            arg6 : System.Address); arg2 : System.Address);  

   type PFNGLGETDEBUGMESSAGELOGAMDPROC is access function
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLenum;
         arg4 : access gl_h.GLuint;
         arg5 : access gl_h.GLuint;
         arg6 : access gl_h.GLsizei;
         arg7 : access GLchar) return gl_h.GLuint;  

   type PFNGLVDPAUINITNVPROC is access procedure (arg1 : System.Address; arg2 : System.Address);  

   type PFNGLVDPAUFININVPROC is access procedure;  

   type PFNGLVDPAUREGISTERVIDEOSURFACENVPROC is access function
        (arg1 : System.Address;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint) return GLvdpauSurfaceNV;  

   type PFNGLVDPAUREGISTEROUTPUTSURFACENVPROC is access function
        (arg1 : System.Address;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint) return GLvdpauSurfaceNV;  

   type PFNGLVDPAUISSURFACENVPROC is access procedure (arg1 : GLvdpauSurfaceNV);  

   type PFNGLVDPAUUNREGISTERSURFACENVPROC is access procedure (arg1 : GLvdpauSurfaceNV);  

   type PFNGLVDPAUGETSURFACEIVNVPROC is access procedure
        (arg1 : GLvdpauSurfaceNV;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLint);  

   type PFNGLVDPAUSURFACEACCESSNVPROC is access procedure (arg1 : GLvdpauSurfaceNV; arg2 : gl_h.GLenum);  

   type PFNGLVDPAUMAPSURFACESNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access GLvdpauSurfaceNV);  

   type PFNGLVDPAUUNMAPSURFACESNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access GLvdpauSurfaceNV);  

   type PFNGLTEXIMAGE2DMULTISAMPLECOVERAGENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLboolean);  

   type PFNGLTEXIMAGE3DMULTISAMPLECOVERAGENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLboolean);  

   type PFNGLTEXTUREIMAGE2DMULTISAMPLENVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLboolean);  

   type PFNGLTEXTUREIMAGE3DMULTISAMPLENVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLboolean);  

   type PFNGLTEXTUREIMAGE2DMULTISAMPLECOVERAGENVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLboolean);  

   type PFNGLTEXTUREIMAGE3DMULTISAMPLECOVERAGENVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLboolean);  

   type PFNGLSETMULTISAMPLEFVAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  

   type PFNGLIMPORTSYNCEXTPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : GLintptr;
         arg3 : gl_h.GLbitfield) return GLsync;  

   type PFNGLMULTIDRAWARRAYSINDIRECTAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : System.Address;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  

   type PFNGLMULTIDRAWELEMENTSINDIRECTAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : System.Address;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei);  

end glext_h;
