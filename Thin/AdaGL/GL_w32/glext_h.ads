with Interfaces.C; use Interfaces.C;
with stddef_h;
with stdint_h;
with System;
with gl_h;

package glext_h is


   GL_GLEXT_VERSION : constant := 72;  --  /usr/include/GL/glext.h:34

   GL_RESCALE_NORMAL : constant := 16#803A#;  --  /usr/include/GL/glext.h:94
   GL_LIGHT_MODEL_COLOR_CONTROL : constant := 16#81F8#;  --  /usr/include/GL/glext.h:95
   GL_SINGLE_COLOR : constant := 16#81F9#;  --  /usr/include/GL/glext.h:96
   GL_SEPARATE_SPECULAR_COLOR : constant := 16#81FA#;  --  /usr/include/GL/glext.h:97
   GL_ALIASED_POINT_SIZE_RANGE : constant := 16#846D#;  --  /usr/include/GL/glext.h:98

   GL_CONVOLUTION_1D : constant := 16#8010#;  --  /usr/include/GL/glext.h:116
   GL_CONVOLUTION_2D : constant := 16#8011#;  --  /usr/include/GL/glext.h:117
   GL_SEPARABLE_2D : constant := 16#8012#;  --  /usr/include/GL/glext.h:118
   GL_CONVOLUTION_BORDER_MODE : constant := 16#8013#;  --  /usr/include/GL/glext.h:119
   GL_CONVOLUTION_FILTER_SCALE : constant := 16#8014#;  --  /usr/include/GL/glext.h:120
   GL_CONVOLUTION_FILTER_BIAS : constant := 16#8015#;  --  /usr/include/GL/glext.h:121
   GL_REDUCE : constant := 16#8016#;  --  /usr/include/GL/glext.h:122
   GL_CONVOLUTION_FORMAT : constant := 16#8017#;  --  /usr/include/GL/glext.h:123
   GL_CONVOLUTION_WIDTH : constant := 16#8018#;  --  /usr/include/GL/glext.h:124
   GL_CONVOLUTION_HEIGHT : constant := 16#8019#;  --  /usr/include/GL/glext.h:125
   GL_MAX_CONVOLUTION_WIDTH : constant := 16#801A#;  --  /usr/include/GL/glext.h:126
   GL_MAX_CONVOLUTION_HEIGHT : constant := 16#801B#;  --  /usr/include/GL/glext.h:127
   GL_POST_CONVOLUTION_RED_SCALE : constant := 16#801C#;  --  /usr/include/GL/glext.h:128
   GL_POST_CONVOLUTION_GREEN_SCALE : constant := 16#801D#;  --  /usr/include/GL/glext.h:129
   GL_POST_CONVOLUTION_BLUE_SCALE : constant := 16#801E#;  --  /usr/include/GL/glext.h:130
   GL_POST_CONVOLUTION_ALPHA_SCALE : constant := 16#801F#;  --  /usr/include/GL/glext.h:131
   GL_POST_CONVOLUTION_RED_BIAS : constant := 16#8020#;  --  /usr/include/GL/glext.h:132
   GL_POST_CONVOLUTION_GREEN_BIAS : constant := 16#8021#;  --  /usr/include/GL/glext.h:133
   GL_POST_CONVOLUTION_BLUE_BIAS : constant := 16#8022#;  --  /usr/include/GL/glext.h:134
   GL_POST_CONVOLUTION_ALPHA_BIAS : constant := 16#8023#;  --  /usr/include/GL/glext.h:135
   GL_HISTOGRAM : constant := 16#8024#;  --  /usr/include/GL/glext.h:136
   GL_PROXY_HISTOGRAM : constant := 16#8025#;  --  /usr/include/GL/glext.h:137
   GL_HISTOGRAM_WIDTH : constant := 16#8026#;  --  /usr/include/GL/glext.h:138
   GL_HISTOGRAM_FORMAT : constant := 16#8027#;  --  /usr/include/GL/glext.h:139
   GL_HISTOGRAM_RED_SIZE : constant := 16#8028#;  --  /usr/include/GL/glext.h:140
   GL_HISTOGRAM_GREEN_SIZE : constant := 16#8029#;  --  /usr/include/GL/glext.h:141
   GL_HISTOGRAM_BLUE_SIZE : constant := 16#802A#;  --  /usr/include/GL/glext.h:142
   GL_HISTOGRAM_ALPHA_SIZE : constant := 16#802B#;  --  /usr/include/GL/glext.h:143
   GL_HISTOGRAM_LUMINANCE_SIZE : constant := 16#802C#;  --  /usr/include/GL/glext.h:144
   GL_HISTOGRAM_SINK : constant := 16#802D#;  --  /usr/include/GL/glext.h:145
   GL_MINMAX : constant := 16#802E#;  --  /usr/include/GL/glext.h:146
   GL_MINMAX_FORMAT : constant := 16#802F#;  --  /usr/include/GL/glext.h:147
   GL_MINMAX_SINK : constant := 16#8030#;  --  /usr/include/GL/glext.h:148
   GL_TABLE_TOO_LARGE : constant := 16#8031#;  --  /usr/include/GL/glext.h:149
   GL_COLOR_MATRIX : constant := 16#80B1#;  --  /usr/include/GL/glext.h:150
   GL_COLOR_MATRIX_STACK_DEPTH : constant := 16#80B2#;  --  /usr/include/GL/glext.h:151
   GL_MAX_COLOR_MATRIX_STACK_DEPTH : constant := 16#80B3#;  --  /usr/include/GL/glext.h:152
   GL_POST_COLOR_MATRIX_RED_SCALE : constant := 16#80B4#;  --  /usr/include/GL/glext.h:153
   GL_POST_COLOR_MATRIX_GREEN_SCALE : constant := 16#80B5#;  --  /usr/include/GL/glext.h:154
   GL_POST_COLOR_MATRIX_BLUE_SCALE : constant := 16#80B6#;  --  /usr/include/GL/glext.h:155
   GL_POST_COLOR_MATRIX_ALPHA_SCALE : constant := 16#80B7#;  --  /usr/include/GL/glext.h:156
   GL_POST_COLOR_MATRIX_RED_BIAS : constant := 16#80B8#;  --  /usr/include/GL/glext.h:157
   GL_POST_COLOR_MATRIX_GREEN_BIAS : constant := 16#80B9#;  --  /usr/include/GL/glext.h:158
   GL_POST_COLOR_MATRIX_BLUE_BIAS : constant := 16#80BA#;  --  /usr/include/GL/glext.h:159
   GL_POST_COLOR_MATRIX_ALPHA_BIAS : constant := 16#80BB#;  --  /usr/include/GL/glext.h:160
   GL_COLOR_TABLE : constant := 16#80D0#;  --  /usr/include/GL/glext.h:161
   GL_POST_CONVOLUTION_COLOR_TABLE : constant := 16#80D1#;  --  /usr/include/GL/glext.h:162
   GL_POST_COLOR_MATRIX_COLOR_TABLE : constant := 16#80D2#;  --  /usr/include/GL/glext.h:163
   GL_PROXY_COLOR_TABLE : constant := 16#80D3#;  --  /usr/include/GL/glext.h:164
   GL_PROXY_POST_CONVOLUTION_COLOR_TABLE : constant := 16#80D4#;  --  /usr/include/GL/glext.h:165
   GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE : constant := 16#80D5#;  --  /usr/include/GL/glext.h:166
   GL_COLOR_TABLE_SCALE : constant := 16#80D6#;  --  /usr/include/GL/glext.h:167
   GL_COLOR_TABLE_BIAS : constant := 16#80D7#;  --  /usr/include/GL/glext.h:168
   GL_COLOR_TABLE_FORMAT : constant := 16#80D8#;  --  /usr/include/GL/glext.h:169
   GL_COLOR_TABLE_WIDTH : constant := 16#80D9#;  --  /usr/include/GL/glext.h:170
   GL_COLOR_TABLE_RED_SIZE : constant := 16#80DA#;  --  /usr/include/GL/glext.h:171
   GL_COLOR_TABLE_GREEN_SIZE : constant := 16#80DB#;  --  /usr/include/GL/glext.h:172
   GL_COLOR_TABLE_BLUE_SIZE : constant := 16#80DC#;  --  /usr/include/GL/glext.h:173
   GL_COLOR_TABLE_ALPHA_SIZE : constant := 16#80DD#;  --  /usr/include/GL/glext.h:174
   GL_COLOR_TABLE_LUMINANCE_SIZE : constant := 16#80DE#;  --  /usr/include/GL/glext.h:175
   GL_COLOR_TABLE_INTENSITY_SIZE : constant := 16#80DF#;  --  /usr/include/GL/glext.h:176
   GL_CONSTANT_BORDER : constant := 16#8151#;  --  /usr/include/GL/glext.h:177
   GL_REPLICATE_BORDER : constant := 16#8153#;  --  /usr/include/GL/glext.h:178
   GL_CONVOLUTION_BORDER_COLOR : constant := 16#8154#;  --  /usr/include/GL/glext.h:179

   GL_CLIENT_ACTIVE_TEXTURE : constant := 16#84E1#;  --  /usr/include/GL/glext.h:245
   GL_MAX_TEXTURE_UNITS : constant := 16#84E2#;  --  /usr/include/GL/glext.h:246
   GL_TRANSPOSE_MODELVIEW_MATRIX : constant := 16#84E3#;  --  /usr/include/GL/glext.h:247
   GL_TRANSPOSE_PROJECTION_MATRIX : constant := 16#84E4#;  --  /usr/include/GL/glext.h:248
   GL_TRANSPOSE_TEXTURE_MATRIX : constant := 16#84E5#;  --  /usr/include/GL/glext.h:249
   GL_TRANSPOSE_COLOR_MATRIX : constant := 16#84E6#;  --  /usr/include/GL/glext.h:250
   GL_MULTISAMPLE_BIT : constant := 16#20000000#;  --  /usr/include/GL/glext.h:251
   GL_NORMAL_MAP : constant := 16#8511#;  --  /usr/include/GL/glext.h:252
   GL_REFLECTION_MAP : constant := 16#8512#;  --  /usr/include/GL/glext.h:253
   GL_COMPRESSED_ALPHA : constant := 16#84E9#;  --  /usr/include/GL/glext.h:254
   GL_COMPRESSED_LUMINANCE : constant := 16#84EA#;  --  /usr/include/GL/glext.h:255
   GL_COMPRESSED_LUMINANCE_ALPHA : constant := 16#84EB#;  --  /usr/include/GL/glext.h:256
   GL_COMPRESSED_INTENSITY : constant := 16#84EC#;  --  /usr/include/GL/glext.h:257
   GL_COMBINE : constant := 16#8570#;  --  /usr/include/GL/glext.h:258
   GL_COMBINE_RGB : constant := 16#8571#;  --  /usr/include/GL/glext.h:259
   GL_COMBINE_ALPHA : constant := 16#8572#;  --  /usr/include/GL/glext.h:260
   GL_SOURCE0_RGB : constant := 16#8580#;  --  /usr/include/GL/glext.h:261
   GL_SOURCE1_RGB : constant := 16#8581#;  --  /usr/include/GL/glext.h:262
   GL_SOURCE2_RGB : constant := 16#8582#;  --  /usr/include/GL/glext.h:263
   GL_SOURCE0_ALPHA : constant := 16#8588#;  --  /usr/include/GL/glext.h:264
   GL_SOURCE1_ALPHA : constant := 16#8589#;  --  /usr/include/GL/glext.h:265
   GL_SOURCE2_ALPHA : constant := 16#858A#;  --  /usr/include/GL/glext.h:266
   GL_OPERAND0_RGB : constant := 16#8590#;  --  /usr/include/GL/glext.h:267
   GL_OPERAND1_RGB : constant := 16#8591#;  --  /usr/include/GL/glext.h:268
   GL_OPERAND2_RGB : constant := 16#8592#;  --  /usr/include/GL/glext.h:269
   GL_OPERAND0_ALPHA : constant := 16#8598#;  --  /usr/include/GL/glext.h:270
   GL_OPERAND1_ALPHA : constant := 16#8599#;  --  /usr/include/GL/glext.h:271
   GL_OPERAND2_ALPHA : constant := 16#859A#;  --  /usr/include/GL/glext.h:272
   GL_RGB_SCALE : constant := 16#8573#;  --  /usr/include/GL/glext.h:273
   GL_ADD_SIGNED : constant := 16#8574#;  --  /usr/include/GL/glext.h:274
   GL_INTERPOLATE : constant := 16#8575#;  --  /usr/include/GL/glext.h:275
   GL_SUBTRACT : constant := 16#84E7#;  --  /usr/include/GL/glext.h:276
   GL_CONSTANT : constant := 16#8576#;  --  /usr/include/GL/glext.h:277
   GL_PRIMARY_COLOR : constant := 16#8577#;  --  /usr/include/GL/glext.h:278
   GL_PREVIOUS : constant := 16#8578#;  --  /usr/include/GL/glext.h:279
   GL_DOT3_RGB : constant := 16#86AE#;  --  /usr/include/GL/glext.h:280
   GL_DOT3_RGBA : constant := 16#86AF#;  --  /usr/include/GL/glext.h:281

   GL_BLEND_DST_RGB : constant := 16#80C8#;  --  /usr/include/GL/glext.h:285
   GL_BLEND_SRC_RGB : constant := 16#80C9#;  --  /usr/include/GL/glext.h:286
   GL_BLEND_DST_ALPHA : constant := 16#80CA#;  --  /usr/include/GL/glext.h:287
   GL_BLEND_SRC_ALPHA : constant := 16#80CB#;  --  /usr/include/GL/glext.h:288
   GL_POINT_FADE_THRESHOLD_SIZE : constant := 16#8128#;  --  /usr/include/GL/glext.h:289
   GL_DEPTH_COMPONENT16 : constant := 16#81A5#;  --  /usr/include/GL/glext.h:290
   GL_DEPTH_COMPONENT24 : constant := 16#81A6#;  --  /usr/include/GL/glext.h:291
   GL_DEPTH_COMPONENT32 : constant := 16#81A7#;  --  /usr/include/GL/glext.h:292
   GL_MIRRORED_REPEAT : constant := 16#8370#;  --  /usr/include/GL/glext.h:293
   GL_MAX_TEXTURE_LOD_BIAS : constant := 16#84FD#;  --  /usr/include/GL/glext.h:294
   GL_TEXTURE_LOD_BIAS : constant := 16#8501#;  --  /usr/include/GL/glext.h:295
   GL_INCR_WRAP : constant := 16#8507#;  --  /usr/include/GL/glext.h:296
   GL_DECR_WRAP : constant := 16#8508#;  --  /usr/include/GL/glext.h:297
   GL_TEXTURE_DEPTH_SIZE : constant := 16#884A#;  --  /usr/include/GL/glext.h:298
   GL_TEXTURE_COMPARE_MODE : constant := 16#884C#;  --  /usr/include/GL/glext.h:299
   GL_TEXTURE_COMPARE_FUNC : constant := 16#884D#;  --  /usr/include/GL/glext.h:300

   GL_POINT_SIZE_MIN : constant := 16#8126#;  --  /usr/include/GL/glext.h:304
   GL_POINT_SIZE_MAX : constant := 16#8127#;  --  /usr/include/GL/glext.h:305
   GL_POINT_DISTANCE_ATTENUATION : constant := 16#8129#;  --  /usr/include/GL/glext.h:306
   GL_GENERATE_MIPMAP : constant := 16#8191#;  --  /usr/include/GL/glext.h:307
   GL_GENERATE_MIPMAP_HINT : constant := 16#8192#;  --  /usr/include/GL/glext.h:308
   GL_FOG_COORDINATE_SOURCE : constant := 16#8450#;  --  /usr/include/GL/glext.h:309
   GL_FOG_COORDINATE : constant := 16#8451#;  --  /usr/include/GL/glext.h:310
   GL_FRAGMENT_DEPTH : constant := 16#8452#;  --  /usr/include/GL/glext.h:311
   GL_CURRENT_FOG_COORDINATE : constant := 16#8453#;  --  /usr/include/GL/glext.h:312
   GL_FOG_COORDINATE_ARRAY_TYPE : constant := 16#8454#;  --  /usr/include/GL/glext.h:313
   GL_FOG_COORDINATE_ARRAY_STRIDE : constant := 16#8455#;  --  /usr/include/GL/glext.h:314
   GL_FOG_COORDINATE_ARRAY_POINTER : constant := 16#8456#;  --  /usr/include/GL/glext.h:315
   GL_FOG_COORDINATE_ARRAY : constant := 16#8457#;  --  /usr/include/GL/glext.h:316
   GL_COLOR_SUM : constant := 16#8458#;  --  /usr/include/GL/glext.h:317
   GL_CURRENT_SECONDARY_COLOR : constant := 16#8459#;  --  /usr/include/GL/glext.h:318
   GL_SECONDARY_COLOR_ARRAY_SIZE : constant := 16#845A#;  --  /usr/include/GL/glext.h:319
   GL_SECONDARY_COLOR_ARRAY_TYPE : constant := 16#845B#;  --  /usr/include/GL/glext.h:320
   GL_SECONDARY_COLOR_ARRAY_STRIDE : constant := 16#845C#;  --  /usr/include/GL/glext.h:321
   GL_SECONDARY_COLOR_ARRAY_POINTER : constant := 16#845D#;  --  /usr/include/GL/glext.h:322
   GL_SECONDARY_COLOR_ARRAY : constant := 16#845E#;  --  /usr/include/GL/glext.h:323
   GL_TEXTURE_FILTER_CONTROL : constant := 16#8500#;  --  /usr/include/GL/glext.h:324
   GL_DEPTH_TEXTURE_MODE : constant := 16#884B#;  --  /usr/include/GL/glext.h:325
   GL_COMPARE_R_TO_TEXTURE : constant := 16#884E#;  --  /usr/include/GL/glext.h:326

   GL_BUFFER_SIZE : constant := 16#8764#;  --  /usr/include/GL/glext.h:330
   GL_BUFFER_USAGE : constant := 16#8765#;  --  /usr/include/GL/glext.h:331
   GL_QUERY_COUNTER_BITS : constant := 16#8864#;  --  /usr/include/GL/glext.h:332
   GL_CURRENT_QUERY : constant := 16#8865#;  --  /usr/include/GL/glext.h:333
   GL_QUERY_RESULT : constant := 16#8866#;  --  /usr/include/GL/glext.h:334
   GL_QUERY_RESULT_AVAILABLE : constant := 16#8867#;  --  /usr/include/GL/glext.h:335
   GL_ARRAY_BUFFER : constant := 16#8892#;  --  /usr/include/GL/glext.h:336
   GL_ELEMENT_ARRAY_BUFFER : constant := 16#8893#;  --  /usr/include/GL/glext.h:337
   GL_ARRAY_BUFFER_BINDING : constant := 16#8894#;  --  /usr/include/GL/glext.h:338
   GL_ELEMENT_ARRAY_BUFFER_BINDING : constant := 16#8895#;  --  /usr/include/GL/glext.h:339
   GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING : constant := 16#889F#;  --  /usr/include/GL/glext.h:340
   GL_READ_ONLY : constant := 16#88B8#;  --  /usr/include/GL/glext.h:341
   GL_WRITE_ONLY : constant := 16#88B9#;  --  /usr/include/GL/glext.h:342
   GL_READ_WRITE : constant := 16#88BA#;  --  /usr/include/GL/glext.h:343
   GL_BUFFER_ACCESS : constant := 16#88BB#;  --  /usr/include/GL/glext.h:344
   GL_BUFFER_MAPPED : constant := 16#88BC#;  --  /usr/include/GL/glext.h:345
   GL_BUFFER_MAP_POINTER : constant := 16#88BD#;  --  /usr/include/GL/glext.h:346
   GL_STREAM_DRAW : constant := 16#88E0#;  --  /usr/include/GL/glext.h:347
   GL_STREAM_READ : constant := 16#88E1#;  --  /usr/include/GL/glext.h:348
   GL_STREAM_COPY : constant := 16#88E2#;  --  /usr/include/GL/glext.h:349
   GL_STATIC_DRAW : constant := 16#88E4#;  --  /usr/include/GL/glext.h:350
   GL_STATIC_READ : constant := 16#88E5#;  --  /usr/include/GL/glext.h:351
   GL_STATIC_COPY : constant := 16#88E6#;  --  /usr/include/GL/glext.h:352
   GL_DYNAMIC_DRAW : constant := 16#88E8#;  --  /usr/include/GL/glext.h:353
   GL_DYNAMIC_READ : constant := 16#88E9#;  --  /usr/include/GL/glext.h:354
   GL_DYNAMIC_COPY : constant := 16#88EA#;  --  /usr/include/GL/glext.h:355
   GL_SAMPLES_PASSED : constant := 16#8914#;  --  /usr/include/GL/glext.h:356

   GL_VERTEX_ARRAY_BUFFER_BINDING : constant := 16#8896#;  --  /usr/include/GL/glext.h:360
   GL_NORMAL_ARRAY_BUFFER_BINDING : constant := 16#8897#;  --  /usr/include/GL/glext.h:361
   GL_COLOR_ARRAY_BUFFER_BINDING : constant := 16#8898#;  --  /usr/include/GL/glext.h:362
   GL_INDEX_ARRAY_BUFFER_BINDING : constant := 16#8899#;  --  /usr/include/GL/glext.h:363
   GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING : constant := 16#889A#;  --  /usr/include/GL/glext.h:364
   GL_EDGE_FLAG_ARRAY_BUFFER_BINDING : constant := 16#889B#;  --  /usr/include/GL/glext.h:365
   GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING : constant := 16#889C#;  --  /usr/include/GL/glext.h:366
   GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING : constant := 16#889D#;  --  /usr/include/GL/glext.h:367
   GL_WEIGHT_ARRAY_BUFFER_BINDING : constant := 16#889E#;  --  /usr/include/GL/glext.h:368
   GL_FOG_COORD_SRC : constant := 16#8450#;  --  /usr/include/GL/glext.h:369
   GL_FOG_COORD : constant := 16#8451#;  --  /usr/include/GL/glext.h:370
   GL_CURRENT_FOG_COORD : constant := 16#8453#;  --  /usr/include/GL/glext.h:371
   GL_FOG_COORD_ARRAY_TYPE : constant := 16#8454#;  --  /usr/include/GL/glext.h:372
   GL_FOG_COORD_ARRAY_STRIDE : constant := 16#8455#;  --  /usr/include/GL/glext.h:373
   GL_FOG_COORD_ARRAY_POINTER : constant := 16#8456#;  --  /usr/include/GL/glext.h:374
   GL_FOG_COORD_ARRAY : constant := 16#8457#;  --  /usr/include/GL/glext.h:375
   GL_FOG_COORD_ARRAY_BUFFER_BINDING : constant := 16#889D#;  --  /usr/include/GL/glext.h:376
   GL_SRC0_RGB : constant := 16#8580#;  --  /usr/include/GL/glext.h:377
   GL_SRC1_RGB : constant := 16#8581#;  --  /usr/include/GL/glext.h:378
   GL_SRC2_RGB : constant := 16#8582#;  --  /usr/include/GL/glext.h:379
   GL_SRC0_ALPHA : constant := 16#8588#;  --  /usr/include/GL/glext.h:380
   GL_SRC1_ALPHA : constant := 16#8589#;  --  /usr/include/GL/glext.h:381
   GL_SRC2_ALPHA : constant := 16#858A#;  --  /usr/include/GL/glext.h:382

   GL_BLEND_EQUATION_RGB : constant := 16#8009#;  --  /usr/include/GL/glext.h:386
   GL_VERTEX_ATTRIB_ARRAY_ENABLED : constant := 16#8622#;  --  /usr/include/GL/glext.h:387
   GL_VERTEX_ATTRIB_ARRAY_SIZE : constant := 16#8623#;  --  /usr/include/GL/glext.h:388
   GL_VERTEX_ATTRIB_ARRAY_STRIDE : constant := 16#8624#;  --  /usr/include/GL/glext.h:389
   GL_VERTEX_ATTRIB_ARRAY_TYPE : constant := 16#8625#;  --  /usr/include/GL/glext.h:390
   GL_CURRENT_VERTEX_ATTRIB : constant := 16#8626#;  --  /usr/include/GL/glext.h:391
   GL_VERTEX_PROGRAM_POINT_SIZE : constant := 16#8642#;  --  /usr/include/GL/glext.h:392
   GL_VERTEX_ATTRIB_ARRAY_POINTER : constant := 16#8645#;  --  /usr/include/GL/glext.h:393
   GL_STENCIL_BACK_FUNC : constant := 16#8800#;  --  /usr/include/GL/glext.h:394
   GL_STENCIL_BACK_FAIL : constant := 16#8801#;  --  /usr/include/GL/glext.h:395
   GL_STENCIL_BACK_PASS_DEPTH_FAIL : constant := 16#8802#;  --  /usr/include/GL/glext.h:396
   GL_STENCIL_BACK_PASS_DEPTH_PASS : constant := 16#8803#;  --  /usr/include/GL/glext.h:397
   GL_MAX_DRAW_BUFFERS : constant := 16#8824#;  --  /usr/include/GL/glext.h:398
   GL_DRAW_BUFFER0 : constant := 16#8825#;  --  /usr/include/GL/glext.h:399
   GL_DRAW_BUFFER1 : constant := 16#8826#;  --  /usr/include/GL/glext.h:400
   GL_DRAW_BUFFER2 : constant := 16#8827#;  --  /usr/include/GL/glext.h:401
   GL_DRAW_BUFFER3 : constant := 16#8828#;  --  /usr/include/GL/glext.h:402
   GL_DRAW_BUFFER4 : constant := 16#8829#;  --  /usr/include/GL/glext.h:403
   GL_DRAW_BUFFER5 : constant := 16#882A#;  --  /usr/include/GL/glext.h:404
   GL_DRAW_BUFFER6 : constant := 16#882B#;  --  /usr/include/GL/glext.h:405
   GL_DRAW_BUFFER7 : constant := 16#882C#;  --  /usr/include/GL/glext.h:406
   GL_DRAW_BUFFER8 : constant := 16#882D#;  --  /usr/include/GL/glext.h:407
   GL_DRAW_BUFFER9 : constant := 16#882E#;  --  /usr/include/GL/glext.h:408
   GL_DRAW_BUFFER10 : constant := 16#882F#;  --  /usr/include/GL/glext.h:409
   GL_DRAW_BUFFER11 : constant := 16#8830#;  --  /usr/include/GL/glext.h:410
   GL_DRAW_BUFFER12 : constant := 16#8831#;  --  /usr/include/GL/glext.h:411
   GL_DRAW_BUFFER13 : constant := 16#8832#;  --  /usr/include/GL/glext.h:412
   GL_DRAW_BUFFER14 : constant := 16#8833#;  --  /usr/include/GL/glext.h:413
   GL_DRAW_BUFFER15 : constant := 16#8834#;  --  /usr/include/GL/glext.h:414
   GL_BLEND_EQUATION_ALPHA : constant := 16#883D#;  --  /usr/include/GL/glext.h:415
   GL_MAX_VERTEX_ATTRIBS : constant := 16#8869#;  --  /usr/include/GL/glext.h:416
   GL_VERTEX_ATTRIB_ARRAY_NORMALIZED : constant := 16#886A#;  --  /usr/include/GL/glext.h:417
   GL_MAX_TEXTURE_IMAGE_UNITS : constant := 16#8872#;  --  /usr/include/GL/glext.h:418
   GL_FRAGMENT_SHADER : constant := 16#8B30#;  --  /usr/include/GL/glext.h:419
   GL_VERTEX_SHADER : constant := 16#8B31#;  --  /usr/include/GL/glext.h:420
   GL_MAX_FRAGMENT_UNIFORM_COMPONENTS : constant := 16#8B49#;  --  /usr/include/GL/glext.h:421
   GL_MAX_VERTEX_UNIFORM_COMPONENTS : constant := 16#8B4A#;  --  /usr/include/GL/glext.h:422
   GL_MAX_VARYING_FLOATS : constant := 16#8B4B#;  --  /usr/include/GL/glext.h:423
   GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS : constant := 16#8B4C#;  --  /usr/include/GL/glext.h:424
   GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS : constant := 16#8B4D#;  --  /usr/include/GL/glext.h:425
   GL_SHADER_TYPE : constant := 16#8B4F#;  --  /usr/include/GL/glext.h:426
   GL_FLOAT_VEC2 : constant := 16#8B50#;  --  /usr/include/GL/glext.h:427
   GL_FLOAT_VEC3 : constant := 16#8B51#;  --  /usr/include/GL/glext.h:428
   GL_FLOAT_VEC4 : constant := 16#8B52#;  --  /usr/include/GL/glext.h:429
   GL_INT_VEC2 : constant := 16#8B53#;  --  /usr/include/GL/glext.h:430
   GL_INT_VEC3 : constant := 16#8B54#;  --  /usr/include/GL/glext.h:431
   GL_INT_VEC4 : constant := 16#8B55#;  --  /usr/include/GL/glext.h:432
   GL_BOOL : constant := 16#8B56#;  --  /usr/include/GL/glext.h:433
   GL_BOOL_VEC2 : constant := 16#8B57#;  --  /usr/include/GL/glext.h:434
   GL_BOOL_VEC3 : constant := 16#8B58#;  --  /usr/include/GL/glext.h:435
   GL_BOOL_VEC4 : constant := 16#8B59#;  --  /usr/include/GL/glext.h:436
   GL_FLOAT_MAT2 : constant := 16#8B5A#;  --  /usr/include/GL/glext.h:437
   GL_FLOAT_MAT3 : constant := 16#8B5B#;  --  /usr/include/GL/glext.h:438
   GL_FLOAT_MAT4 : constant := 16#8B5C#;  --  /usr/include/GL/glext.h:439
   GL_SAMPLER_1D : constant := 16#8B5D#;  --  /usr/include/GL/glext.h:440
   GL_SAMPLER_2D : constant := 16#8B5E#;  --  /usr/include/GL/glext.h:441
   GL_SAMPLER_3D : constant := 16#8B5F#;  --  /usr/include/GL/glext.h:442
   GL_SAMPLER_CUBE : constant := 16#8B60#;  --  /usr/include/GL/glext.h:443
   GL_SAMPLER_1D_SHADOW : constant := 16#8B61#;  --  /usr/include/GL/glext.h:444
   GL_SAMPLER_2D_SHADOW : constant := 16#8B62#;  --  /usr/include/GL/glext.h:445
   GL_DELETE_STATUS : constant := 16#8B80#;  --  /usr/include/GL/glext.h:446
   GL_COMPILE_STATUS : constant := 16#8B81#;  --  /usr/include/GL/glext.h:447
   GL_LINK_STATUS : constant := 16#8B82#;  --  /usr/include/GL/glext.h:448
   GL_VALIDATE_STATUS : constant := 16#8B83#;  --  /usr/include/GL/glext.h:449
   GL_INFO_LOG_LENGTH : constant := 16#8B84#;  --  /usr/include/GL/glext.h:450
   GL_ATTACHED_SHADERS : constant := 16#8B85#;  --  /usr/include/GL/glext.h:451
   GL_ACTIVE_UNIFORMS : constant := 16#8B86#;  --  /usr/include/GL/glext.h:452
   GL_ACTIVE_UNIFORM_MAX_LENGTH : constant := 16#8B87#;  --  /usr/include/GL/glext.h:453
   GL_SHADER_SOURCE_LENGTH : constant := 16#8B88#;  --  /usr/include/GL/glext.h:454
   GL_ACTIVE_ATTRIBUTES : constant := 16#8B89#;  --  /usr/include/GL/glext.h:455
   GL_ACTIVE_ATTRIBUTE_MAX_LENGTH : constant := 16#8B8A#;  --  /usr/include/GL/glext.h:456
   GL_FRAGMENT_SHADER_DERIVATIVE_HINT : constant := 16#8B8B#;  --  /usr/include/GL/glext.h:457
   GL_SHADING_LANGUAGE_VERSION : constant := 16#8B8C#;  --  /usr/include/GL/glext.h:458
   GL_CURRENT_PROGRAM : constant := 16#8B8D#;  --  /usr/include/GL/glext.h:459
   GL_POINT_SPRITE_COORD_ORIGIN : constant := 16#8CA0#;  --  /usr/include/GL/glext.h:460
   GL_LOWER_LEFT : constant := 16#8CA1#;  --  /usr/include/GL/glext.h:461
   GL_UPPER_LEFT : constant := 16#8CA2#;  --  /usr/include/GL/glext.h:462
   GL_STENCIL_BACK_REF : constant := 16#8CA3#;  --  /usr/include/GL/glext.h:463
   GL_STENCIL_BACK_VALUE_MASK : constant := 16#8CA4#;  --  /usr/include/GL/glext.h:464
   GL_STENCIL_BACK_WRITEMASK : constant := 16#8CA5#;  --  /usr/include/GL/glext.h:465

   GL_VERTEX_PROGRAM_TWO_SIDE : constant := 16#8643#;  --  /usr/include/GL/glext.h:469
   GL_POINT_SPRITE : constant := 16#8861#;  --  /usr/include/GL/glext.h:470
   GL_COORD_REPLACE : constant := 16#8862#;  --  /usr/include/GL/glext.h:471
   GL_MAX_TEXTURE_COORDS : constant := 16#8871#;  --  /usr/include/GL/glext.h:472

   GL_PIXEL_PACK_BUFFER : constant := 16#88EB#;  --  /usr/include/GL/glext.h:476
   GL_PIXEL_UNPACK_BUFFER : constant := 16#88EC#;  --  /usr/include/GL/glext.h:477
   GL_PIXEL_PACK_BUFFER_BINDING : constant := 16#88ED#;  --  /usr/include/GL/glext.h:478
   GL_PIXEL_UNPACK_BUFFER_BINDING : constant := 16#88EF#;  --  /usr/include/GL/glext.h:479
   GL_FLOAT_MAT2x3 : constant := 16#8B65#;  --  /usr/include/GL/glext.h:480
   GL_FLOAT_MAT2x4 : constant := 16#8B66#;  --  /usr/include/GL/glext.h:481
   GL_FLOAT_MAT3x2 : constant := 16#8B67#;  --  /usr/include/GL/glext.h:482
   GL_FLOAT_MAT3x4 : constant := 16#8B68#;  --  /usr/include/GL/glext.h:483
   GL_FLOAT_MAT4x2 : constant := 16#8B69#;  --  /usr/include/GL/glext.h:484
   GL_FLOAT_MAT4x3 : constant := 16#8B6A#;  --  /usr/include/GL/glext.h:485
   GL_SRGB : constant := 16#8C40#;  --  /usr/include/GL/glext.h:486
   GL_SRGB8 : constant := 16#8C41#;  --  /usr/include/GL/glext.h:487
   GL_SRGB_ALPHA : constant := 16#8C42#;  --  /usr/include/GL/glext.h:488
   GL_SRGB8_ALPHA8 : constant := 16#8C43#;  --  /usr/include/GL/glext.h:489
   GL_COMPRESSED_SRGB : constant := 16#8C48#;  --  /usr/include/GL/glext.h:490
   GL_COMPRESSED_SRGB_ALPHA : constant := 16#8C49#;  --  /usr/include/GL/glext.h:491

   GL_CURRENT_RASTER_SECONDARY_COLOR : constant := 16#845F#;  --  /usr/include/GL/glext.h:495
   GL_SLUMINANCE_ALPHA : constant := 16#8C44#;  --  /usr/include/GL/glext.h:496
   GL_SLUMINANCE8_ALPHA8 : constant := 16#8C45#;  --  /usr/include/GL/glext.h:497
   GL_SLUMINANCE : constant := 16#8C46#;  --  /usr/include/GL/glext.h:498
   GL_SLUMINANCE8 : constant := 16#8C47#;  --  /usr/include/GL/glext.h:499
   GL_COMPRESSED_SLUMINANCE : constant := 16#8C4A#;  --  /usr/include/GL/glext.h:500
   GL_COMPRESSED_SLUMINANCE_ALPHA : constant := 16#8C4B#;  --  /usr/include/GL/glext.h:501

   GL_COMPARE_REF_TO_TEXTURE : constant := 16#884E#;  --  /usr/include/GL/glext.h:505
   GL_CLIP_DISTANCE0 : constant := 16#3000#;  --  /usr/include/GL/glext.h:506
   GL_CLIP_DISTANCE1 : constant := 16#3001#;  --  /usr/include/GL/glext.h:507
   GL_CLIP_DISTANCE2 : constant := 16#3002#;  --  /usr/include/GL/glext.h:508
   GL_CLIP_DISTANCE3 : constant := 16#3003#;  --  /usr/include/GL/glext.h:509
   GL_CLIP_DISTANCE4 : constant := 16#3004#;  --  /usr/include/GL/glext.h:510
   GL_CLIP_DISTANCE5 : constant := 16#3005#;  --  /usr/include/GL/glext.h:511
   GL_CLIP_DISTANCE6 : constant := 16#3006#;  --  /usr/include/GL/glext.h:512
   GL_CLIP_DISTANCE7 : constant := 16#3007#;  --  /usr/include/GL/glext.h:513
   GL_MAX_CLIP_DISTANCES : constant := 16#0D32#;  --  /usr/include/GL/glext.h:514
   GL_MAJOR_VERSION : constant := 16#821B#;  --  /usr/include/GL/glext.h:515
   GL_MINOR_VERSION : constant := 16#821C#;  --  /usr/include/GL/glext.h:516
   GL_NUM_EXTENSIONS : constant := 16#821D#;  --  /usr/include/GL/glext.h:517
   GL_CONTEXT_FLAGS : constant := 16#821E#;  --  /usr/include/GL/glext.h:518
   GL_DEPTH_BUFFER : constant := 16#8223#;  --  /usr/include/GL/glext.h:519
   GL_STENCIL_BUFFER : constant := 16#8224#;  --  /usr/include/GL/glext.h:520
   GL_COMPRESSED_RED : constant := 16#8225#;  --  /usr/include/GL/glext.h:521
   GL_COMPRESSED_RG : constant := 16#8226#;  --  /usr/include/GL/glext.h:522
   GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT : constant := 16#0001#;  --  /usr/include/GL/glext.h:523
   GL_RGBA32F : constant := 16#8814#;  --  /usr/include/GL/glext.h:524
   GL_RGB32F : constant := 16#8815#;  --  /usr/include/GL/glext.h:525
   GL_RGBA16F : constant := 16#881A#;  --  /usr/include/GL/glext.h:526
   GL_RGB16F : constant := 16#881B#;  --  /usr/include/GL/glext.h:527
   GL_VERTEX_ATTRIB_ARRAY_INTEGER : constant := 16#88FD#;  --  /usr/include/GL/glext.h:528
   GL_MAX_ARRAY_TEXTURE_LAYERS : constant := 16#88FF#;  --  /usr/include/GL/glext.h:529
   GL_MIN_PROGRAM_TEXEL_OFFSET : constant := 16#8904#;  --  /usr/include/GL/glext.h:530
   GL_MAX_PROGRAM_TEXEL_OFFSET : constant := 16#8905#;  --  /usr/include/GL/glext.h:531
   GL_CLAMP_READ_COLOR : constant := 16#891C#;  --  /usr/include/GL/glext.h:532
   GL_FIXED_ONLY : constant := 16#891D#;  --  /usr/include/GL/glext.h:533
   GL_MAX_VARYING_COMPONENTS : constant := 16#8B4B#;  --  /usr/include/GL/glext.h:534
   GL_TEXTURE_1D_ARRAY : constant := 16#8C18#;  --  /usr/include/GL/glext.h:535
   GL_PROXY_TEXTURE_1D_ARRAY : constant := 16#8C19#;  --  /usr/include/GL/glext.h:536
   GL_TEXTURE_2D_ARRAY : constant := 16#8C1A#;  --  /usr/include/GL/glext.h:537
   GL_PROXY_TEXTURE_2D_ARRAY : constant := 16#8C1B#;  --  /usr/include/GL/glext.h:538
   GL_TEXTURE_BINDING_1D_ARRAY : constant := 16#8C1C#;  --  /usr/include/GL/glext.h:539
   GL_TEXTURE_BINDING_2D_ARRAY : constant := 16#8C1D#;  --  /usr/include/GL/glext.h:540
   GL_R11F_G11F_B10F : constant := 16#8C3A#;  --  /usr/include/GL/glext.h:541
   GL_UNSIGNED_INT_10F_11F_11F_REV : constant := 16#8C3B#;  --  /usr/include/GL/glext.h:542
   GL_RGB9_E5 : constant := 16#8C3D#;  --  /usr/include/GL/glext.h:543
   GL_UNSIGNED_INT_5_9_9_9_REV : constant := 16#8C3E#;  --  /usr/include/GL/glext.h:544
   GL_TEXTURE_SHARED_SIZE : constant := 16#8C3F#;  --  /usr/include/GL/glext.h:545
   GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH : constant := 16#8C76#;  --  /usr/include/GL/glext.h:546
   GL_TRANSFORM_FEEDBACK_BUFFER_MODE : constant := 16#8C7F#;  --  /usr/include/GL/glext.h:547
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS : constant := 16#8C80#;  --  /usr/include/GL/glext.h:548
   GL_TRANSFORM_FEEDBACK_VARYINGS : constant := 16#8C83#;  --  /usr/include/GL/glext.h:549
   GL_TRANSFORM_FEEDBACK_BUFFER_START : constant := 16#8C84#;  --  /usr/include/GL/glext.h:550
   GL_TRANSFORM_FEEDBACK_BUFFER_SIZE : constant := 16#8C85#;  --  /usr/include/GL/glext.h:551
   GL_PRIMITIVES_GENERATED : constant := 16#8C87#;  --  /usr/include/GL/glext.h:552
   GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN : constant := 16#8C88#;  --  /usr/include/GL/glext.h:553
   GL_RASTERIZER_DISCARD : constant := 16#8C89#;  --  /usr/include/GL/glext.h:554
   GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS : constant := 16#8C8A#;  --  /usr/include/GL/glext.h:555
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS : constant := 16#8C8B#;  --  /usr/include/GL/glext.h:556
   GL_INTERLEAVED_ATTRIBS : constant := 16#8C8C#;  --  /usr/include/GL/glext.h:557
   GL_SEPARATE_ATTRIBS : constant := 16#8C8D#;  --  /usr/include/GL/glext.h:558
   GL_TRANSFORM_FEEDBACK_BUFFER : constant := 16#8C8E#;  --  /usr/include/GL/glext.h:559
   GL_TRANSFORM_FEEDBACK_BUFFER_BINDING : constant := 16#8C8F#;  --  /usr/include/GL/glext.h:560
   GL_RGBA32UI : constant := 16#8D70#;  --  /usr/include/GL/glext.h:561
   GL_RGB32UI : constant := 16#8D71#;  --  /usr/include/GL/glext.h:562
   GL_RGBA16UI : constant := 16#8D76#;  --  /usr/include/GL/glext.h:563
   GL_RGB16UI : constant := 16#8D77#;  --  /usr/include/GL/glext.h:564
   GL_RGBA8UI : constant := 16#8D7C#;  --  /usr/include/GL/glext.h:565
   GL_RGB8UI : constant := 16#8D7D#;  --  /usr/include/GL/glext.h:566
   GL_RGBA32I : constant := 16#8D82#;  --  /usr/include/GL/glext.h:567
   GL_RGB32I : constant := 16#8D83#;  --  /usr/include/GL/glext.h:568
   GL_RGBA16I : constant := 16#8D88#;  --  /usr/include/GL/glext.h:569
   GL_RGB16I : constant := 16#8D89#;  --  /usr/include/GL/glext.h:570
   GL_RGBA8I : constant := 16#8D8E#;  --  /usr/include/GL/glext.h:571
   GL_RGB8I : constant := 16#8D8F#;  --  /usr/include/GL/glext.h:572
   GL_RED_INTEGER : constant := 16#8D94#;  --  /usr/include/GL/glext.h:573
   GL_GREEN_INTEGER : constant := 16#8D95#;  --  /usr/include/GL/glext.h:574
   GL_BLUE_INTEGER : constant := 16#8D96#;  --  /usr/include/GL/glext.h:575
   GL_RGB_INTEGER : constant := 16#8D98#;  --  /usr/include/GL/glext.h:576
   GL_RGBA_INTEGER : constant := 16#8D99#;  --  /usr/include/GL/glext.h:577
   GL_BGR_INTEGER : constant := 16#8D9A#;  --  /usr/include/GL/glext.h:578
   GL_BGRA_INTEGER : constant := 16#8D9B#;  --  /usr/include/GL/glext.h:579
   GL_SAMPLER_1D_ARRAY : constant := 16#8DC0#;  --  /usr/include/GL/glext.h:580
   GL_SAMPLER_2D_ARRAY : constant := 16#8DC1#;  --  /usr/include/GL/glext.h:581
   GL_SAMPLER_1D_ARRAY_SHADOW : constant := 16#8DC3#;  --  /usr/include/GL/glext.h:582
   GL_SAMPLER_2D_ARRAY_SHADOW : constant := 16#8DC4#;  --  /usr/include/GL/glext.h:583
   GL_SAMPLER_CUBE_SHADOW : constant := 16#8DC5#;  --  /usr/include/GL/glext.h:584
   GL_UNSIGNED_INT_VEC2 : constant := 16#8DC6#;  --  /usr/include/GL/glext.h:585
   GL_UNSIGNED_INT_VEC3 : constant := 16#8DC7#;  --  /usr/include/GL/glext.h:586
   GL_UNSIGNED_INT_VEC4 : constant := 16#8DC8#;  --  /usr/include/GL/glext.h:587
   GL_INT_SAMPLER_1D : constant := 16#8DC9#;  --  /usr/include/GL/glext.h:588
   GL_INT_SAMPLER_2D : constant := 16#8DCA#;  --  /usr/include/GL/glext.h:589
   GL_INT_SAMPLER_3D : constant := 16#8DCB#;  --  /usr/include/GL/glext.h:590
   GL_INT_SAMPLER_CUBE : constant := 16#8DCC#;  --  /usr/include/GL/glext.h:591
   GL_INT_SAMPLER_1D_ARRAY : constant := 16#8DCE#;  --  /usr/include/GL/glext.h:592
   GL_INT_SAMPLER_2D_ARRAY : constant := 16#8DCF#;  --  /usr/include/GL/glext.h:593
   GL_UNSIGNED_INT_SAMPLER_1D : constant := 16#8DD1#;  --  /usr/include/GL/glext.h:594
   GL_UNSIGNED_INT_SAMPLER_2D : constant := 16#8DD2#;  --  /usr/include/GL/glext.h:595
   GL_UNSIGNED_INT_SAMPLER_3D : constant := 16#8DD3#;  --  /usr/include/GL/glext.h:596
   GL_UNSIGNED_INT_SAMPLER_CUBE : constant := 16#8DD4#;  --  /usr/include/GL/glext.h:597
   GL_UNSIGNED_INT_SAMPLER_1D_ARRAY : constant := 16#8DD6#;  --  /usr/include/GL/glext.h:598
   GL_UNSIGNED_INT_SAMPLER_2D_ARRAY : constant := 16#8DD7#;  --  /usr/include/GL/glext.h:599
   GL_QUERY_WAIT : constant := 16#8E13#;  --  /usr/include/GL/glext.h:600
   GL_QUERY_NO_WAIT : constant := 16#8E14#;  --  /usr/include/GL/glext.h:601
   GL_QUERY_BY_REGION_WAIT : constant := 16#8E15#;  --  /usr/include/GL/glext.h:602
   GL_QUERY_BY_REGION_NO_WAIT : constant := 16#8E16#;  --  /usr/include/GL/glext.h:603
   GL_BUFFER_ACCESS_FLAGS : constant := 16#911F#;  --  /usr/include/GL/glext.h:604
   GL_BUFFER_MAP_LENGTH : constant := 16#9120#;  --  /usr/include/GL/glext.h:605
   GL_BUFFER_MAP_OFFSET : constant := 16#9121#;  --  /usr/include/GL/glext.h:606

   GL_CLAMP_VERTEX_COLOR : constant := 16#891A#;  --  /usr/include/GL/glext.h:734
   GL_CLAMP_FRAGMENT_COLOR : constant := 16#891B#;  --  /usr/include/GL/glext.h:735
   GL_ALPHA_INTEGER : constant := 16#8D97#;  --  /usr/include/GL/glext.h:736

   GL_SAMPLER_2D_RECT : constant := 16#8B63#;  --  /usr/include/GL/glext.h:743
   GL_SAMPLER_2D_RECT_SHADOW : constant := 16#8B64#;  --  /usr/include/GL/glext.h:744
   GL_SAMPLER_BUFFER : constant := 16#8DC2#;  --  /usr/include/GL/glext.h:745
   GL_INT_SAMPLER_2D_RECT : constant := 16#8DCD#;  --  /usr/include/GL/glext.h:746
   GL_INT_SAMPLER_BUFFER : constant := 16#8DD0#;  --  /usr/include/GL/glext.h:747
   GL_UNSIGNED_INT_SAMPLER_2D_RECT : constant := 16#8DD5#;  --  /usr/include/GL/glext.h:748
   GL_UNSIGNED_INT_SAMPLER_BUFFER : constant := 16#8DD8#;  --  /usr/include/GL/glext.h:749
   GL_TEXTURE_BUFFER : constant := 16#8C2A#;  --  /usr/include/GL/glext.h:750
   GL_MAX_TEXTURE_BUFFER_SIZE : constant := 16#8C2B#;  --  /usr/include/GL/glext.h:751
   GL_TEXTURE_BINDING_BUFFER : constant := 16#8C2C#;  --  /usr/include/GL/glext.h:752
   GL_TEXTURE_BUFFER_DATA_STORE_BINDING : constant := 16#8C2D#;  --  /usr/include/GL/glext.h:753
   GL_TEXTURE_BUFFER_FORMAT : constant := 16#8C2E#;  --  /usr/include/GL/glext.h:754
   GL_TEXTURE_RECTANGLE : constant := 16#84F5#;  --  /usr/include/GL/glext.h:755
   GL_TEXTURE_BINDING_RECTANGLE : constant := 16#84F6#;  --  /usr/include/GL/glext.h:756
   GL_PROXY_TEXTURE_RECTANGLE : constant := 16#84F7#;  --  /usr/include/GL/glext.h:757
   GL_MAX_RECTANGLE_TEXTURE_SIZE : constant := 16#84F8#;  --  /usr/include/GL/glext.h:758
   GL_RED_SNORM : constant := 16#8F90#;  --  /usr/include/GL/glext.h:759
   GL_RG_SNORM : constant := 16#8F91#;  --  /usr/include/GL/glext.h:760
   GL_RGB_SNORM : constant := 16#8F92#;  --  /usr/include/GL/glext.h:761
   GL_RGBA_SNORM : constant := 16#8F93#;  --  /usr/include/GL/glext.h:762
   GL_R8_SNORM : constant := 16#8F94#;  --  /usr/include/GL/glext.h:763
   GL_RG8_SNORM : constant := 16#8F95#;  --  /usr/include/GL/glext.h:764
   GL_RGB8_SNORM : constant := 16#8F96#;  --  /usr/include/GL/glext.h:765
   GL_RGBA8_SNORM : constant := 16#8F97#;  --  /usr/include/GL/glext.h:766
   GL_R16_SNORM : constant := 16#8F98#;  --  /usr/include/GL/glext.h:767
   GL_RG16_SNORM : constant := 16#8F99#;  --  /usr/include/GL/glext.h:768
   GL_RGB16_SNORM : constant := 16#8F9A#;  --  /usr/include/GL/glext.h:769
   GL_RGBA16_SNORM : constant := 16#8F9B#;  --  /usr/include/GL/glext.h:770
   GL_SIGNED_NORMALIZED : constant := 16#8F9C#;  --  /usr/include/GL/glext.h:771
   GL_PRIMITIVE_RESTART : constant := 16#8F9D#;  --  /usr/include/GL/glext.h:772
   GL_PRIMITIVE_RESTART_INDEX : constant := 16#8F9E#;  --  /usr/include/GL/glext.h:773

   GL_CONTEXT_CORE_PROFILE_BIT : constant := 16#00000001#;  --  /usr/include/GL/glext.h:812
   GL_CONTEXT_COMPATIBILITY_PROFILE_BIT : constant := 16#00000002#;  --  /usr/include/GL/glext.h:813
   GL_LINES_ADJACENCY : constant := 16#000A#;  --  /usr/include/GL/glext.h:814
   GL_LINE_STRIP_ADJACENCY : constant := 16#000B#;  --  /usr/include/GL/glext.h:815
   GL_TRIANGLES_ADJACENCY : constant := 16#000C#;  --  /usr/include/GL/glext.h:816
   GL_TRIANGLE_STRIP_ADJACENCY : constant := 16#000D#;  --  /usr/include/GL/glext.h:817
   GL_PROGRAM_POINT_SIZE : constant := 16#8642#;  --  /usr/include/GL/glext.h:818
   GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS : constant := 16#8C29#;  --  /usr/include/GL/glext.h:819
   GL_FRAMEBUFFER_ATTACHMENT_LAYERED : constant := 16#8DA7#;  --  /usr/include/GL/glext.h:820
   GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS : constant := 16#8DA8#;  --  /usr/include/GL/glext.h:821
   GL_GEOMETRY_SHADER : constant := 16#8DD9#;  --  /usr/include/GL/glext.h:822
   GL_GEOMETRY_VERTICES_OUT : constant := 16#8916#;  --  /usr/include/GL/glext.h:823
   GL_GEOMETRY_INPUT_TYPE : constant := 16#8917#;  --  /usr/include/GL/glext.h:824
   GL_GEOMETRY_OUTPUT_TYPE : constant := 16#8918#;  --  /usr/include/GL/glext.h:825
   GL_MAX_GEOMETRY_UNIFORM_COMPONENTS : constant := 16#8DDF#;  --  /usr/include/GL/glext.h:826
   GL_MAX_GEOMETRY_OUTPUT_VERTICES : constant := 16#8DE0#;  --  /usr/include/GL/glext.h:827
   GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS : constant := 16#8DE1#;  --  /usr/include/GL/glext.h:828
   GL_MAX_VERTEX_OUTPUT_COMPONENTS : constant := 16#9122#;  --  /usr/include/GL/glext.h:829
   GL_MAX_GEOMETRY_INPUT_COMPONENTS : constant := 16#9123#;  --  /usr/include/GL/glext.h:830
   GL_MAX_GEOMETRY_OUTPUT_COMPONENTS : constant := 16#9124#;  --  /usr/include/GL/glext.h:831
   GL_MAX_FRAGMENT_INPUT_COMPONENTS : constant := 16#9125#;  --  /usr/include/GL/glext.h:832
   GL_CONTEXT_PROFILE_MASK : constant := 16#9126#;  --  /usr/include/GL/glext.h:833

   GL_VERTEX_ATTRIB_ARRAY_DIVISOR : constant := 16#88FE#;  --  /usr/include/GL/glext.h:890

   GL_SAMPLE_SHADING : constant := 16#8C36#;  --  /usr/include/GL/glext.h:918
   GL_MIN_SAMPLE_SHADING_VALUE : constant := 16#8C37#;  --  /usr/include/GL/glext.h:919
   GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET : constant := 16#8E5E#;  --  /usr/include/GL/glext.h:920
   GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET : constant := 16#8E5F#;  --  /usr/include/GL/glext.h:921
   GL_TEXTURE_CUBE_MAP_ARRAY : constant := 16#9009#;  --  /usr/include/GL/glext.h:922
   GL_TEXTURE_BINDING_CUBE_MAP_ARRAY : constant := 16#900A#;  --  /usr/include/GL/glext.h:923
   GL_PROXY_TEXTURE_CUBE_MAP_ARRAY : constant := 16#900B#;  --  /usr/include/GL/glext.h:924
   GL_SAMPLER_CUBE_MAP_ARRAY : constant := 16#900C#;  --  /usr/include/GL/glext.h:925
   GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW : constant := 16#900D#;  --  /usr/include/GL/glext.h:926
   GL_INT_SAMPLER_CUBE_MAP_ARRAY : constant := 16#900E#;  --  /usr/include/GL/glext.h:927
   GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY : constant := 16#900F#;  --  /usr/include/GL/glext.h:928

   GL_TRANSPOSE_MODELVIEW_MATRIX_ARB : constant := 16#84E3#;  --  /usr/include/GL/glext.h:1207
   GL_TRANSPOSE_PROJECTION_MATRIX_ARB : constant := 16#84E4#;  --  /usr/include/GL/glext.h:1208
   GL_TRANSPOSE_TEXTURE_MATRIX_ARB : constant := 16#84E5#;  --  /usr/include/GL/glext.h:1209
   GL_TRANSPOSE_COLOR_MATRIX_ARB : constant := 16#84E6#;  --  /usr/include/GL/glext.h:1210

   GL_MULTISAMPLE_ARB : constant := 16#809D#;  --  /usr/include/GL/glext.h:1214
   GL_SAMPLE_ALPHA_TO_COVERAGE_ARB : constant := 16#809E#;  --  /usr/include/GL/glext.h:1215
   GL_SAMPLE_ALPHA_TO_ONE_ARB : constant := 16#809F#;  --  /usr/include/GL/glext.h:1216
   GL_SAMPLE_COVERAGE_ARB : constant := 16#80A0#;  --  /usr/include/GL/glext.h:1217
   GL_SAMPLE_BUFFERS_ARB : constant := 16#80A8#;  --  /usr/include/GL/glext.h:1218
   GL_SAMPLES_ARB : constant := 16#80A9#;  --  /usr/include/GL/glext.h:1219
   GL_SAMPLE_COVERAGE_VALUE_ARB : constant := 16#80AA#;  --  /usr/include/GL/glext.h:1220
   GL_SAMPLE_COVERAGE_INVERT_ARB : constant := 16#80AB#;  --  /usr/include/GL/glext.h:1221
   GL_MULTISAMPLE_BIT_ARB : constant := 16#20000000#;  --  /usr/include/GL/glext.h:1222

   GL_NORMAL_MAP_ARB : constant := 16#8511#;  --  /usr/include/GL/glext.h:1229
   GL_REFLECTION_MAP_ARB : constant := 16#8512#;  --  /usr/include/GL/glext.h:1230
   GL_TEXTURE_CUBE_MAP_ARB : constant := 16#8513#;  --  /usr/include/GL/glext.h:1231
   GL_TEXTURE_BINDING_CUBE_MAP_ARB : constant := 16#8514#;  --  /usr/include/GL/glext.h:1232
   GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB : constant := 16#8515#;  --  /usr/include/GL/glext.h:1233
   GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB : constant := 16#8516#;  --  /usr/include/GL/glext.h:1234
   GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB : constant := 16#8517#;  --  /usr/include/GL/glext.h:1235
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB : constant := 16#8518#;  --  /usr/include/GL/glext.h:1236
   GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB : constant := 16#8519#;  --  /usr/include/GL/glext.h:1237
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB : constant := 16#851A#;  --  /usr/include/GL/glext.h:1238
   GL_PROXY_TEXTURE_CUBE_MAP_ARB : constant := 16#851B#;  --  /usr/include/GL/glext.h:1239
   GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB : constant := 16#851C#;  --  /usr/include/GL/glext.h:1240

   GL_COMPRESSED_ALPHA_ARB : constant := 16#84E9#;  --  /usr/include/GL/glext.h:1244
   GL_COMPRESSED_LUMINANCE_ARB : constant := 16#84EA#;  --  /usr/include/GL/glext.h:1245
   GL_COMPRESSED_LUMINANCE_ALPHA_ARB : constant := 16#84EB#;  --  /usr/include/GL/glext.h:1246
   GL_COMPRESSED_INTENSITY_ARB : constant := 16#84EC#;  --  /usr/include/GL/glext.h:1247
   GL_COMPRESSED_RGB_ARB : constant := 16#84ED#;  --  /usr/include/GL/glext.h:1248
   GL_COMPRESSED_RGBA_ARB : constant := 16#84EE#;  --  /usr/include/GL/glext.h:1249
   GL_TEXTURE_COMPRESSION_HINT_ARB : constant := 16#84EF#;  --  /usr/include/GL/glext.h:1250
   GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB : constant := 16#86A0#;  --  /usr/include/GL/glext.h:1251
   GL_TEXTURE_COMPRESSED_ARB : constant := 16#86A1#;  --  /usr/include/GL/glext.h:1252
   GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB : constant := 16#86A2#;  --  /usr/include/GL/glext.h:1253
   GL_COMPRESSED_TEXTURE_FORMATS_ARB : constant := 16#86A3#;  --  /usr/include/GL/glext.h:1254

   GL_CLAMP_TO_BORDER_ARB : constant := 16#812D#;  --  /usr/include/GL/glext.h:1258

   GL_POINT_SIZE_MIN_ARB : constant := 16#8126#;  --  /usr/include/GL/glext.h:1262
   GL_POINT_SIZE_MAX_ARB : constant := 16#8127#;  --  /usr/include/GL/glext.h:1263
   GL_POINT_FADE_THRESHOLD_SIZE_ARB : constant := 16#8128#;  --  /usr/include/GL/glext.h:1264
   GL_POINT_DISTANCE_ATTENUATION_ARB : constant := 16#8129#;  --  /usr/include/GL/glext.h:1265

   GL_MAX_VERTEX_UNITS_ARB : constant := 16#86A4#;  --  /usr/include/GL/glext.h:1269
   GL_ACTIVE_VERTEX_UNITS_ARB : constant := 16#86A5#;  --  /usr/include/GL/glext.h:1270
   GL_WEIGHT_SUM_UNITY_ARB : constant := 16#86A6#;  --  /usr/include/GL/glext.h:1271
   GL_VERTEX_BLEND_ARB : constant := 16#86A7#;  --  /usr/include/GL/glext.h:1272
   GL_CURRENT_WEIGHT_ARB : constant := 16#86A8#;  --  /usr/include/GL/glext.h:1273
   GL_WEIGHT_ARRAY_TYPE_ARB : constant := 16#86A9#;  --  /usr/include/GL/glext.h:1274
   GL_WEIGHT_ARRAY_STRIDE_ARB : constant := 16#86AA#;  --  /usr/include/GL/glext.h:1275
   GL_WEIGHT_ARRAY_SIZE_ARB : constant := 16#86AB#;  --  /usr/include/GL/glext.h:1276
   GL_WEIGHT_ARRAY_POINTER_ARB : constant := 16#86AC#;  --  /usr/include/GL/glext.h:1277
   GL_WEIGHT_ARRAY_ARB : constant := 16#86AD#;  --  /usr/include/GL/glext.h:1278
   GL_MODELVIEW0_ARB : constant := 16#1700#;  --  /usr/include/GL/glext.h:1279
   GL_MODELVIEW1_ARB : constant := 16#850A#;  --  /usr/include/GL/glext.h:1280
   GL_MODELVIEW2_ARB : constant := 16#8722#;  --  /usr/include/GL/glext.h:1281
   GL_MODELVIEW3_ARB : constant := 16#8723#;  --  /usr/include/GL/glext.h:1282
   GL_MODELVIEW4_ARB : constant := 16#8724#;  --  /usr/include/GL/glext.h:1283
   GL_MODELVIEW5_ARB : constant := 16#8725#;  --  /usr/include/GL/glext.h:1284
   GL_MODELVIEW6_ARB : constant := 16#8726#;  --  /usr/include/GL/glext.h:1285
   GL_MODELVIEW7_ARB : constant := 16#8727#;  --  /usr/include/GL/glext.h:1286
   GL_MODELVIEW8_ARB : constant := 16#8728#;  --  /usr/include/GL/glext.h:1287
   GL_MODELVIEW9_ARB : constant := 16#8729#;  --  /usr/include/GL/glext.h:1288
   GL_MODELVIEW10_ARB : constant := 16#872A#;  --  /usr/include/GL/glext.h:1289
   GL_MODELVIEW11_ARB : constant := 16#872B#;  --  /usr/include/GL/glext.h:1290
   GL_MODELVIEW12_ARB : constant := 16#872C#;  --  /usr/include/GL/glext.h:1291
   GL_MODELVIEW13_ARB : constant := 16#872D#;  --  /usr/include/GL/glext.h:1292
   GL_MODELVIEW14_ARB : constant := 16#872E#;  --  /usr/include/GL/glext.h:1293
   GL_MODELVIEW15_ARB : constant := 16#872F#;  --  /usr/include/GL/glext.h:1294
   GL_MODELVIEW16_ARB : constant := 16#8730#;  --  /usr/include/GL/glext.h:1295
   GL_MODELVIEW17_ARB : constant := 16#8731#;  --  /usr/include/GL/glext.h:1296
   GL_MODELVIEW18_ARB : constant := 16#8732#;  --  /usr/include/GL/glext.h:1297
   GL_MODELVIEW19_ARB : constant := 16#8733#;  --  /usr/include/GL/glext.h:1298
   GL_MODELVIEW20_ARB : constant := 16#8734#;  --  /usr/include/GL/glext.h:1299
   GL_MODELVIEW21_ARB : constant := 16#8735#;  --  /usr/include/GL/glext.h:1300
   GL_MODELVIEW22_ARB : constant := 16#8736#;  --  /usr/include/GL/glext.h:1301
   GL_MODELVIEW23_ARB : constant := 16#8737#;  --  /usr/include/GL/glext.h:1302
   GL_MODELVIEW24_ARB : constant := 16#8738#;  --  /usr/include/GL/glext.h:1303
   GL_MODELVIEW25_ARB : constant := 16#8739#;  --  /usr/include/GL/glext.h:1304
   GL_MODELVIEW26_ARB : constant := 16#873A#;  --  /usr/include/GL/glext.h:1305
   GL_MODELVIEW27_ARB : constant := 16#873B#;  --  /usr/include/GL/glext.h:1306
   GL_MODELVIEW28_ARB : constant := 16#873C#;  --  /usr/include/GL/glext.h:1307
   GL_MODELVIEW29_ARB : constant := 16#873D#;  --  /usr/include/GL/glext.h:1308
   GL_MODELVIEW30_ARB : constant := 16#873E#;  --  /usr/include/GL/glext.h:1309
   GL_MODELVIEW31_ARB : constant := 16#873F#;  --  /usr/include/GL/glext.h:1310

   GL_MATRIX_PALETTE_ARB : constant := 16#8840#;  --  /usr/include/GL/glext.h:1314
   GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB : constant := 16#8841#;  --  /usr/include/GL/glext.h:1315
   GL_MAX_PALETTE_MATRICES_ARB : constant := 16#8842#;  --  /usr/include/GL/glext.h:1316
   GL_CURRENT_PALETTE_MATRIX_ARB : constant := 16#8843#;  --  /usr/include/GL/glext.h:1317
   GL_MATRIX_INDEX_ARRAY_ARB : constant := 16#8844#;  --  /usr/include/GL/glext.h:1318
   GL_CURRENT_MATRIX_INDEX_ARB : constant := 16#8845#;  --  /usr/include/GL/glext.h:1319
   GL_MATRIX_INDEX_ARRAY_SIZE_ARB : constant := 16#8846#;  --  /usr/include/GL/glext.h:1320
   GL_MATRIX_INDEX_ARRAY_TYPE_ARB : constant := 16#8847#;  --  /usr/include/GL/glext.h:1321
   GL_MATRIX_INDEX_ARRAY_STRIDE_ARB : constant := 16#8848#;  --  /usr/include/GL/glext.h:1322
   GL_MATRIX_INDEX_ARRAY_POINTER_ARB : constant := 16#8849#;  --  /usr/include/GL/glext.h:1323

   GL_COMBINE_ARB : constant := 16#8570#;  --  /usr/include/GL/glext.h:1327
   GL_COMBINE_RGB_ARB : constant := 16#8571#;  --  /usr/include/GL/glext.h:1328
   GL_COMBINE_ALPHA_ARB : constant := 16#8572#;  --  /usr/include/GL/glext.h:1329
   GL_SOURCE0_RGB_ARB : constant := 16#8580#;  --  /usr/include/GL/glext.h:1330
   GL_SOURCE1_RGB_ARB : constant := 16#8581#;  --  /usr/include/GL/glext.h:1331
   GL_SOURCE2_RGB_ARB : constant := 16#8582#;  --  /usr/include/GL/glext.h:1332
   GL_SOURCE0_ALPHA_ARB : constant := 16#8588#;  --  /usr/include/GL/glext.h:1333
   GL_SOURCE1_ALPHA_ARB : constant := 16#8589#;  --  /usr/include/GL/glext.h:1334
   GL_SOURCE2_ALPHA_ARB : constant := 16#858A#;  --  /usr/include/GL/glext.h:1335
   GL_OPERAND0_RGB_ARB : constant := 16#8590#;  --  /usr/include/GL/glext.h:1336
   GL_OPERAND1_RGB_ARB : constant := 16#8591#;  --  /usr/include/GL/glext.h:1337
   GL_OPERAND2_RGB_ARB : constant := 16#8592#;  --  /usr/include/GL/glext.h:1338
   GL_OPERAND0_ALPHA_ARB : constant := 16#8598#;  --  /usr/include/GL/glext.h:1339
   GL_OPERAND1_ALPHA_ARB : constant := 16#8599#;  --  /usr/include/GL/glext.h:1340
   GL_OPERAND2_ALPHA_ARB : constant := 16#859A#;  --  /usr/include/GL/glext.h:1341
   GL_RGB_SCALE_ARB : constant := 16#8573#;  --  /usr/include/GL/glext.h:1342
   GL_ADD_SIGNED_ARB : constant := 16#8574#;  --  /usr/include/GL/glext.h:1343
   GL_INTERPOLATE_ARB : constant := 16#8575#;  --  /usr/include/GL/glext.h:1344
   GL_SUBTRACT_ARB : constant := 16#84E7#;  --  /usr/include/GL/glext.h:1345
   GL_CONSTANT_ARB : constant := 16#8576#;  --  /usr/include/GL/glext.h:1346
   GL_PRIMARY_COLOR_ARB : constant := 16#8577#;  --  /usr/include/GL/glext.h:1347
   GL_PREVIOUS_ARB : constant := 16#8578#;  --  /usr/include/GL/glext.h:1348

   GL_DOT3_RGB_ARB : constant := 16#86AE#;  --  /usr/include/GL/glext.h:1355
   GL_DOT3_RGBA_ARB : constant := 16#86AF#;  --  /usr/include/GL/glext.h:1356

   GL_MIRRORED_REPEAT_ARB : constant := 16#8370#;  --  /usr/include/GL/glext.h:1360

   GL_DEPTH_COMPONENT16_ARB : constant := 16#81A5#;  --  /usr/include/GL/glext.h:1364
   GL_DEPTH_COMPONENT24_ARB : constant := 16#81A6#;  --  /usr/include/GL/glext.h:1365
   GL_DEPTH_COMPONENT32_ARB : constant := 16#81A7#;  --  /usr/include/GL/glext.h:1366
   GL_TEXTURE_DEPTH_SIZE_ARB : constant := 16#884A#;  --  /usr/include/GL/glext.h:1367
   GL_DEPTH_TEXTURE_MODE_ARB : constant := 16#884B#;  --  /usr/include/GL/glext.h:1368

   GL_TEXTURE_COMPARE_MODE_ARB : constant := 16#884C#;  --  /usr/include/GL/glext.h:1372
   GL_TEXTURE_COMPARE_FUNC_ARB : constant := 16#884D#;  --  /usr/include/GL/glext.h:1373
   GL_COMPARE_R_TO_TEXTURE_ARB : constant := 16#884E#;  --  /usr/include/GL/glext.h:1374

   GL_TEXTURE_COMPARE_FAIL_VALUE_ARB : constant := 16#80BF#;  --  /usr/include/GL/glext.h:1378

   GL_COLOR_SUM_ARB : constant := 16#8458#;  --  /usr/include/GL/glext.h:1385
   GL_VERTEX_PROGRAM_ARB : constant := 16#8620#;  --  /usr/include/GL/glext.h:1386
   GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB : constant := 16#8622#;  --  /usr/include/GL/glext.h:1387
   GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB : constant := 16#8623#;  --  /usr/include/GL/glext.h:1388
   GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB : constant := 16#8624#;  --  /usr/include/GL/glext.h:1389
   GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB : constant := 16#8625#;  --  /usr/include/GL/glext.h:1390
   GL_CURRENT_VERTEX_ATTRIB_ARB : constant := 16#8626#;  --  /usr/include/GL/glext.h:1391
   GL_PROGRAM_LENGTH_ARB : constant := 16#8627#;  --  /usr/include/GL/glext.h:1392
   GL_PROGRAM_STRING_ARB : constant := 16#8628#;  --  /usr/include/GL/glext.h:1393
   GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB : constant := 16#862E#;  --  /usr/include/GL/glext.h:1394
   GL_MAX_PROGRAM_MATRICES_ARB : constant := 16#862F#;  --  /usr/include/GL/glext.h:1395
   GL_CURRENT_MATRIX_STACK_DEPTH_ARB : constant := 16#8640#;  --  /usr/include/GL/glext.h:1396
   GL_CURRENT_MATRIX_ARB : constant := 16#8641#;  --  /usr/include/GL/glext.h:1397
   GL_VERTEX_PROGRAM_POINT_SIZE_ARB : constant := 16#8642#;  --  /usr/include/GL/glext.h:1398
   GL_VERTEX_PROGRAM_TWO_SIDE_ARB : constant := 16#8643#;  --  /usr/include/GL/glext.h:1399
   GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB : constant := 16#8645#;  --  /usr/include/GL/glext.h:1400
   GL_PROGRAM_ERROR_POSITION_ARB : constant := 16#864B#;  --  /usr/include/GL/glext.h:1401
   GL_PROGRAM_BINDING_ARB : constant := 16#8677#;  --  /usr/include/GL/glext.h:1402
   GL_MAX_VERTEX_ATTRIBS_ARB : constant := 16#8869#;  --  /usr/include/GL/glext.h:1403
   GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB : constant := 16#886A#;  --  /usr/include/GL/glext.h:1404
   GL_PROGRAM_ERROR_STRING_ARB : constant := 16#8874#;  --  /usr/include/GL/glext.h:1405
   GL_PROGRAM_FORMAT_ASCII_ARB : constant := 16#8875#;  --  /usr/include/GL/glext.h:1406
   GL_PROGRAM_FORMAT_ARB : constant := 16#8876#;  --  /usr/include/GL/glext.h:1407
   GL_PROGRAM_INSTRUCTIONS_ARB : constant := 16#88A0#;  --  /usr/include/GL/glext.h:1408
   GL_MAX_PROGRAM_INSTRUCTIONS_ARB : constant := 16#88A1#;  --  /usr/include/GL/glext.h:1409
   GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB : constant := 16#88A2#;  --  /usr/include/GL/glext.h:1410
   GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB : constant := 16#88A3#;  --  /usr/include/GL/glext.h:1411
   GL_PROGRAM_TEMPORARIES_ARB : constant := 16#88A4#;  --  /usr/include/GL/glext.h:1412
   GL_MAX_PROGRAM_TEMPORARIES_ARB : constant := 16#88A5#;  --  /usr/include/GL/glext.h:1413
   GL_PROGRAM_NATIVE_TEMPORARIES_ARB : constant := 16#88A6#;  --  /usr/include/GL/glext.h:1414
   GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB : constant := 16#88A7#;  --  /usr/include/GL/glext.h:1415
   GL_PROGRAM_PARAMETERS_ARB : constant := 16#88A8#;  --  /usr/include/GL/glext.h:1416
   GL_MAX_PROGRAM_PARAMETERS_ARB : constant := 16#88A9#;  --  /usr/include/GL/glext.h:1417
   GL_PROGRAM_NATIVE_PARAMETERS_ARB : constant := 16#88AA#;  --  /usr/include/GL/glext.h:1418
   GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB : constant := 16#88AB#;  --  /usr/include/GL/glext.h:1419
   GL_PROGRAM_ATTRIBS_ARB : constant := 16#88AC#;  --  /usr/include/GL/glext.h:1420
   GL_MAX_PROGRAM_ATTRIBS_ARB : constant := 16#88AD#;  --  /usr/include/GL/glext.h:1421
   GL_PROGRAM_NATIVE_ATTRIBS_ARB : constant := 16#88AE#;  --  /usr/include/GL/glext.h:1422
   GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB : constant := 16#88AF#;  --  /usr/include/GL/glext.h:1423
   GL_PROGRAM_ADDRESS_REGISTERS_ARB : constant := 16#88B0#;  --  /usr/include/GL/glext.h:1424
   GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB : constant := 16#88B1#;  --  /usr/include/GL/glext.h:1425
   GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB : constant := 16#88B2#;  --  /usr/include/GL/glext.h:1426
   GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB : constant := 16#88B3#;  --  /usr/include/GL/glext.h:1427
   GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB : constant := 16#88B4#;  --  /usr/include/GL/glext.h:1428
   GL_MAX_PROGRAM_ENV_PARAMETERS_ARB : constant := 16#88B5#;  --  /usr/include/GL/glext.h:1429
   GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB : constant := 16#88B6#;  --  /usr/include/GL/glext.h:1430
   GL_TRANSPOSE_CURRENT_MATRIX_ARB : constant := 16#88B7#;  --  /usr/include/GL/glext.h:1431
   GL_MATRIX0_ARB : constant := 16#88C0#;  --  /usr/include/GL/glext.h:1432
   GL_MATRIX1_ARB : constant := 16#88C1#;  --  /usr/include/GL/glext.h:1433
   GL_MATRIX2_ARB : constant := 16#88C2#;  --  /usr/include/GL/glext.h:1434
   GL_MATRIX3_ARB : constant := 16#88C3#;  --  /usr/include/GL/glext.h:1435
   GL_MATRIX4_ARB : constant := 16#88C4#;  --  /usr/include/GL/glext.h:1436
   GL_MATRIX5_ARB : constant := 16#88C5#;  --  /usr/include/GL/glext.h:1437
   GL_MATRIX6_ARB : constant := 16#88C6#;  --  /usr/include/GL/glext.h:1438
   GL_MATRIX7_ARB : constant := 16#88C7#;  --  /usr/include/GL/glext.h:1439
   GL_MATRIX8_ARB : constant := 16#88C8#;  --  /usr/include/GL/glext.h:1440
   GL_MATRIX9_ARB : constant := 16#88C9#;  --  /usr/include/GL/glext.h:1441
   GL_MATRIX10_ARB : constant := 16#88CA#;  --  /usr/include/GL/glext.h:1442
   GL_MATRIX11_ARB : constant := 16#88CB#;  --  /usr/include/GL/glext.h:1443
   GL_MATRIX12_ARB : constant := 16#88CC#;  --  /usr/include/GL/glext.h:1444
   GL_MATRIX13_ARB : constant := 16#88CD#;  --  /usr/include/GL/glext.h:1445
   GL_MATRIX14_ARB : constant := 16#88CE#;  --  /usr/include/GL/glext.h:1446
   GL_MATRIX15_ARB : constant := 16#88CF#;  --  /usr/include/GL/glext.h:1447
   GL_MATRIX16_ARB : constant := 16#88D0#;  --  /usr/include/GL/glext.h:1448
   GL_MATRIX17_ARB : constant := 16#88D1#;  --  /usr/include/GL/glext.h:1449
   GL_MATRIX18_ARB : constant := 16#88D2#;  --  /usr/include/GL/glext.h:1450
   GL_MATRIX19_ARB : constant := 16#88D3#;  --  /usr/include/GL/glext.h:1451
   GL_MATRIX20_ARB : constant := 16#88D4#;  --  /usr/include/GL/glext.h:1452
   GL_MATRIX21_ARB : constant := 16#88D5#;  --  /usr/include/GL/glext.h:1453
   GL_MATRIX22_ARB : constant := 16#88D6#;  --  /usr/include/GL/glext.h:1454
   GL_MATRIX23_ARB : constant := 16#88D7#;  --  /usr/include/GL/glext.h:1455
   GL_MATRIX24_ARB : constant := 16#88D8#;  --  /usr/include/GL/glext.h:1456
   GL_MATRIX25_ARB : constant := 16#88D9#;  --  /usr/include/GL/glext.h:1457
   GL_MATRIX26_ARB : constant := 16#88DA#;  --  /usr/include/GL/glext.h:1458
   GL_MATRIX27_ARB : constant := 16#88DB#;  --  /usr/include/GL/glext.h:1459
   GL_MATRIX28_ARB : constant := 16#88DC#;  --  /usr/include/GL/glext.h:1460
   GL_MATRIX29_ARB : constant := 16#88DD#;  --  /usr/include/GL/glext.h:1461
   GL_MATRIX30_ARB : constant := 16#88DE#;  --  /usr/include/GL/glext.h:1462
   GL_MATRIX31_ARB : constant := 16#88DF#;  --  /usr/include/GL/glext.h:1463

   GL_FRAGMENT_PROGRAM_ARB : constant := 16#8804#;  --  /usr/include/GL/glext.h:1467
   GL_PROGRAM_ALU_INSTRUCTIONS_ARB : constant := 16#8805#;  --  /usr/include/GL/glext.h:1468
   GL_PROGRAM_TEX_INSTRUCTIONS_ARB : constant := 16#8806#;  --  /usr/include/GL/glext.h:1469
   GL_PROGRAM_TEX_INDIRECTIONS_ARB : constant := 16#8807#;  --  /usr/include/GL/glext.h:1470
   GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB : constant := 16#8808#;  --  /usr/include/GL/glext.h:1471
   GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB : constant := 16#8809#;  --  /usr/include/GL/glext.h:1472
   GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB : constant := 16#880A#;  --  /usr/include/GL/glext.h:1473
   GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB : constant := 16#880B#;  --  /usr/include/GL/glext.h:1474
   GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB : constant := 16#880C#;  --  /usr/include/GL/glext.h:1475
   GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB : constant := 16#880D#;  --  /usr/include/GL/glext.h:1476
   GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB : constant := 16#880E#;  --  /usr/include/GL/glext.h:1477
   GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB : constant := 16#880F#;  --  /usr/include/GL/glext.h:1478
   GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB : constant := 16#8810#;  --  /usr/include/GL/glext.h:1479
   GL_MAX_TEXTURE_COORDS_ARB : constant := 16#8871#;  --  /usr/include/GL/glext.h:1480
   GL_MAX_TEXTURE_IMAGE_UNITS_ARB : constant := 16#8872#;  --  /usr/include/GL/glext.h:1481

   GL_BUFFER_SIZE_ARB : constant := 16#8764#;  --  /usr/include/GL/glext.h:1485
   GL_BUFFER_USAGE_ARB : constant := 16#8765#;  --  /usr/include/GL/glext.h:1486
   GL_ARRAY_BUFFER_ARB : constant := 16#8892#;  --  /usr/include/GL/glext.h:1487
   GL_ELEMENT_ARRAY_BUFFER_ARB : constant := 16#8893#;  --  /usr/include/GL/glext.h:1488
   GL_ARRAY_BUFFER_BINDING_ARB : constant := 16#8894#;  --  /usr/include/GL/glext.h:1489
   GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB : constant := 16#8895#;  --  /usr/include/GL/glext.h:1490
   GL_VERTEX_ARRAY_BUFFER_BINDING_ARB : constant := 16#8896#;  --  /usr/include/GL/glext.h:1491
   GL_NORMAL_ARRAY_BUFFER_BINDING_ARB : constant := 16#8897#;  --  /usr/include/GL/glext.h:1492
   GL_COLOR_ARRAY_BUFFER_BINDING_ARB : constant := 16#8898#;  --  /usr/include/GL/glext.h:1493
   GL_INDEX_ARRAY_BUFFER_BINDING_ARB : constant := 16#8899#;  --  /usr/include/GL/glext.h:1494
   GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB : constant := 16#889A#;  --  /usr/include/GL/glext.h:1495
   GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB : constant := 16#889B#;  --  /usr/include/GL/glext.h:1496
   GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB : constant := 16#889C#;  --  /usr/include/GL/glext.h:1497
   GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB : constant := 16#889D#;  --  /usr/include/GL/glext.h:1498
   GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB : constant := 16#889E#;  --  /usr/include/GL/glext.h:1499
   GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB : constant := 16#889F#;  --  /usr/include/GL/glext.h:1500
   GL_READ_ONLY_ARB : constant := 16#88B8#;  --  /usr/include/GL/glext.h:1501
   GL_WRITE_ONLY_ARB : constant := 16#88B9#;  --  /usr/include/GL/glext.h:1502
   GL_READ_WRITE_ARB : constant := 16#88BA#;  --  /usr/include/GL/glext.h:1503
   GL_BUFFER_ACCESS_ARB : constant := 16#88BB#;  --  /usr/include/GL/glext.h:1504
   GL_BUFFER_MAPPED_ARB : constant := 16#88BC#;  --  /usr/include/GL/glext.h:1505
   GL_BUFFER_MAP_POINTER_ARB : constant := 16#88BD#;  --  /usr/include/GL/glext.h:1506
   GL_STREAM_DRAW_ARB : constant := 16#88E0#;  --  /usr/include/GL/glext.h:1507
   GL_STREAM_READ_ARB : constant := 16#88E1#;  --  /usr/include/GL/glext.h:1508
   GL_STREAM_COPY_ARB : constant := 16#88E2#;  --  /usr/include/GL/glext.h:1509
   GL_STATIC_DRAW_ARB : constant := 16#88E4#;  --  /usr/include/GL/glext.h:1510
   GL_STATIC_READ_ARB : constant := 16#88E5#;  --  /usr/include/GL/glext.h:1511
   GL_STATIC_COPY_ARB : constant := 16#88E6#;  --  /usr/include/GL/glext.h:1512
   GL_DYNAMIC_DRAW_ARB : constant := 16#88E8#;  --  /usr/include/GL/glext.h:1513
   GL_DYNAMIC_READ_ARB : constant := 16#88E9#;  --  /usr/include/GL/glext.h:1514
   GL_DYNAMIC_COPY_ARB : constant := 16#88EA#;  --  /usr/include/GL/glext.h:1515

   GL_QUERY_COUNTER_BITS_ARB : constant := 16#8864#;  --  /usr/include/GL/glext.h:1519
   GL_CURRENT_QUERY_ARB : constant := 16#8865#;  --  /usr/include/GL/glext.h:1520
   GL_QUERY_RESULT_ARB : constant := 16#8866#;  --  /usr/include/GL/glext.h:1521
   GL_QUERY_RESULT_AVAILABLE_ARB : constant := 16#8867#;  --  /usr/include/GL/glext.h:1522
   GL_SAMPLES_PASSED_ARB : constant := 16#8914#;  --  /usr/include/GL/glext.h:1523

   GL_PROGRAM_OBJECT_ARB : constant := 16#8B40#;  --  /usr/include/GL/glext.h:1527
   GL_SHADER_OBJECT_ARB : constant := 16#8B48#;  --  /usr/include/GL/glext.h:1528
   GL_OBJECT_TYPE_ARB : constant := 16#8B4E#;  --  /usr/include/GL/glext.h:1529
   GL_OBJECT_SUBTYPE_ARB : constant := 16#8B4F#;  --  /usr/include/GL/glext.h:1530
   GL_FLOAT_VEC2_ARB : constant := 16#8B50#;  --  /usr/include/GL/glext.h:1531
   GL_FLOAT_VEC3_ARB : constant := 16#8B51#;  --  /usr/include/GL/glext.h:1532
   GL_FLOAT_VEC4_ARB : constant := 16#8B52#;  --  /usr/include/GL/glext.h:1533
   GL_INT_VEC2_ARB : constant := 16#8B53#;  --  /usr/include/GL/glext.h:1534
   GL_INT_VEC3_ARB : constant := 16#8B54#;  --  /usr/include/GL/glext.h:1535
   GL_INT_VEC4_ARB : constant := 16#8B55#;  --  /usr/include/GL/glext.h:1536
   GL_BOOL_ARB : constant := 16#8B56#;  --  /usr/include/GL/glext.h:1537
   GL_BOOL_VEC2_ARB : constant := 16#8B57#;  --  /usr/include/GL/glext.h:1538
   GL_BOOL_VEC3_ARB : constant := 16#8B58#;  --  /usr/include/GL/glext.h:1539
   GL_BOOL_VEC4_ARB : constant := 16#8B59#;  --  /usr/include/GL/glext.h:1540
   GL_FLOAT_MAT2_ARB : constant := 16#8B5A#;  --  /usr/include/GL/glext.h:1541
   GL_FLOAT_MAT3_ARB : constant := 16#8B5B#;  --  /usr/include/GL/glext.h:1542
   GL_FLOAT_MAT4_ARB : constant := 16#8B5C#;  --  /usr/include/GL/glext.h:1543
   GL_SAMPLER_1D_ARB : constant := 16#8B5D#;  --  /usr/include/GL/glext.h:1544
   GL_SAMPLER_2D_ARB : constant := 16#8B5E#;  --  /usr/include/GL/glext.h:1545
   GL_SAMPLER_3D_ARB : constant := 16#8B5F#;  --  /usr/include/GL/glext.h:1546
   GL_SAMPLER_CUBE_ARB : constant := 16#8B60#;  --  /usr/include/GL/glext.h:1547
   GL_SAMPLER_1D_SHADOW_ARB : constant := 16#8B61#;  --  /usr/include/GL/glext.h:1548
   GL_SAMPLER_2D_SHADOW_ARB : constant := 16#8B62#;  --  /usr/include/GL/glext.h:1549
   GL_SAMPLER_2D_RECT_ARB : constant := 16#8B63#;  --  /usr/include/GL/glext.h:1550
   GL_SAMPLER_2D_RECT_SHADOW_ARB : constant := 16#8B64#;  --  /usr/include/GL/glext.h:1551
   GL_OBJECT_DELETE_STATUS_ARB : constant := 16#8B80#;  --  /usr/include/GL/glext.h:1552
   GL_OBJECT_COMPILE_STATUS_ARB : constant := 16#8B81#;  --  /usr/include/GL/glext.h:1553
   GL_OBJECT_LINK_STATUS_ARB : constant := 16#8B82#;  --  /usr/include/GL/glext.h:1554
   GL_OBJECT_VALIDATE_STATUS_ARB : constant := 16#8B83#;  --  /usr/include/GL/glext.h:1555
   GL_OBJECT_INFO_LOG_LENGTH_ARB : constant := 16#8B84#;  --  /usr/include/GL/glext.h:1556
   GL_OBJECT_ATTACHED_OBJECTS_ARB : constant := 16#8B85#;  --  /usr/include/GL/glext.h:1557
   GL_OBJECT_ACTIVE_UNIFORMS_ARB : constant := 16#8B86#;  --  /usr/include/GL/glext.h:1558
   GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB : constant := 16#8B87#;  --  /usr/include/GL/glext.h:1559
   GL_OBJECT_SHADER_SOURCE_LENGTH_ARB : constant := 16#8B88#;  --  /usr/include/GL/glext.h:1560

   GL_VERTEX_SHADER_ARB : constant := 16#8B31#;  --  /usr/include/GL/glext.h:1564
   GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB : constant := 16#8B4A#;  --  /usr/include/GL/glext.h:1565
   GL_MAX_VARYING_FLOATS_ARB : constant := 16#8B4B#;  --  /usr/include/GL/glext.h:1566
   GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB : constant := 16#8B4C#;  --  /usr/include/GL/glext.h:1567
   GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB : constant := 16#8B4D#;  --  /usr/include/GL/glext.h:1568
   GL_OBJECT_ACTIVE_ATTRIBUTES_ARB : constant := 16#8B89#;  --  /usr/include/GL/glext.h:1569
   GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB : constant := 16#8B8A#;  --  /usr/include/GL/glext.h:1570

   GL_FRAGMENT_SHADER_ARB : constant := 16#8B30#;  --  /usr/include/GL/glext.h:1574
   GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB : constant := 16#8B49#;  --  /usr/include/GL/glext.h:1575
   GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB : constant := 16#8B8B#;  --  /usr/include/GL/glext.h:1576

   GL_SHADING_LANGUAGE_VERSION_ARB : constant := 16#8B8C#;  --  /usr/include/GL/glext.h:1580

   GL_POINT_SPRITE_ARB : constant := 16#8861#;  --  /usr/include/GL/glext.h:1587
   GL_COORD_REPLACE_ARB : constant := 16#8862#;  --  /usr/include/GL/glext.h:1588

   GL_MAX_DRAW_BUFFERS_ARB : constant := 16#8824#;  --  /usr/include/GL/glext.h:1595
   GL_DRAW_BUFFER0_ARB : constant := 16#8825#;  --  /usr/include/GL/glext.h:1596
   GL_DRAW_BUFFER1_ARB : constant := 16#8826#;  --  /usr/include/GL/glext.h:1597
   GL_DRAW_BUFFER2_ARB : constant := 16#8827#;  --  /usr/include/GL/glext.h:1598
   GL_DRAW_BUFFER3_ARB : constant := 16#8828#;  --  /usr/include/GL/glext.h:1599
   GL_DRAW_BUFFER4_ARB : constant := 16#8829#;  --  /usr/include/GL/glext.h:1600
   GL_DRAW_BUFFER5_ARB : constant := 16#882A#;  --  /usr/include/GL/glext.h:1601
   GL_DRAW_BUFFER6_ARB : constant := 16#882B#;  --  /usr/include/GL/glext.h:1602
   GL_DRAW_BUFFER7_ARB : constant := 16#882C#;  --  /usr/include/GL/glext.h:1603
   GL_DRAW_BUFFER8_ARB : constant := 16#882D#;  --  /usr/include/GL/glext.h:1604
   GL_DRAW_BUFFER9_ARB : constant := 16#882E#;  --  /usr/include/GL/glext.h:1605
   GL_DRAW_BUFFER10_ARB : constant := 16#882F#;  --  /usr/include/GL/glext.h:1606
   GL_DRAW_BUFFER11_ARB : constant := 16#8830#;  --  /usr/include/GL/glext.h:1607
   GL_DRAW_BUFFER12_ARB : constant := 16#8831#;  --  /usr/include/GL/glext.h:1608
   GL_DRAW_BUFFER13_ARB : constant := 16#8832#;  --  /usr/include/GL/glext.h:1609
   GL_DRAW_BUFFER14_ARB : constant := 16#8833#;  --  /usr/include/GL/glext.h:1610
   GL_DRAW_BUFFER15_ARB : constant := 16#8834#;  --  /usr/include/GL/glext.h:1611

   GL_TEXTURE_RECTANGLE_ARB : constant := 16#84F5#;  --  /usr/include/GL/glext.h:1615
   GL_TEXTURE_BINDING_RECTANGLE_ARB : constant := 16#84F6#;  --  /usr/include/GL/glext.h:1616
   GL_PROXY_TEXTURE_RECTANGLE_ARB : constant := 16#84F7#;  --  /usr/include/GL/glext.h:1617
   GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB : constant := 16#84F8#;  --  /usr/include/GL/glext.h:1618

   GL_RGBA_FLOAT_MODE_ARB : constant := 16#8820#;  --  /usr/include/GL/glext.h:1622
   GL_CLAMP_VERTEX_COLOR_ARB : constant := 16#891A#;  --  /usr/include/GL/glext.h:1623
   GL_CLAMP_FRAGMENT_COLOR_ARB : constant := 16#891B#;  --  /usr/include/GL/glext.h:1624
   GL_CLAMP_READ_COLOR_ARB : constant := 16#891C#;  --  /usr/include/GL/glext.h:1625
   GL_FIXED_ONLY_ARB : constant := 16#891D#;  --  /usr/include/GL/glext.h:1626

   GL_HALF_FLOAT_ARB : constant := 16#140B#;  --  /usr/include/GL/glext.h:1630

   GL_TEXTURE_RED_TYPE_ARB : constant := 16#8C10#;  --  /usr/include/GL/glext.h:1634
   GL_TEXTURE_GREEN_TYPE_ARB : constant := 16#8C11#;  --  /usr/include/GL/glext.h:1635
   GL_TEXTURE_BLUE_TYPE_ARB : constant := 16#8C12#;  --  /usr/include/GL/glext.h:1636
   GL_TEXTURE_ALPHA_TYPE_ARB : constant := 16#8C13#;  --  /usr/include/GL/glext.h:1637
   GL_TEXTURE_LUMINANCE_TYPE_ARB : constant := 16#8C14#;  --  /usr/include/GL/glext.h:1638
   GL_TEXTURE_INTENSITY_TYPE_ARB : constant := 16#8C15#;  --  /usr/include/GL/glext.h:1639
   GL_TEXTURE_DEPTH_TYPE_ARB : constant := 16#8C16#;  --  /usr/include/GL/glext.h:1640
   GL_UNSIGNED_NORMALIZED_ARB : constant := 16#8C17#;  --  /usr/include/GL/glext.h:1641
   GL_RGBA32F_ARB : constant := 16#8814#;  --  /usr/include/GL/glext.h:1642
   GL_RGB32F_ARB : constant := 16#8815#;  --  /usr/include/GL/glext.h:1643
   GL_ALPHA32F_ARB : constant := 16#8816#;  --  /usr/include/GL/glext.h:1644
   GL_INTENSITY32F_ARB : constant := 16#8817#;  --  /usr/include/GL/glext.h:1645
   GL_LUMINANCE32F_ARB : constant := 16#8818#;  --  /usr/include/GL/glext.h:1646
   GL_LUMINANCE_ALPHA32F_ARB : constant := 16#8819#;  --  /usr/include/GL/glext.h:1647
   GL_RGBA16F_ARB : constant := 16#881A#;  --  /usr/include/GL/glext.h:1648
   GL_RGB16F_ARB : constant := 16#881B#;  --  /usr/include/GL/glext.h:1649
   GL_ALPHA16F_ARB : constant := 16#881C#;  --  /usr/include/GL/glext.h:1650
   GL_INTENSITY16F_ARB : constant := 16#881D#;  --  /usr/include/GL/glext.h:1651
   GL_LUMINANCE16F_ARB : constant := 16#881E#;  --  /usr/include/GL/glext.h:1652
   GL_LUMINANCE_ALPHA16F_ARB : constant := 16#881F#;  --  /usr/include/GL/glext.h:1653

   GL_PIXEL_PACK_BUFFER_ARB : constant := 16#88EB#;  --  /usr/include/GL/glext.h:1657
   GL_PIXEL_UNPACK_BUFFER_ARB : constant := 16#88EC#;  --  /usr/include/GL/glext.h:1658
   GL_PIXEL_PACK_BUFFER_BINDING_ARB : constant := 16#88ED#;  --  /usr/include/GL/glext.h:1659
   GL_PIXEL_UNPACK_BUFFER_BINDING_ARB : constant := 16#88EF#;  --  /usr/include/GL/glext.h:1660

   GL_DEPTH_COMPONENT32F : constant := 16#8CAC#;  --  /usr/include/GL/glext.h:1664
   GL_DEPTH32F_STENCIL8 : constant := 16#8CAD#;  --  /usr/include/GL/glext.h:1665
   GL_FLOAT_32_UNSIGNED_INT_24_8_REV : constant := 16#8DAD#;  --  /usr/include/GL/glext.h:1666

   GL_INVALID_FRAMEBUFFER_OPERATION : constant := 16#0506#;  --  /usr/include/GL/glext.h:1673
   GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING : constant := 16#8210#;  --  /usr/include/GL/glext.h:1674
   GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE : constant := 16#8211#;  --  /usr/include/GL/glext.h:1675
   GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE : constant := 16#8212#;  --  /usr/include/GL/glext.h:1676
   GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE : constant := 16#8213#;  --  /usr/include/GL/glext.h:1677
   GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE : constant := 16#8214#;  --  /usr/include/GL/glext.h:1678
   GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE : constant := 16#8215#;  --  /usr/include/GL/glext.h:1679
   GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE : constant := 16#8216#;  --  /usr/include/GL/glext.h:1680
   GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE : constant := 16#8217#;  --  /usr/include/GL/glext.h:1681
   GL_FRAMEBUFFER_DEFAULT : constant := 16#8218#;  --  /usr/include/GL/glext.h:1682
   GL_FRAMEBUFFER_UNDEFINED : constant := 16#8219#;  --  /usr/include/GL/glext.h:1683
   GL_DEPTH_STENCIL_ATTACHMENT : constant := 16#821A#;  --  /usr/include/GL/glext.h:1684
   GL_MAX_RENDERBUFFER_SIZE : constant := 16#84E8#;  --  /usr/include/GL/glext.h:1685
   GL_DEPTH_STENCIL : constant := 16#84F9#;  --  /usr/include/GL/glext.h:1686
   GL_UNSIGNED_INT_24_8 : constant := 16#84FA#;  --  /usr/include/GL/glext.h:1687
   GL_DEPTH24_STENCIL8 : constant := 16#88F0#;  --  /usr/include/GL/glext.h:1688
   GL_TEXTURE_STENCIL_SIZE : constant := 16#88F1#;  --  /usr/include/GL/glext.h:1689
   GL_TEXTURE_RED_TYPE : constant := 16#8C10#;  --  /usr/include/GL/glext.h:1690
   GL_TEXTURE_GREEN_TYPE : constant := 16#8C11#;  --  /usr/include/GL/glext.h:1691
   GL_TEXTURE_BLUE_TYPE : constant := 16#8C12#;  --  /usr/include/GL/glext.h:1692
   GL_TEXTURE_ALPHA_TYPE : constant := 16#8C13#;  --  /usr/include/GL/glext.h:1693
   GL_TEXTURE_DEPTH_TYPE : constant := 16#8C16#;  --  /usr/include/GL/glext.h:1694
   GL_UNSIGNED_NORMALIZED : constant := 16#8C17#;  --  /usr/include/GL/glext.h:1695
   GL_FRAMEBUFFER_BINDING : constant := 16#8CA6#;  --  /usr/include/GL/glext.h:1696
   --  unsupported macro: GL_DRAW_FRAMEBUFFER_BINDING GL_FRAMEBUFFER_BINDING

   GL_RENDERBUFFER_BINDING : constant := 16#8CA7#;  --  /usr/include/GL/glext.h:1698
   GL_READ_FRAMEBUFFER : constant := 16#8CA8#;  --  /usr/include/GL/glext.h:1699
   GL_DRAW_FRAMEBUFFER : constant := 16#8CA9#;  --  /usr/include/GL/glext.h:1700
   GL_READ_FRAMEBUFFER_BINDING : constant := 16#8CAA#;  --  /usr/include/GL/glext.h:1701
   GL_RENDERBUFFER_SAMPLES : constant := 16#8CAB#;  --  /usr/include/GL/glext.h:1702
   GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE : constant := 16#8CD0#;  --  /usr/include/GL/glext.h:1703
   GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME : constant := 16#8CD1#;  --  /usr/include/GL/glext.h:1704
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL : constant := 16#8CD2#;  --  /usr/include/GL/glext.h:1705
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE : constant := 16#8CD3#;  --  /usr/include/GL/glext.h:1706
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER : constant := 16#8CD4#;  --  /usr/include/GL/glext.h:1707
   GL_FRAMEBUFFER_COMPLETE : constant := 16#8CD5#;  --  /usr/include/GL/glext.h:1708
   GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT : constant := 16#8CD6#;  --  /usr/include/GL/glext.h:1709
   GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT : constant := 16#8CD7#;  --  /usr/include/GL/glext.h:1710
   GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER : constant := 16#8CDB#;  --  /usr/include/GL/glext.h:1711
   GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER : constant := 16#8CDC#;  --  /usr/include/GL/glext.h:1712
   GL_FRAMEBUFFER_UNSUPPORTED : constant := 16#8CDD#;  --  /usr/include/GL/glext.h:1713
   GL_MAX_COLOR_ATTACHMENTS : constant := 16#8CDF#;  --  /usr/include/GL/glext.h:1714
   GL_COLOR_ATTACHMENT0 : constant := 16#8CE0#;  --  /usr/include/GL/glext.h:1715
   GL_COLOR_ATTACHMENT1 : constant := 16#8CE1#;  --  /usr/include/GL/glext.h:1716
   GL_COLOR_ATTACHMENT2 : constant := 16#8CE2#;  --  /usr/include/GL/glext.h:1717
   GL_COLOR_ATTACHMENT3 : constant := 16#8CE3#;  --  /usr/include/GL/glext.h:1718
   GL_COLOR_ATTACHMENT4 : constant := 16#8CE4#;  --  /usr/include/GL/glext.h:1719
   GL_COLOR_ATTACHMENT5 : constant := 16#8CE5#;  --  /usr/include/GL/glext.h:1720
   GL_COLOR_ATTACHMENT6 : constant := 16#8CE6#;  --  /usr/include/GL/glext.h:1721
   GL_COLOR_ATTACHMENT7 : constant := 16#8CE7#;  --  /usr/include/GL/glext.h:1722
   GL_COLOR_ATTACHMENT8 : constant := 16#8CE8#;  --  /usr/include/GL/glext.h:1723
   GL_COLOR_ATTACHMENT9 : constant := 16#8CE9#;  --  /usr/include/GL/glext.h:1724
   GL_COLOR_ATTACHMENT10 : constant := 16#8CEA#;  --  /usr/include/GL/glext.h:1725
   GL_COLOR_ATTACHMENT11 : constant := 16#8CEB#;  --  /usr/include/GL/glext.h:1726
   GL_COLOR_ATTACHMENT12 : constant := 16#8CEC#;  --  /usr/include/GL/glext.h:1727
   GL_COLOR_ATTACHMENT13 : constant := 16#8CED#;  --  /usr/include/GL/glext.h:1728
   GL_COLOR_ATTACHMENT14 : constant := 16#8CEE#;  --  /usr/include/GL/glext.h:1729
   GL_COLOR_ATTACHMENT15 : constant := 16#8CEF#;  --  /usr/include/GL/glext.h:1730
   GL_DEPTH_ATTACHMENT : constant := 16#8D00#;  --  /usr/include/GL/glext.h:1731
   GL_STENCIL_ATTACHMENT : constant := 16#8D20#;  --  /usr/include/GL/glext.h:1732
   GL_FRAMEBUFFER : constant := 16#8D40#;  --  /usr/include/GL/glext.h:1733
   GL_RENDERBUFFER : constant := 16#8D41#;  --  /usr/include/GL/glext.h:1734
   GL_RENDERBUFFER_WIDTH : constant := 16#8D42#;  --  /usr/include/GL/glext.h:1735
   GL_RENDERBUFFER_HEIGHT : constant := 16#8D43#;  --  /usr/include/GL/glext.h:1736
   GL_RENDERBUFFER_INTERNAL_FORMAT : constant := 16#8D44#;  --  /usr/include/GL/glext.h:1737
   GL_STENCIL_INDEX1 : constant := 16#8D46#;  --  /usr/include/GL/glext.h:1738
   GL_STENCIL_INDEX4 : constant := 16#8D47#;  --  /usr/include/GL/glext.h:1739
   GL_STENCIL_INDEX8 : constant := 16#8D48#;  --  /usr/include/GL/glext.h:1740
   GL_STENCIL_INDEX16 : constant := 16#8D49#;  --  /usr/include/GL/glext.h:1741
   GL_RENDERBUFFER_RED_SIZE : constant := 16#8D50#;  --  /usr/include/GL/glext.h:1742
   GL_RENDERBUFFER_GREEN_SIZE : constant := 16#8D51#;  --  /usr/include/GL/glext.h:1743
   GL_RENDERBUFFER_BLUE_SIZE : constant := 16#8D52#;  --  /usr/include/GL/glext.h:1744
   GL_RENDERBUFFER_ALPHA_SIZE : constant := 16#8D53#;  --  /usr/include/GL/glext.h:1745
   GL_RENDERBUFFER_DEPTH_SIZE : constant := 16#8D54#;  --  /usr/include/GL/glext.h:1746
   GL_RENDERBUFFER_STENCIL_SIZE : constant := 16#8D55#;  --  /usr/include/GL/glext.h:1747
   GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE : constant := 16#8D56#;  --  /usr/include/GL/glext.h:1748
   GL_MAX_SAMPLES : constant := 16#8D57#;  --  /usr/include/GL/glext.h:1749

   GL_INDEX : constant := 16#8222#;  --  /usr/include/GL/glext.h:1753
   GL_TEXTURE_LUMINANCE_TYPE : constant := 16#8C14#;  --  /usr/include/GL/glext.h:1754
   GL_TEXTURE_INTENSITY_TYPE : constant := 16#8C15#;  --  /usr/include/GL/glext.h:1755

   GL_FRAMEBUFFER_SRGB : constant := 16#8DB9#;  --  /usr/include/GL/glext.h:1759

   GL_LINES_ADJACENCY_ARB : constant := 16#000A#;  --  /usr/include/GL/glext.h:1763
   GL_LINE_STRIP_ADJACENCY_ARB : constant := 16#000B#;  --  /usr/include/GL/glext.h:1764
   GL_TRIANGLES_ADJACENCY_ARB : constant := 16#000C#;  --  /usr/include/GL/glext.h:1765
   GL_TRIANGLE_STRIP_ADJACENCY_ARB : constant := 16#000D#;  --  /usr/include/GL/glext.h:1766
   GL_PROGRAM_POINT_SIZE_ARB : constant := 16#8642#;  --  /usr/include/GL/glext.h:1767
   GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB : constant := 16#8C29#;  --  /usr/include/GL/glext.h:1768
   GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB : constant := 16#8DA7#;  --  /usr/include/GL/glext.h:1769
   GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB : constant := 16#8DA8#;  --  /usr/include/GL/glext.h:1770
   GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB : constant := 16#8DA9#;  --  /usr/include/GL/glext.h:1771
   GL_GEOMETRY_SHADER_ARB : constant := 16#8DD9#;  --  /usr/include/GL/glext.h:1772
   GL_GEOMETRY_VERTICES_OUT_ARB : constant := 16#8DDA#;  --  /usr/include/GL/glext.h:1773
   GL_GEOMETRY_INPUT_TYPE_ARB : constant := 16#8DDB#;  --  /usr/include/GL/glext.h:1774
   GL_GEOMETRY_OUTPUT_TYPE_ARB : constant := 16#8DDC#;  --  /usr/include/GL/glext.h:1775
   GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB : constant := 16#8DDD#;  --  /usr/include/GL/glext.h:1776
   GL_MAX_VERTEX_VARYING_COMPONENTS_ARB : constant := 16#8DDE#;  --  /usr/include/GL/glext.h:1777
   GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB : constant := 16#8DDF#;  --  /usr/include/GL/glext.h:1778
   GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB : constant := 16#8DE0#;  --  /usr/include/GL/glext.h:1779
   GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB : constant := 16#8DE1#;  --  /usr/include/GL/glext.h:1780

   GL_HALF_FLOAT : constant := 16#140B#;  --  /usr/include/GL/glext.h:1786

   GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB : constant := 16#88FE#;  --  /usr/include/GL/glext.h:1790

   GL_MAP_READ_BIT : constant := 16#0001#;  --  /usr/include/GL/glext.h:1794
   GL_MAP_WRITE_BIT : constant := 16#0002#;  --  /usr/include/GL/glext.h:1795
   GL_MAP_INVALIDATE_RANGE_BIT : constant := 16#0004#;  --  /usr/include/GL/glext.h:1796
   GL_MAP_INVALIDATE_BUFFER_BIT : constant := 16#0008#;  --  /usr/include/GL/glext.h:1797
   GL_MAP_FLUSH_EXPLICIT_BIT : constant := 16#0010#;  --  /usr/include/GL/glext.h:1798
   GL_MAP_UNSYNCHRONIZED_BIT : constant := 16#0020#;  --  /usr/include/GL/glext.h:1799

   GL_TEXTURE_BUFFER_ARB : constant := 16#8C2A#;  --  /usr/include/GL/glext.h:1803
   GL_MAX_TEXTURE_BUFFER_SIZE_ARB : constant := 16#8C2B#;  --  /usr/include/GL/glext.h:1804
   GL_TEXTURE_BINDING_BUFFER_ARB : constant := 16#8C2C#;  --  /usr/include/GL/glext.h:1805
   GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB : constant := 16#8C2D#;  --  /usr/include/GL/glext.h:1806
   GL_TEXTURE_BUFFER_FORMAT_ARB : constant := 16#8C2E#;  --  /usr/include/GL/glext.h:1807

   GL_COMPRESSED_RED_RGTC1 : constant := 16#8DBB#;  --  /usr/include/GL/glext.h:1811
   GL_COMPRESSED_SIGNED_RED_RGTC1 : constant := 16#8DBC#;  --  /usr/include/GL/glext.h:1812
   GL_COMPRESSED_RG_RGTC2 : constant := 16#8DBD#;  --  /usr/include/GL/glext.h:1813
   GL_COMPRESSED_SIGNED_RG_RGTC2 : constant := 16#8DBE#;  --  /usr/include/GL/glext.h:1814

   GL_RG : constant := 16#8227#;  --  /usr/include/GL/glext.h:1818
   GL_RG_INTEGER : constant := 16#8228#;  --  /usr/include/GL/glext.h:1819
   GL_R8 : constant := 16#8229#;  --  /usr/include/GL/glext.h:1820
   GL_R16 : constant := 16#822A#;  --  /usr/include/GL/glext.h:1821
   GL_RG8 : constant := 16#822B#;  --  /usr/include/GL/glext.h:1822
   GL_RG16 : constant := 16#822C#;  --  /usr/include/GL/glext.h:1823
   GL_R16F : constant := 16#822D#;  --  /usr/include/GL/glext.h:1824
   GL_R32F : constant := 16#822E#;  --  /usr/include/GL/glext.h:1825
   GL_RG16F : constant := 16#822F#;  --  /usr/include/GL/glext.h:1826
   GL_RG32F : constant := 16#8230#;  --  /usr/include/GL/glext.h:1827
   GL_R8I : constant := 16#8231#;  --  /usr/include/GL/glext.h:1828
   GL_R8UI : constant := 16#8232#;  --  /usr/include/GL/glext.h:1829
   GL_R16I : constant := 16#8233#;  --  /usr/include/GL/glext.h:1830
   GL_R16UI : constant := 16#8234#;  --  /usr/include/GL/glext.h:1831
   GL_R32I : constant := 16#8235#;  --  /usr/include/GL/glext.h:1832
   GL_R32UI : constant := 16#8236#;  --  /usr/include/GL/glext.h:1833
   GL_RG8I : constant := 16#8237#;  --  /usr/include/GL/glext.h:1834
   GL_RG8UI : constant := 16#8238#;  --  /usr/include/GL/glext.h:1835
   GL_RG16I : constant := 16#8239#;  --  /usr/include/GL/glext.h:1836
   GL_RG16UI : constant := 16#823A#;  --  /usr/include/GL/glext.h:1837
   GL_RG32I : constant := 16#823B#;  --  /usr/include/GL/glext.h:1838
   GL_RG32UI : constant := 16#823C#;  --  /usr/include/GL/glext.h:1839

   GL_VERTEX_ARRAY_BINDING : constant := 16#85B5#;  --  /usr/include/GL/glext.h:1843

   GL_UNIFORM_BUFFER : constant := 16#8A11#;  --  /usr/include/GL/glext.h:1847
   GL_UNIFORM_BUFFER_BINDING : constant := 16#8A28#;  --  /usr/include/GL/glext.h:1848
   GL_UNIFORM_BUFFER_START : constant := 16#8A29#;  --  /usr/include/GL/glext.h:1849
   GL_UNIFORM_BUFFER_SIZE : constant := 16#8A2A#;  --  /usr/include/GL/glext.h:1850
   GL_MAX_VERTEX_UNIFORM_BLOCKS : constant := 16#8A2B#;  --  /usr/include/GL/glext.h:1851
   GL_MAX_GEOMETRY_UNIFORM_BLOCKS : constant := 16#8A2C#;  --  /usr/include/GL/glext.h:1852
   GL_MAX_FRAGMENT_UNIFORM_BLOCKS : constant := 16#8A2D#;  --  /usr/include/GL/glext.h:1853
   GL_MAX_COMBINED_UNIFORM_BLOCKS : constant := 16#8A2E#;  --  /usr/include/GL/glext.h:1854
   GL_MAX_UNIFORM_BUFFER_BINDINGS : constant := 16#8A2F#;  --  /usr/include/GL/glext.h:1855
   GL_MAX_UNIFORM_BLOCK_SIZE : constant := 16#8A30#;  --  /usr/include/GL/glext.h:1856
   GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS : constant := 16#8A31#;  --  /usr/include/GL/glext.h:1857
   GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS : constant := 16#8A32#;  --  /usr/include/GL/glext.h:1858
   GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS : constant := 16#8A33#;  --  /usr/include/GL/glext.h:1859
   GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT : constant := 16#8A34#;  --  /usr/include/GL/glext.h:1860
   GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH : constant := 16#8A35#;  --  /usr/include/GL/glext.h:1861
   GL_ACTIVE_UNIFORM_BLOCKS : constant := 16#8A36#;  --  /usr/include/GL/glext.h:1862
   GL_UNIFORM_TYPE : constant := 16#8A37#;  --  /usr/include/GL/glext.h:1863
   GL_UNIFORM_SIZE : constant := 16#8A38#;  --  /usr/include/GL/glext.h:1864
   GL_UNIFORM_NAME_LENGTH : constant := 16#8A39#;  --  /usr/include/GL/glext.h:1865
   GL_UNIFORM_BLOCK_INDEX : constant := 16#8A3A#;  --  /usr/include/GL/glext.h:1866
   GL_UNIFORM_OFFSET : constant := 16#8A3B#;  --  /usr/include/GL/glext.h:1867
   GL_UNIFORM_ARRAY_STRIDE : constant := 16#8A3C#;  --  /usr/include/GL/glext.h:1868
   GL_UNIFORM_MATRIX_STRIDE : constant := 16#8A3D#;  --  /usr/include/GL/glext.h:1869
   GL_UNIFORM_IS_ROW_MAJOR : constant := 16#8A3E#;  --  /usr/include/GL/glext.h:1870
   GL_UNIFORM_BLOCK_BINDING : constant := 16#8A3F#;  --  /usr/include/GL/glext.h:1871
   GL_UNIFORM_BLOCK_DATA_SIZE : constant := 16#8A40#;  --  /usr/include/GL/glext.h:1872
   GL_UNIFORM_BLOCK_NAME_LENGTH : constant := 16#8A41#;  --  /usr/include/GL/glext.h:1873
   GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS : constant := 16#8A42#;  --  /usr/include/GL/glext.h:1874
   GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES : constant := 16#8A43#;  --  /usr/include/GL/glext.h:1875
   GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER : constant := 16#8A44#;  --  /usr/include/GL/glext.h:1876
   GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER : constant := 16#8A45#;  --  /usr/include/GL/glext.h:1877
   GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER : constant := 16#8A46#;  --  /usr/include/GL/glext.h:1878
   GL_INVALID_INDEX : constant := 16#FFFFFFFF#;  --  /usr/include/GL/glext.h:1879

   GL_COPY_READ_BUFFER : constant := 16#8F36#;  --  /usr/include/GL/glext.h:1887
   GL_COPY_WRITE_BUFFER : constant := 16#8F37#;  --  /usr/include/GL/glext.h:1888

   GL_DEPTH_CLAMP : constant := 16#864F#;  --  /usr/include/GL/glext.h:1895

   GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION : constant := 16#8E4C#;  --  /usr/include/GL/glext.h:1905
   GL_FIRST_VERTEX_CONVENTION : constant := 16#8E4D#;  --  /usr/include/GL/glext.h:1906
   GL_LAST_VERTEX_CONVENTION : constant := 16#8E4E#;  --  /usr/include/GL/glext.h:1907
   GL_PROVOKING_VERTEX : constant := 16#8E4F#;  --  /usr/include/GL/glext.h:1908

   GL_TEXTURE_CUBE_MAP_SEAMLESS : constant := 16#884F#;  --  /usr/include/GL/glext.h:1912

   GL_MAX_SERVER_WAIT_TIMEOUT : constant := 16#9111#;  --  /usr/include/GL/glext.h:1916
   GL_OBJECT_TYPE : constant := 16#9112#;  --  /usr/include/GL/glext.h:1917
   GL_SYNC_CONDITION : constant := 16#9113#;  --  /usr/include/GL/glext.h:1918
   GL_SYNC_STATUS : constant := 16#9114#;  --  /usr/include/GL/glext.h:1919
   GL_SYNC_FLAGS : constant := 16#9115#;  --  /usr/include/GL/glext.h:1920
   GL_SYNC_FENCE : constant := 16#9116#;  --  /usr/include/GL/glext.h:1921
   GL_SYNC_GPU_COMMANDS_COMPLETE : constant := 16#9117#;  --  /usr/include/GL/glext.h:1922
   GL_UNSIGNALED : constant := 16#9118#;  --  /usr/include/GL/glext.h:1923
   GL_SIGNALED : constant := 16#9119#;  --  /usr/include/GL/glext.h:1924
   GL_ALREADY_SIGNALED : constant := 16#911A#;  --  /usr/include/GL/glext.h:1925
   GL_TIMEOUT_EXPIRED : constant := 16#911B#;  --  /usr/include/GL/glext.h:1926
   GL_CONDITION_SATISFIED : constant := 16#911C#;  --  /usr/include/GL/glext.h:1927
   GL_WAIT_FAILED : constant := 16#911D#;  --  /usr/include/GL/glext.h:1928
   GL_SYNC_FLUSH_COMMANDS_BIT : constant := 16#00000001#;  --  /usr/include/GL/glext.h:1929
   GL_TIMEOUT_IGNORED : constant := 16#FFFFFFFFFFFFFFFF#;  --  /usr/include/GL/glext.h:1930

   GL_SAMPLE_POSITION : constant := 16#8E50#;  --  /usr/include/GL/glext.h:1934
   GL_SAMPLE_MASK : constant := 16#8E51#;  --  /usr/include/GL/glext.h:1935
   GL_SAMPLE_MASK_VALUE : constant := 16#8E52#;  --  /usr/include/GL/glext.h:1936
   GL_MAX_SAMPLE_MASK_WORDS : constant := 16#8E59#;  --  /usr/include/GL/glext.h:1937
   GL_TEXTURE_2D_MULTISAMPLE : constant := 16#9100#;  --  /usr/include/GL/glext.h:1938
   GL_PROXY_TEXTURE_2D_MULTISAMPLE : constant := 16#9101#;  --  /usr/include/GL/glext.h:1939
   GL_TEXTURE_2D_MULTISAMPLE_ARRAY : constant := 16#9102#;  --  /usr/include/GL/glext.h:1940
   GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY : constant := 16#9103#;  --  /usr/include/GL/glext.h:1941
   GL_TEXTURE_BINDING_2D_MULTISAMPLE : constant := 16#9104#;  --  /usr/include/GL/glext.h:1942
   GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY : constant := 16#9105#;  --  /usr/include/GL/glext.h:1943
   GL_TEXTURE_SAMPLES : constant := 16#9106#;  --  /usr/include/GL/glext.h:1944
   GL_TEXTURE_FIXED_SAMPLE_LOCATIONS : constant := 16#9107#;  --  /usr/include/GL/glext.h:1945
   GL_SAMPLER_2D_MULTISAMPLE : constant := 16#9108#;  --  /usr/include/GL/glext.h:1946
   GL_INT_SAMPLER_2D_MULTISAMPLE : constant := 16#9109#;  --  /usr/include/GL/glext.h:1947
   GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE : constant := 16#910A#;  --  /usr/include/GL/glext.h:1948
   GL_SAMPLER_2D_MULTISAMPLE_ARRAY : constant := 16#910B#;  --  /usr/include/GL/glext.h:1949
   GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY : constant := 16#910C#;  --  /usr/include/GL/glext.h:1950
   GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY : constant := 16#910D#;  --  /usr/include/GL/glext.h:1951
   GL_MAX_COLOR_TEXTURE_SAMPLES : constant := 16#910E#;  --  /usr/include/GL/glext.h:1952
   GL_MAX_DEPTH_TEXTURE_SAMPLES : constant := 16#910F#;  --  /usr/include/GL/glext.h:1953
   GL_MAX_INTEGER_SAMPLES : constant := 16#9110#;  --  /usr/include/GL/glext.h:1954

   GL_SAMPLE_SHADING_ARB : constant := 16#8C36#;  --  /usr/include/GL/glext.h:1965
   GL_MIN_SAMPLE_SHADING_VALUE_ARB : constant := 16#8C37#;  --  /usr/include/GL/glext.h:1966

   GL_TEXTURE_CUBE_MAP_ARRAY_ARB : constant := 16#9009#;  --  /usr/include/GL/glext.h:1970
   GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB : constant := 16#900A#;  --  /usr/include/GL/glext.h:1971
   GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB : constant := 16#900B#;  --  /usr/include/GL/glext.h:1972
   GL_SAMPLER_CUBE_MAP_ARRAY_ARB : constant := 16#900C#;  --  /usr/include/GL/glext.h:1973
   GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB : constant := 16#900D#;  --  /usr/include/GL/glext.h:1974
   GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB : constant := 16#900E#;  --  /usr/include/GL/glext.h:1975
   GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB : constant := 16#900F#;  --  /usr/include/GL/glext.h:1976

   GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB : constant := 16#8E5E#;  --  /usr/include/GL/glext.h:1980
   GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB : constant := 16#8E5F#;  --  /usr/include/GL/glext.h:1981

   GL_SHADER_INCLUDE_ARB : constant := 16#8DAE#;  --  /usr/include/GL/glext.h:1988
   GL_NAMED_STRING_LENGTH_ARB : constant := 16#8DE9#;  --  /usr/include/GL/glext.h:1989
   GL_NAMED_STRING_TYPE_ARB : constant := 16#8DEA#;  --  /usr/include/GL/glext.h:1990

   GL_COMPRESSED_RGBA_BPTC_UNORM_ARB : constant := 16#8E8C#;  --  /usr/include/GL/glext.h:1994
   GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB : constant := 16#8E8D#;  --  /usr/include/GL/glext.h:1995
   GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB : constant := 16#8E8E#;  --  /usr/include/GL/glext.h:1996
   GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB : constant := 16#8E8F#;  --  /usr/include/GL/glext.h:1997

   GL_SRC1_COLOR : constant := 16#88F9#;  --  /usr/include/GL/glext.h:2001

   GL_ONE_MINUS_SRC1_COLOR : constant := 16#88FA#;  --  /usr/include/GL/glext.h:2003
   GL_ONE_MINUS_SRC1_ALPHA : constant := 16#88FB#;  --  /usr/include/GL/glext.h:2004
   GL_MAX_DUAL_SOURCE_DRAW_BUFFERS : constant := 16#88FC#;  --  /usr/include/GL/glext.h:2005

   GL_ANY_SAMPLES_PASSED : constant := 16#8C2F#;  --  /usr/include/GL/glext.h:2012

   GL_SAMPLER_BINDING : constant := 16#8919#;  --  /usr/include/GL/glext.h:2016

   GL_RGB10_A2UI : constant := 16#906F#;  --  /usr/include/GL/glext.h:2023

   GL_TEXTURE_SWIZZLE_R : constant := 16#8E42#;  --  /usr/include/GL/glext.h:2027
   GL_TEXTURE_SWIZZLE_G : constant := 16#8E43#;  --  /usr/include/GL/glext.h:2028
   GL_TEXTURE_SWIZZLE_B : constant := 16#8E44#;  --  /usr/include/GL/glext.h:2029
   GL_TEXTURE_SWIZZLE_A : constant := 16#8E45#;  --  /usr/include/GL/glext.h:2030
   GL_TEXTURE_SWIZZLE_RGBA : constant := 16#8E46#;  --  /usr/include/GL/glext.h:2031

   GL_TIME_ELAPSED : constant := 16#88BF#;  --  /usr/include/GL/glext.h:2035
   GL_TIMESTAMP : constant := 16#8E28#;  --  /usr/include/GL/glext.h:2036

   GL_INT_2_10_10_10_REV : constant := 16#8D9F#;  --  /usr/include/GL/glext.h:2041

   GL_DRAW_INDIRECT_BUFFER : constant := 16#8F3F#;  --  /usr/include/GL/glext.h:2045
   GL_DRAW_INDIRECT_BUFFER_BINDING : constant := 16#8F43#;  --  /usr/include/GL/glext.h:2046

   GL_GEOMETRY_SHADER_INVOCATIONS : constant := 16#887F#;  --  /usr/include/GL/glext.h:2050
   GL_MAX_GEOMETRY_SHADER_INVOCATIONS : constant := 16#8E5A#;  --  /usr/include/GL/glext.h:2051
   GL_MIN_FRAGMENT_INTERPOLATION_OFFSET : constant := 16#8E5B#;  --  /usr/include/GL/glext.h:2052
   GL_MAX_FRAGMENT_INTERPOLATION_OFFSET : constant := 16#8E5C#;  --  /usr/include/GL/glext.h:2053
   GL_FRAGMENT_INTERPOLATION_OFFSET_BITS : constant := 16#8E5D#;  --  /usr/include/GL/glext.h:2054

   GL_DOUBLE_VEC2 : constant := 16#8FFC#;  --  /usr/include/GL/glext.h:2060
   GL_DOUBLE_VEC3 : constant := 16#8FFD#;  --  /usr/include/GL/glext.h:2061
   GL_DOUBLE_VEC4 : constant := 16#8FFE#;  --  /usr/include/GL/glext.h:2062
   GL_DOUBLE_MAT2 : constant := 16#8F46#;  --  /usr/include/GL/glext.h:2063
   GL_DOUBLE_MAT3 : constant := 16#8F47#;  --  /usr/include/GL/glext.h:2064
   GL_DOUBLE_MAT4 : constant := 16#8F48#;  --  /usr/include/GL/glext.h:2065
   GL_DOUBLE_MAT2x3 : constant := 16#8F49#;  --  /usr/include/GL/glext.h:2066
   GL_DOUBLE_MAT2x4 : constant := 16#8F4A#;  --  /usr/include/GL/glext.h:2067
   GL_DOUBLE_MAT3x2 : constant := 16#8F4B#;  --  /usr/include/GL/glext.h:2068
   GL_DOUBLE_MAT3x4 : constant := 16#8F4C#;  --  /usr/include/GL/glext.h:2069
   GL_DOUBLE_MAT4x2 : constant := 16#8F4D#;  --  /usr/include/GL/glext.h:2070
   GL_DOUBLE_MAT4x3 : constant := 16#8F4E#;  --  /usr/include/GL/glext.h:2071

   GL_ACTIVE_SUBROUTINES : constant := 16#8DE5#;  --  /usr/include/GL/glext.h:2075
   GL_ACTIVE_SUBROUTINE_UNIFORMS : constant := 16#8DE6#;  --  /usr/include/GL/glext.h:2076
   GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS : constant := 16#8E47#;  --  /usr/include/GL/glext.h:2077
   GL_ACTIVE_SUBROUTINE_MAX_LENGTH : constant := 16#8E48#;  --  /usr/include/GL/glext.h:2078
   GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH : constant := 16#8E49#;  --  /usr/include/GL/glext.h:2079
   GL_MAX_SUBROUTINES : constant := 16#8DE7#;  --  /usr/include/GL/glext.h:2080
   GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS : constant := 16#8DE8#;  --  /usr/include/GL/glext.h:2081
   GL_NUM_COMPATIBLE_SUBROUTINES : constant := 16#8E4A#;  --  /usr/include/GL/glext.h:2082
   GL_COMPATIBLE_SUBROUTINES : constant := 16#8E4B#;  --  /usr/include/GL/glext.h:2083

   GL_PATCHES : constant := 16#000E#;  --  /usr/include/GL/glext.h:2089
   GL_PATCH_VERTICES : constant := 16#8E72#;  --  /usr/include/GL/glext.h:2090
   GL_PATCH_DEFAULT_INNER_LEVEL : constant := 16#8E73#;  --  /usr/include/GL/glext.h:2091
   GL_PATCH_DEFAULT_OUTER_LEVEL : constant := 16#8E74#;  --  /usr/include/GL/glext.h:2092
   GL_TESS_CONTROL_OUTPUT_VERTICES : constant := 16#8E75#;  --  /usr/include/GL/glext.h:2093
   GL_TESS_GEN_MODE : constant := 16#8E76#;  --  /usr/include/GL/glext.h:2094
   GL_TESS_GEN_SPACING : constant := 16#8E77#;  --  /usr/include/GL/glext.h:2095
   GL_TESS_GEN_VERTEX_ORDER : constant := 16#8E78#;  --  /usr/include/GL/glext.h:2096
   GL_TESS_GEN_POINT_MODE : constant := 16#8E79#;  --  /usr/include/GL/glext.h:2097

   GL_ISOLINES : constant := 16#8E7A#;  --  /usr/include/GL/glext.h:2100

   GL_FRACTIONAL_ODD : constant := 16#8E7B#;  --  /usr/include/GL/glext.h:2102
   GL_FRACTIONAL_EVEN : constant := 16#8E7C#;  --  /usr/include/GL/glext.h:2103

   GL_MAX_PATCH_VERTICES : constant := 16#8E7D#;  --  /usr/include/GL/glext.h:2106
   GL_MAX_TESS_GEN_LEVEL : constant := 16#8E7E#;  --  /usr/include/GL/glext.h:2107
   GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS : constant := 16#8E7F#;  --  /usr/include/GL/glext.h:2108
   GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS : constant := 16#8E80#;  --  /usr/include/GL/glext.h:2109
   GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS : constant := 16#8E81#;  --  /usr/include/GL/glext.h:2110
   GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS : constant := 16#8E82#;  --  /usr/include/GL/glext.h:2111
   GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS : constant := 16#8E83#;  --  /usr/include/GL/glext.h:2112
   GL_MAX_TESS_PATCH_COMPONENTS : constant := 16#8E84#;  --  /usr/include/GL/glext.h:2113
   GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS : constant := 16#8E85#;  --  /usr/include/GL/glext.h:2114
   GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS : constant := 16#8E86#;  --  /usr/include/GL/glext.h:2115
   GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS : constant := 16#8E89#;  --  /usr/include/GL/glext.h:2116
   GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS : constant := 16#8E8A#;  --  /usr/include/GL/glext.h:2117
   GL_MAX_TESS_CONTROL_INPUT_COMPONENTS : constant := 16#886C#;  --  /usr/include/GL/glext.h:2118
   GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS : constant := 16#886D#;  --  /usr/include/GL/glext.h:2119
   GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS : constant := 16#8E1E#;  --  /usr/include/GL/glext.h:2120
   GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS : constant := 16#8E1F#;  --  /usr/include/GL/glext.h:2121
   GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER : constant := 16#84F0#;  --  /usr/include/GL/glext.h:2122
   GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER : constant := 16#84F1#;  --  /usr/include/GL/glext.h:2123
   GL_TESS_EVALUATION_SHADER : constant := 16#8E87#;  --  /usr/include/GL/glext.h:2124
   GL_TESS_CONTROL_SHADER : constant := 16#8E88#;  --  /usr/include/GL/glext.h:2125

   GL_TRANSFORM_FEEDBACK : constant := 16#8E22#;  --  /usr/include/GL/glext.h:2135
   GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED : constant := 16#8E23#;  --  /usr/include/GL/glext.h:2136
   GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE : constant := 16#8E24#;  --  /usr/include/GL/glext.h:2137
   GL_TRANSFORM_FEEDBACK_BINDING : constant := 16#8E25#;  --  /usr/include/GL/glext.h:2138

   GL_MAX_TRANSFORM_FEEDBACK_BUFFERS : constant := 16#8E70#;  --  /usr/include/GL/glext.h:2142
   GL_MAX_VERTEX_STREAMS : constant := 16#8E71#;  --  /usr/include/GL/glext.h:2143

   GL_FIXED : constant := 16#140C#;  --  /usr/include/GL/glext.h:2147
   GL_IMPLEMENTATION_COLOR_READ_TYPE : constant := 16#8B9A#;  --  /usr/include/GL/glext.h:2148
   GL_IMPLEMENTATION_COLOR_READ_FORMAT : constant := 16#8B9B#;  --  /usr/include/GL/glext.h:2149
   GL_LOW_FLOAT : constant := 16#8DF0#;  --  /usr/include/GL/glext.h:2150
   GL_MEDIUM_FLOAT : constant := 16#8DF1#;  --  /usr/include/GL/glext.h:2151
   GL_HIGH_FLOAT : constant := 16#8DF2#;  --  /usr/include/GL/glext.h:2152
   GL_LOW_INT : constant := 16#8DF3#;  --  /usr/include/GL/glext.h:2153
   GL_MEDIUM_INT : constant := 16#8DF4#;  --  /usr/include/GL/glext.h:2154
   GL_HIGH_INT : constant := 16#8DF5#;  --  /usr/include/GL/glext.h:2155
   GL_SHADER_COMPILER : constant := 16#8DFA#;  --  /usr/include/GL/glext.h:2156
   GL_NUM_SHADER_BINARY_FORMATS : constant := 16#8DF9#;  --  /usr/include/GL/glext.h:2157
   GL_MAX_VERTEX_UNIFORM_VECTORS : constant := 16#8DFB#;  --  /usr/include/GL/glext.h:2158
   GL_MAX_VARYING_VECTORS : constant := 16#8DFC#;  --  /usr/include/GL/glext.h:2159
   GL_MAX_FRAGMENT_UNIFORM_VECTORS : constant := 16#8DFD#;  --  /usr/include/GL/glext.h:2160

   GL_PROGRAM_BINARY_RETRIEVABLE_HINT : constant := 16#8257#;  --  /usr/include/GL/glext.h:2164
   GL_PROGRAM_BINARY_LENGTH : constant := 16#8741#;  --  /usr/include/GL/glext.h:2165
   GL_NUM_PROGRAM_BINARY_FORMATS : constant := 16#87FE#;  --  /usr/include/GL/glext.h:2166
   GL_PROGRAM_BINARY_FORMATS : constant := 16#87FF#;  --  /usr/include/GL/glext.h:2167

   GL_VERTEX_SHADER_BIT : constant := 16#00000001#;  --  /usr/include/GL/glext.h:2171
   GL_FRAGMENT_SHADER_BIT : constant := 16#00000002#;  --  /usr/include/GL/glext.h:2172
   GL_GEOMETRY_SHADER_BIT : constant := 16#00000004#;  --  /usr/include/GL/glext.h:2173
   GL_TESS_CONTROL_SHADER_BIT : constant := 16#00000008#;  --  /usr/include/GL/glext.h:2174
   GL_TESS_EVALUATION_SHADER_BIT : constant := 16#00000010#;  --  /usr/include/GL/glext.h:2175
   GL_ALL_SHADER_BITS : constant := 16#FFFFFFFF#;  --  /usr/include/GL/glext.h:2176
   GL_PROGRAM_SEPARABLE : constant := 16#8258#;  --  /usr/include/GL/glext.h:2177
   GL_ACTIVE_PROGRAM : constant := 16#8259#;  --  /usr/include/GL/glext.h:2178
   GL_PROGRAM_PIPELINE_BINDING : constant := 16#825A#;  --  /usr/include/GL/glext.h:2179

   GL_MAX_VIEWPORTS : constant := 16#825B#;  --  /usr/include/GL/glext.h:2206
   GL_VIEWPORT_SUBPIXEL_BITS : constant := 16#825C#;  --  /usr/include/GL/glext.h:2207
   GL_VIEWPORT_BOUNDS_RANGE : constant := 16#825D#;  --  /usr/include/GL/glext.h:2208
   GL_LAYER_PROVOKING_VERTEX : constant := 16#825E#;  --  /usr/include/GL/glext.h:2209
   GL_VIEWPORT_INDEX_PROVOKING_VERTEX : constant := 16#825F#;  --  /usr/include/GL/glext.h:2210
   GL_UNDEFINED_VERTEX : constant := 16#8260#;  --  /usr/include/GL/glext.h:2211

   GL_SYNC_CL_EVENT_ARB : constant := 16#8240#;  --  /usr/include/GL/glext.h:2218
   GL_SYNC_CL_EVENT_COMPLETE_ARB : constant := 16#8241#;  --  /usr/include/GL/glext.h:2219

   GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB : constant := 16#8242#;  --  /usr/include/GL/glext.h:2223
   GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB : constant := 16#8243#;  --  /usr/include/GL/glext.h:2224
   GL_DEBUG_CALLBACK_FUNCTION_ARB : constant := 16#8244#;  --  /usr/include/GL/glext.h:2225
   GL_DEBUG_CALLBACK_USER_PARAM_ARB : constant := 16#8245#;  --  /usr/include/GL/glext.h:2226
   GL_DEBUG_SOURCE_API_ARB : constant := 16#8246#;  --  /usr/include/GL/glext.h:2227
   GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB : constant := 16#8247#;  --  /usr/include/GL/glext.h:2228
   GL_DEBUG_SOURCE_SHADER_COMPILER_ARB : constant := 16#8248#;  --  /usr/include/GL/glext.h:2229
   GL_DEBUG_SOURCE_THIRD_PARTY_ARB : constant := 16#8249#;  --  /usr/include/GL/glext.h:2230
   GL_DEBUG_SOURCE_APPLICATION_ARB : constant := 16#824A#;  --  /usr/include/GL/glext.h:2231
   GL_DEBUG_SOURCE_OTHER_ARB : constant := 16#824B#;  --  /usr/include/GL/glext.h:2232
   GL_DEBUG_TYPE_ERROR_ARB : constant := 16#824C#;  --  /usr/include/GL/glext.h:2233
   GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB : constant := 16#824D#;  --  /usr/include/GL/glext.h:2234
   GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB : constant := 16#824E#;  --  /usr/include/GL/glext.h:2235
   GL_DEBUG_TYPE_PORTABILITY_ARB : constant := 16#824F#;  --  /usr/include/GL/glext.h:2236
   GL_DEBUG_TYPE_PERFORMANCE_ARB : constant := 16#8250#;  --  /usr/include/GL/glext.h:2237
   GL_DEBUG_TYPE_OTHER_ARB : constant := 16#8251#;  --  /usr/include/GL/glext.h:2238
   GL_MAX_DEBUG_MESSAGE_LENGTH_ARB : constant := 16#9143#;  --  /usr/include/GL/glext.h:2239
   GL_MAX_DEBUG_LOGGED_MESSAGES_ARB : constant := 16#9144#;  --  /usr/include/GL/glext.h:2240
   GL_DEBUG_LOGGED_MESSAGES_ARB : constant := 16#9145#;  --  /usr/include/GL/glext.h:2241
   GL_DEBUG_SEVERITY_HIGH_ARB : constant := 16#9146#;  --  /usr/include/GL/glext.h:2242
   GL_DEBUG_SEVERITY_MEDIUM_ARB : constant := 16#9147#;  --  /usr/include/GL/glext.h:2243
   GL_DEBUG_SEVERITY_LOW_ARB : constant := 16#9148#;  --  /usr/include/GL/glext.h:2244

   GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB : constant := 16#00000004#;  --  /usr/include/GL/glext.h:2249
   GL_LOSE_CONTEXT_ON_RESET_ARB : constant := 16#8252#;  --  /usr/include/GL/glext.h:2250
   GL_GUILTY_CONTEXT_RESET_ARB : constant := 16#8253#;  --  /usr/include/GL/glext.h:2251
   GL_INNOCENT_CONTEXT_RESET_ARB : constant := 16#8254#;  --  /usr/include/GL/glext.h:2252
   GL_UNKNOWN_CONTEXT_RESET_ARB : constant := 16#8255#;  --  /usr/include/GL/glext.h:2253
   GL_RESET_NOTIFICATION_STRATEGY_ARB : constant := 16#8256#;  --  /usr/include/GL/glext.h:2254
   GL_NO_RESET_NOTIFICATION_ARB : constant := 16#8261#;  --  /usr/include/GL/glext.h:2255

   GL_UNPACK_COMPRESSED_BLOCK_WIDTH : constant := 16#9127#;  --  /usr/include/GL/glext.h:2271
   GL_UNPACK_COMPRESSED_BLOCK_HEIGHT : constant := 16#9128#;  --  /usr/include/GL/glext.h:2272
   GL_UNPACK_COMPRESSED_BLOCK_DEPTH : constant := 16#9129#;  --  /usr/include/GL/glext.h:2273
   GL_UNPACK_COMPRESSED_BLOCK_SIZE : constant := 16#912A#;  --  /usr/include/GL/glext.h:2274
   GL_PACK_COMPRESSED_BLOCK_WIDTH : constant := 16#912B#;  --  /usr/include/GL/glext.h:2275
   GL_PACK_COMPRESSED_BLOCK_HEIGHT : constant := 16#912C#;  --  /usr/include/GL/glext.h:2276
   GL_PACK_COMPRESSED_BLOCK_DEPTH : constant := 16#912D#;  --  /usr/include/GL/glext.h:2277
   GL_PACK_COMPRESSED_BLOCK_SIZE : constant := 16#912E#;  --  /usr/include/GL/glext.h:2278

   GL_NUM_SAMPLE_COUNTS : constant := 16#9380#;  --  /usr/include/GL/glext.h:2285

   GL_MIN_MAP_BUFFER_ALIGNMENT : constant := 16#90BC#;  --  /usr/include/GL/glext.h:2289

   GL_ATOMIC_COUNTER_BUFFER : constant := 16#92C0#;  --  /usr/include/GL/glext.h:2293
   GL_ATOMIC_COUNTER_BUFFER_BINDING : constant := 16#92C1#;  --  /usr/include/GL/glext.h:2294
   GL_ATOMIC_COUNTER_BUFFER_START : constant := 16#92C2#;  --  /usr/include/GL/glext.h:2295
   GL_ATOMIC_COUNTER_BUFFER_SIZE : constant := 16#92C3#;  --  /usr/include/GL/glext.h:2296
   GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE : constant := 16#92C4#;  --  /usr/include/GL/glext.h:2297
   GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS : constant := 16#92C5#;  --  /usr/include/GL/glext.h:2298
   GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES : constant := 16#92C6#;  --  /usr/include/GL/glext.h:2299
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER : constant := 16#92C7#;  --  /usr/include/GL/glext.h:2300
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER : constant := 16#92C8#;  --  /usr/include/GL/glext.h:2301
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER : constant := 16#92C9#;  --  /usr/include/GL/glext.h:2302
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER : constant := 16#92CA#;  --  /usr/include/GL/glext.h:2303
   GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER : constant := 16#92CB#;  --  /usr/include/GL/glext.h:2304
   GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS : constant := 16#92CC#;  --  /usr/include/GL/glext.h:2305
   GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS : constant := 16#92CD#;  --  /usr/include/GL/glext.h:2306
   GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS : constant := 16#92CE#;  --  /usr/include/GL/glext.h:2307
   GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS : constant := 16#92CF#;  --  /usr/include/GL/glext.h:2308
   GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS : constant := 16#92D0#;  --  /usr/include/GL/glext.h:2309
   GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS : constant := 16#92D1#;  --  /usr/include/GL/glext.h:2310
   GL_MAX_VERTEX_ATOMIC_COUNTERS : constant := 16#92D2#;  --  /usr/include/GL/glext.h:2311
   GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS : constant := 16#92D3#;  --  /usr/include/GL/glext.h:2312
   GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS : constant := 16#92D4#;  --  /usr/include/GL/glext.h:2313
   GL_MAX_GEOMETRY_ATOMIC_COUNTERS : constant := 16#92D5#;  --  /usr/include/GL/glext.h:2314
   GL_MAX_FRAGMENT_ATOMIC_COUNTERS : constant := 16#92D6#;  --  /usr/include/GL/glext.h:2315
   GL_MAX_COMBINED_ATOMIC_COUNTERS : constant := 16#92D7#;  --  /usr/include/GL/glext.h:2316
   GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE : constant := 16#92D8#;  --  /usr/include/GL/glext.h:2317
   GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS : constant := 16#92DC#;  --  /usr/include/GL/glext.h:2318
   GL_ACTIVE_ATOMIC_COUNTER_BUFFERS : constant := 16#92D9#;  --  /usr/include/GL/glext.h:2319
   GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX : constant := 16#92DA#;  --  /usr/include/GL/glext.h:2320
   GL_UNSIGNED_INT_ATOMIC_COUNTER : constant := 16#92DB#;  --  /usr/include/GL/glext.h:2321

   GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT : constant := 16#00000001#;  --  /usr/include/GL/glext.h:2325
   GL_ELEMENT_ARRAY_BARRIER_BIT : constant := 16#00000002#;  --  /usr/include/GL/glext.h:2326
   GL_UNIFORM_BARRIER_BIT : constant := 16#00000004#;  --  /usr/include/GL/glext.h:2327
   GL_TEXTURE_FETCH_BARRIER_BIT : constant := 16#00000008#;  --  /usr/include/GL/glext.h:2328
   GL_SHADER_IMAGE_ACCESS_BARRIER_BIT : constant := 16#00000020#;  --  /usr/include/GL/glext.h:2329
   GL_COMMAND_BARRIER_BIT : constant := 16#00000040#;  --  /usr/include/GL/glext.h:2330
   GL_PIXEL_BUFFER_BARRIER_BIT : constant := 16#00000080#;  --  /usr/include/GL/glext.h:2331
   GL_TEXTURE_UPDATE_BARRIER_BIT : constant := 16#00000100#;  --  /usr/include/GL/glext.h:2332
   GL_BUFFER_UPDATE_BARRIER_BIT : constant := 16#00000200#;  --  /usr/include/GL/glext.h:2333
   GL_FRAMEBUFFER_BARRIER_BIT : constant := 16#00000400#;  --  /usr/include/GL/glext.h:2334
   GL_TRANSFORM_FEEDBACK_BARRIER_BIT : constant := 16#00000800#;  --  /usr/include/GL/glext.h:2335
   GL_ATOMIC_COUNTER_BARRIER_BIT : constant := 16#00001000#;  --  /usr/include/GL/glext.h:2336
   GL_ALL_BARRIER_BITS : constant := 16#FFFFFFFF#;  --  /usr/include/GL/glext.h:2337
   GL_MAX_IMAGE_UNITS : constant := 16#8F38#;  --  /usr/include/GL/glext.h:2338
   GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS : constant := 16#8F39#;  --  /usr/include/GL/glext.h:2339
   GL_IMAGE_BINDING_NAME : constant := 16#8F3A#;  --  /usr/include/GL/glext.h:2340
   GL_IMAGE_BINDING_LEVEL : constant := 16#8F3B#;  --  /usr/include/GL/glext.h:2341
   GL_IMAGE_BINDING_LAYERED : constant := 16#8F3C#;  --  /usr/include/GL/glext.h:2342
   GL_IMAGE_BINDING_LAYER : constant := 16#8F3D#;  --  /usr/include/GL/glext.h:2343
   GL_IMAGE_BINDING_ACCESS : constant := 16#8F3E#;  --  /usr/include/GL/glext.h:2344
   GL_IMAGE_1D : constant := 16#904C#;  --  /usr/include/GL/glext.h:2345
   GL_IMAGE_2D : constant := 16#904D#;  --  /usr/include/GL/glext.h:2346
   GL_IMAGE_3D : constant := 16#904E#;  --  /usr/include/GL/glext.h:2347
   GL_IMAGE_2D_RECT : constant := 16#904F#;  --  /usr/include/GL/glext.h:2348
   GL_IMAGE_CUBE : constant := 16#9050#;  --  /usr/include/GL/glext.h:2349
   GL_IMAGE_BUFFER : constant := 16#9051#;  --  /usr/include/GL/glext.h:2350
   GL_IMAGE_1D_ARRAY : constant := 16#9052#;  --  /usr/include/GL/glext.h:2351
   GL_IMAGE_2D_ARRAY : constant := 16#9053#;  --  /usr/include/GL/glext.h:2352
   GL_IMAGE_CUBE_MAP_ARRAY : constant := 16#9054#;  --  /usr/include/GL/glext.h:2353
   GL_IMAGE_2D_MULTISAMPLE : constant := 16#9055#;  --  /usr/include/GL/glext.h:2354
   GL_IMAGE_2D_MULTISAMPLE_ARRAY : constant := 16#9056#;  --  /usr/include/GL/glext.h:2355
   GL_INT_IMAGE_1D : constant := 16#9057#;  --  /usr/include/GL/glext.h:2356
   GL_INT_IMAGE_2D : constant := 16#9058#;  --  /usr/include/GL/glext.h:2357
   GL_INT_IMAGE_3D : constant := 16#9059#;  --  /usr/include/GL/glext.h:2358
   GL_INT_IMAGE_2D_RECT : constant := 16#905A#;  --  /usr/include/GL/glext.h:2359
   GL_INT_IMAGE_CUBE : constant := 16#905B#;  --  /usr/include/GL/glext.h:2360
   GL_INT_IMAGE_BUFFER : constant := 16#905C#;  --  /usr/include/GL/glext.h:2361
   GL_INT_IMAGE_1D_ARRAY : constant := 16#905D#;  --  /usr/include/GL/glext.h:2362
   GL_INT_IMAGE_2D_ARRAY : constant := 16#905E#;  --  /usr/include/GL/glext.h:2363
   GL_INT_IMAGE_CUBE_MAP_ARRAY : constant := 16#905F#;  --  /usr/include/GL/glext.h:2364
   GL_INT_IMAGE_2D_MULTISAMPLE : constant := 16#9060#;  --  /usr/include/GL/glext.h:2365
   GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY : constant := 16#9061#;  --  /usr/include/GL/glext.h:2366
   GL_UNSIGNED_INT_IMAGE_1D : constant := 16#9062#;  --  /usr/include/GL/glext.h:2367
   GL_UNSIGNED_INT_IMAGE_2D : constant := 16#9063#;  --  /usr/include/GL/glext.h:2368
   GL_UNSIGNED_INT_IMAGE_3D : constant := 16#9064#;  --  /usr/include/GL/glext.h:2369
   GL_UNSIGNED_INT_IMAGE_2D_RECT : constant := 16#9065#;  --  /usr/include/GL/glext.h:2370
   GL_UNSIGNED_INT_IMAGE_CUBE : constant := 16#9066#;  --  /usr/include/GL/glext.h:2371
   GL_UNSIGNED_INT_IMAGE_BUFFER : constant := 16#9067#;  --  /usr/include/GL/glext.h:2372
   GL_UNSIGNED_INT_IMAGE_1D_ARRAY : constant := 16#9068#;  --  /usr/include/GL/glext.h:2373
   GL_UNSIGNED_INT_IMAGE_2D_ARRAY : constant := 16#9069#;  --  /usr/include/GL/glext.h:2374
   GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY : constant := 16#906A#;  --  /usr/include/GL/glext.h:2375
   GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE : constant := 16#906B#;  --  /usr/include/GL/glext.h:2376
   GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY : constant := 16#906C#;  --  /usr/include/GL/glext.h:2377
   GL_MAX_IMAGE_SAMPLES : constant := 16#906D#;  --  /usr/include/GL/glext.h:2378
   GL_IMAGE_BINDING_FORMAT : constant := 16#906E#;  --  /usr/include/GL/glext.h:2379
   GL_IMAGE_FORMAT_COMPATIBILITY_TYPE : constant := 16#90C7#;  --  /usr/include/GL/glext.h:2380
   GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE : constant := 16#90C8#;  --  /usr/include/GL/glext.h:2381
   GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS : constant := 16#90C9#;  --  /usr/include/GL/glext.h:2382
   GL_MAX_VERTEX_IMAGE_UNIFORMS : constant := 16#90CA#;  --  /usr/include/GL/glext.h:2383
   GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS : constant := 16#90CB#;  --  /usr/include/GL/glext.h:2384
   GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS : constant := 16#90CC#;  --  /usr/include/GL/glext.h:2385
   GL_MAX_GEOMETRY_IMAGE_UNIFORMS : constant := 16#90CD#;  --  /usr/include/GL/glext.h:2386
   GL_MAX_FRAGMENT_IMAGE_UNIFORMS : constant := 16#90CE#;  --  /usr/include/GL/glext.h:2387
   GL_MAX_COMBINED_IMAGE_UNIFORMS : constant := 16#90CF#;  --  /usr/include/GL/glext.h:2388

   GL_TEXTURE_IMMUTABLE_FORMAT : constant := 16#912F#;  --  /usr/include/GL/glext.h:2395

   GL_ABGR_EXT : constant := 16#8000#;  --  /usr/include/GL/glext.h:2399

   GL_CONSTANT_COLOR_EXT : constant := 16#8001#;  --  /usr/include/GL/glext.h:2403
   GL_ONE_MINUS_CONSTANT_COLOR_EXT : constant := 16#8002#;  --  /usr/include/GL/glext.h:2404
   GL_CONSTANT_ALPHA_EXT : constant := 16#8003#;  --  /usr/include/GL/glext.h:2405
   GL_ONE_MINUS_CONSTANT_ALPHA_EXT : constant := 16#8004#;  --  /usr/include/GL/glext.h:2406
   GL_BLEND_COLOR_EXT : constant := 16#8005#;  --  /usr/include/GL/glext.h:2407

   GL_POLYGON_OFFSET_EXT : constant := 16#8037#;  --  /usr/include/GL/glext.h:2411
   GL_POLYGON_OFFSET_FACTOR_EXT : constant := 16#8038#;  --  /usr/include/GL/glext.h:2412
   GL_POLYGON_OFFSET_BIAS_EXT : constant := 16#8039#;  --  /usr/include/GL/glext.h:2413

   GL_ALPHA4_EXT : constant := 16#803B#;  --  /usr/include/GL/glext.h:2417
   GL_ALPHA8_EXT : constant := 16#803C#;  --  /usr/include/GL/glext.h:2418
   GL_ALPHA12_EXT : constant := 16#803D#;  --  /usr/include/GL/glext.h:2419
   GL_ALPHA16_EXT : constant := 16#803E#;  --  /usr/include/GL/glext.h:2420
   GL_LUMINANCE4_EXT : constant := 16#803F#;  --  /usr/include/GL/glext.h:2421
   GL_LUMINANCE8_EXT : constant := 16#8040#;  --  /usr/include/GL/glext.h:2422
   GL_LUMINANCE12_EXT : constant := 16#8041#;  --  /usr/include/GL/glext.h:2423
   GL_LUMINANCE16_EXT : constant := 16#8042#;  --  /usr/include/GL/glext.h:2424
   GL_LUMINANCE4_ALPHA4_EXT : constant := 16#8043#;  --  /usr/include/GL/glext.h:2425
   GL_LUMINANCE6_ALPHA2_EXT : constant := 16#8044#;  --  /usr/include/GL/glext.h:2426
   GL_LUMINANCE8_ALPHA8_EXT : constant := 16#8045#;  --  /usr/include/GL/glext.h:2427
   GL_LUMINANCE12_ALPHA4_EXT : constant := 16#8046#;  --  /usr/include/GL/glext.h:2428
   GL_LUMINANCE12_ALPHA12_EXT : constant := 16#8047#;  --  /usr/include/GL/glext.h:2429
   GL_LUMINANCE16_ALPHA16_EXT : constant := 16#8048#;  --  /usr/include/GL/glext.h:2430
   GL_INTENSITY_EXT : constant := 16#8049#;  --  /usr/include/GL/glext.h:2431
   GL_INTENSITY4_EXT : constant := 16#804A#;  --  /usr/include/GL/glext.h:2432
   GL_INTENSITY8_EXT : constant := 16#804B#;  --  /usr/include/GL/glext.h:2433
   GL_INTENSITY12_EXT : constant := 16#804C#;  --  /usr/include/GL/glext.h:2434
   GL_INTENSITY16_EXT : constant := 16#804D#;  --  /usr/include/GL/glext.h:2435
   GL_RGB2_EXT : constant := 16#804E#;  --  /usr/include/GL/glext.h:2436
   GL_RGB4_EXT : constant := 16#804F#;  --  /usr/include/GL/glext.h:2437
   GL_RGB5_EXT : constant := 16#8050#;  --  /usr/include/GL/glext.h:2438
   GL_RGB8_EXT : constant := 16#8051#;  --  /usr/include/GL/glext.h:2439
   GL_RGB10_EXT : constant := 16#8052#;  --  /usr/include/GL/glext.h:2440
   GL_RGB12_EXT : constant := 16#8053#;  --  /usr/include/GL/glext.h:2441
   GL_RGB16_EXT : constant := 16#8054#;  --  /usr/include/GL/glext.h:2442
   GL_RGBA2_EXT : constant := 16#8055#;  --  /usr/include/GL/glext.h:2443
   GL_RGBA4_EXT : constant := 16#8056#;  --  /usr/include/GL/glext.h:2444
   GL_RGB5_A1_EXT : constant := 16#8057#;  --  /usr/include/GL/glext.h:2445
   GL_RGBA8_EXT : constant := 16#8058#;  --  /usr/include/GL/glext.h:2446
   GL_RGB10_A2_EXT : constant := 16#8059#;  --  /usr/include/GL/glext.h:2447
   GL_RGBA12_EXT : constant := 16#805A#;  --  /usr/include/GL/glext.h:2448
   GL_RGBA16_EXT : constant := 16#805B#;  --  /usr/include/GL/glext.h:2449
   GL_TEXTURE_RED_SIZE_EXT : constant := 16#805C#;  --  /usr/include/GL/glext.h:2450
   GL_TEXTURE_GREEN_SIZE_EXT : constant := 16#805D#;  --  /usr/include/GL/glext.h:2451
   GL_TEXTURE_BLUE_SIZE_EXT : constant := 16#805E#;  --  /usr/include/GL/glext.h:2452
   GL_TEXTURE_ALPHA_SIZE_EXT : constant := 16#805F#;  --  /usr/include/GL/glext.h:2453
   GL_TEXTURE_LUMINANCE_SIZE_EXT : constant := 16#8060#;  --  /usr/include/GL/glext.h:2454
   GL_TEXTURE_INTENSITY_SIZE_EXT : constant := 16#8061#;  --  /usr/include/GL/glext.h:2455
   GL_REPLACE_EXT : constant := 16#8062#;  --  /usr/include/GL/glext.h:2456
   GL_PROXY_TEXTURE_1D_EXT : constant := 16#8063#;  --  /usr/include/GL/glext.h:2457
   GL_PROXY_TEXTURE_2D_EXT : constant := 16#8064#;  --  /usr/include/GL/glext.h:2458
   GL_TEXTURE_TOO_LARGE_EXT : constant := 16#8065#;  --  /usr/include/GL/glext.h:2459

   GL_PACK_SKIP_IMAGES_EXT : constant := 16#806B#;  --  /usr/include/GL/glext.h:2463
   GL_PACK_IMAGE_HEIGHT_EXT : constant := 16#806C#;  --  /usr/include/GL/glext.h:2464
   GL_UNPACK_SKIP_IMAGES_EXT : constant := 16#806D#;  --  /usr/include/GL/glext.h:2465
   GL_UNPACK_IMAGE_HEIGHT_EXT : constant := 16#806E#;  --  /usr/include/GL/glext.h:2466
   GL_TEXTURE_3D_EXT : constant := 16#806F#;  --  /usr/include/GL/glext.h:2467
   GL_PROXY_TEXTURE_3D_EXT : constant := 16#8070#;  --  /usr/include/GL/glext.h:2468
   GL_TEXTURE_DEPTH_EXT : constant := 16#8071#;  --  /usr/include/GL/glext.h:2469
   GL_TEXTURE_WRAP_R_EXT : constant := 16#8072#;  --  /usr/include/GL/glext.h:2470
   GL_MAX_3D_TEXTURE_SIZE_EXT : constant := 16#8073#;  --  /usr/include/GL/glext.h:2471

   GL_FILTER4_SGIS : constant := 16#8146#;  --  /usr/include/GL/glext.h:2475
   GL_TEXTURE_FILTER4_SIZE_SGIS : constant := 16#8147#;  --  /usr/include/GL/glext.h:2476

   GL_HISTOGRAM_EXT : constant := 16#8024#;  --  /usr/include/GL/glext.h:2486
   GL_PROXY_HISTOGRAM_EXT : constant := 16#8025#;  --  /usr/include/GL/glext.h:2487
   GL_HISTOGRAM_WIDTH_EXT : constant := 16#8026#;  --  /usr/include/GL/glext.h:2488
   GL_HISTOGRAM_FORMAT_EXT : constant := 16#8027#;  --  /usr/include/GL/glext.h:2489
   GL_HISTOGRAM_RED_SIZE_EXT : constant := 16#8028#;  --  /usr/include/GL/glext.h:2490
   GL_HISTOGRAM_GREEN_SIZE_EXT : constant := 16#8029#;  --  /usr/include/GL/glext.h:2491
   GL_HISTOGRAM_BLUE_SIZE_EXT : constant := 16#802A#;  --  /usr/include/GL/glext.h:2492
   GL_HISTOGRAM_ALPHA_SIZE_EXT : constant := 16#802B#;  --  /usr/include/GL/glext.h:2493
   GL_HISTOGRAM_LUMINANCE_SIZE_EXT : constant := 16#802C#;  --  /usr/include/GL/glext.h:2494
   GL_HISTOGRAM_SINK_EXT : constant := 16#802D#;  --  /usr/include/GL/glext.h:2495
   GL_MINMAX_EXT : constant := 16#802E#;  --  /usr/include/GL/glext.h:2496
   GL_MINMAX_FORMAT_EXT : constant := 16#802F#;  --  /usr/include/GL/glext.h:2497
   GL_MINMAX_SINK_EXT : constant := 16#8030#;  --  /usr/include/GL/glext.h:2498
   GL_TABLE_TOO_LARGE_EXT : constant := 16#8031#;  --  /usr/include/GL/glext.h:2499

   GL_CONVOLUTION_1D_EXT : constant := 16#8010#;  --  /usr/include/GL/glext.h:2503
   GL_CONVOLUTION_2D_EXT : constant := 16#8011#;  --  /usr/include/GL/glext.h:2504
   GL_SEPARABLE_2D_EXT : constant := 16#8012#;  --  /usr/include/GL/glext.h:2505
   GL_CONVOLUTION_BORDER_MODE_EXT : constant := 16#8013#;  --  /usr/include/GL/glext.h:2506
   GL_CONVOLUTION_FILTER_SCALE_EXT : constant := 16#8014#;  --  /usr/include/GL/glext.h:2507
   GL_CONVOLUTION_FILTER_BIAS_EXT : constant := 16#8015#;  --  /usr/include/GL/glext.h:2508
   GL_REDUCE_EXT : constant := 16#8016#;  --  /usr/include/GL/glext.h:2509
   GL_CONVOLUTION_FORMAT_EXT : constant := 16#8017#;  --  /usr/include/GL/glext.h:2510
   GL_CONVOLUTION_WIDTH_EXT : constant := 16#8018#;  --  /usr/include/GL/glext.h:2511
   GL_CONVOLUTION_HEIGHT_EXT : constant := 16#8019#;  --  /usr/include/GL/glext.h:2512
   GL_MAX_CONVOLUTION_WIDTH_EXT : constant := 16#801A#;  --  /usr/include/GL/glext.h:2513
   GL_MAX_CONVOLUTION_HEIGHT_EXT : constant := 16#801B#;  --  /usr/include/GL/glext.h:2514
   GL_POST_CONVOLUTION_RED_SCALE_EXT : constant := 16#801C#;  --  /usr/include/GL/glext.h:2515
   GL_POST_CONVOLUTION_GREEN_SCALE_EXT : constant := 16#801D#;  --  /usr/include/GL/glext.h:2516
   GL_POST_CONVOLUTION_BLUE_SCALE_EXT : constant := 16#801E#;  --  /usr/include/GL/glext.h:2517
   GL_POST_CONVOLUTION_ALPHA_SCALE_EXT : constant := 16#801F#;  --  /usr/include/GL/glext.h:2518
   GL_POST_CONVOLUTION_RED_BIAS_EXT : constant := 16#8020#;  --  /usr/include/GL/glext.h:2519
   GL_POST_CONVOLUTION_GREEN_BIAS_EXT : constant := 16#8021#;  --  /usr/include/GL/glext.h:2520
   GL_POST_CONVOLUTION_BLUE_BIAS_EXT : constant := 16#8022#;  --  /usr/include/GL/glext.h:2521
   GL_POST_CONVOLUTION_ALPHA_BIAS_EXT : constant := 16#8023#;  --  /usr/include/GL/glext.h:2522

   GL_COLOR_MATRIX_SGI : constant := 16#80B1#;  --  /usr/include/GL/glext.h:2526
   GL_COLOR_MATRIX_STACK_DEPTH_SGI : constant := 16#80B2#;  --  /usr/include/GL/glext.h:2527
   GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI : constant := 16#80B3#;  --  /usr/include/GL/glext.h:2528
   GL_POST_COLOR_MATRIX_RED_SCALE_SGI : constant := 16#80B4#;  --  /usr/include/GL/glext.h:2529
   GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI : constant := 16#80B5#;  --  /usr/include/GL/glext.h:2530
   GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI : constant := 16#80B6#;  --  /usr/include/GL/glext.h:2531
   GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI : constant := 16#80B7#;  --  /usr/include/GL/glext.h:2532
   GL_POST_COLOR_MATRIX_RED_BIAS_SGI : constant := 16#80B8#;  --  /usr/include/GL/glext.h:2533
   GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI : constant := 16#80B9#;  --  /usr/include/GL/glext.h:2534
   GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI : constant := 16#80BA#;  --  /usr/include/GL/glext.h:2535
   GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI : constant := 16#80BB#;  --  /usr/include/GL/glext.h:2536

   GL_COLOR_TABLE_SGI : constant := 16#80D0#;  --  /usr/include/GL/glext.h:2540
   GL_POST_CONVOLUTION_COLOR_TABLE_SGI : constant := 16#80D1#;  --  /usr/include/GL/glext.h:2541
   GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI : constant := 16#80D2#;  --  /usr/include/GL/glext.h:2542
   GL_PROXY_COLOR_TABLE_SGI : constant := 16#80D3#;  --  /usr/include/GL/glext.h:2543
   GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI : constant := 16#80D4#;  --  /usr/include/GL/glext.h:2544
   GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI : constant := 16#80D5#;  --  /usr/include/GL/glext.h:2545
   GL_COLOR_TABLE_SCALE_SGI : constant := 16#80D6#;  --  /usr/include/GL/glext.h:2546
   GL_COLOR_TABLE_BIAS_SGI : constant := 16#80D7#;  --  /usr/include/GL/glext.h:2547
   GL_COLOR_TABLE_FORMAT_SGI : constant := 16#80D8#;  --  /usr/include/GL/glext.h:2548
   GL_COLOR_TABLE_WIDTH_SGI : constant := 16#80D9#;  --  /usr/include/GL/glext.h:2549
   GL_COLOR_TABLE_RED_SIZE_SGI : constant := 16#80DA#;  --  /usr/include/GL/glext.h:2550
   GL_COLOR_TABLE_GREEN_SIZE_SGI : constant := 16#80DB#;  --  /usr/include/GL/glext.h:2551
   GL_COLOR_TABLE_BLUE_SIZE_SGI : constant := 16#80DC#;  --  /usr/include/GL/glext.h:2552
   GL_COLOR_TABLE_ALPHA_SIZE_SGI : constant := 16#80DD#;  --  /usr/include/GL/glext.h:2553
   GL_COLOR_TABLE_LUMINANCE_SIZE_SGI : constant := 16#80DE#;  --  /usr/include/GL/glext.h:2554
   GL_COLOR_TABLE_INTENSITY_SIZE_SGI : constant := 16#80DF#;  --  /usr/include/GL/glext.h:2555

   GL_PIXEL_TEXTURE_SGIS : constant := 16#8353#;  --  /usr/include/GL/glext.h:2559
   GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS : constant := 16#8354#;  --  /usr/include/GL/glext.h:2560
   GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS : constant := 16#8355#;  --  /usr/include/GL/glext.h:2561
   GL_PIXEL_GROUP_COLOR_SGIS : constant := 16#8356#;  --  /usr/include/GL/glext.h:2562

   GL_PIXEL_TEX_GEN_SGIX : constant := 16#8139#;  --  /usr/include/GL/glext.h:2566
   GL_PIXEL_TEX_GEN_MODE_SGIX : constant := 16#832B#;  --  /usr/include/GL/glext.h:2567

   GL_PACK_SKIP_VOLUMES_SGIS : constant := 16#8130#;  --  /usr/include/GL/glext.h:2571
   GL_PACK_IMAGE_DEPTH_SGIS : constant := 16#8131#;  --  /usr/include/GL/glext.h:2572
   GL_UNPACK_SKIP_VOLUMES_SGIS : constant := 16#8132#;  --  /usr/include/GL/glext.h:2573
   GL_UNPACK_IMAGE_DEPTH_SGIS : constant := 16#8133#;  --  /usr/include/GL/glext.h:2574
   GL_TEXTURE_4D_SGIS : constant := 16#8134#;  --  /usr/include/GL/glext.h:2575
   GL_PROXY_TEXTURE_4D_SGIS : constant := 16#8135#;  --  /usr/include/GL/glext.h:2576
   GL_TEXTURE_4DSIZE_SGIS : constant := 16#8136#;  --  /usr/include/GL/glext.h:2577
   GL_TEXTURE_WRAP_Q_SGIS : constant := 16#8137#;  --  /usr/include/GL/glext.h:2578
   GL_MAX_4D_TEXTURE_SIZE_SGIS : constant := 16#8138#;  --  /usr/include/GL/glext.h:2579
   GL_TEXTURE_4D_BINDING_SGIS : constant := 16#814F#;  --  /usr/include/GL/glext.h:2580

   GL_TEXTURE_COLOR_TABLE_SGI : constant := 16#80BC#;  --  /usr/include/GL/glext.h:2584
   GL_PROXY_TEXTURE_COLOR_TABLE_SGI : constant := 16#80BD#;  --  /usr/include/GL/glext.h:2585

   GL_CMYK_EXT : constant := 16#800C#;  --  /usr/include/GL/glext.h:2589
   GL_CMYKA_EXT : constant := 16#800D#;  --  /usr/include/GL/glext.h:2590
   GL_PACK_CMYK_HINT_EXT : constant := 16#800E#;  --  /usr/include/GL/glext.h:2591
   GL_UNPACK_CMYK_HINT_EXT : constant := 16#800F#;  --  /usr/include/GL/glext.h:2592

   GL_TEXTURE_PRIORITY_EXT : constant := 16#8066#;  --  /usr/include/GL/glext.h:2596
   GL_TEXTURE_RESIDENT_EXT : constant := 16#8067#;  --  /usr/include/GL/glext.h:2597
   GL_TEXTURE_1D_BINDING_EXT : constant := 16#8068#;  --  /usr/include/GL/glext.h:2598
   GL_TEXTURE_2D_BINDING_EXT : constant := 16#8069#;  --  /usr/include/GL/glext.h:2599
   GL_TEXTURE_3D_BINDING_EXT : constant := 16#806A#;  --  /usr/include/GL/glext.h:2600

   GL_DETAIL_TEXTURE_2D_SGIS : constant := 16#8095#;  --  /usr/include/GL/glext.h:2604
   GL_DETAIL_TEXTURE_2D_BINDING_SGIS : constant := 16#8096#;  --  /usr/include/GL/glext.h:2605
   GL_LINEAR_DETAIL_SGIS : constant := 16#8097#;  --  /usr/include/GL/glext.h:2606
   GL_LINEAR_DETAIL_ALPHA_SGIS : constant := 16#8098#;  --  /usr/include/GL/glext.h:2607
   GL_LINEAR_DETAIL_COLOR_SGIS : constant := 16#8099#;  --  /usr/include/GL/glext.h:2608
   GL_DETAIL_TEXTURE_LEVEL_SGIS : constant := 16#809A#;  --  /usr/include/GL/glext.h:2609
   GL_DETAIL_TEXTURE_MODE_SGIS : constant := 16#809B#;  --  /usr/include/GL/glext.h:2610
   GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS : constant := 16#809C#;  --  /usr/include/GL/glext.h:2611

   GL_LINEAR_SHARPEN_SGIS : constant := 16#80AD#;  --  /usr/include/GL/glext.h:2615
   GL_LINEAR_SHARPEN_ALPHA_SGIS : constant := 16#80AE#;  --  /usr/include/GL/glext.h:2616
   GL_LINEAR_SHARPEN_COLOR_SGIS : constant := 16#80AF#;  --  /usr/include/GL/glext.h:2617
   GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS : constant := 16#80B0#;  --  /usr/include/GL/glext.h:2618

   GL_UNSIGNED_BYTE_3_3_2_EXT : constant := 16#8032#;  --  /usr/include/GL/glext.h:2622
   GL_UNSIGNED_SHORT_4_4_4_4_EXT : constant := 16#8033#;  --  /usr/include/GL/glext.h:2623
   GL_UNSIGNED_SHORT_5_5_5_1_EXT : constant := 16#8034#;  --  /usr/include/GL/glext.h:2624
   GL_UNSIGNED_INT_8_8_8_8_EXT : constant := 16#8035#;  --  /usr/include/GL/glext.h:2625
   GL_UNSIGNED_INT_10_10_10_2_EXT : constant := 16#8036#;  --  /usr/include/GL/glext.h:2626

   GL_TEXTURE_MIN_LOD_SGIS : constant := 16#813A#;  --  /usr/include/GL/glext.h:2630
   GL_TEXTURE_MAX_LOD_SGIS : constant := 16#813B#;  --  /usr/include/GL/glext.h:2631
   GL_TEXTURE_BASE_LEVEL_SGIS : constant := 16#813C#;  --  /usr/include/GL/glext.h:2632
   GL_TEXTURE_MAX_LEVEL_SGIS : constant := 16#813D#;  --  /usr/include/GL/glext.h:2633

   GL_MULTISAMPLE_SGIS : constant := 16#809D#;  --  /usr/include/GL/glext.h:2637
   GL_SAMPLE_ALPHA_TO_MASK_SGIS : constant := 16#809E#;  --  /usr/include/GL/glext.h:2638
   GL_SAMPLE_ALPHA_TO_ONE_SGIS : constant := 16#809F#;  --  /usr/include/GL/glext.h:2639
   GL_SAMPLE_MASK_SGIS : constant := 16#80A0#;  --  /usr/include/GL/glext.h:2640
   GL_1PASS_SGIS : constant := 16#80A1#;  --  /usr/include/GL/glext.h:2641
   GL_2PASS_0_SGIS : constant := 16#80A2#;  --  /usr/include/GL/glext.h:2642
   GL_2PASS_1_SGIS : constant := 16#80A3#;  --  /usr/include/GL/glext.h:2643
   GL_4PASS_0_SGIS : constant := 16#80A4#;  --  /usr/include/GL/glext.h:2644
   GL_4PASS_1_SGIS : constant := 16#80A5#;  --  /usr/include/GL/glext.h:2645
   GL_4PASS_2_SGIS : constant := 16#80A6#;  --  /usr/include/GL/glext.h:2646
   GL_4PASS_3_SGIS : constant := 16#80A7#;  --  /usr/include/GL/glext.h:2647
   GL_SAMPLE_BUFFERS_SGIS : constant := 16#80A8#;  --  /usr/include/GL/glext.h:2648
   GL_SAMPLES_SGIS : constant := 16#80A9#;  --  /usr/include/GL/glext.h:2649
   GL_SAMPLE_MASK_VALUE_SGIS : constant := 16#80AA#;  --  /usr/include/GL/glext.h:2650
   GL_SAMPLE_MASK_INVERT_SGIS : constant := 16#80AB#;  --  /usr/include/GL/glext.h:2651
   GL_SAMPLE_PATTERN_SGIS : constant := 16#80AC#;  --  /usr/include/GL/glext.h:2652

   GL_RESCALE_NORMAL_EXT : constant := 16#803A#;  --  /usr/include/GL/glext.h:2656

   GL_VERTEX_ARRAY_EXT : constant := 16#8074#;  --  /usr/include/GL/glext.h:2660
   GL_NORMAL_ARRAY_EXT : constant := 16#8075#;  --  /usr/include/GL/glext.h:2661
   GL_COLOR_ARRAY_EXT : constant := 16#8076#;  --  /usr/include/GL/glext.h:2662
   GL_INDEX_ARRAY_EXT : constant := 16#8077#;  --  /usr/include/GL/glext.h:2663
   GL_TEXTURE_COORD_ARRAY_EXT : constant := 16#8078#;  --  /usr/include/GL/glext.h:2664
   GL_EDGE_FLAG_ARRAY_EXT : constant := 16#8079#;  --  /usr/include/GL/glext.h:2665
   GL_VERTEX_ARRAY_SIZE_EXT : constant := 16#807A#;  --  /usr/include/GL/glext.h:2666
   GL_VERTEX_ARRAY_TYPE_EXT : constant := 16#807B#;  --  /usr/include/GL/glext.h:2667
   GL_VERTEX_ARRAY_STRIDE_EXT : constant := 16#807C#;  --  /usr/include/GL/glext.h:2668
   GL_VERTEX_ARRAY_COUNT_EXT : constant := 16#807D#;  --  /usr/include/GL/glext.h:2669
   GL_NORMAL_ARRAY_TYPE_EXT : constant := 16#807E#;  --  /usr/include/GL/glext.h:2670
   GL_NORMAL_ARRAY_STRIDE_EXT : constant := 16#807F#;  --  /usr/include/GL/glext.h:2671
   GL_NORMAL_ARRAY_COUNT_EXT : constant := 16#8080#;  --  /usr/include/GL/glext.h:2672
   GL_COLOR_ARRAY_SIZE_EXT : constant := 16#8081#;  --  /usr/include/GL/glext.h:2673
   GL_COLOR_ARRAY_TYPE_EXT : constant := 16#8082#;  --  /usr/include/GL/glext.h:2674
   GL_COLOR_ARRAY_STRIDE_EXT : constant := 16#8083#;  --  /usr/include/GL/glext.h:2675
   GL_COLOR_ARRAY_COUNT_EXT : constant := 16#8084#;  --  /usr/include/GL/glext.h:2676
   GL_INDEX_ARRAY_TYPE_EXT : constant := 16#8085#;  --  /usr/include/GL/glext.h:2677
   GL_INDEX_ARRAY_STRIDE_EXT : constant := 16#8086#;  --  /usr/include/GL/glext.h:2678
   GL_INDEX_ARRAY_COUNT_EXT : constant := 16#8087#;  --  /usr/include/GL/glext.h:2679
   GL_TEXTURE_COORD_ARRAY_SIZE_EXT : constant := 16#8088#;  --  /usr/include/GL/glext.h:2680
   GL_TEXTURE_COORD_ARRAY_TYPE_EXT : constant := 16#8089#;  --  /usr/include/GL/glext.h:2681
   GL_TEXTURE_COORD_ARRAY_STRIDE_EXT : constant := 16#808A#;  --  /usr/include/GL/glext.h:2682
   GL_TEXTURE_COORD_ARRAY_COUNT_EXT : constant := 16#808B#;  --  /usr/include/GL/glext.h:2683
   GL_EDGE_FLAG_ARRAY_STRIDE_EXT : constant := 16#808C#;  --  /usr/include/GL/glext.h:2684
   GL_EDGE_FLAG_ARRAY_COUNT_EXT : constant := 16#808D#;  --  /usr/include/GL/glext.h:2685
   GL_VERTEX_ARRAY_POINTER_EXT : constant := 16#808E#;  --  /usr/include/GL/glext.h:2686
   GL_NORMAL_ARRAY_POINTER_EXT : constant := 16#808F#;  --  /usr/include/GL/glext.h:2687
   GL_COLOR_ARRAY_POINTER_EXT : constant := 16#8090#;  --  /usr/include/GL/glext.h:2688
   GL_INDEX_ARRAY_POINTER_EXT : constant := 16#8091#;  --  /usr/include/GL/glext.h:2689
   GL_TEXTURE_COORD_ARRAY_POINTER_EXT : constant := 16#8092#;  --  /usr/include/GL/glext.h:2690
   GL_EDGE_FLAG_ARRAY_POINTER_EXT : constant := 16#8093#;  --  /usr/include/GL/glext.h:2691

   GL_GENERATE_MIPMAP_SGIS : constant := 16#8191#;  --  /usr/include/GL/glext.h:2698
   GL_GENERATE_MIPMAP_HINT_SGIS : constant := 16#8192#;  --  /usr/include/GL/glext.h:2699

   GL_LINEAR_CLIPMAP_LINEAR_SGIX : constant := 16#8170#;  --  /usr/include/GL/glext.h:2703
   GL_TEXTURE_CLIPMAP_CENTER_SGIX : constant := 16#8171#;  --  /usr/include/GL/glext.h:2704
   GL_TEXTURE_CLIPMAP_FRAME_SGIX : constant := 16#8172#;  --  /usr/include/GL/glext.h:2705
   GL_TEXTURE_CLIPMAP_OFFSET_SGIX : constant := 16#8173#;  --  /usr/include/GL/glext.h:2706
   GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX : constant := 16#8174#;  --  /usr/include/GL/glext.h:2707
   GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX : constant := 16#8175#;  --  /usr/include/GL/glext.h:2708
   GL_TEXTURE_CLIPMAP_DEPTH_SGIX : constant := 16#8176#;  --  /usr/include/GL/glext.h:2709
   GL_MAX_CLIPMAP_DEPTH_SGIX : constant := 16#8177#;  --  /usr/include/GL/glext.h:2710
   GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX : constant := 16#8178#;  --  /usr/include/GL/glext.h:2711
   GL_NEAREST_CLIPMAP_NEAREST_SGIX : constant := 16#844D#;  --  /usr/include/GL/glext.h:2712
   GL_NEAREST_CLIPMAP_LINEAR_SGIX : constant := 16#844E#;  --  /usr/include/GL/glext.h:2713
   GL_LINEAR_CLIPMAP_NEAREST_SGIX : constant := 16#844F#;  --  /usr/include/GL/glext.h:2714

   GL_TEXTURE_COMPARE_SGIX : constant := 16#819A#;  --  /usr/include/GL/glext.h:2718
   GL_TEXTURE_COMPARE_OPERATOR_SGIX : constant := 16#819B#;  --  /usr/include/GL/glext.h:2719
   GL_TEXTURE_LEQUAL_R_SGIX : constant := 16#819C#;  --  /usr/include/GL/glext.h:2720
   GL_TEXTURE_GEQUAL_R_SGIX : constant := 16#819D#;  --  /usr/include/GL/glext.h:2721

   GL_CLAMP_TO_EDGE_SGIS : constant := 16#812F#;  --  /usr/include/GL/glext.h:2725

   GL_CLAMP_TO_BORDER_SGIS : constant := 16#812D#;  --  /usr/include/GL/glext.h:2729

   GL_FUNC_ADD_EXT : constant := 16#8006#;  --  /usr/include/GL/glext.h:2733
   GL_MIN_EXT : constant := 16#8007#;  --  /usr/include/GL/glext.h:2734
   GL_MAX_EXT : constant := 16#8008#;  --  /usr/include/GL/glext.h:2735
   GL_BLEND_EQUATION_EXT : constant := 16#8009#;  --  /usr/include/GL/glext.h:2736

   GL_FUNC_SUBTRACT_EXT : constant := 16#800A#;  --  /usr/include/GL/glext.h:2740
   GL_FUNC_REVERSE_SUBTRACT_EXT : constant := 16#800B#;  --  /usr/include/GL/glext.h:2741

   GL_INTERLACE_SGIX : constant := 16#8094#;  --  /usr/include/GL/glext.h:2748

   GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX : constant := 16#813E#;  --  /usr/include/GL/glext.h:2752
   GL_PIXEL_TILE_CACHE_INCREMENT_SGIX : constant := 16#813F#;  --  /usr/include/GL/glext.h:2753
   GL_PIXEL_TILE_WIDTH_SGIX : constant := 16#8140#;  --  /usr/include/GL/glext.h:2754
   GL_PIXEL_TILE_HEIGHT_SGIX : constant := 16#8141#;  --  /usr/include/GL/glext.h:2755
   GL_PIXEL_TILE_GRID_WIDTH_SGIX : constant := 16#8142#;  --  /usr/include/GL/glext.h:2756
   GL_PIXEL_TILE_GRID_HEIGHT_SGIX : constant := 16#8143#;  --  /usr/include/GL/glext.h:2757
   GL_PIXEL_TILE_GRID_DEPTH_SGIX : constant := 16#8144#;  --  /usr/include/GL/glext.h:2758
   GL_PIXEL_TILE_CACHE_SIZE_SGIX : constant := 16#8145#;  --  /usr/include/GL/glext.h:2759

   GL_DUAL_ALPHA4_SGIS : constant := 16#8110#;  --  /usr/include/GL/glext.h:2763
   GL_DUAL_ALPHA8_SGIS : constant := 16#8111#;  --  /usr/include/GL/glext.h:2764
   GL_DUAL_ALPHA12_SGIS : constant := 16#8112#;  --  /usr/include/GL/glext.h:2765
   GL_DUAL_ALPHA16_SGIS : constant := 16#8113#;  --  /usr/include/GL/glext.h:2766
   GL_DUAL_LUMINANCE4_SGIS : constant := 16#8114#;  --  /usr/include/GL/glext.h:2767
   GL_DUAL_LUMINANCE8_SGIS : constant := 16#8115#;  --  /usr/include/GL/glext.h:2768
   GL_DUAL_LUMINANCE12_SGIS : constant := 16#8116#;  --  /usr/include/GL/glext.h:2769
   GL_DUAL_LUMINANCE16_SGIS : constant := 16#8117#;  --  /usr/include/GL/glext.h:2770
   GL_DUAL_INTENSITY4_SGIS : constant := 16#8118#;  --  /usr/include/GL/glext.h:2771
   GL_DUAL_INTENSITY8_SGIS : constant := 16#8119#;  --  /usr/include/GL/glext.h:2772
   GL_DUAL_INTENSITY12_SGIS : constant := 16#811A#;  --  /usr/include/GL/glext.h:2773
   GL_DUAL_INTENSITY16_SGIS : constant := 16#811B#;  --  /usr/include/GL/glext.h:2774
   GL_DUAL_LUMINANCE_ALPHA4_SGIS : constant := 16#811C#;  --  /usr/include/GL/glext.h:2775
   GL_DUAL_LUMINANCE_ALPHA8_SGIS : constant := 16#811D#;  --  /usr/include/GL/glext.h:2776
   GL_QUAD_ALPHA4_SGIS : constant := 16#811E#;  --  /usr/include/GL/glext.h:2777
   GL_QUAD_ALPHA8_SGIS : constant := 16#811F#;  --  /usr/include/GL/glext.h:2778
   GL_QUAD_LUMINANCE4_SGIS : constant := 16#8120#;  --  /usr/include/GL/glext.h:2779
   GL_QUAD_LUMINANCE8_SGIS : constant := 16#8121#;  --  /usr/include/GL/glext.h:2780
   GL_QUAD_INTENSITY4_SGIS : constant := 16#8122#;  --  /usr/include/GL/glext.h:2781
   GL_QUAD_INTENSITY8_SGIS : constant := 16#8123#;  --  /usr/include/GL/glext.h:2782
   GL_DUAL_TEXTURE_SELECT_SGIS : constant := 16#8124#;  --  /usr/include/GL/glext.h:2783
   GL_QUAD_TEXTURE_SELECT_SGIS : constant := 16#8125#;  --  /usr/include/GL/glext.h:2784

   GL_SPRITE_SGIX : constant := 16#8148#;  --  /usr/include/GL/glext.h:2788
   GL_SPRITE_MODE_SGIX : constant := 16#8149#;  --  /usr/include/GL/glext.h:2789
   GL_SPRITE_AXIS_SGIX : constant := 16#814A#;  --  /usr/include/GL/glext.h:2790
   GL_SPRITE_TRANSLATION_SGIX : constant := 16#814B#;  --  /usr/include/GL/glext.h:2791
   GL_SPRITE_AXIAL_SGIX : constant := 16#814C#;  --  /usr/include/GL/glext.h:2792
   GL_SPRITE_OBJECT_ALIGNED_SGIX : constant := 16#814D#;  --  /usr/include/GL/glext.h:2793
   GL_SPRITE_EYE_ALIGNED_SGIX : constant := 16#814E#;  --  /usr/include/GL/glext.h:2794

   GL_TEXTURE_MULTI_BUFFER_HINT_SGIX : constant := 16#812E#;  --  /usr/include/GL/glext.h:2798

   GL_POINT_SIZE_MIN_EXT : constant := 16#8126#;  --  /usr/include/GL/glext.h:2802
   GL_POINT_SIZE_MAX_EXT : constant := 16#8127#;  --  /usr/include/GL/glext.h:2803
   GL_POINT_FADE_THRESHOLD_SIZE_EXT : constant := 16#8128#;  --  /usr/include/GL/glext.h:2804
   GL_DISTANCE_ATTENUATION_EXT : constant := 16#8129#;  --  /usr/include/GL/glext.h:2805

   GL_POINT_SIZE_MIN_SGIS : constant := 16#8126#;  --  /usr/include/GL/glext.h:2809
   GL_POINT_SIZE_MAX_SGIS : constant := 16#8127#;  --  /usr/include/GL/glext.h:2810
   GL_POINT_FADE_THRESHOLD_SIZE_SGIS : constant := 16#8128#;  --  /usr/include/GL/glext.h:2811
   GL_DISTANCE_ATTENUATION_SGIS : constant := 16#8129#;  --  /usr/include/GL/glext.h:2812

   GL_INSTRUMENT_BUFFER_POINTER_SGIX : constant := 16#8180#;  --  /usr/include/GL/glext.h:2816
   GL_INSTRUMENT_MEASUREMENTS_SGIX : constant := 16#8181#;  --  /usr/include/GL/glext.h:2817

   GL_POST_TEXTURE_FILTER_BIAS_SGIX : constant := 16#8179#;  --  /usr/include/GL/glext.h:2821
   GL_POST_TEXTURE_FILTER_SCALE_SGIX : constant := 16#817A#;  --  /usr/include/GL/glext.h:2822
   GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX : constant := 16#817B#;  --  /usr/include/GL/glext.h:2823
   GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX : constant := 16#817C#;  --  /usr/include/GL/glext.h:2824

   GL_FRAMEZOOM_SGIX : constant := 16#818B#;  --  /usr/include/GL/glext.h:2828
   GL_FRAMEZOOM_FACTOR_SGIX : constant := 16#818C#;  --  /usr/include/GL/glext.h:2829
   GL_MAX_FRAMEZOOM_FACTOR_SGIX : constant := 16#818D#;  --  /usr/include/GL/glext.h:2830

   GL_TEXTURE_DEFORMATION_BIT_SGIX : constant := 16#00000001#;  --  /usr/include/GL/glext.h:2837
   GL_GEOMETRY_DEFORMATION_BIT_SGIX : constant := 16#00000002#;  --  /usr/include/GL/glext.h:2838

   GL_GEOMETRY_DEFORMATION_SGIX : constant := 16#8194#;  --  /usr/include/GL/glext.h:2842
   GL_TEXTURE_DEFORMATION_SGIX : constant := 16#8195#;  --  /usr/include/GL/glext.h:2843
   GL_DEFORMATIONS_MASK_SGIX : constant := 16#8196#;  --  /usr/include/GL/glext.h:2844
   GL_MAX_DEFORMATION_ORDER_SGIX : constant := 16#8197#;  --  /usr/include/GL/glext.h:2845

   GL_REFERENCE_PLANE_SGIX : constant := 16#817D#;  --  /usr/include/GL/glext.h:2849
   GL_REFERENCE_PLANE_EQUATION_SGIX : constant := 16#817E#;  --  /usr/include/GL/glext.h:2850

   GL_DEPTH_COMPONENT16_SGIX : constant := 16#81A5#;  --  /usr/include/GL/glext.h:2857
   GL_DEPTH_COMPONENT24_SGIX : constant := 16#81A6#;  --  /usr/include/GL/glext.h:2858
   GL_DEPTH_COMPONENT32_SGIX : constant := 16#81A7#;  --  /usr/include/GL/glext.h:2859

   GL_FOG_FUNC_SGIS : constant := 16#812A#;  --  /usr/include/GL/glext.h:2863
   GL_FOG_FUNC_POINTS_SGIS : constant := 16#812B#;  --  /usr/include/GL/glext.h:2864
   GL_MAX_FOG_FUNC_POINTS_SGIS : constant := 16#812C#;  --  /usr/include/GL/glext.h:2865

   GL_FOG_OFFSET_SGIX : constant := 16#8198#;  --  /usr/include/GL/glext.h:2869
   GL_FOG_OFFSET_VALUE_SGIX : constant := 16#8199#;  --  /usr/include/GL/glext.h:2870

   GL_IMAGE_SCALE_X_HP : constant := 16#8155#;  --  /usr/include/GL/glext.h:2874
   GL_IMAGE_SCALE_Y_HP : constant := 16#8156#;  --  /usr/include/GL/glext.h:2875
   GL_IMAGE_TRANSLATE_X_HP : constant := 16#8157#;  --  /usr/include/GL/glext.h:2876
   GL_IMAGE_TRANSLATE_Y_HP : constant := 16#8158#;  --  /usr/include/GL/glext.h:2877
   GL_IMAGE_ROTATE_ANGLE_HP : constant := 16#8159#;  --  /usr/include/GL/glext.h:2878
   GL_IMAGE_ROTATE_ORIGIN_X_HP : constant := 16#815A#;  --  /usr/include/GL/glext.h:2879
   GL_IMAGE_ROTATE_ORIGIN_Y_HP : constant := 16#815B#;  --  /usr/include/GL/glext.h:2880
   GL_IMAGE_MAG_FILTER_HP : constant := 16#815C#;  --  /usr/include/GL/glext.h:2881
   GL_IMAGE_MIN_FILTER_HP : constant := 16#815D#;  --  /usr/include/GL/glext.h:2882
   GL_IMAGE_CUBIC_WEIGHT_HP : constant := 16#815E#;  --  /usr/include/GL/glext.h:2883
   GL_CUBIC_HP : constant := 16#815F#;  --  /usr/include/GL/glext.h:2884
   GL_AVERAGE_HP : constant := 16#8160#;  --  /usr/include/GL/glext.h:2885
   GL_IMAGE_TRANSFORM_2D_HP : constant := 16#8161#;  --  /usr/include/GL/glext.h:2886
   GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP : constant := 16#8162#;  --  /usr/include/GL/glext.h:2887
   GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP : constant := 16#8163#;  --  /usr/include/GL/glext.h:2888

   GL_IGNORE_BORDER_HP : constant := 16#8150#;  --  /usr/include/GL/glext.h:2892
   GL_CONSTANT_BORDER_HP : constant := 16#8151#;  --  /usr/include/GL/glext.h:2893
   GL_REPLICATE_BORDER_HP : constant := 16#8153#;  --  /usr/include/GL/glext.h:2894
   GL_CONVOLUTION_BORDER_COLOR_HP : constant := 16#8154#;  --  /usr/include/GL/glext.h:2895

   GL_TEXTURE_ENV_BIAS_SGIX : constant := 16#80BE#;  --  /usr/include/GL/glext.h:2902

   GL_VERTEX_DATA_HINT_PGI : constant := 16#1A22A#;  --  /usr/include/GL/glext.h:2909
   GL_VERTEX_CONSISTENT_HINT_PGI : constant := 16#1A22B#;  --  /usr/include/GL/glext.h:2910
   GL_MATERIAL_SIDE_HINT_PGI : constant := 16#1A22C#;  --  /usr/include/GL/glext.h:2911
   GL_MAX_VERTEX_HINT_PGI : constant := 16#1A22D#;  --  /usr/include/GL/glext.h:2912
   GL_COLOR3_BIT_PGI : constant := 16#00010000#;  --  /usr/include/GL/glext.h:2913
   GL_COLOR4_BIT_PGI : constant := 16#00020000#;  --  /usr/include/GL/glext.h:2914
   GL_EDGEFLAG_BIT_PGI : constant := 16#00040000#;  --  /usr/include/GL/glext.h:2915
   GL_INDEX_BIT_PGI : constant := 16#00080000#;  --  /usr/include/GL/glext.h:2916
   GL_MAT_AMBIENT_BIT_PGI : constant := 16#00100000#;  --  /usr/include/GL/glext.h:2917
   GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI : constant := 16#00200000#;  --  /usr/include/GL/glext.h:2918
   GL_MAT_DIFFUSE_BIT_PGI : constant := 16#00400000#;  --  /usr/include/GL/glext.h:2919
   GL_MAT_EMISSION_BIT_PGI : constant := 16#00800000#;  --  /usr/include/GL/glext.h:2920
   GL_MAT_COLOR_INDEXES_BIT_PGI : constant := 16#01000000#;  --  /usr/include/GL/glext.h:2921
   GL_MAT_SHININESS_BIT_PGI : constant := 16#02000000#;  --  /usr/include/GL/glext.h:2922
   GL_MAT_SPECULAR_BIT_PGI : constant := 16#04000000#;  --  /usr/include/GL/glext.h:2923
   GL_NORMAL_BIT_PGI : constant := 16#08000000#;  --  /usr/include/GL/glext.h:2924
   GL_TEXCOORD1_BIT_PGI : constant := 16#10000000#;  --  /usr/include/GL/glext.h:2925
   GL_TEXCOORD2_BIT_PGI : constant := 16#20000000#;  --  /usr/include/GL/glext.h:2926
   GL_TEXCOORD3_BIT_PGI : constant := 16#40000000#;  --  /usr/include/GL/glext.h:2927
   GL_TEXCOORD4_BIT_PGI : constant := 16#80000000#;  --  /usr/include/GL/glext.h:2928
   GL_VERTEX23_BIT_PGI : constant := 16#00000004#;  --  /usr/include/GL/glext.h:2929
   GL_VERTEX4_BIT_PGI : constant := 16#00000008#;  --  /usr/include/GL/glext.h:2930

   GL_PREFER_DOUBLEBUFFER_HINT_PGI : constant := 16#1A1F8#;  --  /usr/include/GL/glext.h:2934
   GL_CONSERVE_MEMORY_HINT_PGI : constant := 16#1A1FD#;  --  /usr/include/GL/glext.h:2935
   GL_RECLAIM_MEMORY_HINT_PGI : constant := 16#1A1FE#;  --  /usr/include/GL/glext.h:2936
   GL_NATIVE_GRAPHICS_HANDLE_PGI : constant := 16#1A202#;  --  /usr/include/GL/glext.h:2937
   GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI : constant := 16#1A203#;  --  /usr/include/GL/glext.h:2938
   GL_NATIVE_GRAPHICS_END_HINT_PGI : constant := 16#1A204#;  --  /usr/include/GL/glext.h:2939
   GL_ALWAYS_FAST_HINT_PGI : constant := 16#1A20C#;  --  /usr/include/GL/glext.h:2940
   GL_ALWAYS_SOFT_HINT_PGI : constant := 16#1A20D#;  --  /usr/include/GL/glext.h:2941
   GL_ALLOW_DRAW_OBJ_HINT_PGI : constant := 16#1A20E#;  --  /usr/include/GL/glext.h:2942
   GL_ALLOW_DRAW_WIN_HINT_PGI : constant := 16#1A20F#;  --  /usr/include/GL/glext.h:2943
   GL_ALLOW_DRAW_FRG_HINT_PGI : constant := 16#1A210#;  --  /usr/include/GL/glext.h:2944
   GL_ALLOW_DRAW_MEM_HINT_PGI : constant := 16#1A211#;  --  /usr/include/GL/glext.h:2945
   GL_STRICT_DEPTHFUNC_HINT_PGI : constant := 16#1A216#;  --  /usr/include/GL/glext.h:2946
   GL_STRICT_LIGHTING_HINT_PGI : constant := 16#1A217#;  --  /usr/include/GL/glext.h:2947
   GL_STRICT_SCISSOR_HINT_PGI : constant := 16#1A218#;  --  /usr/include/GL/glext.h:2948
   GL_FULL_STIPPLE_HINT_PGI : constant := 16#1A219#;  --  /usr/include/GL/glext.h:2949
   GL_CLIP_NEAR_HINT_PGI : constant := 16#1A220#;  --  /usr/include/GL/glext.h:2950
   GL_CLIP_FAR_HINT_PGI : constant := 16#1A221#;  --  /usr/include/GL/glext.h:2951
   GL_WIDE_LINE_HINT_PGI : constant := 16#1A222#;  --  /usr/include/GL/glext.h:2952
   GL_BACK_NORMALS_HINT_PGI : constant := 16#1A223#;  --  /usr/include/GL/glext.h:2953

   GL_COLOR_INDEX1_EXT : constant := 16#80E2#;  --  /usr/include/GL/glext.h:2957
   GL_COLOR_INDEX2_EXT : constant := 16#80E3#;  --  /usr/include/GL/glext.h:2958
   GL_COLOR_INDEX4_EXT : constant := 16#80E4#;  --  /usr/include/GL/glext.h:2959
   GL_COLOR_INDEX8_EXT : constant := 16#80E5#;  --  /usr/include/GL/glext.h:2960
   GL_COLOR_INDEX12_EXT : constant := 16#80E6#;  --  /usr/include/GL/glext.h:2961
   GL_COLOR_INDEX16_EXT : constant := 16#80E7#;  --  /usr/include/GL/glext.h:2962
   GL_TEXTURE_INDEX_SIZE_EXT : constant := 16#80ED#;  --  /usr/include/GL/glext.h:2963

   GL_CLIP_VOLUME_CLIPPING_HINT_EXT : constant := 16#80F0#;  --  /usr/include/GL/glext.h:2967

   GL_LIST_PRIORITY_SGIX : constant := 16#8182#;  --  /usr/include/GL/glext.h:2971

   GL_IR_INSTRUMENT1_SGIX : constant := 16#817F#;  --  /usr/include/GL/glext.h:2975

   GL_CALLIGRAPHIC_FRAGMENT_SGIX : constant := 16#8183#;  --  /usr/include/GL/glext.h:2979

   GL_TEXTURE_LOD_BIAS_S_SGIX : constant := 16#818E#;  --  /usr/include/GL/glext.h:2983
   GL_TEXTURE_LOD_BIAS_T_SGIX : constant := 16#818F#;  --  /usr/include/GL/glext.h:2984
   GL_TEXTURE_LOD_BIAS_R_SGIX : constant := 16#8190#;  --  /usr/include/GL/glext.h:2985

   GL_SHADOW_AMBIENT_SGIX : constant := 16#80BF#;  --  /usr/include/GL/glext.h:2989

   GL_INDEX_MATERIAL_EXT : constant := 16#81B8#;  --  /usr/include/GL/glext.h:2996
   GL_INDEX_MATERIAL_PARAMETER_EXT : constant := 16#81B9#;  --  /usr/include/GL/glext.h:2997
   GL_INDEX_MATERIAL_FACE_EXT : constant := 16#81BA#;  --  /usr/include/GL/glext.h:2998

   GL_INDEX_TEST_EXT : constant := 16#81B5#;  --  /usr/include/GL/glext.h:3002
   GL_INDEX_TEST_FUNC_EXT : constant := 16#81B6#;  --  /usr/include/GL/glext.h:3003
   GL_INDEX_TEST_REF_EXT : constant := 16#81B7#;  --  /usr/include/GL/glext.h:3004

   GL_IUI_V2F_EXT : constant := 16#81AD#;  --  /usr/include/GL/glext.h:3008
   GL_IUI_V3F_EXT : constant := 16#81AE#;  --  /usr/include/GL/glext.h:3009
   GL_IUI_N3F_V2F_EXT : constant := 16#81AF#;  --  /usr/include/GL/glext.h:3010
   GL_IUI_N3F_V3F_EXT : constant := 16#81B0#;  --  /usr/include/GL/glext.h:3011
   GL_T2F_IUI_V2F_EXT : constant := 16#81B1#;  --  /usr/include/GL/glext.h:3012
   GL_T2F_IUI_V3F_EXT : constant := 16#81B2#;  --  /usr/include/GL/glext.h:3013
   GL_T2F_IUI_N3F_V2F_EXT : constant := 16#81B3#;  --  /usr/include/GL/glext.h:3014
   GL_T2F_IUI_N3F_V3F_EXT : constant := 16#81B4#;  --  /usr/include/GL/glext.h:3015

   GL_ARRAY_ELEMENT_LOCK_FIRST_EXT : constant := 16#81A8#;  --  /usr/include/GL/glext.h:3019
   GL_ARRAY_ELEMENT_LOCK_COUNT_EXT : constant := 16#81A9#;  --  /usr/include/GL/glext.h:3020

   GL_CULL_VERTEX_EXT : constant := 16#81AA#;  --  /usr/include/GL/glext.h:3024
   GL_CULL_VERTEX_EYE_POSITION_EXT : constant := 16#81AB#;  --  /usr/include/GL/glext.h:3025
   GL_CULL_VERTEX_OBJECT_POSITION_EXT : constant := 16#81AC#;  --  /usr/include/GL/glext.h:3026

   GL_YCRCB_422_SGIX : constant := 16#81BB#;  --  /usr/include/GL/glext.h:3030
   GL_YCRCB_444_SGIX : constant := 16#81BC#;  --  /usr/include/GL/glext.h:3031

   GL_FRAGMENT_LIGHTING_SGIX : constant := 16#8400#;  --  /usr/include/GL/glext.h:3035
   GL_FRAGMENT_COLOR_MATERIAL_SGIX : constant := 16#8401#;  --  /usr/include/GL/glext.h:3036
   GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX : constant := 16#8402#;  --  /usr/include/GL/glext.h:3037
   GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX : constant := 16#8403#;  --  /usr/include/GL/glext.h:3038
   GL_MAX_FRAGMENT_LIGHTS_SGIX : constant := 16#8404#;  --  /usr/include/GL/glext.h:3039
   GL_MAX_ACTIVE_LIGHTS_SGIX : constant := 16#8405#;  --  /usr/include/GL/glext.h:3040
   GL_CURRENT_RASTER_NORMAL_SGIX : constant := 16#8406#;  --  /usr/include/GL/glext.h:3041
   GL_LIGHT_ENV_MODE_SGIX : constant := 16#8407#;  --  /usr/include/GL/glext.h:3042
   GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX : constant := 16#8408#;  --  /usr/include/GL/glext.h:3043
   GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX : constant := 16#8409#;  --  /usr/include/GL/glext.h:3044
   GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX : constant := 16#840A#;  --  /usr/include/GL/glext.h:3045
   GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX : constant := 16#840B#;  --  /usr/include/GL/glext.h:3046
   GL_FRAGMENT_LIGHT0_SGIX : constant := 16#840C#;  --  /usr/include/GL/glext.h:3047
   GL_FRAGMENT_LIGHT1_SGIX : constant := 16#840D#;  --  /usr/include/GL/glext.h:3048
   GL_FRAGMENT_LIGHT2_SGIX : constant := 16#840E#;  --  /usr/include/GL/glext.h:3049
   GL_FRAGMENT_LIGHT3_SGIX : constant := 16#840F#;  --  /usr/include/GL/glext.h:3050
   GL_FRAGMENT_LIGHT4_SGIX : constant := 16#8410#;  --  /usr/include/GL/glext.h:3051
   GL_FRAGMENT_LIGHT5_SGIX : constant := 16#8411#;  --  /usr/include/GL/glext.h:3052
   GL_FRAGMENT_LIGHT6_SGIX : constant := 16#8412#;  --  /usr/include/GL/glext.h:3053
   GL_FRAGMENT_LIGHT7_SGIX : constant := 16#8413#;  --  /usr/include/GL/glext.h:3054

   GL_RASTER_POSITION_UNCLIPPED_IBM : constant := 16#19262#;  --  /usr/include/GL/glext.h:3058

   GL_TEXTURE_LIGHTING_MODE_HP : constant := 16#8167#;  --  /usr/include/GL/glext.h:3062
   GL_TEXTURE_POST_SPECULAR_HP : constant := 16#8168#;  --  /usr/include/GL/glext.h:3063
   GL_TEXTURE_PRE_SPECULAR_HP : constant := 16#8169#;  --  /usr/include/GL/glext.h:3064

   GL_MAX_ELEMENTS_VERTICES_EXT : constant := 16#80E8#;  --  /usr/include/GL/glext.h:3068
   GL_MAX_ELEMENTS_INDICES_EXT : constant := 16#80E9#;  --  /usr/include/GL/glext.h:3069

   GL_PHONG_WIN : constant := 16#80EA#;  --  /usr/include/GL/glext.h:3073
   GL_PHONG_HINT_WIN : constant := 16#80EB#;  --  /usr/include/GL/glext.h:3074

   GL_FOG_SPECULAR_TEXTURE_WIN : constant := 16#80EC#;  --  /usr/include/GL/glext.h:3078

   GL_FRAGMENT_MATERIAL_EXT : constant := 16#8349#;  --  /usr/include/GL/glext.h:3082
   GL_FRAGMENT_NORMAL_EXT : constant := 16#834A#;  --  /usr/include/GL/glext.h:3083
   GL_FRAGMENT_COLOR_EXT : constant := 16#834C#;  --  /usr/include/GL/glext.h:3084
   GL_ATTENUATION_EXT : constant := 16#834D#;  --  /usr/include/GL/glext.h:3085
   GL_SHADOW_ATTENUATION_EXT : constant := 16#834E#;  --  /usr/include/GL/glext.h:3086
   GL_TEXTURE_APPLICATION_MODE_EXT : constant := 16#834F#;  --  /usr/include/GL/glext.h:3087
   GL_TEXTURE_LIGHT_EXT : constant := 16#8350#;  --  /usr/include/GL/glext.h:3088
   GL_TEXTURE_MATERIAL_FACE_EXT : constant := 16#8351#;  --  /usr/include/GL/glext.h:3089
   GL_TEXTURE_MATERIAL_PARAMETER_EXT : constant := 16#8352#;  --  /usr/include/GL/glext.h:3090

   GL_ALPHA_MIN_SGIX : constant := 16#8320#;  --  /usr/include/GL/glext.h:3095
   GL_ALPHA_MAX_SGIX : constant := 16#8321#;  --  /usr/include/GL/glext.h:3096

   GL_PIXEL_TEX_GEN_Q_CEILING_SGIX : constant := 16#8184#;  --  /usr/include/GL/glext.h:3100
   GL_PIXEL_TEX_GEN_Q_ROUND_SGIX : constant := 16#8185#;  --  /usr/include/GL/glext.h:3101
   GL_PIXEL_TEX_GEN_Q_FLOOR_SGIX : constant := 16#8186#;  --  /usr/include/GL/glext.h:3102
   GL_PIXEL_TEX_GEN_ALPHA_REPLACE_SGIX : constant := 16#8187#;  --  /usr/include/GL/glext.h:3103
   GL_PIXEL_TEX_GEN_ALPHA_NO_REPLACE_SGIX : constant := 16#8188#;  --  /usr/include/GL/glext.h:3104
   GL_PIXEL_TEX_GEN_ALPHA_LS_SGIX : constant := 16#8189#;  --  /usr/include/GL/glext.h:3105
   GL_PIXEL_TEX_GEN_ALPHA_MS_SGIX : constant := 16#818A#;  --  /usr/include/GL/glext.h:3106

   GL_BGR_EXT : constant := 16#80E0#;  --  /usr/include/GL/glext.h:3110
   GL_BGRA_EXT : constant := 16#80E1#;  --  /usr/include/GL/glext.h:3111

   GL_ASYNC_MARKER_SGIX : constant := 16#8329#;  --  /usr/include/GL/glext.h:3115

   GL_ASYNC_TEX_IMAGE_SGIX : constant := 16#835C#;  --  /usr/include/GL/glext.h:3119
   GL_ASYNC_DRAW_PIXELS_SGIX : constant := 16#835D#;  --  /usr/include/GL/glext.h:3120
   GL_ASYNC_READ_PIXELS_SGIX : constant := 16#835E#;  --  /usr/include/GL/glext.h:3121
   GL_MAX_ASYNC_TEX_IMAGE_SGIX : constant := 16#835F#;  --  /usr/include/GL/glext.h:3122
   GL_MAX_ASYNC_DRAW_PIXELS_SGIX : constant := 16#8360#;  --  /usr/include/GL/glext.h:3123
   GL_MAX_ASYNC_READ_PIXELS_SGIX : constant := 16#8361#;  --  /usr/include/GL/glext.h:3124

   GL_ASYNC_HISTOGRAM_SGIX : constant := 16#832C#;  --  /usr/include/GL/glext.h:3128
   GL_MAX_ASYNC_HISTOGRAM_SGIX : constant := 16#832D#;  --  /usr/include/GL/glext.h:3129

   GL_PARALLEL_ARRAYS_INTEL : constant := 16#83F4#;  --  /usr/include/GL/glext.h:3136
   GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL : constant := 16#83F5#;  --  /usr/include/GL/glext.h:3137
   GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL : constant := 16#83F6#;  --  /usr/include/GL/glext.h:3138
   GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL : constant := 16#83F7#;  --  /usr/include/GL/glext.h:3139
   GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL : constant := 16#83F8#;  --  /usr/include/GL/glext.h:3140

   GL_OCCLUSION_TEST_HP : constant := 16#8165#;  --  /usr/include/GL/glext.h:3144
   GL_OCCLUSION_TEST_RESULT_HP : constant := 16#8166#;  --  /usr/include/GL/glext.h:3145

   GL_PIXEL_TRANSFORM_2D_EXT : constant := 16#8330#;  --  /usr/include/GL/glext.h:3149
   GL_PIXEL_MAG_FILTER_EXT : constant := 16#8331#;  --  /usr/include/GL/glext.h:3150
   GL_PIXEL_MIN_FILTER_EXT : constant := 16#8332#;  --  /usr/include/GL/glext.h:3151
   GL_PIXEL_CUBIC_WEIGHT_EXT : constant := 16#8333#;  --  /usr/include/GL/glext.h:3152
   GL_CUBIC_EXT : constant := 16#8334#;  --  /usr/include/GL/glext.h:3153
   GL_AVERAGE_EXT : constant := 16#8335#;  --  /usr/include/GL/glext.h:3154
   GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT : constant := 16#8336#;  --  /usr/include/GL/glext.h:3155
   GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT : constant := 16#8337#;  --  /usr/include/GL/glext.h:3156
   GL_PIXEL_TRANSFORM_2D_MATRIX_EXT : constant := 16#8338#;  --  /usr/include/GL/glext.h:3157

   GL_SHARED_TEXTURE_PALETTE_EXT : constant := 16#81FB#;  --  /usr/include/GL/glext.h:3164

   GL_LIGHT_MODEL_COLOR_CONTROL_EXT : constant := 16#81F8#;  --  /usr/include/GL/glext.h:3168
   GL_SINGLE_COLOR_EXT : constant := 16#81F9#;  --  /usr/include/GL/glext.h:3169
   GL_SEPARATE_SPECULAR_COLOR_EXT : constant := 16#81FA#;  --  /usr/include/GL/glext.h:3170

   GL_COLOR_SUM_EXT : constant := 16#8458#;  --  /usr/include/GL/glext.h:3174
   GL_CURRENT_SECONDARY_COLOR_EXT : constant := 16#8459#;  --  /usr/include/GL/glext.h:3175
   GL_SECONDARY_COLOR_ARRAY_SIZE_EXT : constant := 16#845A#;  --  /usr/include/GL/glext.h:3176
   GL_SECONDARY_COLOR_ARRAY_TYPE_EXT : constant := 16#845B#;  --  /usr/include/GL/glext.h:3177
   GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT : constant := 16#845C#;  --  /usr/include/GL/glext.h:3178
   GL_SECONDARY_COLOR_ARRAY_POINTER_EXT : constant := 16#845D#;  --  /usr/include/GL/glext.h:3179
   GL_SECONDARY_COLOR_ARRAY_EXT : constant := 16#845E#;  --  /usr/include/GL/glext.h:3180

   GL_PERTURB_EXT : constant := 16#85AE#;  --  /usr/include/GL/glext.h:3184
   GL_TEXTURE_NORMAL_EXT : constant := 16#85AF#;  --  /usr/include/GL/glext.h:3185

   GL_FOG_COORDINATE_SOURCE_EXT : constant := 16#8450#;  --  /usr/include/GL/glext.h:3192
   GL_FOG_COORDINATE_EXT : constant := 16#8451#;  --  /usr/include/GL/glext.h:3193
   GL_FRAGMENT_DEPTH_EXT : constant := 16#8452#;  --  /usr/include/GL/glext.h:3194
   GL_CURRENT_FOG_COORDINATE_EXT : constant := 16#8453#;  --  /usr/include/GL/glext.h:3195
   GL_FOG_COORDINATE_ARRAY_TYPE_EXT : constant := 16#8454#;  --  /usr/include/GL/glext.h:3196
   GL_FOG_COORDINATE_ARRAY_STRIDE_EXT : constant := 16#8455#;  --  /usr/include/GL/glext.h:3197
   GL_FOG_COORDINATE_ARRAY_POINTER_EXT : constant := 16#8456#;  --  /usr/include/GL/glext.h:3198
   GL_FOG_COORDINATE_ARRAY_EXT : constant := 16#8457#;  --  /usr/include/GL/glext.h:3199

   GL_SCREEN_COORDINATES_REND : constant := 16#8490#;  --  /usr/include/GL/glext.h:3203
   GL_INVERTED_SCREEN_W_REND : constant := 16#8491#;  --  /usr/include/GL/glext.h:3204

   GL_TANGENT_ARRAY_EXT : constant := 16#8439#;  --  /usr/include/GL/glext.h:3208
   GL_BINORMAL_ARRAY_EXT : constant := 16#843A#;  --  /usr/include/GL/glext.h:3209
   GL_CURRENT_TANGENT_EXT : constant := 16#843B#;  --  /usr/include/GL/glext.h:3210
   GL_CURRENT_BINORMAL_EXT : constant := 16#843C#;  --  /usr/include/GL/glext.h:3211
   GL_TANGENT_ARRAY_TYPE_EXT : constant := 16#843E#;  --  /usr/include/GL/glext.h:3212
   GL_TANGENT_ARRAY_STRIDE_EXT : constant := 16#843F#;  --  /usr/include/GL/glext.h:3213
   GL_BINORMAL_ARRAY_TYPE_EXT : constant := 16#8440#;  --  /usr/include/GL/glext.h:3214
   GL_BINORMAL_ARRAY_STRIDE_EXT : constant := 16#8441#;  --  /usr/include/GL/glext.h:3215
   GL_TANGENT_ARRAY_POINTER_EXT : constant := 16#8442#;  --  /usr/include/GL/glext.h:3216
   GL_BINORMAL_ARRAY_POINTER_EXT : constant := 16#8443#;  --  /usr/include/GL/glext.h:3217
   GL_MAP1_TANGENT_EXT : constant := 16#8444#;  --  /usr/include/GL/glext.h:3218
   GL_MAP2_TANGENT_EXT : constant := 16#8445#;  --  /usr/include/GL/glext.h:3219
   GL_MAP1_BINORMAL_EXT : constant := 16#8446#;  --  /usr/include/GL/glext.h:3220
   GL_MAP2_BINORMAL_EXT : constant := 16#8447#;  --  /usr/include/GL/glext.h:3221

   GL_COMBINE_EXT : constant := 16#8570#;  --  /usr/include/GL/glext.h:3225
   GL_COMBINE_RGB_EXT : constant := 16#8571#;  --  /usr/include/GL/glext.h:3226
   GL_COMBINE_ALPHA_EXT : constant := 16#8572#;  --  /usr/include/GL/glext.h:3227
   GL_RGB_SCALE_EXT : constant := 16#8573#;  --  /usr/include/GL/glext.h:3228
   GL_ADD_SIGNED_EXT : constant := 16#8574#;  --  /usr/include/GL/glext.h:3229
   GL_INTERPOLATE_EXT : constant := 16#8575#;  --  /usr/include/GL/glext.h:3230
   GL_CONSTANT_EXT : constant := 16#8576#;  --  /usr/include/GL/glext.h:3231
   GL_PRIMARY_COLOR_EXT : constant := 16#8577#;  --  /usr/include/GL/glext.h:3232
   GL_PREVIOUS_EXT : constant := 16#8578#;  --  /usr/include/GL/glext.h:3233
   GL_SOURCE0_RGB_EXT : constant := 16#8580#;  --  /usr/include/GL/glext.h:3234
   GL_SOURCE1_RGB_EXT : constant := 16#8581#;  --  /usr/include/GL/glext.h:3235
   GL_SOURCE2_RGB_EXT : constant := 16#8582#;  --  /usr/include/GL/glext.h:3236
   GL_SOURCE0_ALPHA_EXT : constant := 16#8588#;  --  /usr/include/GL/glext.h:3237
   GL_SOURCE1_ALPHA_EXT : constant := 16#8589#;  --  /usr/include/GL/glext.h:3238
   GL_SOURCE2_ALPHA_EXT : constant := 16#858A#;  --  /usr/include/GL/glext.h:3239
   GL_OPERAND0_RGB_EXT : constant := 16#8590#;  --  /usr/include/GL/glext.h:3240
   GL_OPERAND1_RGB_EXT : constant := 16#8591#;  --  /usr/include/GL/glext.h:3241
   GL_OPERAND2_RGB_EXT : constant := 16#8592#;  --  /usr/include/GL/glext.h:3242
   GL_OPERAND0_ALPHA_EXT : constant := 16#8598#;  --  /usr/include/GL/glext.h:3243
   GL_OPERAND1_ALPHA_EXT : constant := 16#8599#;  --  /usr/include/GL/glext.h:3244
   GL_OPERAND2_ALPHA_EXT : constant := 16#859A#;  --  /usr/include/GL/glext.h:3245

   GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE : constant := 16#85B0#;  --  /usr/include/GL/glext.h:3249

   GL_TRANSFORM_HINT_APPLE : constant := 16#85B1#;  --  /usr/include/GL/glext.h:3253

   GL_FOG_SCALE_SGIX : constant := 16#81FC#;  --  /usr/include/GL/glext.h:3257
   GL_FOG_SCALE_VALUE_SGIX : constant := 16#81FD#;  --  /usr/include/GL/glext.h:3258

   GL_UNPACK_CONSTANT_DATA_SUNX : constant := 16#81D5#;  --  /usr/include/GL/glext.h:3262
   GL_TEXTURE_CONSTANT_DATA_SUNX : constant := 16#81D6#;  --  /usr/include/GL/glext.h:3263

   GL_GLOBAL_ALPHA_SUN : constant := 16#81D9#;  --  /usr/include/GL/glext.h:3267
   GL_GLOBAL_ALPHA_FACTOR_SUN : constant := 16#81DA#;  --  /usr/include/GL/glext.h:3268

   GL_RESTART_SUN : constant := 16#0001#;  --  /usr/include/GL/glext.h:3272
   GL_REPLACE_MIDDLE_SUN : constant := 16#0002#;  --  /usr/include/GL/glext.h:3273
   GL_REPLACE_OLDEST_SUN : constant := 16#0003#;  --  /usr/include/GL/glext.h:3274
   GL_TRIANGLE_LIST_SUN : constant := 16#81D7#;  --  /usr/include/GL/glext.h:3275
   GL_REPLACEMENT_CODE_SUN : constant := 16#81D8#;  --  /usr/include/GL/glext.h:3276
   GL_REPLACEMENT_CODE_ARRAY_SUN : constant := 16#85C0#;  --  /usr/include/GL/glext.h:3277
   GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN : constant := 16#85C1#;  --  /usr/include/GL/glext.h:3278
   GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN : constant := 16#85C2#;  --  /usr/include/GL/glext.h:3279
   GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN : constant := 16#85C3#;  --  /usr/include/GL/glext.h:3280
   GL_R1UI_V3F_SUN : constant := 16#85C4#;  --  /usr/include/GL/glext.h:3281
   GL_R1UI_C4UB_V3F_SUN : constant := 16#85C5#;  --  /usr/include/GL/glext.h:3282
   GL_R1UI_C3F_V3F_SUN : constant := 16#85C6#;  --  /usr/include/GL/glext.h:3283
   GL_R1UI_N3F_V3F_SUN : constant := 16#85C7#;  --  /usr/include/GL/glext.h:3284
   GL_R1UI_C4F_N3F_V3F_SUN : constant := 16#85C8#;  --  /usr/include/GL/glext.h:3285
   GL_R1UI_T2F_V3F_SUN : constant := 16#85C9#;  --  /usr/include/GL/glext.h:3286
   GL_R1UI_T2F_N3F_V3F_SUN : constant := 16#85CA#;  --  /usr/include/GL/glext.h:3287
   GL_R1UI_T2F_C4F_N3F_V3F_SUN : constant := 16#85CB#;  --  /usr/include/GL/glext.h:3288

   GL_BLEND_DST_RGB_EXT : constant := 16#80C8#;  --  /usr/include/GL/glext.h:3295
   GL_BLEND_SRC_RGB_EXT : constant := 16#80C9#;  --  /usr/include/GL/glext.h:3296
   GL_BLEND_DST_ALPHA_EXT : constant := 16#80CA#;  --  /usr/include/GL/glext.h:3297
   GL_BLEND_SRC_ALPHA_EXT : constant := 16#80CB#;  --  /usr/include/GL/glext.h:3298

   GL_RED_MIN_CLAMP_INGR : constant := 16#8560#;  --  /usr/include/GL/glext.h:3302
   GL_GREEN_MIN_CLAMP_INGR : constant := 16#8561#;  --  /usr/include/GL/glext.h:3303
   GL_BLUE_MIN_CLAMP_INGR : constant := 16#8562#;  --  /usr/include/GL/glext.h:3304
   GL_ALPHA_MIN_CLAMP_INGR : constant := 16#8563#;  --  /usr/include/GL/glext.h:3305
   GL_RED_MAX_CLAMP_INGR : constant := 16#8564#;  --  /usr/include/GL/glext.h:3306
   GL_GREEN_MAX_CLAMP_INGR : constant := 16#8565#;  --  /usr/include/GL/glext.h:3307
   GL_BLUE_MAX_CLAMP_INGR : constant := 16#8566#;  --  /usr/include/GL/glext.h:3308
   GL_ALPHA_MAX_CLAMP_INGR : constant := 16#8567#;  --  /usr/include/GL/glext.h:3309

   GL_INTERLACE_READ_INGR : constant := 16#8568#;  --  /usr/include/GL/glext.h:3313

   GL_INCR_WRAP_EXT : constant := 16#8507#;  --  /usr/include/GL/glext.h:3317
   GL_DECR_WRAP_EXT : constant := 16#8508#;  --  /usr/include/GL/glext.h:3318

   GL_422_EXT : constant := 16#80CC#;  --  /usr/include/GL/glext.h:3322
   GL_422_REV_EXT : constant := 16#80CD#;  --  /usr/include/GL/glext.h:3323
   GL_422_AVERAGE_EXT : constant := 16#80CE#;  --  /usr/include/GL/glext.h:3324
   GL_422_REV_AVERAGE_EXT : constant := 16#80CF#;  --  /usr/include/GL/glext.h:3325

   GL_NORMAL_MAP_NV : constant := 16#8511#;  --  /usr/include/GL/glext.h:3329
   GL_REFLECTION_MAP_NV : constant := 16#8512#;  --  /usr/include/GL/glext.h:3330

   GL_NORMAL_MAP_EXT : constant := 16#8511#;  --  /usr/include/GL/glext.h:3334
   GL_REFLECTION_MAP_EXT : constant := 16#8512#;  --  /usr/include/GL/glext.h:3335
   GL_TEXTURE_CUBE_MAP_EXT : constant := 16#8513#;  --  /usr/include/GL/glext.h:3336
   GL_TEXTURE_BINDING_CUBE_MAP_EXT : constant := 16#8514#;  --  /usr/include/GL/glext.h:3337
   GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT : constant := 16#8515#;  --  /usr/include/GL/glext.h:3338
   GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT : constant := 16#8516#;  --  /usr/include/GL/glext.h:3339
   GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT : constant := 16#8517#;  --  /usr/include/GL/glext.h:3340
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT : constant := 16#8518#;  --  /usr/include/GL/glext.h:3341
   GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT : constant := 16#8519#;  --  /usr/include/GL/glext.h:3342
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT : constant := 16#851A#;  --  /usr/include/GL/glext.h:3343
   GL_PROXY_TEXTURE_CUBE_MAP_EXT : constant := 16#851B#;  --  /usr/include/GL/glext.h:3344
   GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT : constant := 16#851C#;  --  /usr/include/GL/glext.h:3345

   GL_WRAP_BORDER_SUN : constant := 16#81D4#;  --  /usr/include/GL/glext.h:3349

   GL_MAX_TEXTURE_LOD_BIAS_EXT : constant := 16#84FD#;  --  /usr/include/GL/glext.h:3356
   GL_TEXTURE_FILTER_CONTROL_EXT : constant := 16#8500#;  --  /usr/include/GL/glext.h:3357
   GL_TEXTURE_LOD_BIAS_EXT : constant := 16#8501#;  --  /usr/include/GL/glext.h:3358

   GL_TEXTURE_MAX_ANISOTROPY_EXT : constant := 16#84FE#;  --  /usr/include/GL/glext.h:3362
   GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT : constant := 16#84FF#;  --  /usr/include/GL/glext.h:3363
   --  unsupported macro: GL_MODELVIEW0_STACK_DEPTH_EXT GL_MODELVIEW_STACK_DEPTH

   GL_MODELVIEW1_STACK_DEPTH_EXT : constant := 16#8502#;  --  /usr/include/GL/glext.h:3368
   --  unsupported macro: GL_MODELVIEW0_MATRIX_EXT GL_MODELVIEW_MATRIX

   GL_MODELVIEW1_MATRIX_EXT : constant := 16#8506#;  --  /usr/include/GL/glext.h:3370
   GL_VERTEX_WEIGHTING_EXT : constant := 16#8509#;  --  /usr/include/GL/glext.h:3371
   --  unsupported macro: GL_MODELVIEW0_EXT GL_MODELVIEW

   GL_MODELVIEW1_EXT : constant := 16#850A#;  --  /usr/include/GL/glext.h:3373
   GL_CURRENT_VERTEX_WEIGHT_EXT : constant := 16#850B#;  --  /usr/include/GL/glext.h:3374
   GL_VERTEX_WEIGHT_ARRAY_EXT : constant := 16#850C#;  --  /usr/include/GL/glext.h:3375
   GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT : constant := 16#850D#;  --  /usr/include/GL/glext.h:3376
   GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT : constant := 16#850E#;  --  /usr/include/GL/glext.h:3377
   GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT : constant := 16#850F#;  --  /usr/include/GL/glext.h:3378
   GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT : constant := 16#8510#;  --  /usr/include/GL/glext.h:3379

   GL_MAX_SHININESS_NV : constant := 16#8504#;  --  /usr/include/GL/glext.h:3383
   GL_MAX_SPOT_EXPONENT_NV : constant := 16#8505#;  --  /usr/include/GL/glext.h:3384

   GL_VERTEX_ARRAY_RANGE_NV : constant := 16#851D#;  --  /usr/include/GL/glext.h:3388
   GL_VERTEX_ARRAY_RANGE_LENGTH_NV : constant := 16#851E#;  --  /usr/include/GL/glext.h:3389
   GL_VERTEX_ARRAY_RANGE_VALID_NV : constant := 16#851F#;  --  /usr/include/GL/glext.h:3390
   GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV : constant := 16#8520#;  --  /usr/include/GL/glext.h:3391
   GL_VERTEX_ARRAY_RANGE_POINTER_NV : constant := 16#8521#;  --  /usr/include/GL/glext.h:3392

   GL_REGISTER_COMBINERS_NV : constant := 16#8522#;  --  /usr/include/GL/glext.h:3396
   GL_VARIABLE_A_NV : constant := 16#8523#;  --  /usr/include/GL/glext.h:3397
   GL_VARIABLE_B_NV : constant := 16#8524#;  --  /usr/include/GL/glext.h:3398
   GL_VARIABLE_C_NV : constant := 16#8525#;  --  /usr/include/GL/glext.h:3399
   GL_VARIABLE_D_NV : constant := 16#8526#;  --  /usr/include/GL/glext.h:3400
   GL_VARIABLE_E_NV : constant := 16#8527#;  --  /usr/include/GL/glext.h:3401
   GL_VARIABLE_F_NV : constant := 16#8528#;  --  /usr/include/GL/glext.h:3402
   GL_VARIABLE_G_NV : constant := 16#8529#;  --  /usr/include/GL/glext.h:3403
   GL_CONSTANT_COLOR0_NV : constant := 16#852A#;  --  /usr/include/GL/glext.h:3404
   GL_CONSTANT_COLOR1_NV : constant := 16#852B#;  --  /usr/include/GL/glext.h:3405
   GL_PRIMARY_COLOR_NV : constant := 16#852C#;  --  /usr/include/GL/glext.h:3406
   GL_SECONDARY_COLOR_NV : constant := 16#852D#;  --  /usr/include/GL/glext.h:3407
   GL_SPARE0_NV : constant := 16#852E#;  --  /usr/include/GL/glext.h:3408
   GL_SPARE1_NV : constant := 16#852F#;  --  /usr/include/GL/glext.h:3409
   GL_DISCARD_NV : constant := 16#8530#;  --  /usr/include/GL/glext.h:3410
   GL_E_TIMES_F_NV : constant := 16#8531#;  --  /usr/include/GL/glext.h:3411
   GL_SPARE0_PLUS_SECONDARY_COLOR_NV : constant := 16#8532#;  --  /usr/include/GL/glext.h:3412
   GL_UNSIGNED_IDENTITY_NV : constant := 16#8536#;  --  /usr/include/GL/glext.h:3413
   GL_UNSIGNED_INVERT_NV : constant := 16#8537#;  --  /usr/include/GL/glext.h:3414
   GL_EXPAND_NORMAL_NV : constant := 16#8538#;  --  /usr/include/GL/glext.h:3415
   GL_EXPAND_NEGATE_NV : constant := 16#8539#;  --  /usr/include/GL/glext.h:3416
   GL_HALF_BIAS_NORMAL_NV : constant := 16#853A#;  --  /usr/include/GL/glext.h:3417
   GL_HALF_BIAS_NEGATE_NV : constant := 16#853B#;  --  /usr/include/GL/glext.h:3418
   GL_SIGNED_IDENTITY_NV : constant := 16#853C#;  --  /usr/include/GL/glext.h:3419
   GL_SIGNED_NEGATE_NV : constant := 16#853D#;  --  /usr/include/GL/glext.h:3420
   GL_SCALE_BY_TWO_NV : constant := 16#853E#;  --  /usr/include/GL/glext.h:3421
   GL_SCALE_BY_FOUR_NV : constant := 16#853F#;  --  /usr/include/GL/glext.h:3422
   GL_SCALE_BY_ONE_HALF_NV : constant := 16#8540#;  --  /usr/include/GL/glext.h:3423
   GL_BIAS_BY_NEGATIVE_ONE_HALF_NV : constant := 16#8541#;  --  /usr/include/GL/glext.h:3424
   GL_COMBINER_INPUT_NV : constant := 16#8542#;  --  /usr/include/GL/glext.h:3425
   GL_COMBINER_MAPPING_NV : constant := 16#8543#;  --  /usr/include/GL/glext.h:3426
   GL_COMBINER_COMPONENT_USAGE_NV : constant := 16#8544#;  --  /usr/include/GL/glext.h:3427
   GL_COMBINER_AB_DOT_PRODUCT_NV : constant := 16#8545#;  --  /usr/include/GL/glext.h:3428
   GL_COMBINER_CD_DOT_PRODUCT_NV : constant := 16#8546#;  --  /usr/include/GL/glext.h:3429
   GL_COMBINER_MUX_SUM_NV : constant := 16#8547#;  --  /usr/include/GL/glext.h:3430
   GL_COMBINER_SCALE_NV : constant := 16#8548#;  --  /usr/include/GL/glext.h:3431
   GL_COMBINER_BIAS_NV : constant := 16#8549#;  --  /usr/include/GL/glext.h:3432
   GL_COMBINER_AB_OUTPUT_NV : constant := 16#854A#;  --  /usr/include/GL/glext.h:3433
   GL_COMBINER_CD_OUTPUT_NV : constant := 16#854B#;  --  /usr/include/GL/glext.h:3434
   GL_COMBINER_SUM_OUTPUT_NV : constant := 16#854C#;  --  /usr/include/GL/glext.h:3435
   GL_MAX_GENERAL_COMBINERS_NV : constant := 16#854D#;  --  /usr/include/GL/glext.h:3436
   GL_NUM_GENERAL_COMBINERS_NV : constant := 16#854E#;  --  /usr/include/GL/glext.h:3437
   GL_COLOR_SUM_CLAMP_NV : constant := 16#854F#;  --  /usr/include/GL/glext.h:3438
   GL_COMBINER0_NV : constant := 16#8550#;  --  /usr/include/GL/glext.h:3439
   GL_COMBINER1_NV : constant := 16#8551#;  --  /usr/include/GL/glext.h:3440
   GL_COMBINER2_NV : constant := 16#8552#;  --  /usr/include/GL/glext.h:3441
   GL_COMBINER3_NV : constant := 16#8553#;  --  /usr/include/GL/glext.h:3442
   GL_COMBINER4_NV : constant := 16#8554#;  --  /usr/include/GL/glext.h:3443
   GL_COMBINER5_NV : constant := 16#8555#;  --  /usr/include/GL/glext.h:3444
   GL_COMBINER6_NV : constant := 16#8556#;  --  /usr/include/GL/glext.h:3445
   GL_COMBINER7_NV : constant := 16#8557#;  --  /usr/include/GL/glext.h:3446

   GL_FOG_DISTANCE_MODE_NV : constant := 16#855A#;  --  /usr/include/GL/glext.h:3455
   GL_EYE_RADIAL_NV : constant := 16#855B#;  --  /usr/include/GL/glext.h:3456
   GL_EYE_PLANE_ABSOLUTE_NV : constant := 16#855C#;  --  /usr/include/GL/glext.h:3457

   GL_EMBOSS_LIGHT_NV : constant := 16#855D#;  --  /usr/include/GL/glext.h:3462
   GL_EMBOSS_CONSTANT_NV : constant := 16#855E#;  --  /usr/include/GL/glext.h:3463
   GL_EMBOSS_MAP_NV : constant := 16#855F#;  --  /usr/include/GL/glext.h:3464

   GL_COMBINE4_NV : constant := 16#8503#;  --  /usr/include/GL/glext.h:3471
   GL_SOURCE3_RGB_NV : constant := 16#8583#;  --  /usr/include/GL/glext.h:3472
   GL_SOURCE3_ALPHA_NV : constant := 16#858B#;  --  /usr/include/GL/glext.h:3473
   GL_OPERAND3_RGB_NV : constant := 16#8593#;  --  /usr/include/GL/glext.h:3474
   GL_OPERAND3_ALPHA_NV : constant := 16#859B#;  --  /usr/include/GL/glext.h:3475

   GL_COMPRESSED_RGB_S3TC_DXT1_EXT : constant := 16#83F0#;  --  /usr/include/GL/glext.h:3485
   GL_COMPRESSED_RGBA_S3TC_DXT1_EXT : constant := 16#83F1#;  --  /usr/include/GL/glext.h:3486
   GL_COMPRESSED_RGBA_S3TC_DXT3_EXT : constant := 16#83F2#;  --  /usr/include/GL/glext.h:3487
   GL_COMPRESSED_RGBA_S3TC_DXT5_EXT : constant := 16#83F3#;  --  /usr/include/GL/glext.h:3488

   GL_CULL_VERTEX_IBM : constant := 103050;  --  /usr/include/GL/glext.h:3492

   GL_VERTEX_ARRAY_LIST_IBM : constant := 103070;  --  /usr/include/GL/glext.h:3499
   GL_NORMAL_ARRAY_LIST_IBM : constant := 103071;  --  /usr/include/GL/glext.h:3500
   GL_COLOR_ARRAY_LIST_IBM : constant := 103072;  --  /usr/include/GL/glext.h:3501
   GL_INDEX_ARRAY_LIST_IBM : constant := 103073;  --  /usr/include/GL/glext.h:3502
   GL_TEXTURE_COORD_ARRAY_LIST_IBM : constant := 103074;  --  /usr/include/GL/glext.h:3503
   GL_EDGE_FLAG_ARRAY_LIST_IBM : constant := 103075;  --  /usr/include/GL/glext.h:3504
   GL_FOG_COORDINATE_ARRAY_LIST_IBM : constant := 103076;  --  /usr/include/GL/glext.h:3505
   GL_SECONDARY_COLOR_ARRAY_LIST_IBM : constant := 103077;  --  /usr/include/GL/glext.h:3506
   GL_VERTEX_ARRAY_LIST_STRIDE_IBM : constant := 103080;  --  /usr/include/GL/glext.h:3507
   GL_NORMAL_ARRAY_LIST_STRIDE_IBM : constant := 103081;  --  /usr/include/GL/glext.h:3508
   GL_COLOR_ARRAY_LIST_STRIDE_IBM : constant := 103082;  --  /usr/include/GL/glext.h:3509
   GL_INDEX_ARRAY_LIST_STRIDE_IBM : constant := 103083;  --  /usr/include/GL/glext.h:3510
   GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM : constant := 103084;  --  /usr/include/GL/glext.h:3511
   GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM : constant := 103085;  --  /usr/include/GL/glext.h:3512
   GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM : constant := 103086;  --  /usr/include/GL/glext.h:3513
   GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM : constant := 103087;  --  /usr/include/GL/glext.h:3514

   GL_PACK_SUBSAMPLE_RATE_SGIX : constant := 16#85A0#;  --  /usr/include/GL/glext.h:3518
   GL_UNPACK_SUBSAMPLE_RATE_SGIX : constant := 16#85A1#;  --  /usr/include/GL/glext.h:3519
   GL_PIXEL_SUBSAMPLE_4444_SGIX : constant := 16#85A2#;  --  /usr/include/GL/glext.h:3520
   GL_PIXEL_SUBSAMPLE_2424_SGIX : constant := 16#85A3#;  --  /usr/include/GL/glext.h:3521
   GL_PIXEL_SUBSAMPLE_4242_SGIX : constant := 16#85A4#;  --  /usr/include/GL/glext.h:3522

   GL_YCRCB_SGIX : constant := 16#8318#;  --  /usr/include/GL/glext.h:3529
   GL_YCRCBA_SGIX : constant := 16#8319#;  --  /usr/include/GL/glext.h:3530

   GL_DEPTH_PASS_INSTRUMENT_SGIX : constant := 16#8310#;  --  /usr/include/GL/glext.h:3534
   GL_DEPTH_PASS_INSTRUMENT_COUNTERS_SGIX : constant := 16#8311#;  --  /usr/include/GL/glext.h:3535
   GL_DEPTH_PASS_INSTRUMENT_MAX_SGIX : constant := 16#8312#;  --  /usr/include/GL/glext.h:3536

   GL_COMPRESSED_RGB_FXT1_3DFX : constant := 16#86B0#;  --  /usr/include/GL/glext.h:3540
   GL_COMPRESSED_RGBA_FXT1_3DFX : constant := 16#86B1#;  --  /usr/include/GL/glext.h:3541

   GL_MULTISAMPLE_3DFX : constant := 16#86B2#;  --  /usr/include/GL/glext.h:3545
   GL_SAMPLE_BUFFERS_3DFX : constant := 16#86B3#;  --  /usr/include/GL/glext.h:3546
   GL_SAMPLES_3DFX : constant := 16#86B4#;  --  /usr/include/GL/glext.h:3547
   GL_MULTISAMPLE_BIT_3DFX : constant := 16#20000000#;  --  /usr/include/GL/glext.h:3548

   GL_MULTISAMPLE_EXT : constant := 16#809D#;  --  /usr/include/GL/glext.h:3555
   GL_SAMPLE_ALPHA_TO_MASK_EXT : constant := 16#809E#;  --  /usr/include/GL/glext.h:3556
   GL_SAMPLE_ALPHA_TO_ONE_EXT : constant := 16#809F#;  --  /usr/include/GL/glext.h:3557
   GL_SAMPLE_MASK_EXT : constant := 16#80A0#;  --  /usr/include/GL/glext.h:3558
   GL_1PASS_EXT : constant := 16#80A1#;  --  /usr/include/GL/glext.h:3559
   GL_2PASS_0_EXT : constant := 16#80A2#;  --  /usr/include/GL/glext.h:3560
   GL_2PASS_1_EXT : constant := 16#80A3#;  --  /usr/include/GL/glext.h:3561
   GL_4PASS_0_EXT : constant := 16#80A4#;  --  /usr/include/GL/glext.h:3562
   GL_4PASS_1_EXT : constant := 16#80A5#;  --  /usr/include/GL/glext.h:3563
   GL_4PASS_2_EXT : constant := 16#80A6#;  --  /usr/include/GL/glext.h:3564
   GL_4PASS_3_EXT : constant := 16#80A7#;  --  /usr/include/GL/glext.h:3565
   GL_SAMPLE_BUFFERS_EXT : constant := 16#80A8#;  --  /usr/include/GL/glext.h:3566
   GL_SAMPLES_EXT : constant := 16#80A9#;  --  /usr/include/GL/glext.h:3567
   GL_SAMPLE_MASK_VALUE_EXT : constant := 16#80AA#;  --  /usr/include/GL/glext.h:3568
   GL_SAMPLE_MASK_INVERT_EXT : constant := 16#80AB#;  --  /usr/include/GL/glext.h:3569
   GL_SAMPLE_PATTERN_EXT : constant := 16#80AC#;  --  /usr/include/GL/glext.h:3570
   GL_MULTISAMPLE_BIT_EXT : constant := 16#20000000#;  --  /usr/include/GL/glext.h:3571

   GL_VERTEX_PRECLIP_SGIX : constant := 16#83EE#;  --  /usr/include/GL/glext.h:3575
   GL_VERTEX_PRECLIP_HINT_SGIX : constant := 16#83EF#;  --  /usr/include/GL/glext.h:3576

   GL_CONVOLUTION_HINT_SGIX : constant := 16#8316#;  --  /usr/include/GL/glext.h:3580

   GL_PACK_RESAMPLE_SGIX : constant := 16#842C#;  --  /usr/include/GL/glext.h:3584
   GL_UNPACK_RESAMPLE_SGIX : constant := 16#842D#;  --  /usr/include/GL/glext.h:3585
   GL_RESAMPLE_REPLICATE_SGIX : constant := 16#842E#;  --  /usr/include/GL/glext.h:3586
   GL_RESAMPLE_ZERO_FILL_SGIX : constant := 16#842F#;  --  /usr/include/GL/glext.h:3587
   GL_RESAMPLE_DECIMATE_SGIX : constant := 16#8430#;  --  /usr/include/GL/glext.h:3588

   GL_EYE_DISTANCE_TO_POINT_SGIS : constant := 16#81F0#;  --  /usr/include/GL/glext.h:3592
   GL_OBJECT_DISTANCE_TO_POINT_SGIS : constant := 16#81F1#;  --  /usr/include/GL/glext.h:3593
   GL_EYE_DISTANCE_TO_LINE_SGIS : constant := 16#81F2#;  --  /usr/include/GL/glext.h:3594
   GL_OBJECT_DISTANCE_TO_LINE_SGIS : constant := 16#81F3#;  --  /usr/include/GL/glext.h:3595
   GL_EYE_POINT_SGIS : constant := 16#81F4#;  --  /usr/include/GL/glext.h:3596
   GL_OBJECT_POINT_SGIS : constant := 16#81F5#;  --  /usr/include/GL/glext.h:3597
   GL_EYE_LINE_SGIS : constant := 16#81F6#;  --  /usr/include/GL/glext.h:3598
   GL_OBJECT_LINE_SGIS : constant := 16#81F7#;  --  /usr/include/GL/glext.h:3599

   GL_TEXTURE_COLOR_WRITEMASK_SGIS : constant := 16#81EF#;  --  /usr/include/GL/glext.h:3603

   GL_DOT3_RGB_EXT : constant := 16#8740#;  --  /usr/include/GL/glext.h:3607
   GL_DOT3_RGBA_EXT : constant := 16#8741#;  --  /usr/include/GL/glext.h:3608

   GL_MIRROR_CLAMP_ATI : constant := 16#8742#;  --  /usr/include/GL/glext.h:3612
   GL_MIRROR_CLAMP_TO_EDGE_ATI : constant := 16#8743#;  --  /usr/include/GL/glext.h:3613

   GL_ALL_COMPLETED_NV : constant := 16#84F2#;  --  /usr/include/GL/glext.h:3617
   GL_FENCE_STATUS_NV : constant := 16#84F3#;  --  /usr/include/GL/glext.h:3618
   GL_FENCE_CONDITION_NV : constant := 16#84F4#;  --  /usr/include/GL/glext.h:3619

   GL_MIRRORED_REPEAT_IBM : constant := 16#8370#;  --  /usr/include/GL/glext.h:3623

   GL_EVAL_2D_NV : constant := 16#86C0#;  --  /usr/include/GL/glext.h:3627
   GL_EVAL_TRIANGULAR_2D_NV : constant := 16#86C1#;  --  /usr/include/GL/glext.h:3628
   GL_MAP_TESSELLATION_NV : constant := 16#86C2#;  --  /usr/include/GL/glext.h:3629
   GL_MAP_ATTRIB_U_ORDER_NV : constant := 16#86C3#;  --  /usr/include/GL/glext.h:3630
   GL_MAP_ATTRIB_V_ORDER_NV : constant := 16#86C4#;  --  /usr/include/GL/glext.h:3631
   GL_EVAL_FRACTIONAL_TESSELLATION_NV : constant := 16#86C5#;  --  /usr/include/GL/glext.h:3632
   GL_EVAL_VERTEX_ATTRIB0_NV : constant := 16#86C6#;  --  /usr/include/GL/glext.h:3633
   GL_EVAL_VERTEX_ATTRIB1_NV : constant := 16#86C7#;  --  /usr/include/GL/glext.h:3634
   GL_EVAL_VERTEX_ATTRIB2_NV : constant := 16#86C8#;  --  /usr/include/GL/glext.h:3635
   GL_EVAL_VERTEX_ATTRIB3_NV : constant := 16#86C9#;  --  /usr/include/GL/glext.h:3636
   GL_EVAL_VERTEX_ATTRIB4_NV : constant := 16#86CA#;  --  /usr/include/GL/glext.h:3637
   GL_EVAL_VERTEX_ATTRIB5_NV : constant := 16#86CB#;  --  /usr/include/GL/glext.h:3638
   GL_EVAL_VERTEX_ATTRIB6_NV : constant := 16#86CC#;  --  /usr/include/GL/glext.h:3639
   GL_EVAL_VERTEX_ATTRIB7_NV : constant := 16#86CD#;  --  /usr/include/GL/glext.h:3640
   GL_EVAL_VERTEX_ATTRIB8_NV : constant := 16#86CE#;  --  /usr/include/GL/glext.h:3641
   GL_EVAL_VERTEX_ATTRIB9_NV : constant := 16#86CF#;  --  /usr/include/GL/glext.h:3642
   GL_EVAL_VERTEX_ATTRIB10_NV : constant := 16#86D0#;  --  /usr/include/GL/glext.h:3643
   GL_EVAL_VERTEX_ATTRIB11_NV : constant := 16#86D1#;  --  /usr/include/GL/glext.h:3644
   GL_EVAL_VERTEX_ATTRIB12_NV : constant := 16#86D2#;  --  /usr/include/GL/glext.h:3645
   GL_EVAL_VERTEX_ATTRIB13_NV : constant := 16#86D3#;  --  /usr/include/GL/glext.h:3646
   GL_EVAL_VERTEX_ATTRIB14_NV : constant := 16#86D4#;  --  /usr/include/GL/glext.h:3647
   GL_EVAL_VERTEX_ATTRIB15_NV : constant := 16#86D5#;  --  /usr/include/GL/glext.h:3648
   GL_MAX_MAP_TESSELLATION_NV : constant := 16#86D6#;  --  /usr/include/GL/glext.h:3649
   GL_MAX_RATIONAL_EVAL_ORDER_NV : constant := 16#86D7#;  --  /usr/include/GL/glext.h:3650

   GL_DEPTH_STENCIL_NV : constant := 16#84F9#;  --  /usr/include/GL/glext.h:3654
   GL_UNSIGNED_INT_24_8_NV : constant := 16#84FA#;  --  /usr/include/GL/glext.h:3655

   GL_PER_STAGE_CONSTANTS_NV : constant := 16#8535#;  --  /usr/include/GL/glext.h:3659

   GL_TEXTURE_RECTANGLE_NV : constant := 16#84F5#;  --  /usr/include/GL/glext.h:3666
   GL_TEXTURE_BINDING_RECTANGLE_NV : constant := 16#84F6#;  --  /usr/include/GL/glext.h:3667
   GL_PROXY_TEXTURE_RECTANGLE_NV : constant := 16#84F7#;  --  /usr/include/GL/glext.h:3668
   GL_MAX_RECTANGLE_TEXTURE_SIZE_NV : constant := 16#84F8#;  --  /usr/include/GL/glext.h:3669

   GL_OFFSET_TEXTURE_RECTANGLE_NV : constant := 16#864C#;  --  /usr/include/GL/glext.h:3673
   GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV : constant := 16#864D#;  --  /usr/include/GL/glext.h:3674
   GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV : constant := 16#864E#;  --  /usr/include/GL/glext.h:3675
   GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV : constant := 16#86D9#;  --  /usr/include/GL/glext.h:3676
   GL_UNSIGNED_INT_S8_S8_8_8_NV : constant := 16#86DA#;  --  /usr/include/GL/glext.h:3677
   GL_UNSIGNED_INT_8_8_S8_S8_REV_NV : constant := 16#86DB#;  --  /usr/include/GL/glext.h:3678
   GL_DSDT_MAG_INTENSITY_NV : constant := 16#86DC#;  --  /usr/include/GL/glext.h:3679
   GL_SHADER_CONSISTENT_NV : constant := 16#86DD#;  --  /usr/include/GL/glext.h:3680
   GL_TEXTURE_SHADER_NV : constant := 16#86DE#;  --  /usr/include/GL/glext.h:3681
   GL_SHADER_OPERATION_NV : constant := 16#86DF#;  --  /usr/include/GL/glext.h:3682
   GL_CULL_MODES_NV : constant := 16#86E0#;  --  /usr/include/GL/glext.h:3683
   GL_OFFSET_TEXTURE_MATRIX_NV : constant := 16#86E1#;  --  /usr/include/GL/glext.h:3684
   GL_OFFSET_TEXTURE_SCALE_NV : constant := 16#86E2#;  --  /usr/include/GL/glext.h:3685
   GL_OFFSET_TEXTURE_BIAS_NV : constant := 16#86E3#;  --  /usr/include/GL/glext.h:3686
   --  unsupported macro: GL_OFFSET_TEXTURE_2D_MATRIX_NV GL_OFFSET_TEXTURE_MATRIX_NV
   --  unsupported macro: GL_OFFSET_TEXTURE_2D_SCALE_NV GL_OFFSET_TEXTURE_SCALE_NV
   --  unsupported macro: GL_OFFSET_TEXTURE_2D_BIAS_NV GL_OFFSET_TEXTURE_BIAS_NV

   GL_PREVIOUS_TEXTURE_INPUT_NV : constant := 16#86E4#;  --  /usr/include/GL/glext.h:3690
   GL_CONST_EYE_NV : constant := 16#86E5#;  --  /usr/include/GL/glext.h:3691
   GL_PASS_THROUGH_NV : constant := 16#86E6#;  --  /usr/include/GL/glext.h:3692
   GL_CULL_FRAGMENT_NV : constant := 16#86E7#;  --  /usr/include/GL/glext.h:3693
   GL_OFFSET_TEXTURE_2D_NV : constant := 16#86E8#;  --  /usr/include/GL/glext.h:3694
   GL_DEPENDENT_AR_TEXTURE_2D_NV : constant := 16#86E9#;  --  /usr/include/GL/glext.h:3695
   GL_DEPENDENT_GB_TEXTURE_2D_NV : constant := 16#86EA#;  --  /usr/include/GL/glext.h:3696
   GL_DOT_PRODUCT_NV : constant := 16#86EC#;  --  /usr/include/GL/glext.h:3697
   GL_DOT_PRODUCT_DEPTH_REPLACE_NV : constant := 16#86ED#;  --  /usr/include/GL/glext.h:3698
   GL_DOT_PRODUCT_TEXTURE_2D_NV : constant := 16#86EE#;  --  /usr/include/GL/glext.h:3699
   GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV : constant := 16#86F0#;  --  /usr/include/GL/glext.h:3700
   GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV : constant := 16#86F1#;  --  /usr/include/GL/glext.h:3701
   GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV : constant := 16#86F2#;  --  /usr/include/GL/glext.h:3702
   GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV : constant := 16#86F3#;  --  /usr/include/GL/glext.h:3703
   GL_HILO_NV : constant := 16#86F4#;  --  /usr/include/GL/glext.h:3704
   GL_DSDT_NV : constant := 16#86F5#;  --  /usr/include/GL/glext.h:3705
   GL_DSDT_MAG_NV : constant := 16#86F6#;  --  /usr/include/GL/glext.h:3706
   GL_DSDT_MAG_VIB_NV : constant := 16#86F7#;  --  /usr/include/GL/glext.h:3707
   GL_HILO16_NV : constant := 16#86F8#;  --  /usr/include/GL/glext.h:3708
   GL_SIGNED_HILO_NV : constant := 16#86F9#;  --  /usr/include/GL/glext.h:3709
   GL_SIGNED_HILO16_NV : constant := 16#86FA#;  --  /usr/include/GL/glext.h:3710
   GL_SIGNED_RGBA_NV : constant := 16#86FB#;  --  /usr/include/GL/glext.h:3711
   GL_SIGNED_RGBA8_NV : constant := 16#86FC#;  --  /usr/include/GL/glext.h:3712
   GL_SIGNED_RGB_NV : constant := 16#86FE#;  --  /usr/include/GL/glext.h:3713
   GL_SIGNED_RGB8_NV : constant := 16#86FF#;  --  /usr/include/GL/glext.h:3714
   GL_SIGNED_LUMINANCE_NV : constant := 16#8701#;  --  /usr/include/GL/glext.h:3715
   GL_SIGNED_LUMINANCE8_NV : constant := 16#8702#;  --  /usr/include/GL/glext.h:3716
   GL_SIGNED_LUMINANCE_ALPHA_NV : constant := 16#8703#;  --  /usr/include/GL/glext.h:3717
   GL_SIGNED_LUMINANCE8_ALPHA8_NV : constant := 16#8704#;  --  /usr/include/GL/glext.h:3718
   GL_SIGNED_ALPHA_NV : constant := 16#8705#;  --  /usr/include/GL/glext.h:3719
   GL_SIGNED_ALPHA8_NV : constant := 16#8706#;  --  /usr/include/GL/glext.h:3720
   GL_SIGNED_INTENSITY_NV : constant := 16#8707#;  --  /usr/include/GL/glext.h:3721
   GL_SIGNED_INTENSITY8_NV : constant := 16#8708#;  --  /usr/include/GL/glext.h:3722
   GL_DSDT8_NV : constant := 16#8709#;  --  /usr/include/GL/glext.h:3723
   GL_DSDT8_MAG8_NV : constant := 16#870A#;  --  /usr/include/GL/glext.h:3724
   GL_DSDT8_MAG8_INTENSITY8_NV : constant := 16#870B#;  --  /usr/include/GL/glext.h:3725
   GL_SIGNED_RGB_UNSIGNED_ALPHA_NV : constant := 16#870C#;  --  /usr/include/GL/glext.h:3726
   GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV : constant := 16#870D#;  --  /usr/include/GL/glext.h:3727
   GL_HI_SCALE_NV : constant := 16#870E#;  --  /usr/include/GL/glext.h:3728
   GL_LO_SCALE_NV : constant := 16#870F#;  --  /usr/include/GL/glext.h:3729
   GL_DS_SCALE_NV : constant := 16#8710#;  --  /usr/include/GL/glext.h:3730
   GL_DT_SCALE_NV : constant := 16#8711#;  --  /usr/include/GL/glext.h:3731
   GL_MAGNITUDE_SCALE_NV : constant := 16#8712#;  --  /usr/include/GL/glext.h:3732
   GL_VIBRANCE_SCALE_NV : constant := 16#8713#;  --  /usr/include/GL/glext.h:3733
   GL_HI_BIAS_NV : constant := 16#8714#;  --  /usr/include/GL/glext.h:3734
   GL_LO_BIAS_NV : constant := 16#8715#;  --  /usr/include/GL/glext.h:3735
   GL_DS_BIAS_NV : constant := 16#8716#;  --  /usr/include/GL/glext.h:3736
   GL_DT_BIAS_NV : constant := 16#8717#;  --  /usr/include/GL/glext.h:3737
   GL_MAGNITUDE_BIAS_NV : constant := 16#8718#;  --  /usr/include/GL/glext.h:3738
   GL_VIBRANCE_BIAS_NV : constant := 16#8719#;  --  /usr/include/GL/glext.h:3739
   GL_TEXTURE_BORDER_VALUES_NV : constant := 16#871A#;  --  /usr/include/GL/glext.h:3740
   GL_TEXTURE_HI_SIZE_NV : constant := 16#871B#;  --  /usr/include/GL/glext.h:3741
   GL_TEXTURE_LO_SIZE_NV : constant := 16#871C#;  --  /usr/include/GL/glext.h:3742
   GL_TEXTURE_DS_SIZE_NV : constant := 16#871D#;  --  /usr/include/GL/glext.h:3743
   GL_TEXTURE_DT_SIZE_NV : constant := 16#871E#;  --  /usr/include/GL/glext.h:3744
   GL_TEXTURE_MAG_SIZE_NV : constant := 16#871F#;  --  /usr/include/GL/glext.h:3745

   GL_DOT_PRODUCT_TEXTURE_3D_NV : constant := 16#86EF#;  --  /usr/include/GL/glext.h:3749

   GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV : constant := 16#8533#;  --  /usr/include/GL/glext.h:3753

   GL_VERTEX_PROGRAM_NV : constant := 16#8620#;  --  /usr/include/GL/glext.h:3757
   GL_VERTEX_STATE_PROGRAM_NV : constant := 16#8621#;  --  /usr/include/GL/glext.h:3758
   GL_ATTRIB_ARRAY_SIZE_NV : constant := 16#8623#;  --  /usr/include/GL/glext.h:3759
   GL_ATTRIB_ARRAY_STRIDE_NV : constant := 16#8624#;  --  /usr/include/GL/glext.h:3760
   GL_ATTRIB_ARRAY_TYPE_NV : constant := 16#8625#;  --  /usr/include/GL/glext.h:3761
   GL_CURRENT_ATTRIB_NV : constant := 16#8626#;  --  /usr/include/GL/glext.h:3762
   GL_PROGRAM_LENGTH_NV : constant := 16#8627#;  --  /usr/include/GL/glext.h:3763
   GL_PROGRAM_STRING_NV : constant := 16#8628#;  --  /usr/include/GL/glext.h:3764
   GL_MODELVIEW_PROJECTION_NV : constant := 16#8629#;  --  /usr/include/GL/glext.h:3765
   GL_IDENTITY_NV : constant := 16#862A#;  --  /usr/include/GL/glext.h:3766
   GL_INVERSE_NV : constant := 16#862B#;  --  /usr/include/GL/glext.h:3767
   GL_TRANSPOSE_NV : constant := 16#862C#;  --  /usr/include/GL/glext.h:3768
   GL_INVERSE_TRANSPOSE_NV : constant := 16#862D#;  --  /usr/include/GL/glext.h:3769
   GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV : constant := 16#862E#;  --  /usr/include/GL/glext.h:3770
   GL_MAX_TRACK_MATRICES_NV : constant := 16#862F#;  --  /usr/include/GL/glext.h:3771
   GL_MATRIX0_NV : constant := 16#8630#;  --  /usr/include/GL/glext.h:3772
   GL_MATRIX1_NV : constant := 16#8631#;  --  /usr/include/GL/glext.h:3773
   GL_MATRIX2_NV : constant := 16#8632#;  --  /usr/include/GL/glext.h:3774
   GL_MATRIX3_NV : constant := 16#8633#;  --  /usr/include/GL/glext.h:3775
   GL_MATRIX4_NV : constant := 16#8634#;  --  /usr/include/GL/glext.h:3776
   GL_MATRIX5_NV : constant := 16#8635#;  --  /usr/include/GL/glext.h:3777
   GL_MATRIX6_NV : constant := 16#8636#;  --  /usr/include/GL/glext.h:3778
   GL_MATRIX7_NV : constant := 16#8637#;  --  /usr/include/GL/glext.h:3779
   GL_CURRENT_MATRIX_STACK_DEPTH_NV : constant := 16#8640#;  --  /usr/include/GL/glext.h:3780
   GL_CURRENT_MATRIX_NV : constant := 16#8641#;  --  /usr/include/GL/glext.h:3781
   GL_VERTEX_PROGRAM_POINT_SIZE_NV : constant := 16#8642#;  --  /usr/include/GL/glext.h:3782
   GL_VERTEX_PROGRAM_TWO_SIDE_NV : constant := 16#8643#;  --  /usr/include/GL/glext.h:3783
   GL_PROGRAM_PARAMETER_NV : constant := 16#8644#;  --  /usr/include/GL/glext.h:3784
   GL_ATTRIB_ARRAY_POINTER_NV : constant := 16#8645#;  --  /usr/include/GL/glext.h:3785
   GL_PROGRAM_TARGET_NV : constant := 16#8646#;  --  /usr/include/GL/glext.h:3786
   GL_PROGRAM_RESIDENT_NV : constant := 16#8647#;  --  /usr/include/GL/glext.h:3787
   GL_TRACK_MATRIX_NV : constant := 16#8648#;  --  /usr/include/GL/glext.h:3788
   GL_TRACK_MATRIX_TRANSFORM_NV : constant := 16#8649#;  --  /usr/include/GL/glext.h:3789
   GL_VERTEX_PROGRAM_BINDING_NV : constant := 16#864A#;  --  /usr/include/GL/glext.h:3790
   GL_PROGRAM_ERROR_POSITION_NV : constant := 16#864B#;  --  /usr/include/GL/glext.h:3791
   GL_VERTEX_ATTRIB_ARRAY0_NV : constant := 16#8650#;  --  /usr/include/GL/glext.h:3792
   GL_VERTEX_ATTRIB_ARRAY1_NV : constant := 16#8651#;  --  /usr/include/GL/glext.h:3793
   GL_VERTEX_ATTRIB_ARRAY2_NV : constant := 16#8652#;  --  /usr/include/GL/glext.h:3794
   GL_VERTEX_ATTRIB_ARRAY3_NV : constant := 16#8653#;  --  /usr/include/GL/glext.h:3795
   GL_VERTEX_ATTRIB_ARRAY4_NV : constant := 16#8654#;  --  /usr/include/GL/glext.h:3796
   GL_VERTEX_ATTRIB_ARRAY5_NV : constant := 16#8655#;  --  /usr/include/GL/glext.h:3797
   GL_VERTEX_ATTRIB_ARRAY6_NV : constant := 16#8656#;  --  /usr/include/GL/glext.h:3798
   GL_VERTEX_ATTRIB_ARRAY7_NV : constant := 16#8657#;  --  /usr/include/GL/glext.h:3799
   GL_VERTEX_ATTRIB_ARRAY8_NV : constant := 16#8658#;  --  /usr/include/GL/glext.h:3800
   GL_VERTEX_ATTRIB_ARRAY9_NV : constant := 16#8659#;  --  /usr/include/GL/glext.h:3801
   GL_VERTEX_ATTRIB_ARRAY10_NV : constant := 16#865A#;  --  /usr/include/GL/glext.h:3802
   GL_VERTEX_ATTRIB_ARRAY11_NV : constant := 16#865B#;  --  /usr/include/GL/glext.h:3803
   GL_VERTEX_ATTRIB_ARRAY12_NV : constant := 16#865C#;  --  /usr/include/GL/glext.h:3804
   GL_VERTEX_ATTRIB_ARRAY13_NV : constant := 16#865D#;  --  /usr/include/GL/glext.h:3805
   GL_VERTEX_ATTRIB_ARRAY14_NV : constant := 16#865E#;  --  /usr/include/GL/glext.h:3806
   GL_VERTEX_ATTRIB_ARRAY15_NV : constant := 16#865F#;  --  /usr/include/GL/glext.h:3807
   GL_MAP1_VERTEX_ATTRIB0_4_NV : constant := 16#8660#;  --  /usr/include/GL/glext.h:3808
   GL_MAP1_VERTEX_ATTRIB1_4_NV : constant := 16#8661#;  --  /usr/include/GL/glext.h:3809
   GL_MAP1_VERTEX_ATTRIB2_4_NV : constant := 16#8662#;  --  /usr/include/GL/glext.h:3810
   GL_MAP1_VERTEX_ATTRIB3_4_NV : constant := 16#8663#;  --  /usr/include/GL/glext.h:3811
   GL_MAP1_VERTEX_ATTRIB4_4_NV : constant := 16#8664#;  --  /usr/include/GL/glext.h:3812
   GL_MAP1_VERTEX_ATTRIB5_4_NV : constant := 16#8665#;  --  /usr/include/GL/glext.h:3813
   GL_MAP1_VERTEX_ATTRIB6_4_NV : constant := 16#8666#;  --  /usr/include/GL/glext.h:3814
   GL_MAP1_VERTEX_ATTRIB7_4_NV : constant := 16#8667#;  --  /usr/include/GL/glext.h:3815
   GL_MAP1_VERTEX_ATTRIB8_4_NV : constant := 16#8668#;  --  /usr/include/GL/glext.h:3816
   GL_MAP1_VERTEX_ATTRIB9_4_NV : constant := 16#8669#;  --  /usr/include/GL/glext.h:3817
   GL_MAP1_VERTEX_ATTRIB10_4_NV : constant := 16#866A#;  --  /usr/include/GL/glext.h:3818
   GL_MAP1_VERTEX_ATTRIB11_4_NV : constant := 16#866B#;  --  /usr/include/GL/glext.h:3819
   GL_MAP1_VERTEX_ATTRIB12_4_NV : constant := 16#866C#;  --  /usr/include/GL/glext.h:3820
   GL_MAP1_VERTEX_ATTRIB13_4_NV : constant := 16#866D#;  --  /usr/include/GL/glext.h:3821
   GL_MAP1_VERTEX_ATTRIB14_4_NV : constant := 16#866E#;  --  /usr/include/GL/glext.h:3822
   GL_MAP1_VERTEX_ATTRIB15_4_NV : constant := 16#866F#;  --  /usr/include/GL/glext.h:3823
   GL_MAP2_VERTEX_ATTRIB0_4_NV : constant := 16#8670#;  --  /usr/include/GL/glext.h:3824
   GL_MAP2_VERTEX_ATTRIB1_4_NV : constant := 16#8671#;  --  /usr/include/GL/glext.h:3825
   GL_MAP2_VERTEX_ATTRIB2_4_NV : constant := 16#8672#;  --  /usr/include/GL/glext.h:3826
   GL_MAP2_VERTEX_ATTRIB3_4_NV : constant := 16#8673#;  --  /usr/include/GL/glext.h:3827
   GL_MAP2_VERTEX_ATTRIB4_4_NV : constant := 16#8674#;  --  /usr/include/GL/glext.h:3828
   GL_MAP2_VERTEX_ATTRIB5_4_NV : constant := 16#8675#;  --  /usr/include/GL/glext.h:3829
   GL_MAP2_VERTEX_ATTRIB6_4_NV : constant := 16#8676#;  --  /usr/include/GL/glext.h:3830
   GL_MAP2_VERTEX_ATTRIB7_4_NV : constant := 16#8677#;  --  /usr/include/GL/glext.h:3831
   GL_MAP2_VERTEX_ATTRIB8_4_NV : constant := 16#8678#;  --  /usr/include/GL/glext.h:3832
   GL_MAP2_VERTEX_ATTRIB9_4_NV : constant := 16#8679#;  --  /usr/include/GL/glext.h:3833
   GL_MAP2_VERTEX_ATTRIB10_4_NV : constant := 16#867A#;  --  /usr/include/GL/glext.h:3834
   GL_MAP2_VERTEX_ATTRIB11_4_NV : constant := 16#867B#;  --  /usr/include/GL/glext.h:3835
   GL_MAP2_VERTEX_ATTRIB12_4_NV : constant := 16#867C#;  --  /usr/include/GL/glext.h:3836
   GL_MAP2_VERTEX_ATTRIB13_4_NV : constant := 16#867D#;  --  /usr/include/GL/glext.h:3837
   GL_MAP2_VERTEX_ATTRIB14_4_NV : constant := 16#867E#;  --  /usr/include/GL/glext.h:3838
   GL_MAP2_VERTEX_ATTRIB15_4_NV : constant := 16#867F#;  --  /usr/include/GL/glext.h:3839

   GL_TEXTURE_MAX_CLAMP_S_SGIX : constant := 16#8369#;  --  /usr/include/GL/glext.h:3843
   GL_TEXTURE_MAX_CLAMP_T_SGIX : constant := 16#836A#;  --  /usr/include/GL/glext.h:3844
   GL_TEXTURE_MAX_CLAMP_R_SGIX : constant := 16#836B#;  --  /usr/include/GL/glext.h:3845

   GL_SCALEBIAS_HINT_SGIX : constant := 16#8322#;  --  /usr/include/GL/glext.h:3849

   GL_INTERLACE_OML : constant := 16#8980#;  --  /usr/include/GL/glext.h:3853
   GL_INTERLACE_READ_OML : constant := 16#8981#;  --  /usr/include/GL/glext.h:3854

   GL_FORMAT_SUBSAMPLE_24_24_OML : constant := 16#8982#;  --  /usr/include/GL/glext.h:3858
   GL_FORMAT_SUBSAMPLE_244_244_OML : constant := 16#8983#;  --  /usr/include/GL/glext.h:3859

   GL_PACK_RESAMPLE_OML : constant := 16#8984#;  --  /usr/include/GL/glext.h:3863
   GL_UNPACK_RESAMPLE_OML : constant := 16#8985#;  --  /usr/include/GL/glext.h:3864
   GL_RESAMPLE_REPLICATE_OML : constant := 16#8986#;  --  /usr/include/GL/glext.h:3865
   GL_RESAMPLE_ZERO_FILL_OML : constant := 16#8987#;  --  /usr/include/GL/glext.h:3866
   GL_RESAMPLE_AVERAGE_OML : constant := 16#8988#;  --  /usr/include/GL/glext.h:3867
   GL_RESAMPLE_DECIMATE_OML : constant := 16#8989#;  --  /usr/include/GL/glext.h:3868

   GL_DEPTH_STENCIL_TO_RGBA_NV : constant := 16#886E#;  --  /usr/include/GL/glext.h:3872
   GL_DEPTH_STENCIL_TO_BGRA_NV : constant := 16#886F#;  --  /usr/include/GL/glext.h:3873

   GL_BUMP_ROT_MATRIX_ATI : constant := 16#8775#;  --  /usr/include/GL/glext.h:3877
   GL_BUMP_ROT_MATRIX_SIZE_ATI : constant := 16#8776#;  --  /usr/include/GL/glext.h:3878
   GL_BUMP_NUM_TEX_UNITS_ATI : constant := 16#8777#;  --  /usr/include/GL/glext.h:3879
   GL_BUMP_TEX_UNITS_ATI : constant := 16#8778#;  --  /usr/include/GL/glext.h:3880
   GL_DUDV_ATI : constant := 16#8779#;  --  /usr/include/GL/glext.h:3881
   GL_DU8DV8_ATI : constant := 16#877A#;  --  /usr/include/GL/glext.h:3882
   GL_BUMP_ENVMAP_ATI : constant := 16#877B#;  --  /usr/include/GL/glext.h:3883
   GL_BUMP_TARGET_ATI : constant := 16#877C#;  --  /usr/include/GL/glext.h:3884

   GL_FRAGMENT_SHADER_ATI : constant := 16#8920#;  --  /usr/include/GL/glext.h:3888
   GL_REG_0_ATI : constant := 16#8921#;  --  /usr/include/GL/glext.h:3889
   GL_REG_1_ATI : constant := 16#8922#;  --  /usr/include/GL/glext.h:3890
   GL_REG_2_ATI : constant := 16#8923#;  --  /usr/include/GL/glext.h:3891
   GL_REG_3_ATI : constant := 16#8924#;  --  /usr/include/GL/glext.h:3892
   GL_REG_4_ATI : constant := 16#8925#;  --  /usr/include/GL/glext.h:3893
   GL_REG_5_ATI : constant := 16#8926#;  --  /usr/include/GL/glext.h:3894
   GL_REG_6_ATI : constant := 16#8927#;  --  /usr/include/GL/glext.h:3895
   GL_REG_7_ATI : constant := 16#8928#;  --  /usr/include/GL/glext.h:3896
   GL_REG_8_ATI : constant := 16#8929#;  --  /usr/include/GL/glext.h:3897
   GL_REG_9_ATI : constant := 16#892A#;  --  /usr/include/GL/glext.h:3898
   GL_REG_10_ATI : constant := 16#892B#;  --  /usr/include/GL/glext.h:3899
   GL_REG_11_ATI : constant := 16#892C#;  --  /usr/include/GL/glext.h:3900
   GL_REG_12_ATI : constant := 16#892D#;  --  /usr/include/GL/glext.h:3901
   GL_REG_13_ATI : constant := 16#892E#;  --  /usr/include/GL/glext.h:3902
   GL_REG_14_ATI : constant := 16#892F#;  --  /usr/include/GL/glext.h:3903
   GL_REG_15_ATI : constant := 16#8930#;  --  /usr/include/GL/glext.h:3904
   GL_REG_16_ATI : constant := 16#8931#;  --  /usr/include/GL/glext.h:3905
   GL_REG_17_ATI : constant := 16#8932#;  --  /usr/include/GL/glext.h:3906
   GL_REG_18_ATI : constant := 16#8933#;  --  /usr/include/GL/glext.h:3907
   GL_REG_19_ATI : constant := 16#8934#;  --  /usr/include/GL/glext.h:3908
   GL_REG_20_ATI : constant := 16#8935#;  --  /usr/include/GL/glext.h:3909
   GL_REG_21_ATI : constant := 16#8936#;  --  /usr/include/GL/glext.h:3910
   GL_REG_22_ATI : constant := 16#8937#;  --  /usr/include/GL/glext.h:3911
   GL_REG_23_ATI : constant := 16#8938#;  --  /usr/include/GL/glext.h:3912
   GL_REG_24_ATI : constant := 16#8939#;  --  /usr/include/GL/glext.h:3913
   GL_REG_25_ATI : constant := 16#893A#;  --  /usr/include/GL/glext.h:3914
   GL_REG_26_ATI : constant := 16#893B#;  --  /usr/include/GL/glext.h:3915
   GL_REG_27_ATI : constant := 16#893C#;  --  /usr/include/GL/glext.h:3916
   GL_REG_28_ATI : constant := 16#893D#;  --  /usr/include/GL/glext.h:3917
   GL_REG_29_ATI : constant := 16#893E#;  --  /usr/include/GL/glext.h:3918
   GL_REG_30_ATI : constant := 16#893F#;  --  /usr/include/GL/glext.h:3919
   GL_REG_31_ATI : constant := 16#8940#;  --  /usr/include/GL/glext.h:3920
   GL_CON_0_ATI : constant := 16#8941#;  --  /usr/include/GL/glext.h:3921
   GL_CON_1_ATI : constant := 16#8942#;  --  /usr/include/GL/glext.h:3922
   GL_CON_2_ATI : constant := 16#8943#;  --  /usr/include/GL/glext.h:3923
   GL_CON_3_ATI : constant := 16#8944#;  --  /usr/include/GL/glext.h:3924
   GL_CON_4_ATI : constant := 16#8945#;  --  /usr/include/GL/glext.h:3925
   GL_CON_5_ATI : constant := 16#8946#;  --  /usr/include/GL/glext.h:3926
   GL_CON_6_ATI : constant := 16#8947#;  --  /usr/include/GL/glext.h:3927
   GL_CON_7_ATI : constant := 16#8948#;  --  /usr/include/GL/glext.h:3928
   GL_CON_8_ATI : constant := 16#8949#;  --  /usr/include/GL/glext.h:3929
   GL_CON_9_ATI : constant := 16#894A#;  --  /usr/include/GL/glext.h:3930
   GL_CON_10_ATI : constant := 16#894B#;  --  /usr/include/GL/glext.h:3931
   GL_CON_11_ATI : constant := 16#894C#;  --  /usr/include/GL/glext.h:3932
   GL_CON_12_ATI : constant := 16#894D#;  --  /usr/include/GL/glext.h:3933
   GL_CON_13_ATI : constant := 16#894E#;  --  /usr/include/GL/glext.h:3934
   GL_CON_14_ATI : constant := 16#894F#;  --  /usr/include/GL/glext.h:3935
   GL_CON_15_ATI : constant := 16#8950#;  --  /usr/include/GL/glext.h:3936
   GL_CON_16_ATI : constant := 16#8951#;  --  /usr/include/GL/glext.h:3937
   GL_CON_17_ATI : constant := 16#8952#;  --  /usr/include/GL/glext.h:3938
   GL_CON_18_ATI : constant := 16#8953#;  --  /usr/include/GL/glext.h:3939
   GL_CON_19_ATI : constant := 16#8954#;  --  /usr/include/GL/glext.h:3940
   GL_CON_20_ATI : constant := 16#8955#;  --  /usr/include/GL/glext.h:3941
   GL_CON_21_ATI : constant := 16#8956#;  --  /usr/include/GL/glext.h:3942
   GL_CON_22_ATI : constant := 16#8957#;  --  /usr/include/GL/glext.h:3943
   GL_CON_23_ATI : constant := 16#8958#;  --  /usr/include/GL/glext.h:3944
   GL_CON_24_ATI : constant := 16#8959#;  --  /usr/include/GL/glext.h:3945
   GL_CON_25_ATI : constant := 16#895A#;  --  /usr/include/GL/glext.h:3946
   GL_CON_26_ATI : constant := 16#895B#;  --  /usr/include/GL/glext.h:3947
   GL_CON_27_ATI : constant := 16#895C#;  --  /usr/include/GL/glext.h:3948
   GL_CON_28_ATI : constant := 16#895D#;  --  /usr/include/GL/glext.h:3949
   GL_CON_29_ATI : constant := 16#895E#;  --  /usr/include/GL/glext.h:3950
   GL_CON_30_ATI : constant := 16#895F#;  --  /usr/include/GL/glext.h:3951
   GL_CON_31_ATI : constant := 16#8960#;  --  /usr/include/GL/glext.h:3952
   GL_MOV_ATI : constant := 16#8961#;  --  /usr/include/GL/glext.h:3953
   GL_ADD_ATI : constant := 16#8963#;  --  /usr/include/GL/glext.h:3954
   GL_MUL_ATI : constant := 16#8964#;  --  /usr/include/GL/glext.h:3955
   GL_SUB_ATI : constant := 16#8965#;  --  /usr/include/GL/glext.h:3956
   GL_DOT3_ATI : constant := 16#8966#;  --  /usr/include/GL/glext.h:3957
   GL_DOT4_ATI : constant := 16#8967#;  --  /usr/include/GL/glext.h:3958
   GL_MAD_ATI : constant := 16#8968#;  --  /usr/include/GL/glext.h:3959
   GL_LERP_ATI : constant := 16#8969#;  --  /usr/include/GL/glext.h:3960
   GL_CND_ATI : constant := 16#896A#;  --  /usr/include/GL/glext.h:3961
   GL_CND0_ATI : constant := 16#896B#;  --  /usr/include/GL/glext.h:3962
   GL_DOT2_ADD_ATI : constant := 16#896C#;  --  /usr/include/GL/glext.h:3963
   GL_SECONDARY_INTERPOLATOR_ATI : constant := 16#896D#;  --  /usr/include/GL/glext.h:3964
   GL_NUM_FRAGMENT_REGISTERS_ATI : constant := 16#896E#;  --  /usr/include/GL/glext.h:3965
   GL_NUM_FRAGMENT_CONSTANTS_ATI : constant := 16#896F#;  --  /usr/include/GL/glext.h:3966
   GL_NUM_PASSES_ATI : constant := 16#8970#;  --  /usr/include/GL/glext.h:3967
   GL_NUM_INSTRUCTIONS_PER_PASS_ATI : constant := 16#8971#;  --  /usr/include/GL/glext.h:3968
   GL_NUM_INSTRUCTIONS_TOTAL_ATI : constant := 16#8972#;  --  /usr/include/GL/glext.h:3969
   GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI : constant := 16#8973#;  --  /usr/include/GL/glext.h:3970
   GL_NUM_LOOPBACK_COMPONENTS_ATI : constant := 16#8974#;  --  /usr/include/GL/glext.h:3971
   GL_COLOR_ALPHA_PAIRING_ATI : constant := 16#8975#;  --  /usr/include/GL/glext.h:3972
   GL_SWIZZLE_STR_ATI : constant := 16#8976#;  --  /usr/include/GL/glext.h:3973
   GL_SWIZZLE_STQ_ATI : constant := 16#8977#;  --  /usr/include/GL/glext.h:3974
   GL_SWIZZLE_STR_DR_ATI : constant := 16#8978#;  --  /usr/include/GL/glext.h:3975
   GL_SWIZZLE_STQ_DQ_ATI : constant := 16#8979#;  --  /usr/include/GL/glext.h:3976
   GL_SWIZZLE_STRQ_ATI : constant := 16#897A#;  --  /usr/include/GL/glext.h:3977
   GL_SWIZZLE_STRQ_DQ_ATI : constant := 16#897B#;  --  /usr/include/GL/glext.h:3978
   GL_RED_BIT_ATI : constant := 16#00000001#;  --  /usr/include/GL/glext.h:3979
   GL_GREEN_BIT_ATI : constant := 16#00000002#;  --  /usr/include/GL/glext.h:3980
   GL_BLUE_BIT_ATI : constant := 16#00000004#;  --  /usr/include/GL/glext.h:3981
   GL_2X_BIT_ATI : constant := 16#00000001#;  --  /usr/include/GL/glext.h:3982
   GL_4X_BIT_ATI : constant := 16#00000002#;  --  /usr/include/GL/glext.h:3983
   GL_8X_BIT_ATI : constant := 16#00000004#;  --  /usr/include/GL/glext.h:3984
   GL_HALF_BIT_ATI : constant := 16#00000008#;  --  /usr/include/GL/glext.h:3985
   GL_QUARTER_BIT_ATI : constant := 16#00000010#;  --  /usr/include/GL/glext.h:3986
   GL_EIGHTH_BIT_ATI : constant := 16#00000020#;  --  /usr/include/GL/glext.h:3987
   GL_SATURATE_BIT_ATI : constant := 16#00000040#;  --  /usr/include/GL/glext.h:3988
   GL_COMP_BIT_ATI : constant := 16#00000002#;  --  /usr/include/GL/glext.h:3989
   GL_NEGATE_BIT_ATI : constant := 16#00000004#;  --  /usr/include/GL/glext.h:3990
   GL_BIAS_BIT_ATI : constant := 16#00000008#;  --  /usr/include/GL/glext.h:3991

   GL_PN_TRIANGLES_ATI : constant := 16#87F0#;  --  /usr/include/GL/glext.h:3995
   GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI : constant := 16#87F1#;  --  /usr/include/GL/glext.h:3996
   GL_PN_TRIANGLES_POINT_MODE_ATI : constant := 16#87F2#;  --  /usr/include/GL/glext.h:3997
   GL_PN_TRIANGLES_NORMAL_MODE_ATI : constant := 16#87F3#;  --  /usr/include/GL/glext.h:3998
   GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI : constant := 16#87F4#;  --  /usr/include/GL/glext.h:3999
   GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI : constant := 16#87F5#;  --  /usr/include/GL/glext.h:4000
   GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI : constant := 16#87F6#;  --  /usr/include/GL/glext.h:4001
   GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI : constant := 16#87F7#;  --  /usr/include/GL/glext.h:4002
   GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI : constant := 16#87F8#;  --  /usr/include/GL/glext.h:4003

   GL_STATIC_ATI : constant := 16#8760#;  --  /usr/include/GL/glext.h:4007
   GL_DYNAMIC_ATI : constant := 16#8761#;  --  /usr/include/GL/glext.h:4008
   GL_PRESERVE_ATI : constant := 16#8762#;  --  /usr/include/GL/glext.h:4009
   GL_DISCARD_ATI : constant := 16#8763#;  --  /usr/include/GL/glext.h:4010
   GL_OBJECT_BUFFER_SIZE_ATI : constant := 16#8764#;  --  /usr/include/GL/glext.h:4011
   GL_OBJECT_BUFFER_USAGE_ATI : constant := 16#8765#;  --  /usr/include/GL/glext.h:4012
   GL_ARRAY_OBJECT_BUFFER_ATI : constant := 16#8766#;  --  /usr/include/GL/glext.h:4013
   GL_ARRAY_OBJECT_OFFSET_ATI : constant := 16#8767#;  --  /usr/include/GL/glext.h:4014

   GL_VERTEX_SHADER_EXT : constant := 16#8780#;  --  /usr/include/GL/glext.h:4018
   GL_VERTEX_SHADER_BINDING_EXT : constant := 16#8781#;  --  /usr/include/GL/glext.h:4019
   GL_OP_INDEX_EXT : constant := 16#8782#;  --  /usr/include/GL/glext.h:4020
   GL_OP_NEGATE_EXT : constant := 16#8783#;  --  /usr/include/GL/glext.h:4021
   GL_OP_DOT3_EXT : constant := 16#8784#;  --  /usr/include/GL/glext.h:4022
   GL_OP_DOT4_EXT : constant := 16#8785#;  --  /usr/include/GL/glext.h:4023
   GL_OP_MUL_EXT : constant := 16#8786#;  --  /usr/include/GL/glext.h:4024
   GL_OP_ADD_EXT : constant := 16#8787#;  --  /usr/include/GL/glext.h:4025
   GL_OP_MADD_EXT : constant := 16#8788#;  --  /usr/include/GL/glext.h:4026
   GL_OP_FRAC_EXT : constant := 16#8789#;  --  /usr/include/GL/glext.h:4027
   GL_OP_MAX_EXT : constant := 16#878A#;  --  /usr/include/GL/glext.h:4028
   GL_OP_MIN_EXT : constant := 16#878B#;  --  /usr/include/GL/glext.h:4029
   GL_OP_SET_GE_EXT : constant := 16#878C#;  --  /usr/include/GL/glext.h:4030
   GL_OP_SET_LT_EXT : constant := 16#878D#;  --  /usr/include/GL/glext.h:4031
   GL_OP_CLAMP_EXT : constant := 16#878E#;  --  /usr/include/GL/glext.h:4032
   GL_OP_FLOOR_EXT : constant := 16#878F#;  --  /usr/include/GL/glext.h:4033
   GL_OP_ROUND_EXT : constant := 16#8790#;  --  /usr/include/GL/glext.h:4034
   GL_OP_EXP_BASE_2_EXT : constant := 16#8791#;  --  /usr/include/GL/glext.h:4035
   GL_OP_LOG_BASE_2_EXT : constant := 16#8792#;  --  /usr/include/GL/glext.h:4036
   GL_OP_POWER_EXT : constant := 16#8793#;  --  /usr/include/GL/glext.h:4037
   GL_OP_RECIP_EXT : constant := 16#8794#;  --  /usr/include/GL/glext.h:4038
   GL_OP_RECIP_SQRT_EXT : constant := 16#8795#;  --  /usr/include/GL/glext.h:4039
   GL_OP_SUB_EXT : constant := 16#8796#;  --  /usr/include/GL/glext.h:4040
   GL_OP_CROSS_PRODUCT_EXT : constant := 16#8797#;  --  /usr/include/GL/glext.h:4041
   GL_OP_MULTIPLY_MATRIX_EXT : constant := 16#8798#;  --  /usr/include/GL/glext.h:4042
   GL_OP_MOV_EXT : constant := 16#8799#;  --  /usr/include/GL/glext.h:4043
   GL_OUTPUT_VERTEX_EXT : constant := 16#879A#;  --  /usr/include/GL/glext.h:4044
   GL_OUTPUT_COLOR0_EXT : constant := 16#879B#;  --  /usr/include/GL/glext.h:4045
   GL_OUTPUT_COLOR1_EXT : constant := 16#879C#;  --  /usr/include/GL/glext.h:4046
   GL_OUTPUT_TEXTURE_COORD0_EXT : constant := 16#879D#;  --  /usr/include/GL/glext.h:4047
   GL_OUTPUT_TEXTURE_COORD1_EXT : constant := 16#879E#;  --  /usr/include/GL/glext.h:4048
   GL_OUTPUT_TEXTURE_COORD2_EXT : constant := 16#879F#;  --  /usr/include/GL/glext.h:4049
   GL_OUTPUT_TEXTURE_COORD3_EXT : constant := 16#87A0#;  --  /usr/include/GL/glext.h:4050
   GL_OUTPUT_TEXTURE_COORD4_EXT : constant := 16#87A1#;  --  /usr/include/GL/glext.h:4051
   GL_OUTPUT_TEXTURE_COORD5_EXT : constant := 16#87A2#;  --  /usr/include/GL/glext.h:4052
   GL_OUTPUT_TEXTURE_COORD6_EXT : constant := 16#87A3#;  --  /usr/include/GL/glext.h:4053
   GL_OUTPUT_TEXTURE_COORD7_EXT : constant := 16#87A4#;  --  /usr/include/GL/glext.h:4054
   GL_OUTPUT_TEXTURE_COORD8_EXT : constant := 16#87A5#;  --  /usr/include/GL/glext.h:4055
   GL_OUTPUT_TEXTURE_COORD9_EXT : constant := 16#87A6#;  --  /usr/include/GL/glext.h:4056
   GL_OUTPUT_TEXTURE_COORD10_EXT : constant := 16#87A7#;  --  /usr/include/GL/glext.h:4057
   GL_OUTPUT_TEXTURE_COORD11_EXT : constant := 16#87A8#;  --  /usr/include/GL/glext.h:4058
   GL_OUTPUT_TEXTURE_COORD12_EXT : constant := 16#87A9#;  --  /usr/include/GL/glext.h:4059
   GL_OUTPUT_TEXTURE_COORD13_EXT : constant := 16#87AA#;  --  /usr/include/GL/glext.h:4060
   GL_OUTPUT_TEXTURE_COORD14_EXT : constant := 16#87AB#;  --  /usr/include/GL/glext.h:4061
   GL_OUTPUT_TEXTURE_COORD15_EXT : constant := 16#87AC#;  --  /usr/include/GL/glext.h:4062
   GL_OUTPUT_TEXTURE_COORD16_EXT : constant := 16#87AD#;  --  /usr/include/GL/glext.h:4063
   GL_OUTPUT_TEXTURE_COORD17_EXT : constant := 16#87AE#;  --  /usr/include/GL/glext.h:4064
   GL_OUTPUT_TEXTURE_COORD18_EXT : constant := 16#87AF#;  --  /usr/include/GL/glext.h:4065
   GL_OUTPUT_TEXTURE_COORD19_EXT : constant := 16#87B0#;  --  /usr/include/GL/glext.h:4066
   GL_OUTPUT_TEXTURE_COORD20_EXT : constant := 16#87B1#;  --  /usr/include/GL/glext.h:4067
   GL_OUTPUT_TEXTURE_COORD21_EXT : constant := 16#87B2#;  --  /usr/include/GL/glext.h:4068
   GL_OUTPUT_TEXTURE_COORD22_EXT : constant := 16#87B3#;  --  /usr/include/GL/glext.h:4069
   GL_OUTPUT_TEXTURE_COORD23_EXT : constant := 16#87B4#;  --  /usr/include/GL/glext.h:4070
   GL_OUTPUT_TEXTURE_COORD24_EXT : constant := 16#87B5#;  --  /usr/include/GL/glext.h:4071
   GL_OUTPUT_TEXTURE_COORD25_EXT : constant := 16#87B6#;  --  /usr/include/GL/glext.h:4072
   GL_OUTPUT_TEXTURE_COORD26_EXT : constant := 16#87B7#;  --  /usr/include/GL/glext.h:4073
   GL_OUTPUT_TEXTURE_COORD27_EXT : constant := 16#87B8#;  --  /usr/include/GL/glext.h:4074
   GL_OUTPUT_TEXTURE_COORD28_EXT : constant := 16#87B9#;  --  /usr/include/GL/glext.h:4075
   GL_OUTPUT_TEXTURE_COORD29_EXT : constant := 16#87BA#;  --  /usr/include/GL/glext.h:4076
   GL_OUTPUT_TEXTURE_COORD30_EXT : constant := 16#87BB#;  --  /usr/include/GL/glext.h:4077
   GL_OUTPUT_TEXTURE_COORD31_EXT : constant := 16#87BC#;  --  /usr/include/GL/glext.h:4078
   GL_OUTPUT_FOG_EXT : constant := 16#87BD#;  --  /usr/include/GL/glext.h:4079
   GL_SCALAR_EXT : constant := 16#87BE#;  --  /usr/include/GL/glext.h:4080
   GL_VECTOR_EXT : constant := 16#87BF#;  --  /usr/include/GL/glext.h:4081
   GL_MATRIX_EXT : constant := 16#87C0#;  --  /usr/include/GL/glext.h:4082
   GL_VARIANT_EXT : constant := 16#87C1#;  --  /usr/include/GL/glext.h:4083
   GL_INVARIANT_EXT : constant := 16#87C2#;  --  /usr/include/GL/glext.h:4084
   GL_LOCAL_CONSTANT_EXT : constant := 16#87C3#;  --  /usr/include/GL/glext.h:4085
   GL_LOCAL_EXT : constant := 16#87C4#;  --  /usr/include/GL/glext.h:4086
   GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT : constant := 16#87C5#;  --  /usr/include/GL/glext.h:4087
   GL_MAX_VERTEX_SHADER_VARIANTS_EXT : constant := 16#87C6#;  --  /usr/include/GL/glext.h:4088
   GL_MAX_VERTEX_SHADER_INVARIANTS_EXT : constant := 16#87C7#;  --  /usr/include/GL/glext.h:4089
   GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT : constant := 16#87C8#;  --  /usr/include/GL/glext.h:4090
   GL_MAX_VERTEX_SHADER_LOCALS_EXT : constant := 16#87C9#;  --  /usr/include/GL/glext.h:4091
   GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT : constant := 16#87CA#;  --  /usr/include/GL/glext.h:4092
   GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT : constant := 16#87CB#;  --  /usr/include/GL/glext.h:4093
   GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT : constant := 16#87CC#;  --  /usr/include/GL/glext.h:4094
   GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT : constant := 16#87CD#;  --  /usr/include/GL/glext.h:4095
   GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT : constant := 16#87CE#;  --  /usr/include/GL/glext.h:4096
   GL_VERTEX_SHADER_INSTRUCTIONS_EXT : constant := 16#87CF#;  --  /usr/include/GL/glext.h:4097
   GL_VERTEX_SHADER_VARIANTS_EXT : constant := 16#87D0#;  --  /usr/include/GL/glext.h:4098
   GL_VERTEX_SHADER_INVARIANTS_EXT : constant := 16#87D1#;  --  /usr/include/GL/glext.h:4099
   GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT : constant := 16#87D2#;  --  /usr/include/GL/glext.h:4100
   GL_VERTEX_SHADER_LOCALS_EXT : constant := 16#87D3#;  --  /usr/include/GL/glext.h:4101
   GL_VERTEX_SHADER_OPTIMIZED_EXT : constant := 16#87D4#;  --  /usr/include/GL/glext.h:4102
   GL_X_EXT : constant := 16#87D5#;  --  /usr/include/GL/glext.h:4103
   GL_Y_EXT : constant := 16#87D6#;  --  /usr/include/GL/glext.h:4104
   GL_Z_EXT : constant := 16#87D7#;  --  /usr/include/GL/glext.h:4105
   GL_W_EXT : constant := 16#87D8#;  --  /usr/include/GL/glext.h:4106
   GL_NEGATIVE_X_EXT : constant := 16#87D9#;  --  /usr/include/GL/glext.h:4107
   GL_NEGATIVE_Y_EXT : constant := 16#87DA#;  --  /usr/include/GL/glext.h:4108
   GL_NEGATIVE_Z_EXT : constant := 16#87DB#;  --  /usr/include/GL/glext.h:4109
   GL_NEGATIVE_W_EXT : constant := 16#87DC#;  --  /usr/include/GL/glext.h:4110
   GL_ZERO_EXT : constant := 16#87DD#;  --  /usr/include/GL/glext.h:4111
   GL_ONE_EXT : constant := 16#87DE#;  --  /usr/include/GL/glext.h:4112
   GL_NEGATIVE_ONE_EXT : constant := 16#87DF#;  --  /usr/include/GL/glext.h:4113
   GL_NORMALIZED_RANGE_EXT : constant := 16#87E0#;  --  /usr/include/GL/glext.h:4114
   GL_FULL_RANGE_EXT : constant := 16#87E1#;  --  /usr/include/GL/glext.h:4115
   GL_CURRENT_VERTEX_EXT : constant := 16#87E2#;  --  /usr/include/GL/glext.h:4116
   GL_MVP_MATRIX_EXT : constant := 16#87E3#;  --  /usr/include/GL/glext.h:4117
   GL_VARIANT_VALUE_EXT : constant := 16#87E4#;  --  /usr/include/GL/glext.h:4118
   GL_VARIANT_DATATYPE_EXT : constant := 16#87E5#;  --  /usr/include/GL/glext.h:4119
   GL_VARIANT_ARRAY_STRIDE_EXT : constant := 16#87E6#;  --  /usr/include/GL/glext.h:4120
   GL_VARIANT_ARRAY_TYPE_EXT : constant := 16#87E7#;  --  /usr/include/GL/glext.h:4121
   GL_VARIANT_ARRAY_EXT : constant := 16#87E8#;  --  /usr/include/GL/glext.h:4122
   GL_VARIANT_ARRAY_POINTER_EXT : constant := 16#87E9#;  --  /usr/include/GL/glext.h:4123
   GL_INVARIANT_VALUE_EXT : constant := 16#87EA#;  --  /usr/include/GL/glext.h:4124
   GL_INVARIANT_DATATYPE_EXT : constant := 16#87EB#;  --  /usr/include/GL/glext.h:4125
   GL_LOCAL_CONSTANT_VALUE_EXT : constant := 16#87EC#;  --  /usr/include/GL/glext.h:4126
   GL_LOCAL_CONSTANT_DATATYPE_EXT : constant := 16#87ED#;  --  /usr/include/GL/glext.h:4127

   GL_MAX_VERTEX_STREAMS_ATI : constant := 16#876B#;  --  /usr/include/GL/glext.h:4131
   GL_VERTEX_STREAM0_ATI : constant := 16#876C#;  --  /usr/include/GL/glext.h:4132
   GL_VERTEX_STREAM1_ATI : constant := 16#876D#;  --  /usr/include/GL/glext.h:4133
   GL_VERTEX_STREAM2_ATI : constant := 16#876E#;  --  /usr/include/GL/glext.h:4134
   GL_VERTEX_STREAM3_ATI : constant := 16#876F#;  --  /usr/include/GL/glext.h:4135
   GL_VERTEX_STREAM4_ATI : constant := 16#8770#;  --  /usr/include/GL/glext.h:4136
   GL_VERTEX_STREAM5_ATI : constant := 16#8771#;  --  /usr/include/GL/glext.h:4137
   GL_VERTEX_STREAM6_ATI : constant := 16#8772#;  --  /usr/include/GL/glext.h:4138
   GL_VERTEX_STREAM7_ATI : constant := 16#8773#;  --  /usr/include/GL/glext.h:4139
   GL_VERTEX_SOURCE_ATI : constant := 16#8774#;  --  /usr/include/GL/glext.h:4140

   GL_ELEMENT_ARRAY_ATI : constant := 16#8768#;  --  /usr/include/GL/glext.h:4144
   GL_ELEMENT_ARRAY_TYPE_ATI : constant := 16#8769#;  --  /usr/include/GL/glext.h:4145
   GL_ELEMENT_ARRAY_POINTER_ATI : constant := 16#876A#;  --  /usr/include/GL/glext.h:4146

   GL_QUAD_MESH_SUN : constant := 16#8614#;  --  /usr/include/GL/glext.h:4150
   GL_TRIANGLE_MESH_SUN : constant := 16#8615#;  --  /usr/include/GL/glext.h:4151

   GL_SLICE_ACCUM_SUN : constant := 16#85CC#;  --  /usr/include/GL/glext.h:4155

   GL_MULTISAMPLE_FILTER_HINT_NV : constant := 16#8534#;  --  /usr/include/GL/glext.h:4159

   GL_DEPTH_CLAMP_NV : constant := 16#864F#;  --  /usr/include/GL/glext.h:4163

   GL_PIXEL_COUNTER_BITS_NV : constant := 16#8864#;  --  /usr/include/GL/glext.h:4167
   GL_CURRENT_OCCLUSION_QUERY_ID_NV : constant := 16#8865#;  --  /usr/include/GL/glext.h:4168
   GL_PIXEL_COUNT_NV : constant := 16#8866#;  --  /usr/include/GL/glext.h:4169
   GL_PIXEL_COUNT_AVAILABLE_NV : constant := 16#8867#;  --  /usr/include/GL/glext.h:4170

   GL_POINT_SPRITE_NV : constant := 16#8861#;  --  /usr/include/GL/glext.h:4174
   GL_COORD_REPLACE_NV : constant := 16#8862#;  --  /usr/include/GL/glext.h:4175
   GL_POINT_SPRITE_R_MODE_NV : constant := 16#8863#;  --  /usr/include/GL/glext.h:4176

   GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV : constant := 16#8850#;  --  /usr/include/GL/glext.h:4180
   GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV : constant := 16#8851#;  --  /usr/include/GL/glext.h:4181
   GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV : constant := 16#8852#;  --  /usr/include/GL/glext.h:4182
   GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV : constant := 16#8853#;  --  /usr/include/GL/glext.h:4183
   GL_OFFSET_HILO_TEXTURE_2D_NV : constant := 16#8854#;  --  /usr/include/GL/glext.h:4184
   GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV : constant := 16#8855#;  --  /usr/include/GL/glext.h:4185
   GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV : constant := 16#8856#;  --  /usr/include/GL/glext.h:4186
   GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV : constant := 16#8857#;  --  /usr/include/GL/glext.h:4187
   GL_DEPENDENT_HILO_TEXTURE_2D_NV : constant := 16#8858#;  --  /usr/include/GL/glext.h:4188
   GL_DEPENDENT_RGB_TEXTURE_3D_NV : constant := 16#8859#;  --  /usr/include/GL/glext.h:4189
   GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV : constant := 16#885A#;  --  /usr/include/GL/glext.h:4190
   GL_DOT_PRODUCT_PASS_THROUGH_NV : constant := 16#885B#;  --  /usr/include/GL/glext.h:4191
   GL_DOT_PRODUCT_TEXTURE_1D_NV : constant := 16#885C#;  --  /usr/include/GL/glext.h:4192
   GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV : constant := 16#885D#;  --  /usr/include/GL/glext.h:4193
   GL_HILO8_NV : constant := 16#885E#;  --  /usr/include/GL/glext.h:4194
   GL_SIGNED_HILO8_NV : constant := 16#885F#;  --  /usr/include/GL/glext.h:4195
   GL_FORCE_BLUE_TO_ONE_NV : constant := 16#8860#;  --  /usr/include/GL/glext.h:4196

   GL_STENCIL_TEST_TWO_SIDE_EXT : constant := 16#8910#;  --  /usr/include/GL/glext.h:4206
   GL_ACTIVE_STENCIL_FACE_EXT : constant := 16#8911#;  --  /usr/include/GL/glext.h:4207

   GL_TEXT_FRAGMENT_SHADER_ATI : constant := 16#8200#;  --  /usr/include/GL/glext.h:4211

   GL_UNPACK_CLIENT_STORAGE_APPLE : constant := 16#85B2#;  --  /usr/include/GL/glext.h:4215

   GL_ELEMENT_ARRAY_APPLE : constant := 16#8A0C#;  --  /usr/include/GL/glext.h:4219
   GL_ELEMENT_ARRAY_TYPE_APPLE : constant := 16#8A0D#;  --  /usr/include/GL/glext.h:4220
   GL_ELEMENT_ARRAY_POINTER_APPLE : constant := 16#8A0E#;  --  /usr/include/GL/glext.h:4221

   GL_DRAW_PIXELS_APPLE : constant := 16#8A0A#;  --  /usr/include/GL/glext.h:4225
   GL_FENCE_APPLE : constant := 16#8A0B#;  --  /usr/include/GL/glext.h:4226

   GL_VERTEX_ARRAY_BINDING_APPLE : constant := 16#85B5#;  --  /usr/include/GL/glext.h:4230

   GL_VERTEX_ARRAY_RANGE_APPLE : constant := 16#851D#;  --  /usr/include/GL/glext.h:4234
   GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE : constant := 16#851E#;  --  /usr/include/GL/glext.h:4235
   GL_VERTEX_ARRAY_STORAGE_HINT_APPLE : constant := 16#851F#;  --  /usr/include/GL/glext.h:4236
   GL_VERTEX_ARRAY_RANGE_POINTER_APPLE : constant := 16#8521#;  --  /usr/include/GL/glext.h:4237
   GL_STORAGE_CLIENT_APPLE : constant := 16#85B4#;  --  /usr/include/GL/glext.h:4238
   GL_STORAGE_CACHED_APPLE : constant := 16#85BE#;  --  /usr/include/GL/glext.h:4239
   GL_STORAGE_SHARED_APPLE : constant := 16#85BF#;  --  /usr/include/GL/glext.h:4240

   GL_YCBCR_422_APPLE : constant := 16#85B9#;  --  /usr/include/GL/glext.h:4244
   GL_UNSIGNED_SHORT_8_8_APPLE : constant := 16#85BA#;  --  /usr/include/GL/glext.h:4245
   GL_UNSIGNED_SHORT_8_8_REV_APPLE : constant := 16#85BB#;  --  /usr/include/GL/glext.h:4246

   GL_RGB_S3TC : constant := 16#83A0#;  --  /usr/include/GL/glext.h:4250
   GL_RGB4_S3TC : constant := 16#83A1#;  --  /usr/include/GL/glext.h:4251
   GL_RGBA_S3TC : constant := 16#83A2#;  --  /usr/include/GL/glext.h:4252
   GL_RGBA4_S3TC : constant := 16#83A3#;  --  /usr/include/GL/glext.h:4253

   GL_MAX_DRAW_BUFFERS_ATI : constant := 16#8824#;  --  /usr/include/GL/glext.h:4257
   GL_DRAW_BUFFER0_ATI : constant := 16#8825#;  --  /usr/include/GL/glext.h:4258
   GL_DRAW_BUFFER1_ATI : constant := 16#8826#;  --  /usr/include/GL/glext.h:4259
   GL_DRAW_BUFFER2_ATI : constant := 16#8827#;  --  /usr/include/GL/glext.h:4260
   GL_DRAW_BUFFER3_ATI : constant := 16#8828#;  --  /usr/include/GL/glext.h:4261
   GL_DRAW_BUFFER4_ATI : constant := 16#8829#;  --  /usr/include/GL/glext.h:4262
   GL_DRAW_BUFFER5_ATI : constant := 16#882A#;  --  /usr/include/GL/glext.h:4263
   GL_DRAW_BUFFER6_ATI : constant := 16#882B#;  --  /usr/include/GL/glext.h:4264
   GL_DRAW_BUFFER7_ATI : constant := 16#882C#;  --  /usr/include/GL/glext.h:4265
   GL_DRAW_BUFFER8_ATI : constant := 16#882D#;  --  /usr/include/GL/glext.h:4266
   GL_DRAW_BUFFER9_ATI : constant := 16#882E#;  --  /usr/include/GL/glext.h:4267
   GL_DRAW_BUFFER10_ATI : constant := 16#882F#;  --  /usr/include/GL/glext.h:4268
   GL_DRAW_BUFFER11_ATI : constant := 16#8830#;  --  /usr/include/GL/glext.h:4269
   GL_DRAW_BUFFER12_ATI : constant := 16#8831#;  --  /usr/include/GL/glext.h:4270
   GL_DRAW_BUFFER13_ATI : constant := 16#8832#;  --  /usr/include/GL/glext.h:4271
   GL_DRAW_BUFFER14_ATI : constant := 16#8833#;  --  /usr/include/GL/glext.h:4272
   GL_DRAW_BUFFER15_ATI : constant := 16#8834#;  --  /usr/include/GL/glext.h:4273

   GL_TYPE_RGBA_FLOAT_ATI : constant := 16#8820#;  --  /usr/include/GL/glext.h:4277
   GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI : constant := 16#8835#;  --  /usr/include/GL/glext.h:4278

   GL_MODULATE_ADD_ATI : constant := 16#8744#;  --  /usr/include/GL/glext.h:4282
   GL_MODULATE_SIGNED_ADD_ATI : constant := 16#8745#;  --  /usr/include/GL/glext.h:4283
   GL_MODULATE_SUBTRACT_ATI : constant := 16#8746#;  --  /usr/include/GL/glext.h:4284

   GL_RGBA_FLOAT32_ATI : constant := 16#8814#;  --  /usr/include/GL/glext.h:4288
   GL_RGB_FLOAT32_ATI : constant := 16#8815#;  --  /usr/include/GL/glext.h:4289
   GL_ALPHA_FLOAT32_ATI : constant := 16#8816#;  --  /usr/include/GL/glext.h:4290
   GL_INTENSITY_FLOAT32_ATI : constant := 16#8817#;  --  /usr/include/GL/glext.h:4291
   GL_LUMINANCE_FLOAT32_ATI : constant := 16#8818#;  --  /usr/include/GL/glext.h:4292
   GL_LUMINANCE_ALPHA_FLOAT32_ATI : constant := 16#8819#;  --  /usr/include/GL/glext.h:4293
   GL_RGBA_FLOAT16_ATI : constant := 16#881A#;  --  /usr/include/GL/glext.h:4294
   GL_RGB_FLOAT16_ATI : constant := 16#881B#;  --  /usr/include/GL/glext.h:4295
   GL_ALPHA_FLOAT16_ATI : constant := 16#881C#;  --  /usr/include/GL/glext.h:4296
   GL_INTENSITY_FLOAT16_ATI : constant := 16#881D#;  --  /usr/include/GL/glext.h:4297
   GL_LUMINANCE_FLOAT16_ATI : constant := 16#881E#;  --  /usr/include/GL/glext.h:4298
   GL_LUMINANCE_ALPHA_FLOAT16_ATI : constant := 16#881F#;  --  /usr/include/GL/glext.h:4299

   GL_FLOAT_R_NV : constant := 16#8880#;  --  /usr/include/GL/glext.h:4303
   GL_FLOAT_RG_NV : constant := 16#8881#;  --  /usr/include/GL/glext.h:4304
   GL_FLOAT_RGB_NV : constant := 16#8882#;  --  /usr/include/GL/glext.h:4305
   GL_FLOAT_RGBA_NV : constant := 16#8883#;  --  /usr/include/GL/glext.h:4306
   GL_FLOAT_R16_NV : constant := 16#8884#;  --  /usr/include/GL/glext.h:4307
   GL_FLOAT_R32_NV : constant := 16#8885#;  --  /usr/include/GL/glext.h:4308
   GL_FLOAT_RG16_NV : constant := 16#8886#;  --  /usr/include/GL/glext.h:4309
   GL_FLOAT_RG32_NV : constant := 16#8887#;  --  /usr/include/GL/glext.h:4310
   GL_FLOAT_RGB16_NV : constant := 16#8888#;  --  /usr/include/GL/glext.h:4311
   GL_FLOAT_RGB32_NV : constant := 16#8889#;  --  /usr/include/GL/glext.h:4312
   GL_FLOAT_RGBA16_NV : constant := 16#888A#;  --  /usr/include/GL/glext.h:4313
   GL_FLOAT_RGBA32_NV : constant := 16#888B#;  --  /usr/include/GL/glext.h:4314
   GL_TEXTURE_FLOAT_COMPONENTS_NV : constant := 16#888C#;  --  /usr/include/GL/glext.h:4315
   GL_FLOAT_CLEAR_COLOR_VALUE_NV : constant := 16#888D#;  --  /usr/include/GL/glext.h:4316
   GL_FLOAT_RGBA_MODE_NV : constant := 16#888E#;  --  /usr/include/GL/glext.h:4317

   GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV : constant := 16#8868#;  --  /usr/include/GL/glext.h:4321
   GL_FRAGMENT_PROGRAM_NV : constant := 16#8870#;  --  /usr/include/GL/glext.h:4322
   GL_MAX_TEXTURE_COORDS_NV : constant := 16#8871#;  --  /usr/include/GL/glext.h:4323
   GL_MAX_TEXTURE_IMAGE_UNITS_NV : constant := 16#8872#;  --  /usr/include/GL/glext.h:4324
   GL_FRAGMENT_PROGRAM_BINDING_NV : constant := 16#8873#;  --  /usr/include/GL/glext.h:4325
   GL_PROGRAM_ERROR_STRING_NV : constant := 16#8874#;  --  /usr/include/GL/glext.h:4326

   GL_HALF_FLOAT_NV : constant := 16#140B#;  --  /usr/include/GL/glext.h:4330

   GL_WRITE_PIXEL_DATA_RANGE_NV : constant := 16#8878#;  --  /usr/include/GL/glext.h:4334
   GL_READ_PIXEL_DATA_RANGE_NV : constant := 16#8879#;  --  /usr/include/GL/glext.h:4335
   GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV : constant := 16#887A#;  --  /usr/include/GL/glext.h:4336
   GL_READ_PIXEL_DATA_RANGE_LENGTH_NV : constant := 16#887B#;  --  /usr/include/GL/glext.h:4337
   GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV : constant := 16#887C#;  --  /usr/include/GL/glext.h:4338
   GL_READ_PIXEL_DATA_RANGE_POINTER_NV : constant := 16#887D#;  --  /usr/include/GL/glext.h:4339

   GL_PRIMITIVE_RESTART_NV : constant := 16#8558#;  --  /usr/include/GL/glext.h:4343
   GL_PRIMITIVE_RESTART_INDEX_NV : constant := 16#8559#;  --  /usr/include/GL/glext.h:4344

   GL_TEXTURE_UNSIGNED_REMAP_MODE_NV : constant := 16#888F#;  --  /usr/include/GL/glext.h:4348

   GL_STENCIL_BACK_FUNC_ATI : constant := 16#8800#;  --  /usr/include/GL/glext.h:4358
   GL_STENCIL_BACK_FAIL_ATI : constant := 16#8801#;  --  /usr/include/GL/glext.h:4359
   GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI : constant := 16#8802#;  --  /usr/include/GL/glext.h:4360
   GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI : constant := 16#8803#;  --  /usr/include/GL/glext.h:4361

   GL_IMPLEMENTATION_COLOR_READ_TYPE_OES : constant := 16#8B9A#;  --  /usr/include/GL/glext.h:4368
   GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES : constant := 16#8B9B#;  --  /usr/include/GL/glext.h:4369

   GL_DEPTH_BOUNDS_TEST_EXT : constant := 16#8890#;  --  /usr/include/GL/glext.h:4373
   GL_DEPTH_BOUNDS_EXT : constant := 16#8891#;  --  /usr/include/GL/glext.h:4374

   GL_MIRROR_CLAMP_EXT : constant := 16#8742#;  --  /usr/include/GL/glext.h:4378
   GL_MIRROR_CLAMP_TO_EDGE_EXT : constant := 16#8743#;  --  /usr/include/GL/glext.h:4379
   GL_MIRROR_CLAMP_TO_BORDER_EXT : constant := 16#8912#;  --  /usr/include/GL/glext.h:4380

   GL_BLEND_EQUATION_RGB_EXT : constant := 16#8009#;  --  /usr/include/GL/glext.h:4384
   GL_BLEND_EQUATION_ALPHA_EXT : constant := 16#883D#;  --  /usr/include/GL/glext.h:4385

   GL_PACK_INVERT_MESA : constant := 16#8758#;  --  /usr/include/GL/glext.h:4389

   GL_UNSIGNED_SHORT_8_8_MESA : constant := 16#85BA#;  --  /usr/include/GL/glext.h:4393
   GL_UNSIGNED_SHORT_8_8_REV_MESA : constant := 16#85BB#;  --  /usr/include/GL/glext.h:4394
   GL_YCBCR_MESA : constant := 16#8757#;  --  /usr/include/GL/glext.h:4395

   GL_PIXEL_PACK_BUFFER_EXT : constant := 16#88EB#;  --  /usr/include/GL/glext.h:4399
   GL_PIXEL_UNPACK_BUFFER_EXT : constant := 16#88EC#;  --  /usr/include/GL/glext.h:4400
   GL_PIXEL_PACK_BUFFER_BINDING_EXT : constant := 16#88ED#;  --  /usr/include/GL/glext.h:4401
   GL_PIXEL_UNPACK_BUFFER_BINDING_EXT : constant := 16#88EF#;  --  /usr/include/GL/glext.h:4402

   GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV : constant := 16#88F4#;  --  /usr/include/GL/glext.h:4409
   GL_MAX_PROGRAM_CALL_DEPTH_NV : constant := 16#88F5#;  --  /usr/include/GL/glext.h:4410
   GL_MAX_PROGRAM_IF_DEPTH_NV : constant := 16#88F6#;  --  /usr/include/GL/glext.h:4411
   GL_MAX_PROGRAM_LOOP_DEPTH_NV : constant := 16#88F7#;  --  /usr/include/GL/glext.h:4412
   GL_MAX_PROGRAM_LOOP_COUNT_NV : constant := 16#88F8#;  --  /usr/include/GL/glext.h:4413

   GL_INVALID_FRAMEBUFFER_OPERATION_EXT : constant := 16#0506#;  --  /usr/include/GL/glext.h:4426
   GL_MAX_RENDERBUFFER_SIZE_EXT : constant := 16#84E8#;  --  /usr/include/GL/glext.h:4427
   GL_FRAMEBUFFER_BINDING_EXT : constant := 16#8CA6#;  --  /usr/include/GL/glext.h:4428
   GL_RENDERBUFFER_BINDING_EXT : constant := 16#8CA7#;  --  /usr/include/GL/glext.h:4429
   GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT : constant := 16#8CD0#;  --  /usr/include/GL/glext.h:4430
   GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT : constant := 16#8CD1#;  --  /usr/include/GL/glext.h:4431
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT : constant := 16#8CD2#;  --  /usr/include/GL/glext.h:4432
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT : constant := 16#8CD3#;  --  /usr/include/GL/glext.h:4433
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT : constant := 16#8CD4#;  --  /usr/include/GL/glext.h:4434
   GL_FRAMEBUFFER_COMPLETE_EXT : constant := 16#8CD5#;  --  /usr/include/GL/glext.h:4435
   GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT : constant := 16#8CD6#;  --  /usr/include/GL/glext.h:4436
   GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT : constant := 16#8CD7#;  --  /usr/include/GL/glext.h:4437
   GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT : constant := 16#8CD9#;  --  /usr/include/GL/glext.h:4438
   GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT : constant := 16#8CDA#;  --  /usr/include/GL/glext.h:4439
   GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT : constant := 16#8CDB#;  --  /usr/include/GL/glext.h:4440
   GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT : constant := 16#8CDC#;  --  /usr/include/GL/glext.h:4441
   GL_FRAMEBUFFER_UNSUPPORTED_EXT : constant := 16#8CDD#;  --  /usr/include/GL/glext.h:4442
   GL_MAX_COLOR_ATTACHMENTS_EXT : constant := 16#8CDF#;  --  /usr/include/GL/glext.h:4443
   GL_COLOR_ATTACHMENT0_EXT : constant := 16#8CE0#;  --  /usr/include/GL/glext.h:4444
   GL_COLOR_ATTACHMENT1_EXT : constant := 16#8CE1#;  --  /usr/include/GL/glext.h:4445
   GL_COLOR_ATTACHMENT2_EXT : constant := 16#8CE2#;  --  /usr/include/GL/glext.h:4446
   GL_COLOR_ATTACHMENT3_EXT : constant := 16#8CE3#;  --  /usr/include/GL/glext.h:4447
   GL_COLOR_ATTACHMENT4_EXT : constant := 16#8CE4#;  --  /usr/include/GL/glext.h:4448
   GL_COLOR_ATTACHMENT5_EXT : constant := 16#8CE5#;  --  /usr/include/GL/glext.h:4449
   GL_COLOR_ATTACHMENT6_EXT : constant := 16#8CE6#;  --  /usr/include/GL/glext.h:4450
   GL_COLOR_ATTACHMENT7_EXT : constant := 16#8CE7#;  --  /usr/include/GL/glext.h:4451
   GL_COLOR_ATTACHMENT8_EXT : constant := 16#8CE8#;  --  /usr/include/GL/glext.h:4452
   GL_COLOR_ATTACHMENT9_EXT : constant := 16#8CE9#;  --  /usr/include/GL/glext.h:4453
   GL_COLOR_ATTACHMENT10_EXT : constant := 16#8CEA#;  --  /usr/include/GL/glext.h:4454
   GL_COLOR_ATTACHMENT11_EXT : constant := 16#8CEB#;  --  /usr/include/GL/glext.h:4455
   GL_COLOR_ATTACHMENT12_EXT : constant := 16#8CEC#;  --  /usr/include/GL/glext.h:4456
   GL_COLOR_ATTACHMENT13_EXT : constant := 16#8CED#;  --  /usr/include/GL/glext.h:4457
   GL_COLOR_ATTACHMENT14_EXT : constant := 16#8CEE#;  --  /usr/include/GL/glext.h:4458
   GL_COLOR_ATTACHMENT15_EXT : constant := 16#8CEF#;  --  /usr/include/GL/glext.h:4459
   GL_DEPTH_ATTACHMENT_EXT : constant := 16#8D00#;  --  /usr/include/GL/glext.h:4460
   GL_STENCIL_ATTACHMENT_EXT : constant := 16#8D20#;  --  /usr/include/GL/glext.h:4461
   GL_FRAMEBUFFER_EXT : constant := 16#8D40#;  --  /usr/include/GL/glext.h:4462
   GL_RENDERBUFFER_EXT : constant := 16#8D41#;  --  /usr/include/GL/glext.h:4463
   GL_RENDERBUFFER_WIDTH_EXT : constant := 16#8D42#;  --  /usr/include/GL/glext.h:4464
   GL_RENDERBUFFER_HEIGHT_EXT : constant := 16#8D43#;  --  /usr/include/GL/glext.h:4465
   GL_RENDERBUFFER_INTERNAL_FORMAT_EXT : constant := 16#8D44#;  --  /usr/include/GL/glext.h:4466
   GL_STENCIL_INDEX1_EXT : constant := 16#8D46#;  --  /usr/include/GL/glext.h:4467
   GL_STENCIL_INDEX4_EXT : constant := 16#8D47#;  --  /usr/include/GL/glext.h:4468
   GL_STENCIL_INDEX8_EXT : constant := 16#8D48#;  --  /usr/include/GL/glext.h:4469
   GL_STENCIL_INDEX16_EXT : constant := 16#8D49#;  --  /usr/include/GL/glext.h:4470
   GL_RENDERBUFFER_RED_SIZE_EXT : constant := 16#8D50#;  --  /usr/include/GL/glext.h:4471
   GL_RENDERBUFFER_GREEN_SIZE_EXT : constant := 16#8D51#;  --  /usr/include/GL/glext.h:4472
   GL_RENDERBUFFER_BLUE_SIZE_EXT : constant := 16#8D52#;  --  /usr/include/GL/glext.h:4473
   GL_RENDERBUFFER_ALPHA_SIZE_EXT : constant := 16#8D53#;  --  /usr/include/GL/glext.h:4474
   GL_RENDERBUFFER_DEPTH_SIZE_EXT : constant := 16#8D54#;  --  /usr/include/GL/glext.h:4475
   GL_RENDERBUFFER_STENCIL_SIZE_EXT : constant := 16#8D55#;  --  /usr/include/GL/glext.h:4476

   GL_DEPTH_STENCIL_EXT : constant := 16#84F9#;  --  /usr/include/GL/glext.h:4483
   GL_UNSIGNED_INT_24_8_EXT : constant := 16#84FA#;  --  /usr/include/GL/glext.h:4484
   GL_DEPTH24_STENCIL8_EXT : constant := 16#88F0#;  --  /usr/include/GL/glext.h:4485
   GL_TEXTURE_STENCIL_SIZE_EXT : constant := 16#88F1#;  --  /usr/include/GL/glext.h:4486

   GL_STENCIL_TAG_BITS_EXT : constant := 16#88F2#;  --  /usr/include/GL/glext.h:4490
   GL_STENCIL_CLEAR_TAG_VALUE_EXT : constant := 16#88F3#;  --  /usr/include/GL/glext.h:4491

   GL_SRGB_EXT : constant := 16#8C40#;  --  /usr/include/GL/glext.h:4495
   GL_SRGB8_EXT : constant := 16#8C41#;  --  /usr/include/GL/glext.h:4496
   GL_SRGB_ALPHA_EXT : constant := 16#8C42#;  --  /usr/include/GL/glext.h:4497
   GL_SRGB8_ALPHA8_EXT : constant := 16#8C43#;  --  /usr/include/GL/glext.h:4498
   GL_SLUMINANCE_ALPHA_EXT : constant := 16#8C44#;  --  /usr/include/GL/glext.h:4499
   GL_SLUMINANCE8_ALPHA8_EXT : constant := 16#8C45#;  --  /usr/include/GL/glext.h:4500
   GL_SLUMINANCE_EXT : constant := 16#8C46#;  --  /usr/include/GL/glext.h:4501
   GL_SLUMINANCE8_EXT : constant := 16#8C47#;  --  /usr/include/GL/glext.h:4502
   GL_COMPRESSED_SRGB_EXT : constant := 16#8C48#;  --  /usr/include/GL/glext.h:4503
   GL_COMPRESSED_SRGB_ALPHA_EXT : constant := 16#8C49#;  --  /usr/include/GL/glext.h:4504
   GL_COMPRESSED_SLUMINANCE_EXT : constant := 16#8C4A#;  --  /usr/include/GL/glext.h:4505
   GL_COMPRESSED_SLUMINANCE_ALPHA_EXT : constant := 16#8C4B#;  --  /usr/include/GL/glext.h:4506
   GL_COMPRESSED_SRGB_S3TC_DXT1_EXT : constant := 16#8C4C#;  --  /usr/include/GL/glext.h:4507
   GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT : constant := 16#8C4D#;  --  /usr/include/GL/glext.h:4508
   GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT : constant := 16#8C4E#;  --  /usr/include/GL/glext.h:4509
   GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT : constant := 16#8C4F#;  --  /usr/include/GL/glext.h:4510

   GL_READ_FRAMEBUFFER_EXT : constant := 16#8CA8#;  --  /usr/include/GL/glext.h:4514
   GL_DRAW_FRAMEBUFFER_EXT : constant := 16#8CA9#;  --  /usr/include/GL/glext.h:4515
   --  unsupported macro: GL_DRAW_FRAMEBUFFER_BINDING_EXT GL_FRAMEBUFFER_BINDING_EXT

   GL_READ_FRAMEBUFFER_BINDING_EXT : constant := 16#8CAA#;  --  /usr/include/GL/glext.h:4517

   GL_RENDERBUFFER_SAMPLES_EXT : constant := 16#8CAB#;  --  /usr/include/GL/glext.h:4521
   GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT : constant := 16#8D56#;  --  /usr/include/GL/glext.h:4522
   GL_MAX_SAMPLES_EXT : constant := 16#8D57#;  --  /usr/include/GL/glext.h:4523

   GL_TEXTURE_1D_STACK_MESAX : constant := 16#8759#;  --  /usr/include/GL/glext.h:4527
   GL_TEXTURE_2D_STACK_MESAX : constant := 16#875A#;  --  /usr/include/GL/glext.h:4528
   GL_PROXY_TEXTURE_1D_STACK_MESAX : constant := 16#875B#;  --  /usr/include/GL/glext.h:4529
   GL_PROXY_TEXTURE_2D_STACK_MESAX : constant := 16#875C#;  --  /usr/include/GL/glext.h:4530
   GL_TEXTURE_1D_STACK_BINDING_MESAX : constant := 16#875D#;  --  /usr/include/GL/glext.h:4531
   GL_TEXTURE_2D_STACK_BINDING_MESAX : constant := 16#875E#;  --  /usr/include/GL/glext.h:4532

   GL_TIME_ELAPSED_EXT : constant := 16#88BF#;  --  /usr/include/GL/glext.h:4536

   GL_BUFFER_SERIALIZED_MODIFY_APPLE : constant := 16#8A12#;  --  /usr/include/GL/glext.h:4543
   GL_BUFFER_FLUSHING_UNMAP_APPLE : constant := 16#8A13#;  --  /usr/include/GL/glext.h:4544

   GL_MIN_PROGRAM_TEXEL_OFFSET_NV : constant := 16#8904#;  --  /usr/include/GL/glext.h:4548
   GL_MAX_PROGRAM_TEXEL_OFFSET_NV : constant := 16#8905#;  --  /usr/include/GL/glext.h:4549
   GL_PROGRAM_ATTRIB_COMPONENTS_NV : constant := 16#8906#;  --  /usr/include/GL/glext.h:4550
   GL_PROGRAM_RESULT_COMPONENTS_NV : constant := 16#8907#;  --  /usr/include/GL/glext.h:4551
   GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV : constant := 16#8908#;  --  /usr/include/GL/glext.h:4552
   GL_MAX_PROGRAM_RESULT_COMPONENTS_NV : constant := 16#8909#;  --  /usr/include/GL/glext.h:4553
   GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV : constant := 16#8DA5#;  --  /usr/include/GL/glext.h:4554
   GL_MAX_PROGRAM_GENERIC_RESULTS_NV : constant := 16#8DA6#;  --  /usr/include/GL/glext.h:4555

   GL_LINES_ADJACENCY_EXT : constant := 16#000A#;  --  /usr/include/GL/glext.h:4559
   GL_LINE_STRIP_ADJACENCY_EXT : constant := 16#000B#;  --  /usr/include/GL/glext.h:4560
   GL_TRIANGLES_ADJACENCY_EXT : constant := 16#000C#;  --  /usr/include/GL/glext.h:4561
   GL_TRIANGLE_STRIP_ADJACENCY_EXT : constant := 16#000D#;  --  /usr/include/GL/glext.h:4562
   GL_GEOMETRY_PROGRAM_NV : constant := 16#8C26#;  --  /usr/include/GL/glext.h:4563
   GL_MAX_PROGRAM_OUTPUT_VERTICES_NV : constant := 16#8C27#;  --  /usr/include/GL/glext.h:4564
   GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV : constant := 16#8C28#;  --  /usr/include/GL/glext.h:4565
   GL_GEOMETRY_VERTICES_OUT_EXT : constant := 16#8DDA#;  --  /usr/include/GL/glext.h:4566
   GL_GEOMETRY_INPUT_TYPE_EXT : constant := 16#8DDB#;  --  /usr/include/GL/glext.h:4567
   GL_GEOMETRY_OUTPUT_TYPE_EXT : constant := 16#8DDC#;  --  /usr/include/GL/glext.h:4568
   GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT : constant := 16#8C29#;  --  /usr/include/GL/glext.h:4569
   GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT : constant := 16#8DA7#;  --  /usr/include/GL/glext.h:4570
   GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT : constant := 16#8DA8#;  --  /usr/include/GL/glext.h:4571
   GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT : constant := 16#8DA9#;  --  /usr/include/GL/glext.h:4572
   GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT : constant := 16#8CD4#;  --  /usr/include/GL/glext.h:4573
   GL_PROGRAM_POINT_SIZE_EXT : constant := 16#8642#;  --  /usr/include/GL/glext.h:4574

   GL_GEOMETRY_SHADER_EXT : constant := 16#8DD9#;  --  /usr/include/GL/glext.h:4578

   GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT : constant := 16#8DDD#;  --  /usr/include/GL/glext.h:4583
   GL_MAX_VERTEX_VARYING_COMPONENTS_EXT : constant := 16#8DDE#;  --  /usr/include/GL/glext.h:4584
   GL_MAX_VARYING_COMPONENTS_EXT : constant := 16#8B4B#;  --  /usr/include/GL/glext.h:4585
   GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT : constant := 16#8DDF#;  --  /usr/include/GL/glext.h:4586
   GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT : constant := 16#8DE0#;  --  /usr/include/GL/glext.h:4587
   GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT : constant := 16#8DE1#;  --  /usr/include/GL/glext.h:4588

   GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV : constant := 16#88FD#;  --  /usr/include/GL/glext.h:4601

   GL_SAMPLER_1D_ARRAY_EXT : constant := 16#8DC0#;  --  /usr/include/GL/glext.h:4605
   GL_SAMPLER_2D_ARRAY_EXT : constant := 16#8DC1#;  --  /usr/include/GL/glext.h:4606
   GL_SAMPLER_BUFFER_EXT : constant := 16#8DC2#;  --  /usr/include/GL/glext.h:4607
   GL_SAMPLER_1D_ARRAY_SHADOW_EXT : constant := 16#8DC3#;  --  /usr/include/GL/glext.h:4608
   GL_SAMPLER_2D_ARRAY_SHADOW_EXT : constant := 16#8DC4#;  --  /usr/include/GL/glext.h:4609
   GL_SAMPLER_CUBE_SHADOW_EXT : constant := 16#8DC5#;  --  /usr/include/GL/glext.h:4610
   GL_UNSIGNED_INT_VEC2_EXT : constant := 16#8DC6#;  --  /usr/include/GL/glext.h:4611
   GL_UNSIGNED_INT_VEC3_EXT : constant := 16#8DC7#;  --  /usr/include/GL/glext.h:4612
   GL_UNSIGNED_INT_VEC4_EXT : constant := 16#8DC8#;  --  /usr/include/GL/glext.h:4613
   GL_INT_SAMPLER_1D_EXT : constant := 16#8DC9#;  --  /usr/include/GL/glext.h:4614
   GL_INT_SAMPLER_2D_EXT : constant := 16#8DCA#;  --  /usr/include/GL/glext.h:4615
   GL_INT_SAMPLER_3D_EXT : constant := 16#8DCB#;  --  /usr/include/GL/glext.h:4616
   GL_INT_SAMPLER_CUBE_EXT : constant := 16#8DCC#;  --  /usr/include/GL/glext.h:4617
   GL_INT_SAMPLER_2D_RECT_EXT : constant := 16#8DCD#;  --  /usr/include/GL/glext.h:4618
   GL_INT_SAMPLER_1D_ARRAY_EXT : constant := 16#8DCE#;  --  /usr/include/GL/glext.h:4619
   GL_INT_SAMPLER_2D_ARRAY_EXT : constant := 16#8DCF#;  --  /usr/include/GL/glext.h:4620
   GL_INT_SAMPLER_BUFFER_EXT : constant := 16#8DD0#;  --  /usr/include/GL/glext.h:4621
   GL_UNSIGNED_INT_SAMPLER_1D_EXT : constant := 16#8DD1#;  --  /usr/include/GL/glext.h:4622
   GL_UNSIGNED_INT_SAMPLER_2D_EXT : constant := 16#8DD2#;  --  /usr/include/GL/glext.h:4623
   GL_UNSIGNED_INT_SAMPLER_3D_EXT : constant := 16#8DD3#;  --  /usr/include/GL/glext.h:4624
   GL_UNSIGNED_INT_SAMPLER_CUBE_EXT : constant := 16#8DD4#;  --  /usr/include/GL/glext.h:4625
   GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT : constant := 16#8DD5#;  --  /usr/include/GL/glext.h:4626
   GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT : constant := 16#8DD6#;  --  /usr/include/GL/glext.h:4627
   GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT : constant := 16#8DD7#;  --  /usr/include/GL/glext.h:4628
   GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT : constant := 16#8DD8#;  --  /usr/include/GL/glext.h:4629

   GL_R11F_G11F_B10F_EXT : constant := 16#8C3A#;  --  /usr/include/GL/glext.h:4636
   GL_UNSIGNED_INT_10F_11F_11F_REV_EXT : constant := 16#8C3B#;  --  /usr/include/GL/glext.h:4637
   GL_RGBA_SIGNED_COMPONENTS_EXT : constant := 16#8C3C#;  --  /usr/include/GL/glext.h:4638

   GL_TEXTURE_1D_ARRAY_EXT : constant := 16#8C18#;  --  /usr/include/GL/glext.h:4642
   GL_PROXY_TEXTURE_1D_ARRAY_EXT : constant := 16#8C19#;  --  /usr/include/GL/glext.h:4643
   GL_TEXTURE_2D_ARRAY_EXT : constant := 16#8C1A#;  --  /usr/include/GL/glext.h:4644
   GL_PROXY_TEXTURE_2D_ARRAY_EXT : constant := 16#8C1B#;  --  /usr/include/GL/glext.h:4645
   GL_TEXTURE_BINDING_1D_ARRAY_EXT : constant := 16#8C1C#;  --  /usr/include/GL/glext.h:4646
   GL_TEXTURE_BINDING_2D_ARRAY_EXT : constant := 16#8C1D#;  --  /usr/include/GL/glext.h:4647
   GL_MAX_ARRAY_TEXTURE_LAYERS_EXT : constant := 16#88FF#;  --  /usr/include/GL/glext.h:4648
   GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT : constant := 16#884E#;  --  /usr/include/GL/glext.h:4649

   GL_TEXTURE_BUFFER_EXT : constant := 16#8C2A#;  --  /usr/include/GL/glext.h:4654
   GL_MAX_TEXTURE_BUFFER_SIZE_EXT : constant := 16#8C2B#;  --  /usr/include/GL/glext.h:4655
   GL_TEXTURE_BINDING_BUFFER_EXT : constant := 16#8C2C#;  --  /usr/include/GL/glext.h:4656
   GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT : constant := 16#8C2D#;  --  /usr/include/GL/glext.h:4657
   GL_TEXTURE_BUFFER_FORMAT_EXT : constant := 16#8C2E#;  --  /usr/include/GL/glext.h:4658

   GL_COMPRESSED_LUMINANCE_LATC1_EXT : constant := 16#8C70#;  --  /usr/include/GL/glext.h:4662
   GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT : constant := 16#8C71#;  --  /usr/include/GL/glext.h:4663
   GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT : constant := 16#8C72#;  --  /usr/include/GL/glext.h:4664
   GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT : constant := 16#8C73#;  --  /usr/include/GL/glext.h:4665

   GL_COMPRESSED_RED_RGTC1_EXT : constant := 16#8DBB#;  --  /usr/include/GL/glext.h:4669
   GL_COMPRESSED_SIGNED_RED_RGTC1_EXT : constant := 16#8DBC#;  --  /usr/include/GL/glext.h:4670
   GL_COMPRESSED_RED_GREEN_RGTC2_EXT : constant := 16#8DBD#;  --  /usr/include/GL/glext.h:4671
   GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT : constant := 16#8DBE#;  --  /usr/include/GL/glext.h:4672

   GL_RGB9_E5_EXT : constant := 16#8C3D#;  --  /usr/include/GL/glext.h:4676
   GL_UNSIGNED_INT_5_9_9_9_REV_EXT : constant := 16#8C3E#;  --  /usr/include/GL/glext.h:4677
   GL_TEXTURE_SHARED_SIZE_EXT : constant := 16#8C3F#;  --  /usr/include/GL/glext.h:4678

   GL_DEPTH_COMPONENT32F_NV : constant := 16#8DAB#;  --  /usr/include/GL/glext.h:4682
   GL_DEPTH32F_STENCIL8_NV : constant := 16#8DAC#;  --  /usr/include/GL/glext.h:4683
   GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV : constant := 16#8DAD#;  --  /usr/include/GL/glext.h:4684
   GL_DEPTH_BUFFER_FLOAT_MODE_NV : constant := 16#8DAF#;  --  /usr/include/GL/glext.h:4685

   GL_RENDERBUFFER_COVERAGE_SAMPLES_NV : constant := 16#8CAB#;  --  /usr/include/GL/glext.h:4692
   GL_RENDERBUFFER_COLOR_SAMPLES_NV : constant := 16#8E10#;  --  /usr/include/GL/glext.h:4693
   GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV : constant := 16#8E11#;  --  /usr/include/GL/glext.h:4694
   GL_MULTISAMPLE_COVERAGE_MODES_NV : constant := 16#8E12#;  --  /usr/include/GL/glext.h:4695

   GL_FRAMEBUFFER_SRGB_EXT : constant := 16#8DB9#;  --  /usr/include/GL/glext.h:4699
   GL_FRAMEBUFFER_SRGB_CAPABLE_EXT : constant := 16#8DBA#;  --  /usr/include/GL/glext.h:4700

   GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV : constant := 16#8DA0#;  --  /usr/include/GL/glext.h:4707
   GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV : constant := 16#8DA1#;  --  /usr/include/GL/glext.h:4708
   GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV : constant := 16#8DA2#;  --  /usr/include/GL/glext.h:4709
   GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV : constant := 16#8DA3#;  --  /usr/include/GL/glext.h:4710
   GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV : constant := 16#8DA4#;  --  /usr/include/GL/glext.h:4711

   GL_BACK_PRIMARY_COLOR_NV : constant := 16#8C77#;  --  /usr/include/GL/glext.h:4718
   GL_BACK_SECONDARY_COLOR_NV : constant := 16#8C78#;  --  /usr/include/GL/glext.h:4719
   GL_TEXTURE_COORD_NV : constant := 16#8C79#;  --  /usr/include/GL/glext.h:4720
   GL_CLIP_DISTANCE_NV : constant := 16#8C7A#;  --  /usr/include/GL/glext.h:4721
   GL_VERTEX_ID_NV : constant := 16#8C7B#;  --  /usr/include/GL/glext.h:4722
   GL_PRIMITIVE_ID_NV : constant := 16#8C7C#;  --  /usr/include/GL/glext.h:4723
   GL_GENERIC_ATTRIB_NV : constant := 16#8C7D#;  --  /usr/include/GL/glext.h:4724
   GL_TRANSFORM_FEEDBACK_ATTRIBS_NV : constant := 16#8C7E#;  --  /usr/include/GL/glext.h:4725
   GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV : constant := 16#8C7F#;  --  /usr/include/GL/glext.h:4726
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV : constant := 16#8C80#;  --  /usr/include/GL/glext.h:4727
   GL_ACTIVE_VARYINGS_NV : constant := 16#8C81#;  --  /usr/include/GL/glext.h:4728
   GL_ACTIVE_VARYING_MAX_LENGTH_NV : constant := 16#8C82#;  --  /usr/include/GL/glext.h:4729
   GL_TRANSFORM_FEEDBACK_VARYINGS_NV : constant := 16#8C83#;  --  /usr/include/GL/glext.h:4730
   GL_TRANSFORM_FEEDBACK_BUFFER_START_NV : constant := 16#8C84#;  --  /usr/include/GL/glext.h:4731
   GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV : constant := 16#8C85#;  --  /usr/include/GL/glext.h:4732
   GL_TRANSFORM_FEEDBACK_RECORD_NV : constant := 16#8C86#;  --  /usr/include/GL/glext.h:4733
   GL_PRIMITIVES_GENERATED_NV : constant := 16#8C87#;  --  /usr/include/GL/glext.h:4734
   GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV : constant := 16#8C88#;  --  /usr/include/GL/glext.h:4735
   GL_RASTERIZER_DISCARD_NV : constant := 16#8C89#;  --  /usr/include/GL/glext.h:4736
   GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_ATTRIBS_NV : constant := 16#8C8A#;  --  /usr/include/GL/glext.h:4737
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV : constant := 16#8C8B#;  --  /usr/include/GL/glext.h:4738
   GL_INTERLEAVED_ATTRIBS_NV : constant := 16#8C8C#;  --  /usr/include/GL/glext.h:4739
   GL_SEPARATE_ATTRIBS_NV : constant := 16#8C8D#;  --  /usr/include/GL/glext.h:4740
   GL_TRANSFORM_FEEDBACK_BUFFER_NV : constant := 16#8C8E#;  --  /usr/include/GL/glext.h:4741
   GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV : constant := 16#8C8F#;  --  /usr/include/GL/glext.h:4742
   GL_LAYER_NV : constant := 16#8DAA#;  --  /usr/include/GL/glext.h:4743
   GL_NEXT_BUFFER_NV : constant := -2;  --  /usr/include/GL/glext.h:4744
   GL_SKIP_COMPONENTS4_NV : constant := -3;  --  /usr/include/GL/glext.h:4745
   GL_SKIP_COMPONENTS3_NV : constant := -4;  --  /usr/include/GL/glext.h:4746
   GL_SKIP_COMPONENTS2_NV : constant := -5;  --  /usr/include/GL/glext.h:4747
   GL_SKIP_COMPONENTS1_NV : constant := -6;  --  /usr/include/GL/glext.h:4748

   GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT : constant := 16#8DE2#;  --  /usr/include/GL/glext.h:4752
   GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT : constant := 16#8DE3#;  --  /usr/include/GL/glext.h:4753
   GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT : constant := 16#8DE4#;  --  /usr/include/GL/glext.h:4754
   GL_MAX_BINDABLE_UNIFORM_SIZE_EXT : constant := 16#8DED#;  --  /usr/include/GL/glext.h:4755
   GL_UNIFORM_BUFFER_EXT : constant := 16#8DEE#;  --  /usr/include/GL/glext.h:4756
   GL_UNIFORM_BUFFER_BINDING_EXT : constant := 16#8DEF#;  --  /usr/include/GL/glext.h:4757

   GL_RGBA32UI_EXT : constant := 16#8D70#;  --  /usr/include/GL/glext.h:4761
   GL_RGB32UI_EXT : constant := 16#8D71#;  --  /usr/include/GL/glext.h:4762
   GL_ALPHA32UI_EXT : constant := 16#8D72#;  --  /usr/include/GL/glext.h:4763
   GL_INTENSITY32UI_EXT : constant := 16#8D73#;  --  /usr/include/GL/glext.h:4764
   GL_LUMINANCE32UI_EXT : constant := 16#8D74#;  --  /usr/include/GL/glext.h:4765
   GL_LUMINANCE_ALPHA32UI_EXT : constant := 16#8D75#;  --  /usr/include/GL/glext.h:4766
   GL_RGBA16UI_EXT : constant := 16#8D76#;  --  /usr/include/GL/glext.h:4767
   GL_RGB16UI_EXT : constant := 16#8D77#;  --  /usr/include/GL/glext.h:4768
   GL_ALPHA16UI_EXT : constant := 16#8D78#;  --  /usr/include/GL/glext.h:4769
   GL_INTENSITY16UI_EXT : constant := 16#8D79#;  --  /usr/include/GL/glext.h:4770
   GL_LUMINANCE16UI_EXT : constant := 16#8D7A#;  --  /usr/include/GL/glext.h:4771
   GL_LUMINANCE_ALPHA16UI_EXT : constant := 16#8D7B#;  --  /usr/include/GL/glext.h:4772
   GL_RGBA8UI_EXT : constant := 16#8D7C#;  --  /usr/include/GL/glext.h:4773
   GL_RGB8UI_EXT : constant := 16#8D7D#;  --  /usr/include/GL/glext.h:4774
   GL_ALPHA8UI_EXT : constant := 16#8D7E#;  --  /usr/include/GL/glext.h:4775
   GL_INTENSITY8UI_EXT : constant := 16#8D7F#;  --  /usr/include/GL/glext.h:4776
   GL_LUMINANCE8UI_EXT : constant := 16#8D80#;  --  /usr/include/GL/glext.h:4777
   GL_LUMINANCE_ALPHA8UI_EXT : constant := 16#8D81#;  --  /usr/include/GL/glext.h:4778
   GL_RGBA32I_EXT : constant := 16#8D82#;  --  /usr/include/GL/glext.h:4779
   GL_RGB32I_EXT : constant := 16#8D83#;  --  /usr/include/GL/glext.h:4780
   GL_ALPHA32I_EXT : constant := 16#8D84#;  --  /usr/include/GL/glext.h:4781
   GL_INTENSITY32I_EXT : constant := 16#8D85#;  --  /usr/include/GL/glext.h:4782
   GL_LUMINANCE32I_EXT : constant := 16#8D86#;  --  /usr/include/GL/glext.h:4783
   GL_LUMINANCE_ALPHA32I_EXT : constant := 16#8D87#;  --  /usr/include/GL/glext.h:4784
   GL_RGBA16I_EXT : constant := 16#8D88#;  --  /usr/include/GL/glext.h:4785
   GL_RGB16I_EXT : constant := 16#8D89#;  --  /usr/include/GL/glext.h:4786
   GL_ALPHA16I_EXT : constant := 16#8D8A#;  --  /usr/include/GL/glext.h:4787
   GL_INTENSITY16I_EXT : constant := 16#8D8B#;  --  /usr/include/GL/glext.h:4788
   GL_LUMINANCE16I_EXT : constant := 16#8D8C#;  --  /usr/include/GL/glext.h:4789
   GL_LUMINANCE_ALPHA16I_EXT : constant := 16#8D8D#;  --  /usr/include/GL/glext.h:4790
   GL_RGBA8I_EXT : constant := 16#8D8E#;  --  /usr/include/GL/glext.h:4791
   GL_RGB8I_EXT : constant := 16#8D8F#;  --  /usr/include/GL/glext.h:4792
   GL_ALPHA8I_EXT : constant := 16#8D90#;  --  /usr/include/GL/glext.h:4793
   GL_INTENSITY8I_EXT : constant := 16#8D91#;  --  /usr/include/GL/glext.h:4794
   GL_LUMINANCE8I_EXT : constant := 16#8D92#;  --  /usr/include/GL/glext.h:4795
   GL_LUMINANCE_ALPHA8I_EXT : constant := 16#8D93#;  --  /usr/include/GL/glext.h:4796
   GL_RED_INTEGER_EXT : constant := 16#8D94#;  --  /usr/include/GL/glext.h:4797
   GL_GREEN_INTEGER_EXT : constant := 16#8D95#;  --  /usr/include/GL/glext.h:4798
   GL_BLUE_INTEGER_EXT : constant := 16#8D96#;  --  /usr/include/GL/glext.h:4799
   GL_ALPHA_INTEGER_EXT : constant := 16#8D97#;  --  /usr/include/GL/glext.h:4800
   GL_RGB_INTEGER_EXT : constant := 16#8D98#;  --  /usr/include/GL/glext.h:4801
   GL_RGBA_INTEGER_EXT : constant := 16#8D99#;  --  /usr/include/GL/glext.h:4802
   GL_BGR_INTEGER_EXT : constant := 16#8D9A#;  --  /usr/include/GL/glext.h:4803
   GL_BGRA_INTEGER_EXT : constant := 16#8D9B#;  --  /usr/include/GL/glext.h:4804
   GL_LUMINANCE_INTEGER_EXT : constant := 16#8D9C#;  --  /usr/include/GL/glext.h:4805
   GL_LUMINANCE_ALPHA_INTEGER_EXT : constant := 16#8D9D#;  --  /usr/include/GL/glext.h:4806
   GL_RGBA_INTEGER_MODE_EXT : constant := 16#8D9E#;  --  /usr/include/GL/glext.h:4807

   GL_QUERY_WAIT_NV : constant := 16#8E13#;  --  /usr/include/GL/glext.h:4814
   GL_QUERY_NO_WAIT_NV : constant := 16#8E14#;  --  /usr/include/GL/glext.h:4815
   GL_QUERY_BY_REGION_WAIT_NV : constant := 16#8E15#;  --  /usr/include/GL/glext.h:4816
   GL_QUERY_BY_REGION_NO_WAIT_NV : constant := 16#8E16#;  --  /usr/include/GL/glext.h:4817

   GL_FRAME_NV : constant := 16#8E26#;  --  /usr/include/GL/glext.h:4821
   GL_FIELDS_NV : constant := 16#8E27#;  --  /usr/include/GL/glext.h:4822
   GL_CURRENT_TIME_NV : constant := 16#8E28#;  --  /usr/include/GL/glext.h:4823
   GL_NUM_FILL_STREAMS_NV : constant := 16#8E29#;  --  /usr/include/GL/glext.h:4824
   GL_PRESENT_TIME_NV : constant := 16#8E2A#;  --  /usr/include/GL/glext.h:4825
   GL_PRESENT_DURATION_NV : constant := 16#8E2B#;  --  /usr/include/GL/glext.h:4826

   GL_TRANSFORM_FEEDBACK_BUFFER_EXT : constant := 16#8C8E#;  --  /usr/include/GL/glext.h:4830
   GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT : constant := 16#8C84#;  --  /usr/include/GL/glext.h:4831
   GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT : constant := 16#8C85#;  --  /usr/include/GL/glext.h:4832
   GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT : constant := 16#8C8F#;  --  /usr/include/GL/glext.h:4833
   GL_INTERLEAVED_ATTRIBS_EXT : constant := 16#8C8C#;  --  /usr/include/GL/glext.h:4834
   GL_SEPARATE_ATTRIBS_EXT : constant := 16#8C8D#;  --  /usr/include/GL/glext.h:4835
   GL_PRIMITIVES_GENERATED_EXT : constant := 16#8C87#;  --  /usr/include/GL/glext.h:4836
   GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT : constant := 16#8C88#;  --  /usr/include/GL/glext.h:4837
   GL_RASTERIZER_DISCARD_EXT : constant := 16#8C89#;  --  /usr/include/GL/glext.h:4838
   GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT : constant := 16#8C8A#;  --  /usr/include/GL/glext.h:4839
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT : constant := 16#8C8B#;  --  /usr/include/GL/glext.h:4840
   GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT : constant := 16#8C80#;  --  /usr/include/GL/glext.h:4841
   GL_TRANSFORM_FEEDBACK_VARYINGS_EXT : constant := 16#8C83#;  --  /usr/include/GL/glext.h:4842
   GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT : constant := 16#8C7F#;  --  /usr/include/GL/glext.h:4843
   GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT : constant := 16#8C76#;  --  /usr/include/GL/glext.h:4844

   GL_PROGRAM_MATRIX_EXT : constant := 16#8E2D#;  --  /usr/include/GL/glext.h:4848
   GL_TRANSPOSE_PROGRAM_MATRIX_EXT : constant := 16#8E2E#;  --  /usr/include/GL/glext.h:4849
   GL_PROGRAM_MATRIX_STACK_DEPTH_EXT : constant := 16#8E2F#;  --  /usr/include/GL/glext.h:4850

   GL_TEXTURE_SWIZZLE_R_EXT : constant := 16#8E42#;  --  /usr/include/GL/glext.h:4858
   GL_TEXTURE_SWIZZLE_G_EXT : constant := 16#8E43#;  --  /usr/include/GL/glext.h:4859
   GL_TEXTURE_SWIZZLE_B_EXT : constant := 16#8E44#;  --  /usr/include/GL/glext.h:4860
   GL_TEXTURE_SWIZZLE_A_EXT : constant := 16#8E45#;  --  /usr/include/GL/glext.h:4861
   GL_TEXTURE_SWIZZLE_RGBA_EXT : constant := 16#8E46#;  --  /usr/include/GL/glext.h:4862

   GL_SAMPLE_POSITION_NV : constant := 16#8E50#;  --  /usr/include/GL/glext.h:4866
   GL_SAMPLE_MASK_NV : constant := 16#8E51#;  --  /usr/include/GL/glext.h:4867
   GL_SAMPLE_MASK_VALUE_NV : constant := 16#8E52#;  --  /usr/include/GL/glext.h:4868
   GL_TEXTURE_BINDING_RENDERBUFFER_NV : constant := 16#8E53#;  --  /usr/include/GL/glext.h:4869
   GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV : constant := 16#8E54#;  --  /usr/include/GL/glext.h:4870
   GL_TEXTURE_RENDERBUFFER_NV : constant := 16#8E55#;  --  /usr/include/GL/glext.h:4871
   GL_SAMPLER_RENDERBUFFER_NV : constant := 16#8E56#;  --  /usr/include/GL/glext.h:4872
   GL_INT_SAMPLER_RENDERBUFFER_NV : constant := 16#8E57#;  --  /usr/include/GL/glext.h:4873
   GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV : constant := 16#8E58#;  --  /usr/include/GL/glext.h:4874
   GL_MAX_SAMPLE_MASK_WORDS_NV : constant := 16#8E59#;  --  /usr/include/GL/glext.h:4875

   GL_TRANSFORM_FEEDBACK_NV : constant := 16#8E22#;  --  /usr/include/GL/glext.h:4879
   GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV : constant := 16#8E23#;  --  /usr/include/GL/glext.h:4880
   GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV : constant := 16#8E24#;  --  /usr/include/GL/glext.h:4881
   GL_TRANSFORM_FEEDBACK_BINDING_NV : constant := 16#8E25#;  --  /usr/include/GL/glext.h:4882

   GL_VBO_FREE_MEMORY_ATI : constant := 16#87FB#;  --  /usr/include/GL/glext.h:4886
   GL_TEXTURE_FREE_MEMORY_ATI : constant := 16#87FC#;  --  /usr/include/GL/glext.h:4887
   GL_RENDERBUFFER_FREE_MEMORY_ATI : constant := 16#87FD#;  --  /usr/include/GL/glext.h:4888

   GL_COUNTER_TYPE_AMD : constant := 16#8BC0#;  --  /usr/include/GL/glext.h:4892
   GL_COUNTER_RANGE_AMD : constant := 16#8BC1#;  --  /usr/include/GL/glext.h:4893
   GL_UNSIGNED_INT64_AMD : constant := 16#8BC2#;  --  /usr/include/GL/glext.h:4894
   GL_PERCENTAGE_AMD : constant := 16#8BC3#;  --  /usr/include/GL/glext.h:4895
   GL_PERFMON_RESULT_AVAILABLE_AMD : constant := 16#8BC4#;  --  /usr/include/GL/glext.h:4896
   GL_PERFMON_RESULT_SIZE_AMD : constant := 16#8BC5#;  --  /usr/include/GL/glext.h:4897
   GL_PERFMON_RESULT_AMD : constant := 16#8BC6#;  --  /usr/include/GL/glext.h:4898

   GL_SAMPLER_BUFFER_AMD : constant := 16#9001#;  --  /usr/include/GL/glext.h:4905
   GL_INT_SAMPLER_BUFFER_AMD : constant := 16#9002#;  --  /usr/include/GL/glext.h:4906
   GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD : constant := 16#9003#;  --  /usr/include/GL/glext.h:4907
   GL_TESSELLATION_MODE_AMD : constant := 16#9004#;  --  /usr/include/GL/glext.h:4908
   GL_TESSELLATION_FACTOR_AMD : constant := 16#9005#;  --  /usr/include/GL/glext.h:4909
   GL_DISCRETE_AMD : constant := 16#9006#;  --  /usr/include/GL/glext.h:4910
   GL_CONTINUOUS_AMD : constant := 16#9007#;  --  /usr/include/GL/glext.h:4911

   GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT : constant := 16#8E4C#;  --  /usr/include/GL/glext.h:4915
   GL_FIRST_VERTEX_CONVENTION_EXT : constant := 16#8E4D#;  --  /usr/include/GL/glext.h:4916
   GL_LAST_VERTEX_CONVENTION_EXT : constant := 16#8E4E#;  --  /usr/include/GL/glext.h:4917
   GL_PROVOKING_VERTEX_EXT : constant := 16#8E4F#;  --  /usr/include/GL/glext.h:4918

   GL_ALPHA_SNORM : constant := 16#9010#;  --  /usr/include/GL/glext.h:4922
   GL_LUMINANCE_SNORM : constant := 16#9011#;  --  /usr/include/GL/glext.h:4923
   GL_LUMINANCE_ALPHA_SNORM : constant := 16#9012#;  --  /usr/include/GL/glext.h:4924
   GL_INTENSITY_SNORM : constant := 16#9013#;  --  /usr/include/GL/glext.h:4925
   GL_ALPHA8_SNORM : constant := 16#9014#;  --  /usr/include/GL/glext.h:4926
   GL_LUMINANCE8_SNORM : constant := 16#9015#;  --  /usr/include/GL/glext.h:4927
   GL_LUMINANCE8_ALPHA8_SNORM : constant := 16#9016#;  --  /usr/include/GL/glext.h:4928
   GL_INTENSITY8_SNORM : constant := 16#9017#;  --  /usr/include/GL/glext.h:4929
   GL_ALPHA16_SNORM : constant := 16#9018#;  --  /usr/include/GL/glext.h:4930
   GL_LUMINANCE16_SNORM : constant := 16#9019#;  --  /usr/include/GL/glext.h:4931
   GL_LUMINANCE16_ALPHA16_SNORM : constant := 16#901A#;  --  /usr/include/GL/glext.h:4932
   GL_INTENSITY16_SNORM : constant := 16#901B#;  --  /usr/include/GL/glext.h:4933

   GL_TEXTURE_RANGE_LENGTH_APPLE : constant := 16#85B7#;  --  /usr/include/GL/glext.h:4953
   GL_TEXTURE_RANGE_POINTER_APPLE : constant := 16#85B8#;  --  /usr/include/GL/glext.h:4954
   GL_TEXTURE_STORAGE_HINT_APPLE : constant := 16#85BC#;  --  /usr/include/GL/glext.h:4955
   GL_STORAGE_PRIVATE_APPLE : constant := 16#85BD#;  --  /usr/include/GL/glext.h:4956

   GL_HALF_APPLE : constant := 16#140B#;  --  /usr/include/GL/glext.h:4962
   GL_RGBA_FLOAT32_APPLE : constant := 16#8814#;  --  /usr/include/GL/glext.h:4963
   GL_RGB_FLOAT32_APPLE : constant := 16#8815#;  --  /usr/include/GL/glext.h:4964
   GL_ALPHA_FLOAT32_APPLE : constant := 16#8816#;  --  /usr/include/GL/glext.h:4965
   GL_INTENSITY_FLOAT32_APPLE : constant := 16#8817#;  --  /usr/include/GL/glext.h:4966
   GL_LUMINANCE_FLOAT32_APPLE : constant := 16#8818#;  --  /usr/include/GL/glext.h:4967
   GL_LUMINANCE_ALPHA_FLOAT32_APPLE : constant := 16#8819#;  --  /usr/include/GL/glext.h:4968
   GL_RGBA_FLOAT16_APPLE : constant := 16#881A#;  --  /usr/include/GL/glext.h:4969
   GL_RGB_FLOAT16_APPLE : constant := 16#881B#;  --  /usr/include/GL/glext.h:4970
   GL_ALPHA_FLOAT16_APPLE : constant := 16#881C#;  --  /usr/include/GL/glext.h:4971
   GL_INTENSITY_FLOAT16_APPLE : constant := 16#881D#;  --  /usr/include/GL/glext.h:4972
   GL_LUMINANCE_FLOAT16_APPLE : constant := 16#881E#;  --  /usr/include/GL/glext.h:4973
   GL_LUMINANCE_ALPHA_FLOAT16_APPLE : constant := 16#881F#;  --  /usr/include/GL/glext.h:4974
   GL_COLOR_FLOAT_APPLE : constant := 16#8A0F#;  --  /usr/include/GL/glext.h:4975

   GL_VERTEX_ATTRIB_MAP1_APPLE : constant := 16#8A00#;  --  /usr/include/GL/glext.h:4979
   GL_VERTEX_ATTRIB_MAP2_APPLE : constant := 16#8A01#;  --  /usr/include/GL/glext.h:4980
   GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE : constant := 16#8A02#;  --  /usr/include/GL/glext.h:4981
   GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE : constant := 16#8A03#;  --  /usr/include/GL/glext.h:4982
   GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE : constant := 16#8A04#;  --  /usr/include/GL/glext.h:4983
   GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE : constant := 16#8A05#;  --  /usr/include/GL/glext.h:4984
   GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE : constant := 16#8A06#;  --  /usr/include/GL/glext.h:4985
   GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE : constant := 16#8A07#;  --  /usr/include/GL/glext.h:4986
   GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE : constant := 16#8A08#;  --  /usr/include/GL/glext.h:4987
   GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE : constant := 16#8A09#;  --  /usr/include/GL/glext.h:4988

   GL_AUX_DEPTH_STENCIL_APPLE : constant := 16#8A14#;  --  /usr/include/GL/glext.h:4992

   GL_BUFFER_OBJECT_APPLE : constant := 16#85B3#;  --  /usr/include/GL/glext.h:4996
   GL_RELEASED_APPLE : constant := 16#8A19#;  --  /usr/include/GL/glext.h:4997
   GL_VOLATILE_APPLE : constant := 16#8A1A#;  --  /usr/include/GL/glext.h:4998
   GL_RETAINED_APPLE : constant := 16#8A1B#;  --  /usr/include/GL/glext.h:4999
   GL_UNDEFINED_APPLE : constant := 16#8A1C#;  --  /usr/include/GL/glext.h:5000
   GL_PURGEABLE_APPLE : constant := 16#8A1D#;  --  /usr/include/GL/glext.h:5001

   GL_PACK_ROW_BYTES_APPLE : constant := 16#8A15#;  --  /usr/include/GL/glext.h:5005
   GL_UNPACK_ROW_BYTES_APPLE : constant := 16#8A16#;  --  /usr/include/GL/glext.h:5006

   GL_RGB_422_APPLE : constant := 16#8A1F#;  --  /usr/include/GL/glext.h:5010

   GL_VIDEO_BUFFER_NV : constant := 16#9020#;  --  /usr/include/GL/glext.h:5016
   GL_VIDEO_BUFFER_BINDING_NV : constant := 16#9021#;  --  /usr/include/GL/glext.h:5017
   GL_FIELD_UPPER_NV : constant := 16#9022#;  --  /usr/include/GL/glext.h:5018
   GL_FIELD_LOWER_NV : constant := 16#9023#;  --  /usr/include/GL/glext.h:5019
   GL_NUM_VIDEO_CAPTURE_STREAMS_NV : constant := 16#9024#;  --  /usr/include/GL/glext.h:5020
   GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV : constant := 16#9025#;  --  /usr/include/GL/glext.h:5021
   GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV : constant := 16#9026#;  --  /usr/include/GL/glext.h:5022
   GL_LAST_VIDEO_CAPTURE_STATUS_NV : constant := 16#9027#;  --  /usr/include/GL/glext.h:5023
   GL_VIDEO_BUFFER_PITCH_NV : constant := 16#9028#;  --  /usr/include/GL/glext.h:5024
   GL_VIDEO_COLOR_CONVERSION_MATRIX_NV : constant := 16#9029#;  --  /usr/include/GL/glext.h:5025
   GL_VIDEO_COLOR_CONVERSION_MAX_NV : constant := 16#902A#;  --  /usr/include/GL/glext.h:5026
   GL_VIDEO_COLOR_CONVERSION_MIN_NV : constant := 16#902B#;  --  /usr/include/GL/glext.h:5027
   GL_VIDEO_COLOR_CONVERSION_OFFSET_NV : constant := 16#902C#;  --  /usr/include/GL/glext.h:5028
   GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV : constant := 16#902D#;  --  /usr/include/GL/glext.h:5029
   GL_PARTIAL_SUCCESS_NV : constant := 16#902E#;  --  /usr/include/GL/glext.h:5030
   GL_SUCCESS_NV : constant := 16#902F#;  --  /usr/include/GL/glext.h:5031
   GL_FAILURE_NV : constant := 16#9030#;  --  /usr/include/GL/glext.h:5032
   GL_YCBYCR8_422_NV : constant := 16#9031#;  --  /usr/include/GL/glext.h:5033
   GL_YCBAYCR8A_4224_NV : constant := 16#9032#;  --  /usr/include/GL/glext.h:5034
   GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV : constant := 16#9033#;  --  /usr/include/GL/glext.h:5035
   GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV : constant := 16#9034#;  --  /usr/include/GL/glext.h:5036
   GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV : constant := 16#9035#;  --  /usr/include/GL/glext.h:5037
   GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV : constant := 16#9036#;  --  /usr/include/GL/glext.h:5038
   GL_Z4Y12Z4CB12Z4CR12_444_NV : constant := 16#9037#;  --  /usr/include/GL/glext.h:5039
   GL_VIDEO_CAPTURE_FRAME_WIDTH_NV : constant := 16#9038#;  --  /usr/include/GL/glext.h:5040
   GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV : constant := 16#9039#;  --  /usr/include/GL/glext.h:5041
   GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV : constant := 16#903A#;  --  /usr/include/GL/glext.h:5042
   GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV : constant := 16#903B#;  --  /usr/include/GL/glext.h:5043
   GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV : constant := 16#903C#;  --  /usr/include/GL/glext.h:5044

   GL_ACTIVE_PROGRAM_EXT : constant := 16#8B8D#;  --  /usr/include/GL/glext.h:5051

   GL_BUFFER_GPU_ADDRESS_NV : constant := 16#8F1D#;  --  /usr/include/GL/glext.h:5058
   GL_GPU_ADDRESS_NV : constant := 16#8F34#;  --  /usr/include/GL/glext.h:5059
   GL_MAX_SHADER_BUFFER_ADDRESS_NV : constant := 16#8F35#;  --  /usr/include/GL/glext.h:5060

   GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV : constant := 16#8F1E#;  --  /usr/include/GL/glext.h:5064
   GL_ELEMENT_ARRAY_UNIFIED_NV : constant := 16#8F1F#;  --  /usr/include/GL/glext.h:5065
   GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV : constant := 16#8F20#;  --  /usr/include/GL/glext.h:5066
   GL_VERTEX_ARRAY_ADDRESS_NV : constant := 16#8F21#;  --  /usr/include/GL/glext.h:5067
   GL_NORMAL_ARRAY_ADDRESS_NV : constant := 16#8F22#;  --  /usr/include/GL/glext.h:5068
   GL_COLOR_ARRAY_ADDRESS_NV : constant := 16#8F23#;  --  /usr/include/GL/glext.h:5069
   GL_INDEX_ARRAY_ADDRESS_NV : constant := 16#8F24#;  --  /usr/include/GL/glext.h:5070
   GL_TEXTURE_COORD_ARRAY_ADDRESS_NV : constant := 16#8F25#;  --  /usr/include/GL/glext.h:5071
   GL_EDGE_FLAG_ARRAY_ADDRESS_NV : constant := 16#8F26#;  --  /usr/include/GL/glext.h:5072
   GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV : constant := 16#8F27#;  --  /usr/include/GL/glext.h:5073
   GL_FOG_COORD_ARRAY_ADDRESS_NV : constant := 16#8F28#;  --  /usr/include/GL/glext.h:5074
   GL_ELEMENT_ARRAY_ADDRESS_NV : constant := 16#8F29#;  --  /usr/include/GL/glext.h:5075
   GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV : constant := 16#8F2A#;  --  /usr/include/GL/glext.h:5076
   GL_VERTEX_ARRAY_LENGTH_NV : constant := 16#8F2B#;  --  /usr/include/GL/glext.h:5077
   GL_NORMAL_ARRAY_LENGTH_NV : constant := 16#8F2C#;  --  /usr/include/GL/glext.h:5078
   GL_COLOR_ARRAY_LENGTH_NV : constant := 16#8F2D#;  --  /usr/include/GL/glext.h:5079
   GL_INDEX_ARRAY_LENGTH_NV : constant := 16#8F2E#;  --  /usr/include/GL/glext.h:5080
   GL_TEXTURE_COORD_ARRAY_LENGTH_NV : constant := 16#8F2F#;  --  /usr/include/GL/glext.h:5081
   GL_EDGE_FLAG_ARRAY_LENGTH_NV : constant := 16#8F30#;  --  /usr/include/GL/glext.h:5082
   GL_SECONDARY_COLOR_ARRAY_LENGTH_NV : constant := 16#8F31#;  --  /usr/include/GL/glext.h:5083
   GL_FOG_COORD_ARRAY_LENGTH_NV : constant := 16#8F32#;  --  /usr/include/GL/glext.h:5084
   GL_ELEMENT_ARRAY_LENGTH_NV : constant := 16#8F33#;  --  /usr/include/GL/glext.h:5085
   GL_DRAW_INDIRECT_UNIFIED_NV : constant := 16#8F40#;  --  /usr/include/GL/glext.h:5086
   GL_DRAW_INDIRECT_ADDRESS_NV : constant := 16#8F41#;  --  /usr/include/GL/glext.h:5087
   GL_DRAW_INDIRECT_LENGTH_NV : constant := 16#8F42#;  --  /usr/include/GL/glext.h:5088

   GL_MAX_IMAGE_UNITS_EXT : constant := 16#8F38#;  --  /usr/include/GL/glext.h:5105
   GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT : constant := 16#8F39#;  --  /usr/include/GL/glext.h:5106
   GL_IMAGE_BINDING_NAME_EXT : constant := 16#8F3A#;  --  /usr/include/GL/glext.h:5107
   GL_IMAGE_BINDING_LEVEL_EXT : constant := 16#8F3B#;  --  /usr/include/GL/glext.h:5108
   GL_IMAGE_BINDING_LAYERED_EXT : constant := 16#8F3C#;  --  /usr/include/GL/glext.h:5109
   GL_IMAGE_BINDING_LAYER_EXT : constant := 16#8F3D#;  --  /usr/include/GL/glext.h:5110
   GL_IMAGE_BINDING_ACCESS_EXT : constant := 16#8F3E#;  --  /usr/include/GL/glext.h:5111
   GL_IMAGE_1D_EXT : constant := 16#904C#;  --  /usr/include/GL/glext.h:5112
   GL_IMAGE_2D_EXT : constant := 16#904D#;  --  /usr/include/GL/glext.h:5113
   GL_IMAGE_3D_EXT : constant := 16#904E#;  --  /usr/include/GL/glext.h:5114
   GL_IMAGE_2D_RECT_EXT : constant := 16#904F#;  --  /usr/include/GL/glext.h:5115
   GL_IMAGE_CUBE_EXT : constant := 16#9050#;  --  /usr/include/GL/glext.h:5116
   GL_IMAGE_BUFFER_EXT : constant := 16#9051#;  --  /usr/include/GL/glext.h:5117
   GL_IMAGE_1D_ARRAY_EXT : constant := 16#9052#;  --  /usr/include/GL/glext.h:5118
   GL_IMAGE_2D_ARRAY_EXT : constant := 16#9053#;  --  /usr/include/GL/glext.h:5119
   GL_IMAGE_CUBE_MAP_ARRAY_EXT : constant := 16#9054#;  --  /usr/include/GL/glext.h:5120
   GL_IMAGE_2D_MULTISAMPLE_EXT : constant := 16#9055#;  --  /usr/include/GL/glext.h:5121
   GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT : constant := 16#9056#;  --  /usr/include/GL/glext.h:5122
   GL_INT_IMAGE_1D_EXT : constant := 16#9057#;  --  /usr/include/GL/glext.h:5123
   GL_INT_IMAGE_2D_EXT : constant := 16#9058#;  --  /usr/include/GL/glext.h:5124
   GL_INT_IMAGE_3D_EXT : constant := 16#9059#;  --  /usr/include/GL/glext.h:5125
   GL_INT_IMAGE_2D_RECT_EXT : constant := 16#905A#;  --  /usr/include/GL/glext.h:5126
   GL_INT_IMAGE_CUBE_EXT : constant := 16#905B#;  --  /usr/include/GL/glext.h:5127
   GL_INT_IMAGE_BUFFER_EXT : constant := 16#905C#;  --  /usr/include/GL/glext.h:5128
   GL_INT_IMAGE_1D_ARRAY_EXT : constant := 16#905D#;  --  /usr/include/GL/glext.h:5129
   GL_INT_IMAGE_2D_ARRAY_EXT : constant := 16#905E#;  --  /usr/include/GL/glext.h:5130
   GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT : constant := 16#905F#;  --  /usr/include/GL/glext.h:5131
   GL_INT_IMAGE_2D_MULTISAMPLE_EXT : constant := 16#9060#;  --  /usr/include/GL/glext.h:5132
   GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT : constant := 16#9061#;  --  /usr/include/GL/glext.h:5133
   GL_UNSIGNED_INT_IMAGE_1D_EXT : constant := 16#9062#;  --  /usr/include/GL/glext.h:5134
   GL_UNSIGNED_INT_IMAGE_2D_EXT : constant := 16#9063#;  --  /usr/include/GL/glext.h:5135
   GL_UNSIGNED_INT_IMAGE_3D_EXT : constant := 16#9064#;  --  /usr/include/GL/glext.h:5136
   GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT : constant := 16#9065#;  --  /usr/include/GL/glext.h:5137
   GL_UNSIGNED_INT_IMAGE_CUBE_EXT : constant := 16#9066#;  --  /usr/include/GL/glext.h:5138
   GL_UNSIGNED_INT_IMAGE_BUFFER_EXT : constant := 16#9067#;  --  /usr/include/GL/glext.h:5139
   GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT : constant := 16#9068#;  --  /usr/include/GL/glext.h:5140
   GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT : constant := 16#9069#;  --  /usr/include/GL/glext.h:5141
   GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT : constant := 16#906A#;  --  /usr/include/GL/glext.h:5142
   GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT : constant := 16#906B#;  --  /usr/include/GL/glext.h:5143
   GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT : constant := 16#906C#;  --  /usr/include/GL/glext.h:5144
   GL_MAX_IMAGE_SAMPLES_EXT : constant := 16#906D#;  --  /usr/include/GL/glext.h:5145
   GL_IMAGE_BINDING_FORMAT_EXT : constant := 16#906E#;  --  /usr/include/GL/glext.h:5146
   GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT : constant := 16#00000001#;  --  /usr/include/GL/glext.h:5147
   GL_ELEMENT_ARRAY_BARRIER_BIT_EXT : constant := 16#00000002#;  --  /usr/include/GL/glext.h:5148
   GL_UNIFORM_BARRIER_BIT_EXT : constant := 16#00000004#;  --  /usr/include/GL/glext.h:5149
   GL_TEXTURE_FETCH_BARRIER_BIT_EXT : constant := 16#00000008#;  --  /usr/include/GL/glext.h:5150
   GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT : constant := 16#00000020#;  --  /usr/include/GL/glext.h:5151
   GL_COMMAND_BARRIER_BIT_EXT : constant := 16#00000040#;  --  /usr/include/GL/glext.h:5152
   GL_PIXEL_BUFFER_BARRIER_BIT_EXT : constant := 16#00000080#;  --  /usr/include/GL/glext.h:5153
   GL_TEXTURE_UPDATE_BARRIER_BIT_EXT : constant := 16#00000100#;  --  /usr/include/GL/glext.h:5154
   GL_BUFFER_UPDATE_BARRIER_BIT_EXT : constant := 16#00000200#;  --  /usr/include/GL/glext.h:5155
   GL_FRAMEBUFFER_BARRIER_BIT_EXT : constant := 16#00000400#;  --  /usr/include/GL/glext.h:5156
   GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT : constant := 16#00000800#;  --  /usr/include/GL/glext.h:5157
   GL_ATOMIC_COUNTER_BARRIER_BIT_EXT : constant := 16#00001000#;  --  /usr/include/GL/glext.h:5158
   GL_ALL_BARRIER_BITS_EXT : constant := 16#FFFFFFFF#;  --  /usr/include/GL/glext.h:5159

   GL_DOUBLE_VEC2_EXT : constant := 16#8FFC#;  --  /usr/include/GL/glext.h:5164
   GL_DOUBLE_VEC3_EXT : constant := 16#8FFD#;  --  /usr/include/GL/glext.h:5165
   GL_DOUBLE_VEC4_EXT : constant := 16#8FFE#;  --  /usr/include/GL/glext.h:5166
   GL_DOUBLE_MAT2_EXT : constant := 16#8F46#;  --  /usr/include/GL/glext.h:5167
   GL_DOUBLE_MAT3_EXT : constant := 16#8F47#;  --  /usr/include/GL/glext.h:5168
   GL_DOUBLE_MAT4_EXT : constant := 16#8F48#;  --  /usr/include/GL/glext.h:5169
   GL_DOUBLE_MAT2x3_EXT : constant := 16#8F49#;  --  /usr/include/GL/glext.h:5170
   GL_DOUBLE_MAT2x4_EXT : constant := 16#8F4A#;  --  /usr/include/GL/glext.h:5171
   GL_DOUBLE_MAT3x2_EXT : constant := 16#8F4B#;  --  /usr/include/GL/glext.h:5172
   GL_DOUBLE_MAT3x4_EXT : constant := 16#8F4C#;  --  /usr/include/GL/glext.h:5173
   GL_DOUBLE_MAT4x2_EXT : constant := 16#8F4D#;  --  /usr/include/GL/glext.h:5174
   GL_DOUBLE_MAT4x3_EXT : constant := 16#8F4E#;  --  /usr/include/GL/glext.h:5175

   GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV : constant := 16#8E5A#;  --  /usr/include/GL/glext.h:5179
   GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV : constant := 16#8E5B#;  --  /usr/include/GL/glext.h:5180
   GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV : constant := 16#8E5C#;  --  /usr/include/GL/glext.h:5181
   GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV : constant := 16#8E5D#;  --  /usr/include/GL/glext.h:5182
   GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV : constant := 16#8E5E#;  --  /usr/include/GL/glext.h:5183
   GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV : constant := 16#8E5F#;  --  /usr/include/GL/glext.h:5184
   GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV : constant := 16#8F44#;  --  /usr/include/GL/glext.h:5185
   GL_MAX_PROGRAM_SUBROUTINE_NUM_NV : constant := 16#8F45#;  --  /usr/include/GL/glext.h:5186

   GL_INT64_NV : constant := 16#140E#;  --  /usr/include/GL/glext.h:5190
   GL_UNSIGNED_INT64_NV : constant := 16#140F#;  --  /usr/include/GL/glext.h:5191
   GL_INT8_NV : constant := 16#8FE0#;  --  /usr/include/GL/glext.h:5192
   GL_INT8_VEC2_NV : constant := 16#8FE1#;  --  /usr/include/GL/glext.h:5193
   GL_INT8_VEC3_NV : constant := 16#8FE2#;  --  /usr/include/GL/glext.h:5194
   GL_INT8_VEC4_NV : constant := 16#8FE3#;  --  /usr/include/GL/glext.h:5195
   GL_INT16_NV : constant := 16#8FE4#;  --  /usr/include/GL/glext.h:5196
   GL_INT16_VEC2_NV : constant := 16#8FE5#;  --  /usr/include/GL/glext.h:5197
   GL_INT16_VEC3_NV : constant := 16#8FE6#;  --  /usr/include/GL/glext.h:5198
   GL_INT16_VEC4_NV : constant := 16#8FE7#;  --  /usr/include/GL/glext.h:5199
   GL_INT64_VEC2_NV : constant := 16#8FE9#;  --  /usr/include/GL/glext.h:5200
   GL_INT64_VEC3_NV : constant := 16#8FEA#;  --  /usr/include/GL/glext.h:5201
   GL_INT64_VEC4_NV : constant := 16#8FEB#;  --  /usr/include/GL/glext.h:5202
   GL_UNSIGNED_INT8_NV : constant := 16#8FEC#;  --  /usr/include/GL/glext.h:5203
   GL_UNSIGNED_INT8_VEC2_NV : constant := 16#8FED#;  --  /usr/include/GL/glext.h:5204
   GL_UNSIGNED_INT8_VEC3_NV : constant := 16#8FEE#;  --  /usr/include/GL/glext.h:5205
   GL_UNSIGNED_INT8_VEC4_NV : constant := 16#8FEF#;  --  /usr/include/GL/glext.h:5206
   GL_UNSIGNED_INT16_NV : constant := 16#8FF0#;  --  /usr/include/GL/glext.h:5207
   GL_UNSIGNED_INT16_VEC2_NV : constant := 16#8FF1#;  --  /usr/include/GL/glext.h:5208
   GL_UNSIGNED_INT16_VEC3_NV : constant := 16#8FF2#;  --  /usr/include/GL/glext.h:5209
   GL_UNSIGNED_INT16_VEC4_NV : constant := 16#8FF3#;  --  /usr/include/GL/glext.h:5210
   GL_UNSIGNED_INT64_VEC2_NV : constant := 16#8FF5#;  --  /usr/include/GL/glext.h:5211
   GL_UNSIGNED_INT64_VEC3_NV : constant := 16#8FF6#;  --  /usr/include/GL/glext.h:5212
   GL_UNSIGNED_INT64_VEC4_NV : constant := 16#8FF7#;  --  /usr/include/GL/glext.h:5213
   GL_FLOAT16_NV : constant := 16#8FF8#;  --  /usr/include/GL/glext.h:5214
   GL_FLOAT16_VEC2_NV : constant := 16#8FF9#;  --  /usr/include/GL/glext.h:5215
   GL_FLOAT16_VEC3_NV : constant := 16#8FFA#;  --  /usr/include/GL/glext.h:5216
   GL_FLOAT16_VEC4_NV : constant := 16#8FFB#;  --  /usr/include/GL/glext.h:5217

   GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV : constant := 16#00000010#;  --  /usr/include/GL/glext.h:5222

   GL_MAX_PROGRAM_PATCH_ATTRIBS_NV : constant := 16#86D8#;  --  /usr/include/GL/glext.h:5228
   GL_TESS_CONTROL_PROGRAM_NV : constant := 16#891E#;  --  /usr/include/GL/glext.h:5229
   GL_TESS_EVALUATION_PROGRAM_NV : constant := 16#891F#;  --  /usr/include/GL/glext.h:5230
   GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV : constant := 16#8C74#;  --  /usr/include/GL/glext.h:5231
   GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV : constant := 16#8C75#;  --  /usr/include/GL/glext.h:5232

   GL_COVERAGE_SAMPLES_NV : constant := 16#80A9#;  --  /usr/include/GL/glext.h:5241
   GL_COLOR_SAMPLES_NV : constant := 16#8E20#;  --  /usr/include/GL/glext.h:5242

   GL_DATA_BUFFER_AMD : constant := 16#9151#;  --  /usr/include/GL/glext.h:5246
   GL_PERFORMANCE_MONITOR_AMD : constant := 16#9152#;  --  /usr/include/GL/glext.h:5247
   GL_QUERY_OBJECT_AMD : constant := 16#9153#;  --  /usr/include/GL/glext.h:5248
   GL_VERTEX_ARRAY_OBJECT_AMD : constant := 16#9154#;  --  /usr/include/GL/glext.h:5249
   GL_SAMPLER_OBJECT_AMD : constant := 16#9155#;  --  /usr/include/GL/glext.h:5250

   GL_MAX_DEBUG_LOGGED_MESSAGES_AMD : constant := 16#9144#;  --  /usr/include/GL/glext.h:5254
   GL_DEBUG_LOGGED_MESSAGES_AMD : constant := 16#9145#;  --  /usr/include/GL/glext.h:5255
   GL_DEBUG_SEVERITY_HIGH_AMD : constant := 16#9146#;  --  /usr/include/GL/glext.h:5256
   GL_DEBUG_SEVERITY_MEDIUM_AMD : constant := 16#9147#;  --  /usr/include/GL/glext.h:5257
   GL_DEBUG_SEVERITY_LOW_AMD : constant := 16#9148#;  --  /usr/include/GL/glext.h:5258
   GL_DEBUG_CATEGORY_API_ERROR_AMD : constant := 16#9149#;  --  /usr/include/GL/glext.h:5259
   GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD : constant := 16#914A#;  --  /usr/include/GL/glext.h:5260
   GL_DEBUG_CATEGORY_DEPRECATION_AMD : constant := 16#914B#;  --  /usr/include/GL/glext.h:5261
   GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD : constant := 16#914C#;  --  /usr/include/GL/glext.h:5262
   GL_DEBUG_CATEGORY_PERFORMANCE_AMD : constant := 16#914D#;  --  /usr/include/GL/glext.h:5263
   GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD : constant := 16#914E#;  --  /usr/include/GL/glext.h:5264
   GL_DEBUG_CATEGORY_APPLICATION_AMD : constant := 16#914F#;  --  /usr/include/GL/glext.h:5265
   GL_DEBUG_CATEGORY_OTHER_AMD : constant := 16#9150#;  --  /usr/include/GL/glext.h:5266

   GL_SURFACE_STATE_NV : constant := 16#86EB#;  --  /usr/include/GL/glext.h:5270
   GL_SURFACE_REGISTERED_NV : constant := 16#86FD#;  --  /usr/include/GL/glext.h:5271
   GL_SURFACE_MAPPED_NV : constant := 16#8700#;  --  /usr/include/GL/glext.h:5272
   GL_WRITE_DISCARD_NV : constant := 16#88BE#;  --  /usr/include/GL/glext.h:5273

   GL_DEPTH_CLAMP_NEAR_AMD : constant := 16#901E#;  --  /usr/include/GL/glext.h:5280
   GL_DEPTH_CLAMP_FAR_AMD : constant := 16#901F#;  --  /usr/include/GL/glext.h:5281

   GL_TEXTURE_SRGB_DECODE_EXT : constant := 16#8A48#;  --  /usr/include/GL/glext.h:5285
   GL_DECODE_EXT : constant := 16#8A49#;  --  /usr/include/GL/glext.h:5286
   GL_SKIP_DECODE_EXT : constant := 16#8A4A#;  --  /usr/include/GL/glext.h:5287

   GL_TEXTURE_COVERAGE_SAMPLES_NV : constant := 16#9045#;  --  /usr/include/GL/glext.h:5291
   GL_TEXTURE_COLOR_SAMPLES_NV : constant := 16#9046#;  --  /usr/include/GL/glext.h:5292

   GL_FACTOR_MIN_AMD : constant := 16#901C#;  --  /usr/include/GL/glext.h:5296
   GL_FACTOR_MAX_AMD : constant := 16#901D#;  --  /usr/include/GL/glext.h:5297

   GL_SUBSAMPLE_DISTANCE_AMD : constant := 16#883F#;  --  /usr/include/GL/glext.h:5301

   GL_SYNC_X11_FENCE_EXT : constant := 16#90E1#;  --  /usr/include/GL/glext.h:5305

   GL_SCALED_RESOLVE_FASTEST_EXT : constant := 16#90BA#;  --  /usr/include/GL/glext.h:5312
   GL_SCALED_RESOLVE_NICEST_EXT : constant := 16#90BB#;  --  /usr/include/GL/glext.h:5313

   GL_VERSION_1_2_DEPRECATED : constant := 1;  --  /usr/include/GL/glext.h:5438

   GL_VERSION_1_3_DEPRECATED : constant := 1;  --  /usr/include/GL/glext.h:5532

   GL_VERSION_1_4 : constant := 1;  --  /usr/include/GL/glext.h:5612

   GL_VERSION_1_4_DEPRECATED : constant := 1;  --  /usr/include/GL/glext.h:5632

   GL_VERSION_1_5 : constant := 1;  --  /usr/include/GL/glext.h:5714

   GL_VERSION_2_0 : constant := 1;  --  /usr/include/GL/glext.h:5758

   GL_VERSION_2_1 : constant := 1;  --  /usr/include/GL/glext.h:5950

   GL_VERSION_3_0 : constant := 1;  --  /usr/include/GL/glext.h:5968

   GL_VERSION_3_1 : constant := 1;  --  /usr/include/GL/glext.h:6094

   GL_VERSION_3_2 : constant := 1;  --  /usr/include/GL/glext.h:6111

   GL_VERSION_3_3 : constant := 1;  --  /usr/include/GL/glext.h:6128

   GL_VERSION_4_0 : constant := 1;  --  /usr/include/GL/glext.h:6146

   GL_VERSION_4_1 : constant := 1;  --  /usr/include/GL/glext.h:6174

   GL_VERSION_4_2 : constant := 1;  --  /usr/include/GL/glext.h:6185

   GL_ARB_transpose_matrix : constant := 1;  --  /usr/include/GL/glext.h:6275

   GL_ARB_multisample : constant := 1;  --  /usr/include/GL/glext.h:6289

   GL_ARB_texture_env_add : constant := 1;  --  /usr/include/GL/glext.h:6297

   GL_ARB_texture_cube_map : constant := 1;  --  /usr/include/GL/glext.h:6301

   GL_ARB_texture_compression : constant := 1;  --  /usr/include/GL/glext.h:6305

   GL_ARB_texture_border_clamp : constant := 1;  --  /usr/include/GL/glext.h:6325

   GL_ARB_point_parameters : constant := 1;  --  /usr/include/GL/glext.h:6329

   GL_ARB_vertex_blend : constant := 1;  --  /usr/include/GL/glext.h:6339

   GL_ARB_matrix_palette : constant := 1;  --  /usr/include/GL/glext.h:6365

   GL_ARB_texture_env_combine : constant := 1;  --  /usr/include/GL/glext.h:6381

   GL_ARB_texture_env_crossbar : constant := 1;  --  /usr/include/GL/glext.h:6385

   GL_ARB_texture_env_dot3 : constant := 1;  --  /usr/include/GL/glext.h:6389

   GL_ARB_texture_mirrored_repeat : constant := 1;  --  /usr/include/GL/glext.h:6393

   GL_ARB_depth_texture : constant := 1;  --  /usr/include/GL/glext.h:6397

   GL_ARB_shadow : constant := 1;  --  /usr/include/GL/glext.h:6401

   GL_ARB_shadow_ambient : constant := 1;  --  /usr/include/GL/glext.h:6405

   GL_ARB_window_pos : constant := 1;  --  /usr/include/GL/glext.h:6409

   GL_ARB_vertex_program : constant := 1;  --  /usr/include/GL/glext.h:6447

   GL_ARB_fragment_program : constant := 1;  --  /usr/include/GL/glext.h:6577

   GL_ARB_vertex_buffer_object : constant := 1;  --  /usr/include/GL/glext.h:6582

   GL_ARB_occlusion_query : constant := 1;  --  /usr/include/GL/glext.h:6610

   GL_ARB_shader_objects : constant := 1;  --  /usr/include/GL/glext.h:6632

   GL_ARB_vertex_shader : constant := 1;  --  /usr/include/GL/glext.h:6716

   GL_ARB_fragment_shader : constant := 1;  --  /usr/include/GL/glext.h:6728

   GL_ARB_shading_language_100 : constant := 1;  --  /usr/include/GL/glext.h:6732

   GL_ARB_texture_non_power_of_two : constant := 1;  --  /usr/include/GL/glext.h:6736

   GL_ARB_point_sprite : constant := 1;  --  /usr/include/GL/glext.h:6740

   GL_ARB_fragment_program_shadow : constant := 1;  --  /usr/include/GL/glext.h:6744

   GL_ARB_draw_buffers : constant := 1;  --  /usr/include/GL/glext.h:6748

   GL_ARB_texture_rectangle : constant := 1;  --  /usr/include/GL/glext.h:6756

   GL_ARB_color_buffer_float : constant := 1;  --  /usr/include/GL/glext.h:6760

   GL_ARB_half_float_pixel : constant := 1;  --  /usr/include/GL/glext.h:6768

   GL_ARB_texture_float : constant := 1;  --  /usr/include/GL/glext.h:6772

   GL_ARB_pixel_buffer_object : constant := 1;  --  /usr/include/GL/glext.h:6776

   GL_ARB_depth_buffer_float : constant := 1;  --  /usr/include/GL/glext.h:6780

   GL_ARB_draw_instanced : constant := 1;  --  /usr/include/GL/glext.h:6784

   GL_ARB_framebuffer_object : constant := 1;  --  /usr/include/GL/glext.h:6794

   GL_ARB_framebuffer_sRGB : constant := 1;  --  /usr/include/GL/glext.h:6840

   GL_ARB_geometry_shader4 : constant := 1;  --  /usr/include/GL/glext.h:6844

   GL_ARB_half_float_vertex : constant := 1;  --  /usr/include/GL/glext.h:6858

   GL_ARB_instanced_arrays : constant := 1;  --  /usr/include/GL/glext.h:6862

   GL_ARB_map_buffer_range : constant := 1;  --  /usr/include/GL/glext.h:6870

   GL_ARB_texture_buffer_object : constant := 1;  --  /usr/include/GL/glext.h:6880

   GL_ARB_texture_compression_rgtc : constant := 1;  --  /usr/include/GL/glext.h:6888

   GL_ARB_texture_rg : constant := 1;  --  /usr/include/GL/glext.h:6892

   GL_ARB_vertex_array_object : constant := 1;  --  /usr/include/GL/glext.h:6896

   GL_ARB_uniform_buffer_object : constant := 1;  --  /usr/include/GL/glext.h:6910

   GL_ARB_compatibility : constant := 1;  --  /usr/include/GL/glext.h:6930

   GL_ARB_copy_buffer : constant := 1;  --  /usr/include/GL/glext.h:6934

   GL_ARB_shader_texture_lod : constant := 1;  --  /usr/include/GL/glext.h:6942

   GL_ARB_depth_clamp : constant := 1;  --  /usr/include/GL/glext.h:6946

   GL_ARB_draw_elements_base_vertex : constant := 1;  --  /usr/include/GL/glext.h:6950

   GL_ARB_fragment_coord_conventions : constant := 1;  --  /usr/include/GL/glext.h:6964

   GL_ARB_provoking_vertex : constant := 1;  --  /usr/include/GL/glext.h:6968

   GL_ARB_seamless_cube_map : constant := 1;  --  /usr/include/GL/glext.h:6976

   GL_ARB_sync : constant := 1;  --  /usr/include/GL/glext.h:6980

   GL_ARB_texture_multisample : constant := 1;  --  /usr/include/GL/glext.h:7000

   GL_ARB_vertex_array_bgra : constant := 1;  --  /usr/include/GL/glext.h:7014

   GL_ARB_draw_buffers_blend : constant := 1;  --  /usr/include/GL/glext.h:7018

   GL_ARB_sample_shading : constant := 1;  --  /usr/include/GL/glext.h:7032

   GL_ARB_texture_cube_map_array : constant := 1;  --  /usr/include/GL/glext.h:7040

   GL_ARB_texture_gather : constant := 1;  --  /usr/include/GL/glext.h:7044

   GL_ARB_texture_query_lod : constant := 1;  --  /usr/include/GL/glext.h:7048

   GL_ARB_shading_language_include : constant := 1;  --  /usr/include/GL/glext.h:7052

   GL_ARB_texture_compression_bptc : constant := 1;  --  /usr/include/GL/glext.h:7070

   GL_ARB_blend_func_extended : constant := 1;  --  /usr/include/GL/glext.h:7074

   GL_ARB_explicit_attrib_location : constant := 1;  --  /usr/include/GL/glext.h:7084

   GL_ARB_occlusion_query2 : constant := 1;  --  /usr/include/GL/glext.h:7088

   GL_ARB_sampler_objects : constant := 1;  --  /usr/include/GL/glext.h:7092

   GL_ARB_shader_bit_encoding : constant := 1;  --  /usr/include/GL/glext.h:7126

   GL_ARB_texture_rgb10_a2ui : constant := 1;  --  /usr/include/GL/glext.h:7130

   GL_ARB_texture_swizzle : constant := 1;  --  /usr/include/GL/glext.h:7134

   GL_ARB_timer_query : constant := 1;  --  /usr/include/GL/glext.h:7138

   GL_ARB_vertex_type_2_10_10_10_rev : constant := 1;  --  /usr/include/GL/glext.h:7150

   GL_ARB_draw_indirect : constant := 1;  --  /usr/include/GL/glext.h:7232

   GL_ARB_gpu_shader5 : constant := 1;  --  /usr/include/GL/glext.h:7242

   GL_ARB_gpu_shader_fp64 : constant := 1;  --  /usr/include/GL/glext.h:7246

   GL_ARB_shader_subroutine : constant := 1;  --  /usr/include/GL/glext.h:7288

   GL_ARB_tessellation_shader : constant := 1;  --  /usr/include/GL/glext.h:7310

   GL_ARB_texture_buffer_object_rgb32 : constant := 1;  --  /usr/include/GL/glext.h:7320

   GL_ARB_transform_feedback2 : constant := 1;  --  /usr/include/GL/glext.h:7324

   GL_ARB_transform_feedback3 : constant := 1;  --  /usr/include/GL/glext.h:7344

   GL_ARB_ES2_compatibility : constant := 1;  --  /usr/include/GL/glext.h:7358

   GL_ARB_get_program_binary : constant := 1;  --  /usr/include/GL/glext.h:7374

   GL_ARB_separate_shader_objects : constant := 1;  --  /usr/include/GL/glext.h:7386

   GL_ARB_vertex_attrib_64bit : constant := 1;  --  /usr/include/GL/glext.h:7512

   GL_ARB_viewport_array : constant := 1;  --  /usr/include/GL/glext.h:7538

   GL_ARB_cl_event : constant := 1;  --  /usr/include/GL/glext.h:7564

   GL_ARB_debug_output : constant := 1;  --  /usr/include/GL/glext.h:7572

   GL_ARB_robustness : constant := 1;  --  /usr/include/GL/glext.h:7586

   GL_ARB_shader_stencil_export : constant := 1;  --  /usr/include/GL/glext.h:7632

   GL_ARB_base_instance : constant := 1;  --  /usr/include/GL/glext.h:7636

   GL_ARB_shading_language_420pack : constant := 1;  --  /usr/include/GL/glext.h:7648

   GL_ARB_transform_feedback_instanced : constant := 1;  --  /usr/include/GL/glext.h:7652

   GL_ARB_compressed_texture_pixel_storage : constant := 1;  --  /usr/include/GL/glext.h:7662

   GL_ARB_conservative_depth : constant := 1;  --  /usr/include/GL/glext.h:7666

   GL_ARB_internalformat_query : constant := 1;  --  /usr/include/GL/glext.h:7670

   GL_ARB_map_buffer_alignment : constant := 1;  --  /usr/include/GL/glext.h:7678

   GL_ARB_shader_atomic_counters : constant := 1;  --  /usr/include/GL/glext.h:7682

   GL_ARB_shader_image_load_store : constant := 1;  --  /usr/include/GL/glext.h:7690

   GL_ARB_shading_language_packing : constant := 1;  --  /usr/include/GL/glext.h:7700

   GL_ARB_texture_storage : constant := 1;  --  /usr/include/GL/glext.h:7704

   GL_EXT_abgr : constant := 1;  --  /usr/include/GL/glext.h:7722

   GL_EXT_blend_color : constant := 1;  --  /usr/include/GL/glext.h:7726

   GL_EXT_polygon_offset : constant := 1;  --  /usr/include/GL/glext.h:7734

   GL_EXT_texture : constant := 1;  --  /usr/include/GL/glext.h:7742

   GL_EXT_texture3D : constant := 1;  --  /usr/include/GL/glext.h:7746

   GL_SGIS_texture_filter4 : constant := 1;  --  /usr/include/GL/glext.h:7756

   GL_EXT_subtexture : constant := 1;  --  /usr/include/GL/glext.h:7766

   GL_EXT_copy_texture : constant := 1;  --  /usr/include/GL/glext.h:7776

   GL_EXT_histogram : constant := 1;  --  /usr/include/GL/glext.h:7792

   GL_EXT_convolution : constant := 1;  --  /usr/include/GL/glext.h:7818

   GL_SGI_color_matrix : constant := 1;  --  /usr/include/GL/glext.h:7850

   GL_SGI_color_table : constant := 1;  --  /usr/include/GL/glext.h:7854

   GL_SGIX_pixel_texture : constant := 1;  --  /usr/include/GL/glext.h:7874

   GL_SGIS_pixel_texture : constant := 1;  --  /usr/include/GL/glext.h:7882

   GL_SGIS_texture4D : constant := 1;  --  /usr/include/GL/glext.h:7900

   GL_SGI_texture_color_table : constant := 1;  --  /usr/include/GL/glext.h:7910

   GL_EXT_cmyka : constant := 1;  --  /usr/include/GL/glext.h:7914

   GL_EXT_texture_object : constant := 1;  --  /usr/include/GL/glext.h:7918

   GL_SGIS_detail_texture : constant := 1;  --  /usr/include/GL/glext.h:7936

   GL_SGIS_sharpen_texture : constant := 1;  --  /usr/include/GL/glext.h:7946

   GL_EXT_packed_pixels : constant := 1;  --  /usr/include/GL/glext.h:7956

   GL_SGIS_texture_lod : constant := 1;  --  /usr/include/GL/glext.h:7960

   GL_SGIS_multisample : constant := 1;  --  /usr/include/GL/glext.h:7964

   GL_EXT_rescale_normal : constant := 1;  --  /usr/include/GL/glext.h:7974

   GL_EXT_vertex_array : constant := 1;  --  /usr/include/GL/glext.h:7978

   GL_EXT_misc_attribute : constant := 1;  --  /usr/include/GL/glext.h:8002

   GL_SGIS_generate_mipmap : constant := 1;  --  /usr/include/GL/glext.h:8006

   GL_SGIX_clipmap : constant := 1;  --  /usr/include/GL/glext.h:8010

   GL_SGIX_shadow : constant := 1;  --  /usr/include/GL/glext.h:8014

   GL_SGIS_texture_edge_clamp : constant := 1;  --  /usr/include/GL/glext.h:8018

   GL_SGIS_texture_border_clamp : constant := 1;  --  /usr/include/GL/glext.h:8022

   GL_EXT_blend_minmax : constant := 1;  --  /usr/include/GL/glext.h:8026

   GL_EXT_blend_subtract : constant := 1;  --  /usr/include/GL/glext.h:8034

   GL_EXT_blend_logic_op : constant := 1;  --  /usr/include/GL/glext.h:8038

   GL_SGIX_interlace : constant := 1;  --  /usr/include/GL/glext.h:8042

   GL_SGIX_pixel_tiles : constant := 1;  --  /usr/include/GL/glext.h:8046

   GL_SGIX_texture_select : constant := 1;  --  /usr/include/GL/glext.h:8050

   GL_SGIX_sprite : constant := 1;  --  /usr/include/GL/glext.h:8054

   GL_SGIX_texture_multi_buffer : constant := 1;  --  /usr/include/GL/glext.h:8068

   GL_EXT_point_parameters : constant := 1;  --  /usr/include/GL/glext.h:8072

   GL_SGIS_point_parameters : constant := 1;  --  /usr/include/GL/glext.h:8082

   GL_SGIX_instruments : constant := 1;  --  /usr/include/GL/glext.h:8092

   GL_SGIX_texture_scale_bias : constant := 1;  --  /usr/include/GL/glext.h:8110

   GL_SGIX_framezoom : constant := 1;  --  /usr/include/GL/glext.h:8114

   GL_SGIX_tag_sample_buffer : constant := 1;  --  /usr/include/GL/glext.h:8122

   GL_SGIX_polynomial_ffd : constant := 1;  --  /usr/include/GL/glext.h:8130

   GL_SGIX_reference_plane : constant := 1;  --  /usr/include/GL/glext.h:8144

   GL_SGIX_flush_raster : constant := 1;  --  /usr/include/GL/glext.h:8152

   GL_SGIX_depth_texture : constant := 1;  --  /usr/include/GL/glext.h:8160

   GL_SGIS_fog_function : constant := 1;  --  /usr/include/GL/glext.h:8164

   GL_SGIX_fog_offset : constant := 1;  --  /usr/include/GL/glext.h:8174

   GL_HP_image_transform : constant := 1;  --  /usr/include/GL/glext.h:8178

   GL_HP_convolution_border_modes : constant := 1;  --  /usr/include/GL/glext.h:8196

   GL_SGIX_texture_add_env : constant := 1;  --  /usr/include/GL/glext.h:8200

   GL_EXT_color_subtable : constant := 1;  --  /usr/include/GL/glext.h:8204

   GL_PGI_vertex_hints : constant := 1;  --  /usr/include/GL/glext.h:8214

   GL_PGI_misc_hints : constant := 1;  --  /usr/include/GL/glext.h:8218

   GL_EXT_paletted_texture : constant := 1;  --  /usr/include/GL/glext.h:8226

   GL_EXT_clip_volume_hint : constant := 1;  --  /usr/include/GL/glext.h:8240

   GL_SGIX_list_priority : constant := 1;  --  /usr/include/GL/glext.h:8244

   GL_SGIX_ir_instrument1 : constant := 1;  --  /usr/include/GL/glext.h:8262

   GL_SGIX_calligraphic_fragment : constant := 1;  --  /usr/include/GL/glext.h:8266

   GL_SGIX_texture_lod_bias : constant := 1;  --  /usr/include/GL/glext.h:8270

   GL_SGIX_shadow_ambient : constant := 1;  --  /usr/include/GL/glext.h:8274

   GL_EXT_index_texture : constant := 1;  --  /usr/include/GL/glext.h:8278

   GL_EXT_index_material : constant := 1;  --  /usr/include/GL/glext.h:8282

   GL_EXT_index_func : constant := 1;  --  /usr/include/GL/glext.h:8290

   GL_EXT_index_array_formats : constant := 1;  --  /usr/include/GL/glext.h:8298

   GL_EXT_compiled_vertex_array : constant := 1;  --  /usr/include/GL/glext.h:8302

   GL_EXT_cull_vertex : constant := 1;  --  /usr/include/GL/glext.h:8312

   GL_SGIX_ycrcb : constant := 1;  --  /usr/include/GL/glext.h:8322

   GL_SGIX_fragment_lighting : constant := 1;  --  /usr/include/GL/glext.h:8326

   GL_IBM_rasterpos_clip : constant := 1;  --  /usr/include/GL/glext.h:8368

   GL_HP_texture_lighting : constant := 1;  --  /usr/include/GL/glext.h:8372

   GL_EXT_draw_range_elements : constant := 1;  --  /usr/include/GL/glext.h:8376

   GL_WIN_phong_shading : constant := 1;  --  /usr/include/GL/glext.h:8384

   GL_WIN_specular_fog : constant := 1;  --  /usr/include/GL/glext.h:8388

   GL_EXT_light_texture : constant := 1;  --  /usr/include/GL/glext.h:8392

   GL_SGIX_blend_alpha_minmax : constant := 1;  --  /usr/include/GL/glext.h:8404

   GL_EXT_bgra : constant := 1;  --  /usr/include/GL/glext.h:8408

   GL_SGIX_async : constant := 1;  --  /usr/include/GL/glext.h:8412

   GL_SGIX_async_pixel : constant := 1;  --  /usr/include/GL/glext.h:8430

   GL_SGIX_async_histogram : constant := 1;  --  /usr/include/GL/glext.h:8434

   GL_INTEL_parallel_arrays : constant := 1;  --  /usr/include/GL/glext.h:8438

   GL_HP_occlusion_test : constant := 1;  --  /usr/include/GL/glext.h:8452

   GL_EXT_pixel_transform : constant := 1;  --  /usr/include/GL/glext.h:8456

   GL_EXT_pixel_transform_color_table : constant := 1;  --  /usr/include/GL/glext.h:8470

   GL_EXT_shared_texture_palette : constant := 1;  --  /usr/include/GL/glext.h:8474

   GL_EXT_separate_specular_color : constant := 1;  --  /usr/include/GL/glext.h:8478

   GL_EXT_secondary_color : constant := 1;  --  /usr/include/GL/glext.h:8482

   GL_EXT_texture_perturb_normal : constant := 1;  --  /usr/include/GL/glext.h:8522

   GL_EXT_multi_draw_arrays : constant := 1;  --  /usr/include/GL/glext.h:8530

   GL_EXT_fog_coord : constant := 1;  --  /usr/include/GL/glext.h:8540

   GL_REND_screen_coordinates : constant := 1;  --  /usr/include/GL/glext.h:8556

   GL_EXT_coordinate_frame : constant := 1;  --  /usr/include/GL/glext.h:8560

   GL_EXT_texture_env_combine : constant := 1;  --  /usr/include/GL/glext.h:8610

   GL_APPLE_specular_vector : constant := 1;  --  /usr/include/GL/glext.h:8614

   GL_APPLE_transform_hint : constant := 1;  --  /usr/include/GL/glext.h:8618

   GL_SGIX_fog_scale : constant := 1;  --  /usr/include/GL/glext.h:8622

   GL_SUNX_constant_data : constant := 1;  --  /usr/include/GL/glext.h:8626

   GL_SUN_global_alpha : constant := 1;  --  /usr/include/GL/glext.h:8634

   GL_SUN_triangle_list : constant := 1;  --  /usr/include/GL/glext.h:8656

   GL_SUN_vertex : constant := 1;  --  /usr/include/GL/glext.h:8676

   GL_EXT_blend_func_separate : constant := 1;  --  /usr/include/GL/glext.h:8762

   GL_INGR_blend_func_separate : constant := 1;  --  /usr/include/GL/glext.h:8770

   GL_INGR_color_clamp : constant := 1;  --  /usr/include/GL/glext.h:8778

   GL_INGR_interlace_read : constant := 1;  --  /usr/include/GL/glext.h:8782

   GL_EXT_stencil_wrap : constant := 1;  --  /usr/include/GL/glext.h:8786

   GL_EXT_422_pixels : constant := 1;  --  /usr/include/GL/glext.h:8790

   GL_NV_texgen_reflection : constant := 1;  --  /usr/include/GL/glext.h:8794

   GL_SUN_convolution_border_modes : constant := 1;  --  /usr/include/GL/glext.h:8798

   GL_EXT_texture_env_add : constant := 1;  --  /usr/include/GL/glext.h:8802

   GL_EXT_texture_lod_bias : constant := 1;  --  /usr/include/GL/glext.h:8806

   GL_EXT_texture_filter_anisotropic : constant := 1;  --  /usr/include/GL/glext.h:8810

   GL_EXT_vertex_weighting : constant := 1;  --  /usr/include/GL/glext.h:8814

   GL_NV_light_max_exponent : constant := 1;  --  /usr/include/GL/glext.h:8826

   GL_NV_vertex_array_range : constant := 1;  --  /usr/include/GL/glext.h:8830

   GL_NV_register_combiners : constant := 1;  --  /usr/include/GL/glext.h:8840

   GL_NV_fog_distance : constant := 1;  --  /usr/include/GL/glext.h:8872

   GL_NV_texgen_emboss : constant := 1;  --  /usr/include/GL/glext.h:8876

   GL_NV_blend_square : constant := 1;  --  /usr/include/GL/glext.h:8880

   GL_NV_texture_env_combine4 : constant := 1;  --  /usr/include/GL/glext.h:8884

   GL_MESA_resize_buffers : constant := 1;  --  /usr/include/GL/glext.h:8888

   GL_MESA_window_pos : constant := 1;  --  /usr/include/GL/glext.h:8896

   GL_IBM_cull_vertex : constant := 1;  --  /usr/include/GL/glext.h:8950

   GL_IBM_multimode_draw_arrays : constant := 1;  --  /usr/include/GL/glext.h:8954

   GL_IBM_vertex_array_lists : constant := 1;  --  /usr/include/GL/glext.h:8964

   GL_SGIX_subsample : constant := 1;  --  /usr/include/GL/glext.h:8986

   GL_SGIX_ycrcba : constant := 1;  --  /usr/include/GL/glext.h:8990

   GL_SGIX_ycrcb_subsample : constant := 1;  --  /usr/include/GL/glext.h:8994

   GL_SGIX_depth_pass_instrument : constant := 1;  --  /usr/include/GL/glext.h:8998

   GL_3DFX_texture_compression_FXT1 : constant := 1;  --  /usr/include/GL/glext.h:9002

   GL_3DFX_multisample : constant := 1;  --  /usr/include/GL/glext.h:9006

   GL_3DFX_tbuffer : constant := 1;  --  /usr/include/GL/glext.h:9010

   GL_EXT_multisample : constant := 1;  --  /usr/include/GL/glext.h:9018

   GL_SGIX_vertex_preclip : constant := 1;  --  /usr/include/GL/glext.h:9028

   GL_SGIX_convolution_accuracy : constant := 1;  --  /usr/include/GL/glext.h:9032

   GL_SGIX_resample : constant := 1;  --  /usr/include/GL/glext.h:9036

   GL_SGIS_point_line_texgen : constant := 1;  --  /usr/include/GL/glext.h:9040

   GL_SGIS_texture_color_mask : constant := 1;  --  /usr/include/GL/glext.h:9044

   GL_SGIX_igloo_interface : constant := 1;  --  /usr/include/GL/glext.h:9052

   GL_EXT_texture_env_dot3 : constant := 1;  --  /usr/include/GL/glext.h:9060

   GL_ATI_texture_mirror_once : constant := 1;  --  /usr/include/GL/glext.h:9064

   GL_NV_fence : constant := 1;  --  /usr/include/GL/glext.h:9068

   GL_NV_evaluators : constant := 1;  --  /usr/include/GL/glext.h:9088

   GL_NV_packed_depth_stencil : constant := 1;  --  /usr/include/GL/glext.h:9112

   GL_NV_register_combiners2 : constant := 1;  --  /usr/include/GL/glext.h:9116

   GL_NV_texture_compression_vtc : constant := 1;  --  /usr/include/GL/glext.h:9126

   GL_NV_texture_rectangle : constant := 1;  --  /usr/include/GL/glext.h:9130

   GL_NV_texture_shader : constant := 1;  --  /usr/include/GL/glext.h:9134

   GL_NV_texture_shader2 : constant := 1;  --  /usr/include/GL/glext.h:9138

   GL_NV_vertex_array_range2 : constant := 1;  --  /usr/include/GL/glext.h:9142

   GL_NV_vertex_program : constant := 1;  --  /usr/include/GL/glext.h:9146

   GL_SGIX_texture_coordinate_clamp : constant := 1;  --  /usr/include/GL/glext.h:9280

   GL_SGIX_scalebias_hint : constant := 1;  --  /usr/include/GL/glext.h:9284

   GL_OML_interlace : constant := 1;  --  /usr/include/GL/glext.h:9288

   GL_OML_subsample : constant := 1;  --  /usr/include/GL/glext.h:9292

   GL_OML_resample : constant := 1;  --  /usr/include/GL/glext.h:9296

   GL_NV_copy_depth_to_color : constant := 1;  --  /usr/include/GL/glext.h:9300

   GL_ATI_envmap_bumpmap : constant := 1;  --  /usr/include/GL/glext.h:9304

   GL_ATI_fragment_shader : constant := 1;  --  /usr/include/GL/glext.h:9318

   GL_ATI_pn_triangles : constant := 1;  --  /usr/include/GL/glext.h:9352

   GL_ATI_vertex_array_object : constant := 1;  --  /usr/include/GL/glext.h:9362

   GL_EXT_vertex_shader : constant := 1;  --  /usr/include/GL/glext.h:9392

   GL_ATI_vertex_streams : constant := 1;  --  /usr/include/GL/glext.h:9482

   GL_ATI_element_array : constant := 1;  --  /usr/include/GL/glext.h:9578

   GL_SUN_mesh_array : constant := 1;  --  /usr/include/GL/glext.h:9590

   GL_SUN_slice_accum : constant := 1;  --  /usr/include/GL/glext.h:9598

   GL_NV_multisample_filter_hint : constant := 1;  --  /usr/include/GL/glext.h:9602

   GL_NV_depth_clamp : constant := 1;  --  /usr/include/GL/glext.h:9606

   GL_NV_occlusion_query : constant := 1;  --  /usr/include/GL/glext.h:9610

   GL_NV_point_sprite : constant := 1;  --  /usr/include/GL/glext.h:9630

   GL_NV_texture_shader3 : constant := 1;  --  /usr/include/GL/glext.h:9640

   GL_NV_vertex_program1_1 : constant := 1;  --  /usr/include/GL/glext.h:9644

   GL_EXT_shadow_funcs : constant := 1;  --  /usr/include/GL/glext.h:9648

   GL_EXT_stencil_two_side : constant := 1;  --  /usr/include/GL/glext.h:9652

   GL_ATI_text_fragment_shader : constant := 1;  --  /usr/include/GL/glext.h:9660

   GL_APPLE_client_storage : constant := 1;  --  /usr/include/GL/glext.h:9664

   GL_APPLE_element_array : constant := 1;  --  /usr/include/GL/glext.h:9668

   GL_APPLE_fence : constant := 1;  --  /usr/include/GL/glext.h:9684

   GL_APPLE_vertex_array_object : constant := 1;  --  /usr/include/GL/glext.h:9706

   GL_APPLE_vertex_array_range : constant := 1;  --  /usr/include/GL/glext.h:9720

   GL_APPLE_ycbcr_422 : constant := 1;  --  /usr/include/GL/glext.h:9732

   GL_S3_s3tc : constant := 1;  --  /usr/include/GL/glext.h:9736

   GL_ATI_draw_buffers : constant := 1;  --  /usr/include/GL/glext.h:9740

   GL_ATI_pixel_format_float : constant := 1;  --  /usr/include/GL/glext.h:9748

   GL_ATI_texture_env_combine3 : constant := 1;  --  /usr/include/GL/glext.h:9755

   GL_ATI_texture_float : constant := 1;  --  /usr/include/GL/glext.h:9759

   GL_NV_float_buffer : constant := 1;  --  /usr/include/GL/glext.h:9763

   GL_NV_fragment_program : constant := 1;  --  /usr/include/GL/glext.h:9767

   GL_NV_half_float : constant := 1;  --  /usr/include/GL/glext.h:9786

   GL_NV_pixel_data_range : constant := 1;  --  /usr/include/GL/glext.h:9884

   GL_NV_primitive_restart : constant := 1;  --  /usr/include/GL/glext.h:9894

   GL_NV_texture_expand_normal : constant := 1;  --  /usr/include/GL/glext.h:9904

   GL_NV_vertex_program2 : constant := 1;  --  /usr/include/GL/glext.h:9908

   GL_ATI_map_object_buffer : constant := 1;  --  /usr/include/GL/glext.h:9912

   GL_ATI_separate_stencil : constant := 1;  --  /usr/include/GL/glext.h:9922

   GL_ATI_vertex_attrib_array_object : constant := 1;  --  /usr/include/GL/glext.h:9932

   GL_OES_read_format : constant := 1;  --  /usr/include/GL/glext.h:9944

   GL_EXT_depth_bounds_test : constant := 1;  --  /usr/include/GL/glext.h:9948

   GL_EXT_texture_mirror_clamp : constant := 1;  --  /usr/include/GL/glext.h:9956

   GL_EXT_blend_equation_separate : constant := 1;  --  /usr/include/GL/glext.h:9960

   GL_MESA_pack_invert : constant := 1;  --  /usr/include/GL/glext.h:9968

   GL_MESA_ycbcr_texture : constant := 1;  --  /usr/include/GL/glext.h:9972

   GL_EXT_pixel_buffer_object : constant := 1;  --  /usr/include/GL/glext.h:9976

   GL_NV_fragment_program_option : constant := 1;  --  /usr/include/GL/glext.h:9980

   GL_NV_fragment_program2 : constant := 1;  --  /usr/include/GL/glext.h:9984

   GL_NV_vertex_program2_option : constant := 1;  --  /usr/include/GL/glext.h:9988

   GL_NV_vertex_program3 : constant := 1;  --  /usr/include/GL/glext.h:9992

   GL_EXT_framebuffer_object : constant := 1;  --  /usr/include/GL/glext.h:9996

   GL_GREMEDY_string_marker : constant := 1;  --  /usr/include/GL/glext.h:10036

   GL_EXT_packed_depth_stencil : constant := 1;  --  /usr/include/GL/glext.h:10044

   GL_EXT_stencil_clear_tag : constant := 1;  --  /usr/include/GL/glext.h:10048

   GL_EXT_texture_sRGB : constant := 1;  --  /usr/include/GL/glext.h:10056

   GL_EXT_framebuffer_blit : constant := 1;  --  /usr/include/GL/glext.h:10060

   GL_EXT_framebuffer_multisample : constant := 1;  --  /usr/include/GL/glext.h:10068

   GL_MESAX_texture_stack : constant := 1;  --  /usr/include/GL/glext.h:10076

   GL_EXT_timer_query : constant := 1;  --  /usr/include/GL/glext.h:10080

   GL_EXT_gpu_program_parameters : constant := 1;  --  /usr/include/GL/glext.h:10090

   GL_APPLE_flush_buffer_range : constant := 1;  --  /usr/include/GL/glext.h:10100

   GL_NV_gpu_program4 : constant := 1;  --  /usr/include/GL/glext.h:10110

   GL_NV_geometry_program4 : constant := 1;  --  /usr/include/GL/glext.h:10148

   GL_EXT_geometry_shader4 : constant := 1;  --  /usr/include/GL/glext.h:10162

   GL_NV_vertex_program4 : constant := 1;  --  /usr/include/GL/glext.h:10170

   GL_EXT_gpu_shader4 : constant := 1;  --  /usr/include/GL/glext.h:10222

   GL_EXT_draw_instanced : constant := 1;  --  /usr/include/GL/glext.h:10250

   GL_EXT_packed_float : constant := 1;  --  /usr/include/GL/glext.h:10260

   GL_EXT_texture_array : constant := 1;  --  /usr/include/GL/glext.h:10264

   GL_EXT_texture_buffer_object : constant := 1;  --  /usr/include/GL/glext.h:10268

   GL_EXT_texture_compression_latc : constant := 1;  --  /usr/include/GL/glext.h:10276

   GL_EXT_texture_compression_rgtc : constant := 1;  --  /usr/include/GL/glext.h:10280

   GL_EXT_texture_shared_exponent : constant := 1;  --  /usr/include/GL/glext.h:10284

   GL_NV_depth_buffer_float : constant := 1;  --  /usr/include/GL/glext.h:10288

   GL_NV_fragment_program4 : constant := 1;  --  /usr/include/GL/glext.h:10300

   GL_NV_framebuffer_multisample_coverage : constant := 1;  --  /usr/include/GL/glext.h:10304

   GL_EXT_framebuffer_sRGB : constant := 1;  --  /usr/include/GL/glext.h:10312

   GL_NV_geometry_shader4 : constant := 1;  --  /usr/include/GL/glext.h:10316

   GL_NV_parameter_buffer_object : constant := 1;  --  /usr/include/GL/glext.h:10320

   GL_EXT_draw_buffers2 : constant := 1;  --  /usr/include/GL/glext.h:10332

   GL_NV_transform_feedback : constant := 1;  --  /usr/include/GL/glext.h:10350

   GL_EXT_bindable_uniform : constant := 1;  --  /usr/include/GL/glext.h:10380

   GL_EXT_texture_integer : constant := 1;  --  /usr/include/GL/glext.h:10392

   GL_GREMEDY_frame_terminator : constant := 1;  --  /usr/include/GL/glext.h:10410

   GL_NV_conditional_render : constant := 1;  --  /usr/include/GL/glext.h:10418

   GL_NV_present_video : constant := 1;  --  /usr/include/GL/glext.h:10428

   GL_EXT_transform_feedback : constant := 1;  --  /usr/include/GL/glext.h:10446

   GL_EXT_direct_state_access : constant := 1;  --  /usr/include/GL/glext.h:10466

   GL_EXT_vertex_array_bgra : constant := 1;  --  /usr/include/GL/glext.h:10884

   GL_EXT_texture_swizzle : constant := 1;  --  /usr/include/GL/glext.h:10888

   GL_NV_explicit_multisample : constant := 1;  --  /usr/include/GL/glext.h:10892

   GL_NV_transform_feedback2 : constant := 1;  --  /usr/include/GL/glext.h:10904

   GL_ATI_meminfo : constant := 1;  --  /usr/include/GL/glext.h:10924

   GL_AMD_performance_monitor : constant := 1;  --  /usr/include/GL/glext.h:10928

   GL_AMD_texture_texture4 : constant := 1;  --  /usr/include/GL/glext.h:10956

   GL_AMD_vertex_shader_tesselator : constant := 1;  --  /usr/include/GL/glext.h:10960

   GL_EXT_provoking_vertex : constant := 1;  --  /usr/include/GL/glext.h:10970

   GL_EXT_texture_snorm : constant := 1;  --  /usr/include/GL/glext.h:10978

   GL_AMD_draw_buffers_blend : constant := 1;  --  /usr/include/GL/glext.h:10982

   GL_APPLE_texture_range : constant := 1;  --  /usr/include/GL/glext.h:10996

   GL_APPLE_float_pixels : constant := 1;  --  /usr/include/GL/glext.h:11006

   GL_APPLE_vertex_program_evaluators : constant := 1;  --  /usr/include/GL/glext.h:11010

   GL_APPLE_aux_depth_stencil : constant := 1;  --  /usr/include/GL/glext.h:11030

   GL_APPLE_object_purgeable : constant := 1;  --  /usr/include/GL/glext.h:11034

   GL_APPLE_row_bytes : constant := 1;  --  /usr/include/GL/glext.h:11046

   GL_APPLE_rgb_422 : constant := 1;  --  /usr/include/GL/glext.h:11050

   GL_NV_video_capture : constant := 1;  --  /usr/include/GL/glext.h:11054

   GL_NV_copy_image : constant := 1;  --  /usr/include/GL/glext.h:11084

   GL_EXT_separate_shader_objects : constant := 1;  --  /usr/include/GL/glext.h:11092

   GL_NV_parameter_buffer_object2 : constant := 1;  --  /usr/include/GL/glext.h:11104

   GL_NV_shader_buffer_load : constant := 1;  --  /usr/include/GL/glext.h:11108

   GL_NV_vertex_buffer_unified_memory : constant := 1;  --  /usr/include/GL/glext.h:11142

   GL_NV_texture_barrier : constant := 1;  --  /usr/include/GL/glext.h:11172

   GL_AMD_shader_stencil_export : constant := 1;  --  /usr/include/GL/glext.h:11180

   GL_AMD_seamless_cubemap_per_texture : constant := 1;  --  /usr/include/GL/glext.h:11184

   GL_AMD_conservative_depth : constant := 1;  --  /usr/include/GL/glext.h:11188

   GL_EXT_shader_image_load_store : constant := 1;  --  /usr/include/GL/glext.h:11192

   GL_EXT_vertex_attrib_64bit : constant := 1;  --  /usr/include/GL/glext.h:11202

   GL_NV_gpu_program5 : constant := 1;  --  /usr/include/GL/glext.h:11230

   GL_NV_gpu_shader5 : constant := 1;  --  /usr/include/GL/glext.h:11240

   GL_NV_shader_buffer_store : constant := 1;  --  /usr/include/GL/glext.h:11312

   GL_NV_tessellation_program5 : constant := 1;  --  /usr/include/GL/glext.h:11316

   GL_NV_vertex_attrib_integer_64bit : constant := 1;  --  /usr/include/GL/glext.h:11320

   GL_NV_multisample_coverage : constant := 1;  --  /usr/include/GL/glext.h:11364

   GL_AMD_name_gen_delete : constant := 1;  --  /usr/include/GL/glext.h:11368

   GL_AMD_debug_output : constant := 1;  --  /usr/include/GL/glext.h:11380

   GL_NV_vdpau_interop : constant := 1;  --  /usr/include/GL/glext.h:11394

   GL_AMD_transform_feedback3_lines_triangles : constant := 1;  --  /usr/include/GL/glext.h:11420

   GL_AMD_depth_clamp_separate : constant := 1;  --  /usr/include/GL/glext.h:11424

   GL_EXT_texture_sRGB_decode : constant := 1;  --  /usr/include/GL/glext.h:11428

   GL_NV_texture_multisample : constant := 1;  --  /usr/include/GL/glext.h:11432

   GL_AMD_blend_minmax_factor : constant := 1;  --  /usr/include/GL/glext.h:11450

   GL_AMD_sample_positions : constant := 1;  --  /usr/include/GL/glext.h:11454

   GL_EXT_x11_sync_object : constant := 1;  --  /usr/include/GL/glext.h:11462

   GL_AMD_multi_draw_indirect : constant := 1;  --  /usr/include/GL/glext.h:11470

   GL_EXT_framebuffer_multisample_blit_scaled : constant := 1;  --  /usr/include/GL/glext.h:11480

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
   subtype GLchar is char;  -- /usr/include/GL/glext.h:5322

  -- GL types for handling large vertex buffer objects
   subtype GLintptr is stddef_h.ptrdiff_t;  -- /usr/include/GL/glext.h:5327

   subtype GLsizeiptr is stddef_h.ptrdiff_t;  -- /usr/include/GL/glext.h:5328

  -- GL types for handling large vertex buffer objects
   subtype GLintptrARB is stddef_h.ptrdiff_t;  -- /usr/include/GL/glext.h:5333

   subtype GLsizeiptrARB is stddef_h.ptrdiff_t;  -- /usr/include/GL/glext.h:5334

  -- GL types for program/shader text and shader object handles
   subtype GLcharARB is char;  -- /usr/include/GL/glext.h:5339

   subtype GLhandleARB is unsigned;  -- /usr/include/GL/glext.h:5340

  -- GL type for "half" precision (s10e5) float data in host memory
   subtype GLhalfARB is unsigned_short;  -- /usr/include/GL/glext.h:5345

   subtype GLhalfNV is unsigned_short;  -- /usr/include/GL/glext.h:5349

  -- This code block is duplicated in glxext.h, so must be protected
  -- Define int32_t, int64_t, and uint64_t types for UST/MSC
  -- (as used in the GL_EXT_timer_query extension).
  -- Fallback if nothing above works
   subtype GLint64EXT is stdint_h.int64_t;  -- /usr/include/GL/glext.h:5391

   subtype GLuint64EXT is stdint_h.uint64_t;  -- /usr/include/GL/glext.h:5392

   subtype GLint64 is stdint_h.int64_t;  -- /usr/include/GL/glext.h:5396

   subtype GLuint64 is stdint_h.uint64_t;  -- /usr/include/GL/glext.h:5397

   --  skipped empty struct uu_GLsync

   type GLsync is new System.Address;  -- /usr/include/GL/glext.h:5398

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
         arg7 : System.Address);  -- /usr/include/GL/glext.h:5408

   type GLDEBUGPROCAMD is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : access GLchar;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:5412

   subtype GLvdpauSurfaceNV is GLintptr;  -- /usr/include/GL/glext.h:5416

   type PFNGLCOLORTABLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:5473

   type PFNGLCOLORTABLEPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5474

   type PFNGLCOLORTABLEPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5475

   type PFNGLCOPYCOLORTABLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:5476

   type PFNGLGETCOLORTABLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:5477

   type PFNGLGETCOLORTABLEPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5478

   type PFNGLGETCOLORTABLEPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5479

   type PFNGLCOLORSUBTABLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:5480

   type PFNGLCOPYCOLORSUBTABLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:5481

   type PFNGLCONVOLUTIONFILTER1DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:5482

   type PFNGLCONVOLUTIONFILTER2DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : System.Address);  -- /usr/include/GL/glext.h:5483

   type PFNGLCONVOLUTIONPARAMETERFPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5484

   type PFNGLCONVOLUTIONPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5485

   type PFNGLCONVOLUTIONPARAMETERIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:5486

   type PFNGLCONVOLUTIONPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5487

   type PFNGLCOPYCONVOLUTIONFILTER1DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:5488

   type PFNGLCOPYCONVOLUTIONFILTER2DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:5489

   type PFNGLGETCONVOLUTIONFILTERPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:5490

   type PFNGLGETCONVOLUTIONPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5491

   type PFNGLGETCONVOLUTIONPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5492

   type PFNGLGETSEPARABLEFILTERPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : System.Address;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:5493

   type PFNGLSEPARABLEFILTER2DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : System.Address;
         arg8 : System.Address);  -- /usr/include/GL/glext.h:5494

   type PFNGLGETHISTOGRAMPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:5495

   type PFNGLGETHISTOGRAMPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5496

   type PFNGLGETHISTOGRAMPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5497

   type PFNGLGETMINMAXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:5498

   type PFNGLGETMINMAXPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5499

   type PFNGLGETMINMAXPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5500

   type PFNGLHISTOGRAMPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:5501

   type PFNGLMINMAXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:5502

   type PFNGLRESETHISTOGRAMPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:5503

   type PFNGLRESETMINMAXPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:5504

   type PFNGLCLIENTACTIVETEXTUREPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:5572

   type PFNGLMULTITEXCOORD1DPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:5573

   type PFNGLMULTITEXCOORD1DVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5574

   type PFNGLMULTITEXCOORD1FPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5575

   type PFNGLMULTITEXCOORD1FVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5576

   type PFNGLMULTITEXCOORD1IPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:5577

   type PFNGLMULTITEXCOORD1IVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5578

   type PFNGLMULTITEXCOORD1SPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLshort);  -- /usr/include/GL/glext.h:5579

   type PFNGLMULTITEXCOORD1SVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:5580

   type PFNGLMULTITEXCOORD2DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:5581

   type PFNGLMULTITEXCOORD2DVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5582

   type PFNGLMULTITEXCOORD2FPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5583

   type PFNGLMULTITEXCOORD2FVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5584

   type PFNGLMULTITEXCOORD2IPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:5585

   type PFNGLMULTITEXCOORD2IVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5586

   type PFNGLMULTITEXCOORD2SPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  -- /usr/include/GL/glext.h:5587

   type PFNGLMULTITEXCOORD2SVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:5588

   type PFNGLMULTITEXCOORD3DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:5589

   type PFNGLMULTITEXCOORD3DVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5590

   type PFNGLMULTITEXCOORD3FPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5591

   type PFNGLMULTITEXCOORD3FVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5592

   type PFNGLMULTITEXCOORD3IPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:5593

   type PFNGLMULTITEXCOORD3IVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5594

   type PFNGLMULTITEXCOORD3SPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  -- /usr/include/GL/glext.h:5595

   type PFNGLMULTITEXCOORD3SVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:5596

   type PFNGLMULTITEXCOORD4DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:5597

   type PFNGLMULTITEXCOORD4DVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5598

   type PFNGLMULTITEXCOORD4FPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5599

   type PFNGLMULTITEXCOORD4FVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5600

   type PFNGLMULTITEXCOORD4IPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:5601

   type PFNGLMULTITEXCOORD4IVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5602

   type PFNGLMULTITEXCOORD4SPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort;
         arg5 : gl_h.GLshort);  -- /usr/include/GL/glext.h:5603

   type PFNGLMULTITEXCOORD4SVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:5604

   type PFNGLLOADTRANSPOSEMATRIXFPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5605

   type PFNGLLOADTRANSPOSEMATRIXDPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5606

   type PFNGLMULTTRANSPOSEMATRIXFPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5607

   type PFNGLMULTTRANSPOSEMATRIXDPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5608

   type PFNGLBLENDFUNCSEPARATEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:5622

   type PFNGLMULTIDRAWARRAYSPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : access gl_h.GLint;
         arg3 : access gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:5623

   type PFNGLMULTIDRAWELEMENTSPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : access gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:5624

   type PFNGLPOINTPARAMETERFPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5625

   type PFNGLPOINTPARAMETERFVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5626

   type PFNGLPOINTPARAMETERIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:5627

   type PFNGLPOINTPARAMETERIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5628

   type PFNGLFOGCOORDFPROC is access procedure (arg1 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5673

   type PFNGLFOGCOORDFVPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5674

   type PFNGLFOGCOORDDPROC is access procedure (arg1 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:5675

   type PFNGLFOGCOORDDVPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5676

   type PFNGLFOGCOORDPOINTERPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:5677

   type PFNGLSECONDARYCOLOR3BPROC is access procedure
        (arg1 : gl_h.GLbyte;
         arg2 : gl_h.GLbyte;
         arg3 : gl_h.GLbyte);  -- /usr/include/GL/glext.h:5678

   type PFNGLSECONDARYCOLOR3BVPROC is access procedure (arg1 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:5679

   type PFNGLSECONDARYCOLOR3DPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:5680

   type PFNGLSECONDARYCOLOR3DVPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5681

   type PFNGLSECONDARYCOLOR3FPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5682

   type PFNGLSECONDARYCOLOR3FVPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5683

   type PFNGLSECONDARYCOLOR3IPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:5684

   type PFNGLSECONDARYCOLOR3IVPROC is access procedure (arg1 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5685

   type PFNGLSECONDARYCOLOR3SPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  -- /usr/include/GL/glext.h:5686

   type PFNGLSECONDARYCOLOR3SVPROC is access procedure (arg1 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:5687

   type PFNGLSECONDARYCOLOR3UBPROC is access procedure
        (arg1 : gl_h.GLubyte;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte);  -- /usr/include/GL/glext.h:5688

   type PFNGLSECONDARYCOLOR3UBVPROC is access procedure (arg1 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:5689

   type PFNGLSECONDARYCOLOR3UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5690

   type PFNGLSECONDARYCOLOR3UIVPROC is access procedure (arg1 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:5691

   type PFNGLSECONDARYCOLOR3USPROC is access procedure
        (arg1 : gl_h.GLushort;
         arg2 : gl_h.GLushort;
         arg3 : gl_h.GLushort);  -- /usr/include/GL/glext.h:5692

   type PFNGLSECONDARYCOLOR3USVPROC is access procedure (arg1 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:5693

   type PFNGLSECONDARYCOLORPOINTERPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:5694

   type PFNGLWINDOWPOS2DPROC is access procedure (arg1 : gl_h.GLdouble; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:5695

   type PFNGLWINDOWPOS2DVPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5696

   type PFNGLWINDOWPOS2FPROC is access procedure (arg1 : gl_h.GLfloat; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5697

   type PFNGLWINDOWPOS2FVPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5698

   type PFNGLWINDOWPOS2IPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:5699

   type PFNGLWINDOWPOS2IVPROC is access procedure (arg1 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5700

   type PFNGLWINDOWPOS2SPROC is access procedure (arg1 : gl_h.GLshort; arg2 : gl_h.GLshort);  -- /usr/include/GL/glext.h:5701

   type PFNGLWINDOWPOS2SVPROC is access procedure (arg1 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:5702

   type PFNGLWINDOWPOS3DPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:5703

   type PFNGLWINDOWPOS3DVPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5704

   type PFNGLWINDOWPOS3FPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5705

   type PFNGLWINDOWPOS3FVPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5706

   type PFNGLWINDOWPOS3IPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:5707

   type PFNGLWINDOWPOS3IVPROC is access procedure (arg1 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5708

   type PFNGLWINDOWPOS3SPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  -- /usr/include/GL/glext.h:5709

   type PFNGLWINDOWPOS3SVPROC is access procedure (arg1 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:5710

   type PFNGLGENQUERIESPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:5736

   type PFNGLDELETEQUERIESPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:5737

   type PFNGLISQUERYPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:5738

   type PFNGLBEGINQUERYPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5739

   type PFNGLENDQUERYPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:5740

   type PFNGLGETQUERYIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5741

   type PFNGLGETQUERYOBJECTIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5742

   type PFNGLGETQUERYOBJECTUIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:5743

   type PFNGLBINDBUFFERPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5744

   type PFNGLDELETEBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:5745

   type PFNGLGENBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:5746

   type PFNGLISBUFFERPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:5747

   type PFNGLBUFFERDATAPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLsizeiptr;
         arg3 : System.Address;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:5748

   type PFNGLBUFFERSUBDATAPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLintptr;
         arg3 : GLsizeiptr;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:5749

   type PFNGLGETBUFFERSUBDATAPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLintptr;
         arg3 : GLsizeiptr;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:5750

   type PFNGLMAPBUFFERPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum) return System.Address;  -- /usr/include/GL/glext.h:5751

   type PFNGLUNMAPBUFFERPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:5752

   type PFNGLGETBUFFERPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5753

   type PFNGLGETBUFFERPOINTERVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:5754

   type PFNGLBLENDEQUATIONSEPARATEPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:5854

   type PFNGLDRAWBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLenum);  -- /usr/include/GL/glext.h:5855

   type PFNGLSTENCILOPSEPARATEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:5856

   type PFNGLSTENCILFUNCSEPARATEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5857

   type PFNGLSTENCILMASKSEPARATEPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5858

   type PFNGLATTACHSHADERPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5859

   type PFNGLBINDATTRIBLOCATIONPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : access GLchar);  -- /usr/include/GL/glext.h:5860

   type PFNGLCOMPILESHADERPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5861

   type PFNGLCREATEPROGRAMPROC is access function return gl_h.GLuint;  -- /usr/include/GL/glext.h:5862

   type PFNGLCREATESHADERPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLuint;  -- /usr/include/GL/glext.h:5863

   type PFNGLDELETEPROGRAMPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5864

   type PFNGLDELETESHADERPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5865

   type PFNGLDETACHSHADERPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5866

   type PFNGLDISABLEVERTEXATTRIBARRAYPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5867

   type PFNGLENABLEVERTEXATTRIBARRAYPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5868

   type PFNGLGETACTIVEATTRIBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLint;
         arg6 : access gl_h.GLenum;
         arg7 : access GLchar);  -- /usr/include/GL/glext.h:5869

   type PFNGLGETACTIVEUNIFORMPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLint;
         arg6 : access gl_h.GLenum;
         arg7 : access GLchar);  -- /usr/include/GL/glext.h:5870

   type PFNGLGETATTACHEDSHADERSPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:5871

   type PFNGLGETATTRIBLOCATIONPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLint;  -- /usr/include/GL/glext.h:5872

   type PFNGLGETPROGRAMIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5873

   type PFNGLGETPROGRAMINFOLOGPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLchar);  -- /usr/include/GL/glext.h:5874

   type PFNGLGETSHADERIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5875

   type PFNGLGETSHADERINFOLOGPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLchar);  -- /usr/include/GL/glext.h:5876

   type PFNGLGETSHADERSOURCEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLchar);  -- /usr/include/GL/glext.h:5877

   type PFNGLGETUNIFORMLOCATIONPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLint;  -- /usr/include/GL/glext.h:5878

   type PFNGLGETUNIFORMFVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5879

   type PFNGLGETUNIFORMIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5880

   type PFNGLGETVERTEXATTRIBDVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5881

   type PFNGLGETVERTEXATTRIBFVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5882

   type PFNGLGETVERTEXATTRIBIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5883

   type PFNGLGETVERTEXATTRIBPOINTERVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:5884

   type PFNGLISPROGRAMPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:5885

   type PFNGLISSHADERPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:5886

   type PFNGLLINKPROGRAMPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5887

   type PFNGLSHADERSOURCEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5888

   type PFNGLUSEPROGRAMPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5889

   type PFNGLUNIFORM1FPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5890

   type PFNGLUNIFORM2FPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5891

   type PFNGLUNIFORM3FPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5892

   type PFNGLUNIFORM4FPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5893

   type PFNGLUNIFORM1IPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:5894

   type PFNGLUNIFORM2IPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:5895

   type PFNGLUNIFORM3IPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:5896

   type PFNGLUNIFORM4IPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:5897

   type PFNGLUNIFORM1FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5898

   type PFNGLUNIFORM2FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5899

   type PFNGLUNIFORM3FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5900

   type PFNGLUNIFORM4FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5901

   type PFNGLUNIFORM1IVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5902

   type PFNGLUNIFORM2IVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5903

   type PFNGLUNIFORM3IVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5904

   type PFNGLUNIFORM4IVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5905

   type PFNGLUNIFORMMATRIX2FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5906

   type PFNGLUNIFORMMATRIX3FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5907

   type PFNGLUNIFORMMATRIX4FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5908

   type PFNGLVALIDATEPROGRAMPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:5909

   type PFNGLVERTEXATTRIB1DPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:5910

   type PFNGLVERTEXATTRIB1DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5911

   type PFNGLVERTEXATTRIB1FPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5912

   type PFNGLVERTEXATTRIB1FVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5913

   type PFNGLVERTEXATTRIB1SPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLshort);  -- /usr/include/GL/glext.h:5914

   type PFNGLVERTEXATTRIB1SVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:5915

   type PFNGLVERTEXATTRIB2DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:5916

   type PFNGLVERTEXATTRIB2DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5917

   type PFNGLVERTEXATTRIB2FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5918

   type PFNGLVERTEXATTRIB2FVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5919

   type PFNGLVERTEXATTRIB2SPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  -- /usr/include/GL/glext.h:5920

   type PFNGLVERTEXATTRIB2SVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:5921

   type PFNGLVERTEXATTRIB3DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:5922

   type PFNGLVERTEXATTRIB3DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5923

   type PFNGLVERTEXATTRIB3FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5924

   type PFNGLVERTEXATTRIB3FVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5925

   type PFNGLVERTEXATTRIB3SPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  -- /usr/include/GL/glext.h:5926

   type PFNGLVERTEXATTRIB3SVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:5927

   type PFNGLVERTEXATTRIB4NBVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:5928

   type PFNGLVERTEXATTRIB4NIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5929

   type PFNGLVERTEXATTRIB4NSVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:5930

   type PFNGLVERTEXATTRIB4NUBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLubyte);  -- /usr/include/GL/glext.h:5931

   type PFNGLVERTEXATTRIB4NUBVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:5932

   type PFNGLVERTEXATTRIB4NUIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:5933

   type PFNGLVERTEXATTRIB4NUSVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:5934

   type PFNGLVERTEXATTRIB4BVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:5935

   type PFNGLVERTEXATTRIB4DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:5936

   type PFNGLVERTEXATTRIB4DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:5937

   type PFNGLVERTEXATTRIB4FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:5938

   type PFNGLVERTEXATTRIB4FVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5939

   type PFNGLVERTEXATTRIB4IVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:5940

   type PFNGLVERTEXATTRIB4SPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort;
         arg5 : gl_h.GLshort);  -- /usr/include/GL/glext.h:5941

   type PFNGLVERTEXATTRIB4SVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:5942

   type PFNGLVERTEXATTRIB4UBVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:5943

   type PFNGLVERTEXATTRIB4UIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:5944

   type PFNGLVERTEXATTRIB4USVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:5945

   type PFNGLVERTEXATTRIBPOINTERPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLsizei;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:5946

   type PFNGLUNIFORMMATRIX2X3FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5959

   type PFNGLUNIFORMMATRIX3X2FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5960

   type PFNGLUNIFORMMATRIX2X4FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5961

   type PFNGLUNIFORMMATRIX4X2FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5962

   type PFNGLUNIFORMMATRIX3X4FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5963

   type PFNGLUNIFORMMATRIX4X3FVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:5964

  -- OpenGL 3.0 also reuses entry points from these extensions:
  -- ARB_framebuffer_object
  -- ARB_map_buffer_range
  -- ARB_vertex_array_object
   type PFNGLCOLORMASKIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:6033

   type PFNGLGETBOOLEANI_VPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLboolean);  -- /usr/include/GL/glext.h:6034

   type PFNGLGETINTEGERI_VPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6035

   type PFNGLENABLEIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6036

   type PFNGLDISABLEIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6037

   type PFNGLISENABLEDIPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:6038

   type PFNGLBEGINTRANSFORMFEEDBACKPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6039

   type PFNGLENDTRANSFORMFEEDBACKPROC is access procedure;  -- /usr/include/GL/glext.h:6040

   type PFNGLBINDBUFFERRANGEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : GLintptr;
         arg5 : GLsizeiptr);  -- /usr/include/GL/glext.h:6041

   type PFNGLBINDBUFFERBASEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6042

   type PFNGLTRANSFORMFEEDBACKVARYINGSPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6043

   type PFNGLGETTRANSFORMFEEDBACKVARYINGPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLsizei;
         arg6 : access gl_h.GLenum;
         arg7 : access GLchar);  -- /usr/include/GL/glext.h:6044

   type PFNGLCLAMPCOLORPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6045

   type PFNGLBEGINCONDITIONALRENDERPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6046

   type PFNGLENDCONDITIONALRENDERPROC is access procedure;  -- /usr/include/GL/glext.h:6047

   type PFNGLVERTEXATTRIBIPOINTERPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:6048

   type PFNGLGETVERTEXATTRIBIIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6049

   type PFNGLGETVERTEXATTRIBIUIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6050

   type PFNGLVERTEXATTRIBI1IPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:6051

   type PFNGLVERTEXATTRIBI2IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:6052

   type PFNGLVERTEXATTRIBI3IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:6053

   type PFNGLVERTEXATTRIBI4IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:6054

   type PFNGLVERTEXATTRIBI1UIPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6055

   type PFNGLVERTEXATTRIBI2UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6056

   type PFNGLVERTEXATTRIBI3UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6057

   type PFNGLVERTEXATTRIBI4UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6058

   type PFNGLVERTEXATTRIBI1IVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6059

   type PFNGLVERTEXATTRIBI2IVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6060

   type PFNGLVERTEXATTRIBI3IVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6061

   type PFNGLVERTEXATTRIBI4IVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6062

   type PFNGLVERTEXATTRIBI1UIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6063

   type PFNGLVERTEXATTRIBI2UIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6064

   type PFNGLVERTEXATTRIBI3UIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6065

   type PFNGLVERTEXATTRIBI4UIVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6066

   type PFNGLVERTEXATTRIBI4BVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:6067

   type PFNGLVERTEXATTRIBI4SVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:6068

   type PFNGLVERTEXATTRIBI4UBVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:6069

   type PFNGLVERTEXATTRIBI4USVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:6070

   type PFNGLGETUNIFORMUIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6071

   type PFNGLBINDFRAGDATALOCATIONPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : access GLchar);  -- /usr/include/GL/glext.h:6072

   type PFNGLGETFRAGDATALOCATIONPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLint;  -- /usr/include/GL/glext.h:6073

   type PFNGLUNIFORM1UIPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6074

   type PFNGLUNIFORM2UIPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6075

   type PFNGLUNIFORM3UIPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6076

   type PFNGLUNIFORM4UIPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6077

   type PFNGLUNIFORM1UIVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6078

   type PFNGLUNIFORM2UIVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6079

   type PFNGLUNIFORM3UIVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6080

   type PFNGLUNIFORM4UIVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6081

   type PFNGLTEXPARAMETERIIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6082

   type PFNGLTEXPARAMETERIUIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6083

   type PFNGLGETTEXPARAMETERIIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6084

   type PFNGLGETTEXPARAMETERIUIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6085

   type PFNGLCLEARBUFFERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6086

   type PFNGLCLEARBUFFERUIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6087

   type PFNGLCLEARBUFFERFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6088

   type PFNGLCLEARBUFFERFIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:6089

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
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:6104

   type PFNGLDRAWELEMENTSINSTANCEDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:6105

   type PFNGLTEXBUFFERPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6106

   type PFNGLPRIMITIVERESTARTINDEXPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6107

  -- OpenGL 3.2 also reuses entry points from these extensions:
  -- ARB_draw_elements_base_vertex
  -- ARB_provoking_vertex
  -- ARB_sync
  -- ARB_texture_multisample
   type PFNGLGETINTEGER64I_VPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access GLint64);  -- /usr/include/GL/glext.h:6122

   type PFNGLGETBUFFERPARAMETERI64VPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access GLint64);  -- /usr/include/GL/glext.h:6123

   type PFNGLFRAMEBUFFERTEXTUREPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:6124

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
   type PFNGLVERTEXATTRIBDIVISORPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6142

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
   type PFNGLMINSAMPLESHADINGPROC is access procedure (arg1 : gl_h.GLclampf);  -- /usr/include/GL/glext.h:6166

   type PFNGLBLENDEQUATIONIPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6167

   type PFNGLBLENDEQUATIONSEPARATEIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6168

   type PFNGLBLENDFUNCIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6169

   type PFNGLBLENDFUNCSEPARATEIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6170

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
   type PFNGLLOADTRANSPOSEMATRIXFARBPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6282

   type PFNGLLOADTRANSPOSEMATRIXDARBPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6283

   type PFNGLMULTTRANSPOSEMATRIXFARBPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6284

   type PFNGLMULTTRANSPOSEMATRIXDARBPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6285

   type PFNGLSAMPLECOVERAGEARBPROC is access procedure (arg1 : gl_h.GLclampf; arg2 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:6293

   type PFNGLCOMPRESSEDTEXIMAGE3DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLsizei;
         arg9 : System.Address);  -- /usr/include/GL/glext.h:6315

   type PFNGLCOMPRESSEDTEXIMAGE2DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : System.Address);  -- /usr/include/GL/glext.h:6316

   type PFNGLCOMPRESSEDTEXIMAGE1DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : System.Address);  -- /usr/include/GL/glext.h:6317

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
         arg11 : System.Address);  -- /usr/include/GL/glext.h:6318

   type PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLenum;
         arg8 : gl_h.GLsizei;
         arg9 : System.Address);  -- /usr/include/GL/glext.h:6319

   type PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLsizei;
         arg7 : System.Address);  -- /usr/include/GL/glext.h:6320

   type PFNGLGETCOMPRESSEDTEXIMAGEARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:6321

   type PFNGLPOINTPARAMETERFARBPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6334

   type PFNGLPOINTPARAMETERFVARBPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6335

   type PFNGLWEIGHTBVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:6352

   type PFNGLWEIGHTSVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:6353

   type PFNGLWEIGHTIVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6354

   type PFNGLWEIGHTFVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6355

   type PFNGLWEIGHTDVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6356

   type PFNGLWEIGHTUBVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:6357

   type PFNGLWEIGHTUSVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:6358

   type PFNGLWEIGHTUIVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6359

   type PFNGLWEIGHTPOINTERARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:6360

   type PFNGLVERTEXBLENDARBPROC is access procedure (arg1 : gl_h.GLint);  -- /usr/include/GL/glext.h:6361

   type PFNGLCURRENTPALETTEMATRIXARBPROC is access procedure (arg1 : gl_h.GLint);  -- /usr/include/GL/glext.h:6373

   type PFNGLMATRIXINDEXUBVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:6374

   type PFNGLMATRIXINDEXUSVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:6375

   type PFNGLMATRIXINDEXUIVARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6376

   type PFNGLMATRIXINDEXPOINTERARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:6377

   type PFNGLWINDOWPOS2DARBPROC is access procedure (arg1 : gl_h.GLdouble; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:6428

   type PFNGLWINDOWPOS2DVARBPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6429

   type PFNGLWINDOWPOS2FARBPROC is access procedure (arg1 : gl_h.GLfloat; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6430

   type PFNGLWINDOWPOS2FVARBPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6431

   type PFNGLWINDOWPOS2IARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:6432

   type PFNGLWINDOWPOS2IVARBPROC is access procedure (arg1 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6433

   type PFNGLWINDOWPOS2SARBPROC is access procedure (arg1 : gl_h.GLshort; arg2 : gl_h.GLshort);  -- /usr/include/GL/glext.h:6434

   type PFNGLWINDOWPOS2SVARBPROC is access procedure (arg1 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:6435

   type PFNGLWINDOWPOS3DARBPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:6436

   type PFNGLWINDOWPOS3DVARBPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6437

   type PFNGLWINDOWPOS3FARBPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6438

   type PFNGLWINDOWPOS3FVARBPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6439

   type PFNGLWINDOWPOS3IARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:6440

   type PFNGLWINDOWPOS3IVARBPROC is access procedure (arg1 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6441

   type PFNGLWINDOWPOS3SARBPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  -- /usr/include/GL/glext.h:6442

   type PFNGLWINDOWPOS3SVARBPROC is access procedure (arg1 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:6443

   type PFNGLVERTEXATTRIB1DARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:6512

   type PFNGLVERTEXATTRIB1DVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6513

   type PFNGLVERTEXATTRIB1FARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6514

   type PFNGLVERTEXATTRIB1FVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6515

   type PFNGLVERTEXATTRIB1SARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLshort);  -- /usr/include/GL/glext.h:6516

   type PFNGLVERTEXATTRIB1SVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:6517

   type PFNGLVERTEXATTRIB2DARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:6518

   type PFNGLVERTEXATTRIB2DVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6519

   type PFNGLVERTEXATTRIB2FARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6520

   type PFNGLVERTEXATTRIB2FVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6521

   type PFNGLVERTEXATTRIB2SARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  -- /usr/include/GL/glext.h:6522

   type PFNGLVERTEXATTRIB2SVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:6523

   type PFNGLVERTEXATTRIB3DARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:6524

   type PFNGLVERTEXATTRIB3DVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6525

   type PFNGLVERTEXATTRIB3FARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6526

   type PFNGLVERTEXATTRIB3FVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6527

   type PFNGLVERTEXATTRIB3SARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  -- /usr/include/GL/glext.h:6528

   type PFNGLVERTEXATTRIB3SVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:6529

   type PFNGLVERTEXATTRIB4NBVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:6530

   type PFNGLVERTEXATTRIB4NIVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6531

   type PFNGLVERTEXATTRIB4NSVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:6532

   type PFNGLVERTEXATTRIB4NUBARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLubyte);  -- /usr/include/GL/glext.h:6533

   type PFNGLVERTEXATTRIB4NUBVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:6534

   type PFNGLVERTEXATTRIB4NUIVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6535

   type PFNGLVERTEXATTRIB4NUSVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:6536

   type PFNGLVERTEXATTRIB4BVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:6537

   type PFNGLVERTEXATTRIB4DARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:6538

   type PFNGLVERTEXATTRIB4DVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6539

   type PFNGLVERTEXATTRIB4FARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6540

   type PFNGLVERTEXATTRIB4FVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6541

   type PFNGLVERTEXATTRIB4IVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6542

   type PFNGLVERTEXATTRIB4SARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort;
         arg5 : gl_h.GLshort);  -- /usr/include/GL/glext.h:6543

   type PFNGLVERTEXATTRIB4SVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:6544

   type PFNGLVERTEXATTRIB4UBVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:6545

   type PFNGLVERTEXATTRIB4UIVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6546

   type PFNGLVERTEXATTRIB4USVARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:6547

   type PFNGLVERTEXATTRIBPOINTERARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLsizei;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:6548

   type PFNGLENABLEVERTEXATTRIBARRAYARBPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6549

   type PFNGLDISABLEVERTEXATTRIBARRAYARBPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6550

   type PFNGLPROGRAMSTRINGARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:6551

   type PFNGLBINDPROGRAMARBPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6552

   type PFNGLDELETEPROGRAMSARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6553

   type PFNGLGENPROGRAMSARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6554

   type PFNGLPROGRAMENVPARAMETER4DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:6555

   type PFNGLPROGRAMENVPARAMETER4DVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6556

   type PFNGLPROGRAMENVPARAMETER4FARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6557

   type PFNGLPROGRAMENVPARAMETER4FVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6558

   type PFNGLPROGRAMLOCALPARAMETER4DARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:6559

   type PFNGLPROGRAMLOCALPARAMETER4DVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6560

   type PFNGLPROGRAMLOCALPARAMETER4FARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6561

   type PFNGLPROGRAMLOCALPARAMETER4FVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6562

   type PFNGLGETPROGRAMENVPARAMETERDVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6563

   type PFNGLGETPROGRAMENVPARAMETERFVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6564

   type PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6565

   type PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6566

   type PFNGLGETPROGRAMIVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6567

   type PFNGLGETPROGRAMSTRINGARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:6568

   type PFNGLGETVERTEXATTRIBDVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:6569

   type PFNGLGETVERTEXATTRIBFVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6570

   type PFNGLGETVERTEXATTRIBIVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6571

   type PFNGLGETVERTEXATTRIBPOINTERVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:6572

   type PFNGLISPROGRAMARBPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:6573

  -- All ARB_fragment_program entry points are shared with ARB_vertex_program.
   type PFNGLBINDBUFFERARBPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6596

   type PFNGLDELETEBUFFERSARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6597

   type PFNGLGENBUFFERSARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6598

   type PFNGLISBUFFERARBPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:6599

   type PFNGLBUFFERDATAARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLsizeiptrARB;
         arg3 : System.Address;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6600

   type PFNGLBUFFERSUBDATAARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLintptrARB;
         arg3 : GLsizeiptrARB;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:6601

   type PFNGLGETBUFFERSUBDATAARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLintptrARB;
         arg3 : GLsizeiptrARB;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:6602

   type PFNGLMAPBUFFERARBPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum) return System.Address;  -- /usr/include/GL/glext.h:6603

   type PFNGLUNMAPBUFFERARBPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:6604

   type PFNGLGETBUFFERPARAMETERIVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6605

   type PFNGLGETBUFFERPOINTERVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:6606

   type PFNGLGENQUERIESARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6621

   type PFNGLDELETEQUERIESARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6622

   type PFNGLISQUERYARBPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:6623

   type PFNGLBEGINQUERYARBPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6624

   type PFNGLENDQUERYARBPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6625

   type PFNGLGETQUERYIVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6626

   type PFNGLGETQUERYOBJECTIVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6627

   type PFNGLGETQUERYOBJECTUIVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6628

   type PFNGLDELETEOBJECTARBPROC is access procedure (arg1 : GLhandleARB);  -- /usr/include/GL/glext.h:6674

   type PFNGLGETHANDLEARBPROC is access function (arg1 : gl_h.GLenum) return GLhandleARB;  -- /usr/include/GL/glext.h:6675

   type PFNGLDETACHOBJECTARBPROC is access procedure (arg1 : GLhandleARB; arg2 : GLhandleARB);  -- /usr/include/GL/glext.h:6676

   type PFNGLCREATESHADEROBJECTARBPROC is access function (arg1 : gl_h.GLenum) return GLhandleARB;  -- /usr/include/GL/glext.h:6677

   type PFNGLSHADERSOURCEARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6678

   type PFNGLCOMPILESHADERARBPROC is access procedure (arg1 : GLhandleARB);  -- /usr/include/GL/glext.h:6679

   type PFNGLCREATEPROGRAMOBJECTARBPROC is access function return GLhandleARB;  -- /usr/include/GL/glext.h:6680

   type PFNGLATTACHOBJECTARBPROC is access procedure (arg1 : GLhandleARB; arg2 : GLhandleARB);  -- /usr/include/GL/glext.h:6681

   type PFNGLLINKPROGRAMARBPROC is access procedure (arg1 : GLhandleARB);  -- /usr/include/GL/glext.h:6682

   type PFNGLUSEPROGRAMOBJECTARBPROC is access procedure (arg1 : GLhandleARB);  -- /usr/include/GL/glext.h:6683

   type PFNGLVALIDATEPROGRAMARBPROC is access procedure (arg1 : GLhandleARB);  -- /usr/include/GL/glext.h:6684

   type PFNGLUNIFORM1FARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6685

   type PFNGLUNIFORM2FARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6686

   type PFNGLUNIFORM3FARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6687

   type PFNGLUNIFORM4FARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:6688

   type PFNGLUNIFORM1IARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:6689

   type PFNGLUNIFORM2IARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:6690

   type PFNGLUNIFORM3IARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:6691

   type PFNGLUNIFORM4IARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:6692

   type PFNGLUNIFORM1FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6693

   type PFNGLUNIFORM2FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6694

   type PFNGLUNIFORM3FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6695

   type PFNGLUNIFORM4FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6696

   type PFNGLUNIFORM1IVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6697

   type PFNGLUNIFORM2IVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6698

   type PFNGLUNIFORM3IVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6699

   type PFNGLUNIFORM4IVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6700

   type PFNGLUNIFORMMATRIX2FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6701

   type PFNGLUNIFORMMATRIX3FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6702

   type PFNGLUNIFORMMATRIX4FVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6703

   type PFNGLGETOBJECTPARAMETERFVARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6704

   type PFNGLGETOBJECTPARAMETERIVARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6705

   type PFNGLGETINFOLOGARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLcharARB);  -- /usr/include/GL/glext.h:6706

   type PFNGLGETATTACHEDOBJECTSARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLhandleARB);  -- /usr/include/GL/glext.h:6707

   type PFNGLGETUNIFORMLOCATIONARBPROC is access function (arg1 : GLhandleARB; arg2 : access GLcharARB) return gl_h.GLint;  -- /usr/include/GL/glext.h:6708

   type PFNGLGETACTIVEUNIFORMARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLint;
         arg6 : access gl_h.GLenum;
         arg7 : access GLcharARB);  -- /usr/include/GL/glext.h:6709

   type PFNGLGETUNIFORMFVARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:6710

   type PFNGLGETUNIFORMIVARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6711

   type PFNGLGETSHADERSOURCEARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLcharARB);  -- /usr/include/GL/glext.h:6712

   type PFNGLBINDATTRIBLOCATIONARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLuint;
         arg3 : access GLcharARB);  -- /usr/include/GL/glext.h:6722

   type PFNGLGETACTIVEATTRIBARBPROC is access procedure
        (arg1 : GLhandleARB;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLint;
         arg6 : access gl_h.GLenum;
         arg7 : access GLcharARB);  -- /usr/include/GL/glext.h:6723

   type PFNGLGETATTRIBLOCATIONARBPROC is access function (arg1 : GLhandleARB; arg2 : access GLcharARB) return gl_h.GLint;  -- /usr/include/GL/glext.h:6724

   type PFNGLDRAWBUFFERSARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLenum);  -- /usr/include/GL/glext.h:6752

   type PFNGLCLAMPCOLORARBPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6764

   type PFNGLDRAWARRAYSINSTANCEDARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:6789

   type PFNGLDRAWELEMENTSINSTANCEDARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:6790

   type PFNGLISRENDERBUFFERPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:6817

   type PFNGLBINDRENDERBUFFERPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6818

   type PFNGLDELETERENDERBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6819

   type PFNGLGENRENDERBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6820

   type PFNGLRENDERBUFFERSTORAGEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:6821

   type PFNGLGETRENDERBUFFERPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6822

   type PFNGLISFRAMEBUFFERPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:6823

   type PFNGLBINDFRAMEBUFFERPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6824

   type PFNGLDELETEFRAMEBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6825

   type PFNGLGENFRAMEBUFFERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6826

   type PFNGLCHECKFRAMEBUFFERSTATUSPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLenum;  -- /usr/include/GL/glext.h:6827

   type PFNGLFRAMEBUFFERTEXTURE1DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:6828

   type PFNGLFRAMEBUFFERTEXTURE2DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:6829

   type PFNGLFRAMEBUFFERTEXTURE3DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  -- /usr/include/GL/glext.h:6830

   type PFNGLFRAMEBUFFERRENDERBUFFERPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6831

   type PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6832

   type PFNGLGENERATEMIPMAPPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6833

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
         arg10 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6834

   type PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:6835

   type PFNGLFRAMEBUFFERTEXTURELAYERPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:6836

   type PFNGLPROGRAMPARAMETERIARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:6851

   type PFNGLFRAMEBUFFERTEXTUREARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:6852

   type PFNGLFRAMEBUFFERTEXTURELAYERARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:6853

   type PFNGLFRAMEBUFFERTEXTUREFACEARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6854

   type PFNGLVERTEXATTRIBDIVISORARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6866

   type PFNGLMAPBUFFERRANGEPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : GLintptr;
         arg3 : GLsizeiptr;
         arg4 : gl_h.GLbitfield) return System.Address;  -- /usr/include/GL/glext.h:6875

   type PFNGLFLUSHMAPPEDBUFFERRANGEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLintptr;
         arg3 : GLsizeiptr);  -- /usr/include/GL/glext.h:6876

   type PFNGLTEXBUFFERARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6884

   type PFNGLBINDVERTEXARRAYPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6903

   type PFNGLDELETEVERTEXARRAYSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6904

   type PFNGLGENVERTEXARRAYSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6905

   type PFNGLISVERTEXARRAYPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:6906

   type PFNGLGETUNIFORMINDICESPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:6920

   type PFNGLGETACTIVEUNIFORMSIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6921

   type PFNGLGETACTIVEUNIFORMNAMEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access GLchar);  -- /usr/include/GL/glext.h:6922

   type PFNGLGETUNIFORMBLOCKINDEXPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLuint;  -- /usr/include/GL/glext.h:6923

   type PFNGLGETACTIVEUNIFORMBLOCKIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6924

   type PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access GLchar);  -- /usr/include/GL/glext.h:6925

   type PFNGLUNIFORMBLOCKBINDINGPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:6926

   type PFNGLCOPYBUFFERSUBDATAPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : GLintptr;
         arg4 : GLintptr;
         arg5 : GLsizeiptr);  -- /usr/include/GL/glext.h:6938

   type PFNGLDRAWELEMENTSBASEVERTEXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:6957

   type PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : System.Address;
         arg7 : gl_h.GLint);  -- /usr/include/GL/glext.h:6958

   type PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint);  -- /usr/include/GL/glext.h:6959

   type PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : access gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei;
         arg6 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6960

   type PFNGLPROVOKINGVERTEXPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:6972

   type PFNGLFENCESYNCPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLbitfield) return GLsync;  -- /usr/include/GL/glext.h:6990

   type PFNGLISSYNCPROC is access function (arg1 : GLsync) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:6991

   type PFNGLDELETESYNCPROC is access procedure (arg1 : GLsync);  -- /usr/include/GL/glext.h:6992

   type PFNGLCLIENTWAITSYNCPROC is access function
        (arg1 : GLsync;
         arg2 : gl_h.GLbitfield;
         arg3 : GLuint64) return gl_h.GLenum;  -- /usr/include/GL/glext.h:6993

   type PFNGLWAITSYNCPROC is access procedure
        (arg1 : GLsync;
         arg2 : gl_h.GLbitfield;
         arg3 : GLuint64);  -- /usr/include/GL/glext.h:6994

   type PFNGLGETINTEGER64VPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access GLint64);  -- /usr/include/GL/glext.h:6995

   type PFNGLGETSYNCIVPROC is access procedure
        (arg1 : GLsync;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLint);  -- /usr/include/GL/glext.h:6996

   type PFNGLTEXIMAGE2DMULTISAMPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:7007

   type PFNGLTEXIMAGE3DMULTISAMPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:7008

   type PFNGLGETMULTISAMPLEFVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7009

   type PFNGLSAMPLEMASKIPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLbitfield);  -- /usr/include/GL/glext.h:7010

   type PFNGLBLENDEQUATIONIARBPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:7025

   type PFNGLBLENDEQUATIONSEPARATEIARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum);  -- /usr/include/GL/glext.h:7026

   type PFNGLBLENDFUNCIARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum);  -- /usr/include/GL/glext.h:7027

   type PFNGLBLENDFUNCSEPARATEIARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum);  -- /usr/include/GL/glext.h:7028

   type PFNGLMINSAMPLESHADINGARBPROC is access procedure (arg1 : gl_h.GLclampf);  -- /usr/include/GL/glext.h:7036

   type PFNGLNAMEDSTRINGARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : access GLchar;
         arg4 : gl_h.GLint;
         arg5 : access GLchar);  -- /usr/include/GL/glext.h:7061

   type PFNGLDELETENAMEDSTRINGARBPROC is access procedure (arg1 : gl_h.GLint; arg2 : access GLchar);  -- /usr/include/GL/glext.h:7062

   type PFNGLCOMPILESHADERINCLUDEARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7063

   type PFNGLISNAMEDSTRINGARBPROC is access function (arg1 : gl_h.GLint; arg2 : access GLchar) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:7064

   type PFNGLGETNAMEDSTRINGARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : access GLchar;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint;
         arg5 : access GLchar);  -- /usr/include/GL/glext.h:7065

   type PFNGLGETNAMEDSTRINGIVARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : access GLchar;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7066

   type PFNGLBINDFRAGDATALOCATIONINDEXEDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : access GLchar);  -- /usr/include/GL/glext.h:7079

   type PFNGLGETFRAGDATAINDEXPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLint;  -- /usr/include/GL/glext.h:7080

   type PFNGLGENSAMPLERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7109

   type PFNGLDELETESAMPLERSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7110

   type PFNGLISSAMPLERPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:7111

   type PFNGLBINDSAMPLERPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7112

   type PFNGLSAMPLERPARAMETERIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:7113

   type PFNGLSAMPLERPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7114

   type PFNGLSAMPLERPARAMETERFPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:7115

   type PFNGLSAMPLERPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7116

   type PFNGLSAMPLERPARAMETERIIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7117

   type PFNGLSAMPLERPARAMETERIUIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7118

   type PFNGLGETSAMPLERPARAMETERIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7119

   type PFNGLGETSAMPLERPARAMETERIIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7120

   type PFNGLGETSAMPLERPARAMETERFVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7121

   type PFNGLGETSAMPLERPARAMETERIUIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7122

   type PFNGLQUERYCOUNTERPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:7144

   type PFNGLGETQUERYOBJECTI64VPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLint64);  -- /usr/include/GL/glext.h:7145

   type PFNGLGETQUERYOBJECTUI64VPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLuint64);  -- /usr/include/GL/glext.h:7146

   type PFNGLVERTEXP2UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7191

   type PFNGLVERTEXP2UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7192

   type PFNGLVERTEXP3UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7193

   type PFNGLVERTEXP3UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7194

   type PFNGLVERTEXP4UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7195

   type PFNGLVERTEXP4UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7196

   type PFNGLTEXCOORDP1UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7197

   type PFNGLTEXCOORDP1UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7198

   type PFNGLTEXCOORDP2UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7199

   type PFNGLTEXCOORDP2UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7200

   type PFNGLTEXCOORDP3UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7201

   type PFNGLTEXCOORDP3UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7202

   type PFNGLTEXCOORDP4UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7203

   type PFNGLTEXCOORDP4UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7204

   type PFNGLMULTITEXCOORDP1UIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7205

   type PFNGLMULTITEXCOORDP1UIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7206

   type PFNGLMULTITEXCOORDP2UIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7207

   type PFNGLMULTITEXCOORDP2UIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7208

   type PFNGLMULTITEXCOORDP3UIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7209

   type PFNGLMULTITEXCOORDP3UIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7210

   type PFNGLMULTITEXCOORDP4UIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7211

   type PFNGLMULTITEXCOORDP4UIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7212

   type PFNGLNORMALP3UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7213

   type PFNGLNORMALP3UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7214

   type PFNGLCOLORP3UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7215

   type PFNGLCOLORP3UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7216

   type PFNGLCOLORP4UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7217

   type PFNGLCOLORP4UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7218

   type PFNGLSECONDARYCOLORP3UIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7219

   type PFNGLSECONDARYCOLORP3UIVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7220

   type PFNGLVERTEXATTRIBP1UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7221

   type PFNGLVERTEXATTRIBP1UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7222

   type PFNGLVERTEXATTRIBP2UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7223

   type PFNGLVERTEXATTRIBP2UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7224

   type PFNGLVERTEXATTRIBP3UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7225

   type PFNGLVERTEXATTRIBP3UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7226

   type PFNGLVERTEXATTRIBP4UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7227

   type PFNGLVERTEXATTRIBP4UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7228

   type PFNGLDRAWARRAYSINDIRECTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : System.Address);  -- /usr/include/GL/glext.h:7237

   type PFNGLDRAWELEMENTSINDIRECTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:7238

   type PFNGLUNIFORM1DPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:7267

   type PFNGLUNIFORM2DPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:7268

   type PFNGLUNIFORM3DPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:7269

   type PFNGLUNIFORM4DPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:7270

   type PFNGLUNIFORM1DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7271

   type PFNGLUNIFORM2DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7272

   type PFNGLUNIFORM3DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7273

   type PFNGLUNIFORM4DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7274

   type PFNGLUNIFORMMATRIX2DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7275

   type PFNGLUNIFORMMATRIX3DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7276

   type PFNGLUNIFORMMATRIX4DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7277

   type PFNGLUNIFORMMATRIX2X3DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7278

   type PFNGLUNIFORMMATRIX2X4DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7279

   type PFNGLUNIFORMMATRIX3X2DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7280

   type PFNGLUNIFORMMATRIX3X4DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7281

   type PFNGLUNIFORMMATRIX4X2DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7282

   type PFNGLUNIFORMMATRIX4X3DVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLboolean;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7283

   type PFNGLGETUNIFORMDVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7284

   type PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC is access function
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLchar) return gl_h.GLint;  -- /usr/include/GL/glext.h:7299

   type PFNGLGETSUBROUTINEINDEXPROC is access function
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLchar) return gl_h.GLuint;  -- /usr/include/GL/glext.h:7300

   type PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7301

   type PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLsizei;
         arg6 : access GLchar);  -- /usr/include/GL/glext.h:7302

   type PFNGLGETACTIVESUBROUTINENAMEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLsizei;
         arg6 : access GLchar);  -- /usr/include/GL/glext.h:7303

   type PFNGLUNIFORMSUBROUTINESUIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7304

   type PFNGLGETUNIFORMSUBROUTINEUIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7305

   type PFNGLGETPROGRAMSTAGEIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7306

   type PFNGLPATCHPARAMETERIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:7315

   type PFNGLPATCHPARAMETERFVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7316

   type PFNGLBINDTRANSFORMFEEDBACKPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7334

   type PFNGLDELETETRANSFORMFEEDBACKSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7335

   type PFNGLGENTRANSFORMFEEDBACKSPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7336

   type PFNGLISTRANSFORMFEEDBACKPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:7337

   type PFNGLPAUSETRANSFORMFEEDBACKPROC is access procedure;  -- /usr/include/GL/glext.h:7338

   type PFNGLRESUMETRANSFORMFEEDBACKPROC is access procedure;  -- /usr/include/GL/glext.h:7339

   type PFNGLDRAWTRANSFORMFEEDBACKPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7340

   type PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7351

   type PFNGLBEGINQUERYINDEXEDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7352

   type PFNGLENDQUERYINDEXEDPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7353

   type PFNGLGETQUERYINDEXEDIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7354

   type PFNGLRELEASESHADERCOMPILERPROC is access procedure;  -- /usr/include/GL/glext.h:7366

   type PFNGLSHADERBINARYPROC is access procedure
        (arg1 : gl_h.GLsizei;
         arg2 : access gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7367

   type PFNGLGETSHADERPRECISIONFORMATPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7368

   type PFNGLDEPTHRANGEFPROC is access procedure (arg1 : gl_h.GLclampf; arg2 : gl_h.GLclampf);  -- /usr/include/GL/glext.h:7369

   type PFNGLCLEARDEPTHFPROC is access procedure (arg1 : gl_h.GLclampf);  -- /usr/include/GL/glext.h:7370

   type PFNGLGETPROGRAMBINARYPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access gl_h.GLenum;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:7380

   type PFNGLPROGRAMBINARYPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7381

   type PFNGLPROGRAMPARAMETERIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:7382

   type PFNGLUSEPROGRAMSTAGESPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLbitfield;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7449

   type PFNGLACTIVESHADERPROGRAMPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7450

   type PFNGLCREATESHADERPROGRAMVPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address) return gl_h.GLuint;  -- /usr/include/GL/glext.h:7451

   type PFNGLBINDPROGRAMPIPELINEPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7452

   type PFNGLDELETEPROGRAMPIPELINESPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7453

   type PFNGLGENPROGRAMPIPELINESPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7454

   type PFNGLISPROGRAMPIPELINEPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:7455

   type PFNGLGETPROGRAMPIPELINEIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7456

   type PFNGLPROGRAMUNIFORM1IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:7457

   type PFNGLPROGRAMUNIFORM1IVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7458

   type PFNGLPROGRAMUNIFORM1FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:7459

   type PFNGLPROGRAMUNIFORM1FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7460

   type PFNGLPROGRAMUNIFORM1DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:7461

   type PFNGLPROGRAMUNIFORM1DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7462

   type PFNGLPROGRAMUNIFORM1UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7463

   type PFNGLPROGRAMUNIFORM1UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7464

   type PFNGLPROGRAMUNIFORM2IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:7465

   type PFNGLPROGRAMUNIFORM2IVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7466

   type PFNGLPROGRAMUNIFORM2FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:7467

   type PFNGLPROGRAMUNIFORM2FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7468

   type PFNGLPROGRAMUNIFORM2DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:7469

   type PFNGLPROGRAMUNIFORM2DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7470

   type PFNGLPROGRAMUNIFORM2UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7471

   type PFNGLPROGRAMUNIFORM2UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7472

   type PFNGLPROGRAMUNIFORM3IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:7473

   type PFNGLPROGRAMUNIFORM3IVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7474

   type PFNGLPROGRAMUNIFORM3FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:7475

   type PFNGLPROGRAMUNIFORM3FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7476

   type PFNGLPROGRAMUNIFORM3DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:7477

   type PFNGLPROGRAMUNIFORM3DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7478

   type PFNGLPROGRAMUNIFORM3UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7479

   type PFNGLPROGRAMUNIFORM3UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7480

   type PFNGLPROGRAMUNIFORM4IPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  -- /usr/include/GL/glext.h:7481

   type PFNGLPROGRAMUNIFORM4IVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7482

   type PFNGLPROGRAMUNIFORM4FPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:7483

   type PFNGLPROGRAMUNIFORM4FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7484

   type PFNGLPROGRAMUNIFORM4DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:7485

   type PFNGLPROGRAMUNIFORM4DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7486

   type PFNGLPROGRAMUNIFORM4UIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7487

   type PFNGLPROGRAMUNIFORM4UIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7488

   type PFNGLPROGRAMUNIFORMMATRIX2FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7489

   type PFNGLPROGRAMUNIFORMMATRIX3FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7490

   type PFNGLPROGRAMUNIFORMMATRIX4FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7491

   type PFNGLPROGRAMUNIFORMMATRIX2DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7492

   type PFNGLPROGRAMUNIFORMMATRIX3DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7493

   type PFNGLPROGRAMUNIFORMMATRIX4DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7494

   type PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7495

   type PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7496

   type PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7497

   type PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7498

   type PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7499

   type PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7500

   type PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7501

   type PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7502

   type PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7503

   type PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7504

   type PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7505

   type PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7506

   type PFNGLVALIDATEPROGRAMPIPELINEPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7507

   type PFNGLGETPROGRAMPIPELINEINFOLOGPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLchar);  -- /usr/include/GL/glext.h:7508

   type PFNGLVERTEXATTRIBL1DPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:7525

   type PFNGLVERTEXATTRIBL2DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:7526

   type PFNGLVERTEXATTRIBL3DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:7527

   type PFNGLVERTEXATTRIBL4DPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:7528

   type PFNGLVERTEXATTRIBL1DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7529

   type PFNGLVERTEXATTRIBL2DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7530

   type PFNGLVERTEXATTRIBL3DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7531

   type PFNGLVERTEXATTRIBL4DVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7532

   type PFNGLVERTEXATTRIBLPOINTERPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:7533

   type PFNGLGETVERTEXATTRIBLDVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7534

   type PFNGLVIEWPORTARRAYVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7551

   type PFNGLVIEWPORTINDEXEDFPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:7552

   type PFNGLVIEWPORTINDEXEDFVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7553

   type PFNGLSCISSORARRAYVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7554

   type PFNGLSCISSORINDEXEDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7555

   type PFNGLSCISSORINDEXEDVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7556

   type PFNGLDEPTHRANGEARRAYVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLclampd);  -- /usr/include/GL/glext.h:7557

   type PFNGLDEPTHRANGEINDEXEDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLclampd;
         arg3 : gl_h.GLclampd);  -- /usr/include/GL/glext.h:7558

   type PFNGLGETFLOATI_VPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7559

   type PFNGLGETDOUBLEI_VPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7560

   type PFNGLCREATESYNCFROMCLEVENTARBPROC is access function
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : gl_h.GLbitfield) return GLsync;  -- /usr/include/GL/glext.h:7568

   type PFNGLDEBUGMESSAGECONTROLARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLuint;
         arg6 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:7579

   type PFNGLDEBUGMESSAGEINSERTARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : access GLchar);  -- /usr/include/GL/glext.h:7580

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
         arg8 : access GLchar) return gl_h.GLuint;  -- /usr/include/GL/glext.h:7582

   type PFNGLGETGRAPHICSRESETSTATUSARBPROC is access function return gl_h.GLenum;  -- /usr/include/GL/glext.h:7609

   type PFNGLGETNMAPDVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7610

   type PFNGLGETNMAPFVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7611

   type PFNGLGETNMAPIVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7612

   type PFNGLGETNPIXELMAPFVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7613

   type PFNGLGETNPIXELMAPUIVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7614

   type PFNGLGETNPIXELMAPUSVARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:7615

   type PFNGLGETNPOLYGONSTIPPLEARBPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:7616

   type PFNGLGETNCOLORTABLEARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:7617

   type PFNGLGETNCONVOLUTIONFILTERARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:7618

   type PFNGLGETNSEPARABLEFILTERARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address;
         arg6 : gl_h.GLsizei;
         arg7 : System.Address;
         arg8 : System.Address);  -- /usr/include/GL/glext.h:7619

   type PFNGLGETNHISTOGRAMARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:7620

   type PFNGLGETNMINMAXARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:7621

   type PFNGLGETNTEXIMAGEARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:7622

   type PFNGLREADNPIXELSARBPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLsizei;
         arg8 : System.Address);  -- /usr/include/GL/glext.h:7623

   type PFNGLGETNCOMPRESSEDTEXIMAGEARBPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:7624

   type PFNGLGETNUNIFORMFVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7625

   type PFNGLGETNUNIFORMIVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7626

   type PFNGLGETNUNIFORMUIVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7627

   type PFNGLGETNUNIFORMDVARBPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:7628

   type PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7642

   type PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7643

   type PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7644

   type PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7657

   type PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7658

   type PFNGLGETINTERNALFORMATIVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7674

   type PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7686

   type PFNGLBINDIMAGETEXTUREPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLenum);  -- /usr/include/GL/glext.h:7695

   type PFNGLMEMORYBARRIERPROC is access procedure (arg1 : gl_h.GLbitfield);  -- /usr/include/GL/glext.h:7696

   type PFNGLTEXSTORAGE1DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7713

   type PFNGLTEXSTORAGE2DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7714

   type PFNGLTEXSTORAGE3DPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7715

   type PFNGLTEXTURESTORAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7716

   type PFNGLTEXTURESTORAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7717

   type PFNGLTEXTURESTORAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7718

   type PFNGLBLENDCOLOREXTPROC is access procedure
        (arg1 : gl_h.GLclampf;
         arg2 : gl_h.GLclampf;
         arg3 : gl_h.GLclampf;
         arg4 : gl_h.GLclampf);  -- /usr/include/GL/glext.h:7730

   type PFNGLPOLYGONOFFSETEXTPROC is access procedure (arg1 : gl_h.GLfloat; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:7738

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
         arg10 : System.Address);  -- /usr/include/GL/glext.h:7751

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
         arg11 : System.Address);  -- /usr/include/GL/glext.h:7752

   type PFNGLGETTEXFILTERFUNCSGISPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7761

   type PFNGLTEXFILTERFUNCSGISPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7762

   type PFNGLTEXSUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : System.Address);  -- /usr/include/GL/glext.h:7771

   type PFNGLTEXSUBIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLenum;
         arg8 : gl_h.GLenum;
         arg9 : System.Address);  -- /usr/include/GL/glext.h:7772

   type PFNGLCOPYTEXIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLint);  -- /usr/include/GL/glext.h:7784

   type PFNGLCOPYTEXIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLint);  -- /usr/include/GL/glext.h:7785

   type PFNGLCOPYTEXSUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7786

   type PFNGLCOPYTEXSUBIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7787

   type PFNGLCOPYTEXSUBIMAGE3DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7788

   type PFNGLGETHISTOGRAMEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:7805

   type PFNGLGETHISTOGRAMPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7806

   type PFNGLGETHISTOGRAMPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7807

   type PFNGLGETMINMAXEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:7808

   type PFNGLGETMINMAXPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7809

   type PFNGLGETMINMAXPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7810

   type PFNGLHISTOGRAMEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:7811

   type PFNGLMINMAXEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:7812

   type PFNGLRESETHISTOGRAMEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:7813

   type PFNGLRESETMINMAXEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:7814

   type PFNGLCONVOLUTIONFILTER1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:7834

   type PFNGLCONVOLUTIONFILTER2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : System.Address);  -- /usr/include/GL/glext.h:7835

   type PFNGLCONVOLUTIONPARAMETERFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:7836

   type PFNGLCONVOLUTIONPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7837

   type PFNGLCONVOLUTIONPARAMETERIEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:7838

   type PFNGLCONVOLUTIONPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7839

   type PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7840

   type PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7841

   type PFNGLGETCONVOLUTIONFILTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:7842

   type PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7843

   type PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7844

   type PFNGLGETSEPARABLEFILTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : System.Address;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:7845

   type PFNGLSEPARABLEFILTER2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum;
         arg7 : System.Address;
         arg8 : System.Address);  -- /usr/include/GL/glext.h:7846

   type PFNGLCOLORTABLESGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:7864

   type PFNGLCOLORTABLEPARAMETERFVSGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7865

   type PFNGLCOLORTABLEPARAMETERIVSGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7866

   type PFNGLCOPYCOLORTABLESGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7867

   type PFNGLGETCOLORTABLESGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:7868

   type PFNGLGETCOLORTABLEPARAMETERFVSGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7869

   type PFNGLGETCOLORTABLEPARAMETERIVSGIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7870

   type PFNGLPIXELTEXGENSGIXPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:7878

   type PFNGLPIXELTEXGENPARAMETERISGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:7891

   type PFNGLPIXELTEXGENPARAMETERIVSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7892

   type PFNGLPIXELTEXGENPARAMETERFSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:7893

   type PFNGLPIXELTEXGENPARAMETERFVSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7894

   type PFNGLGETPIXELTEXGENPARAMETERIVSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:7895

   type PFNGLGETPIXELTEXGENPARAMETERFVSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7896

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
         arg11 : System.Address);  -- /usr/include/GL/glext.h:7905

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
         arg13 : System.Address);  -- /usr/include/GL/glext.h:7906

   type PFNGLARETEXTURESRESIDENTEXTPROC is access function
        (arg1 : gl_h.GLsizei;
         arg2 : access gl_h.GLuint;
         arg3 : access gl_h.GLboolean) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:7927

   type PFNGLBINDTEXTUREEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:7928

   type PFNGLDELETETEXTURESEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7929

   type PFNGLGENTEXTURESEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:7930

   type PFNGLISTEXTUREEXTPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:7931

   type PFNGLPRIORITIZETEXTURESEXTPROC is access procedure
        (arg1 : gl_h.GLsizei;
         arg2 : access gl_h.GLuint;
         arg3 : access gl_h.GLclampf);  -- /usr/include/GL/glext.h:7932

   type PFNGLDETAILTEXFUNCSGISPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7941

   type PFNGLGETDETAILTEXFUNCSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7942

   type PFNGLSHARPENTEXFUNCSGISPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7951

   type PFNGLGETSHARPENTEXFUNCSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:7952

   type PFNGLSAMPLEMASKSGISPROC is access procedure (arg1 : gl_h.GLclampf; arg2 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:7969

   type PFNGLSAMPLEPATTERNSGISPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:7970

   type PFNGLARRAYELEMENTEXTPROC is access procedure (arg1 : gl_h.GLint);  -- /usr/include/GL/glext.h:7990

   type PFNGLCOLORPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:7991

   type PFNGLDRAWARRAYSEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:7992

   type PFNGLEDGEFLAGPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLsizei;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLboolean);  -- /usr/include/GL/glext.h:7993

   type PFNGLGETPOINTERVEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : System.Address);  -- /usr/include/GL/glext.h:7994

   type PFNGLINDEXPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:7995

   type PFNGLNORMALPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:7996

   type PFNGLTEXCOORDPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:7997

   type PFNGLVERTEXPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:7998

   type PFNGLBLENDEQUATIONEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:8030

   type PFNGLSPRITEPARAMETERFSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8061

   type PFNGLSPRITEPARAMETERFVSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8062

   type PFNGLSPRITEPARAMETERISGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:8063

   type PFNGLSPRITEPARAMETERIVSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8064

   type PFNGLPOINTPARAMETERFEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8077

   type PFNGLPOINTPARAMETERFVEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8078

   type PFNGLPOINTPARAMETERFSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8087

   type PFNGLPOINTPARAMETERFVSGISPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8088

   type PFNGLGETINSTRUMENTSSGIXPROC is access function return gl_h.GLint;  -- /usr/include/GL/glext.h:8101

   type PFNGLINSTRUMENTSBUFFERSGIXPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8102

   type PFNGLPOLLINSTRUMENTSSGIXPROC is access function (arg1 : access gl_h.GLint) return gl_h.GLint;  -- /usr/include/GL/glext.h:8103

   type PFNGLREADINSTRUMENTSSGIXPROC is access procedure (arg1 : gl_h.GLint);  -- /usr/include/GL/glext.h:8104

   type PFNGLSTARTINSTRUMENTSSGIXPROC is access procedure;  -- /usr/include/GL/glext.h:8105

   type PFNGLSTOPINSTRUMENTSSGIXPROC is access procedure (arg1 : gl_h.GLint);  -- /usr/include/GL/glext.h:8106

   type PFNGLFRAMEZOOMSGIXPROC is access procedure (arg1 : gl_h.GLint);  -- /usr/include/GL/glext.h:8118

   type PFNGLTAGSAMPLEBUFFERSGIXPROC is access procedure;  -- /usr/include/GL/glext.h:8126

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
         arg14 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:8137

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
         arg14 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8138

   type PFNGLDEFORMSGIXPROC is access procedure (arg1 : gl_h.GLbitfield);  -- /usr/include/GL/glext.h:8139

   type PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC is access procedure (arg1 : gl_h.GLbitfield);  -- /usr/include/GL/glext.h:8140

   type PFNGLREFERENCEPLANESGIXPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:8148

   type PFNGLFLUSHRASTERSGIXPROC is access procedure;  -- /usr/include/GL/glext.h:8156

   type PFNGLFOGFUNCSGISPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8169

   type PFNGLGETFOGFUNCSGISPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8170

   type PFNGLIMAGETRANSFORMPARAMETERIHPPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:8187

   type PFNGLIMAGETRANSFORMPARAMETERFHPPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8188

   type PFNGLIMAGETRANSFORMPARAMETERIVHPPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8189

   type PFNGLIMAGETRANSFORMPARAMETERFVHPPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8190

   type PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8191

   type PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8192

   type PFNGLCOLORSUBTABLEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:8209

   type PFNGLCOPYCOLORSUBTABLEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:8210

   type PFNGLHINTPGIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:8222

   type PFNGLCOLORTABLEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:8233

   type PFNGLGETCOLORTABLEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:8234

   type PFNGLGETCOLORTABLEPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8235

   type PFNGLGETCOLORTABLEPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8236

   type PFNGLGETLISTPARAMETERFVSGIXPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8253

   type PFNGLGETLISTPARAMETERIVSGIXPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8254

   type PFNGLLISTPARAMETERFSGIXPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8255

   type PFNGLLISTPARAMETERFVSGIXPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8256

   type PFNGLLISTPARAMETERISGIXPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:8257

   type PFNGLLISTPARAMETERIVSGIXPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8258

   type PFNGLINDEXMATERIALEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:8286

   type PFNGLINDEXFUNCEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLclampf);  -- /usr/include/GL/glext.h:8294

   type PFNGLLOCKARRAYSEXTPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:8307

   type PFNGLUNLOCKARRAYSEXTPROC is access procedure;  -- /usr/include/GL/glext.h:8308

   type PFNGLCULLPARAMETERDVEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:8317

   type PFNGLCULLPARAMETERFVEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8318

   type PFNGLFRAGMENTCOLORMATERIALSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:8347

   type PFNGLFRAGMENTLIGHTFSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8348

   type PFNGLFRAGMENTLIGHTFVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8349

   type PFNGLFRAGMENTLIGHTISGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:8350

   type PFNGLFRAGMENTLIGHTIVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8351

   type PFNGLFRAGMENTLIGHTMODELFSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8352

   type PFNGLFRAGMENTLIGHTMODELFVSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8353

   type PFNGLFRAGMENTLIGHTMODELISGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:8354

   type PFNGLFRAGMENTLIGHTMODELIVSGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8355

   type PFNGLFRAGMENTMATERIALFSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8356

   type PFNGLFRAGMENTMATERIALFVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8357

   type PFNGLFRAGMENTMATERIALISGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:8358

   type PFNGLFRAGMENTMATERIALIVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8359

   type PFNGLGETFRAGMENTLIGHTFVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8360

   type PFNGLGETFRAGMENTLIGHTIVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8361

   type PFNGLGETFRAGMENTMATERIALFVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8362

   type PFNGLGETFRAGMENTMATERIALIVSGIXPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8363

   type PFNGLLIGHTENVISGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:8364

   type PFNGLDRAWRANGEELEMENTSEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:8380

   type PFNGLAPPLYTEXTUREEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:8398

   type PFNGLTEXTURELIGHTEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:8399

   type PFNGLTEXTUREMATERIALEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:8400

   type PFNGLASYNCMARKERSGIXPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:8421

   type PFNGLFINISHASYNCSGIXPROC is access function (arg1 : access gl_h.GLuint) return gl_h.GLint;  -- /usr/include/GL/glext.h:8422

   type PFNGLPOLLASYNCSGIXPROC is access function (arg1 : access gl_h.GLuint) return gl_h.GLint;  -- /usr/include/GL/glext.h:8423

   type PFNGLGENASYNCMARKERSSGIXPROC is access function (arg1 : gl_h.GLsizei) return gl_h.GLuint;  -- /usr/include/GL/glext.h:8424

   type PFNGLDELETEASYNCMARKERSSGIXPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:8425

   type PFNGLISASYNCMARKERSGIXPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:8426

   type PFNGLVERTEXPOINTERVINTELPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:8445

   type PFNGLNORMALPOINTERVINTELPROC is access procedure (arg1 : gl_h.GLenum; arg2 : System.Address);  -- /usr/include/GL/glext.h:8446

   type PFNGLCOLORPOINTERVINTELPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:8447

   type PFNGLTEXCOORDPOINTERVINTELPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:8448

   type PFNGLPIXELTRANSFORMPARAMETERIEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:8463

   type PFNGLPIXELTRANSFORMPARAMETERFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8464

   type PFNGLPIXELTRANSFORMPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8465

   type PFNGLPIXELTRANSFORMPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8466

   type PFNGLSECONDARYCOLOR3BEXTPROC is access procedure
        (arg1 : gl_h.GLbyte;
         arg2 : gl_h.GLbyte;
         arg3 : gl_h.GLbyte);  -- /usr/include/GL/glext.h:8502

   type PFNGLSECONDARYCOLOR3BVEXTPROC is access procedure (arg1 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:8503

   type PFNGLSECONDARYCOLOR3DEXTPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:8504

   type PFNGLSECONDARYCOLOR3DVEXTPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:8505

   type PFNGLSECONDARYCOLOR3FEXTPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8506

   type PFNGLSECONDARYCOLOR3FVEXTPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8507

   type PFNGLSECONDARYCOLOR3IEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:8508

   type PFNGLSECONDARYCOLOR3IVEXTPROC is access procedure (arg1 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8509

   type PFNGLSECONDARYCOLOR3SEXTPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  -- /usr/include/GL/glext.h:8510

   type PFNGLSECONDARYCOLOR3SVEXTPROC is access procedure (arg1 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:8511

   type PFNGLSECONDARYCOLOR3UBEXTPROC is access procedure
        (arg1 : gl_h.GLubyte;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte);  -- /usr/include/GL/glext.h:8512

   type PFNGLSECONDARYCOLOR3UBVEXTPROC is access procedure (arg1 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:8513

   type PFNGLSECONDARYCOLOR3UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:8514

   type PFNGLSECONDARYCOLOR3UIVEXTPROC is access procedure (arg1 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:8515

   type PFNGLSECONDARYCOLOR3USEXTPROC is access procedure
        (arg1 : gl_h.GLushort;
         arg2 : gl_h.GLushort;
         arg3 : gl_h.GLushort);  -- /usr/include/GL/glext.h:8516

   type PFNGLSECONDARYCOLOR3USVEXTPROC is access procedure (arg1 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:8517

   type PFNGLSECONDARYCOLORPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:8518

   type PFNGLTEXTURENORMALEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:8526

   type PFNGLMULTIDRAWARRAYSEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : access gl_h.GLint;
         arg3 : access gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:8535

   type PFNGLMULTIDRAWELEMENTSEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : access gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:8536

   type PFNGLFOGCOORDFEXTPROC is access procedure (arg1 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8548

   type PFNGLFOGCOORDFVEXTPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8549

   type PFNGLFOGCOORDDEXTPROC is access procedure (arg1 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:8550

   type PFNGLFOGCOORDDVEXTPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:8551

   type PFNGLFOGCOORDPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:8552

   type PFNGLTANGENT3BEXTPROC is access procedure
        (arg1 : gl_h.GLbyte;
         arg2 : gl_h.GLbyte;
         arg3 : gl_h.GLbyte);  -- /usr/include/GL/glext.h:8585

   type PFNGLTANGENT3BVEXTPROC is access procedure (arg1 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:8586

   type PFNGLTANGENT3DEXTPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:8587

   type PFNGLTANGENT3DVEXTPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:8588

   type PFNGLTANGENT3FEXTPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8589

   type PFNGLTANGENT3FVEXTPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8590

   type PFNGLTANGENT3IEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:8591

   type PFNGLTANGENT3IVEXTPROC is access procedure (arg1 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8592

   type PFNGLTANGENT3SEXTPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  -- /usr/include/GL/glext.h:8593

   type PFNGLTANGENT3SVEXTPROC is access procedure (arg1 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:8594

   type PFNGLBINORMAL3BEXTPROC is access procedure
        (arg1 : gl_h.GLbyte;
         arg2 : gl_h.GLbyte;
         arg3 : gl_h.GLbyte);  -- /usr/include/GL/glext.h:8595

   type PFNGLBINORMAL3BVEXTPROC is access procedure (arg1 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:8596

   type PFNGLBINORMAL3DEXTPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:8597

   type PFNGLBINORMAL3DVEXTPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:8598

   type PFNGLBINORMAL3FEXTPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8599

   type PFNGLBINORMAL3FVEXTPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8600

   type PFNGLBINORMAL3IEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:8601

   type PFNGLBINORMAL3IVEXTPROC is access procedure (arg1 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8602

   type PFNGLBINORMAL3SEXTPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  -- /usr/include/GL/glext.h:8603

   type PFNGLBINORMAL3SVEXTPROC is access procedure (arg1 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:8604

   type PFNGLTANGENTPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:8605

   type PFNGLBINORMALPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:8606

   type PFNGLFINISHTEXTURESUNXPROC is access procedure;  -- /usr/include/GL/glext.h:8630

   type PFNGLGLOBALALPHAFACTORBSUNPROC is access procedure (arg1 : gl_h.GLbyte);  -- /usr/include/GL/glext.h:8645

   type PFNGLGLOBALALPHAFACTORSSUNPROC is access procedure (arg1 : gl_h.GLshort);  -- /usr/include/GL/glext.h:8646

   type PFNGLGLOBALALPHAFACTORISUNPROC is access procedure (arg1 : gl_h.GLint);  -- /usr/include/GL/glext.h:8647

   type PFNGLGLOBALALPHAFACTORFSUNPROC is access procedure (arg1 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8648

   type PFNGLGLOBALALPHAFACTORDSUNPROC is access procedure (arg1 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:8649

   type PFNGLGLOBALALPHAFACTORUBSUNPROC is access procedure (arg1 : gl_h.GLubyte);  -- /usr/include/GL/glext.h:8650

   type PFNGLGLOBALALPHAFACTORUSSUNPROC is access procedure (arg1 : gl_h.GLushort);  -- /usr/include/GL/glext.h:8651

   type PFNGLGLOBALALPHAFACTORUISUNPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:8652

   type PFNGLREPLACEMENTCODEUISUNPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:8666

   type PFNGLREPLACEMENTCODEUSSUNPROC is access procedure (arg1 : gl_h.GLushort);  -- /usr/include/GL/glext.h:8667

   type PFNGLREPLACEMENTCODEUBSUNPROC is access procedure (arg1 : gl_h.GLubyte);  -- /usr/include/GL/glext.h:8668

   type PFNGLREPLACEMENTCODEUIVSUNPROC is access procedure (arg1 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:8669

   type PFNGLREPLACEMENTCODEUSVSUNPROC is access procedure (arg1 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:8670

   type PFNGLREPLACEMENTCODEUBVSUNPROC is access procedure (arg1 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:8671

   type PFNGLREPLACEMENTCODEPOINTERSUNPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:8672

   type PFNGLCOLOR4UBVERTEX2FSUNPROC is access procedure
        (arg1 : gl_h.GLubyte;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8719

   type PFNGLCOLOR4UBVERTEX2FVSUNPROC is access procedure (arg1 : access gl_h.GLubyte; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8720

   type PFNGLCOLOR4UBVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLubyte;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8721

   type PFNGLCOLOR4UBVERTEX3FVSUNPROC is access procedure (arg1 : access gl_h.GLubyte; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8722

   type PFNGLCOLOR3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8723

   type PFNGLCOLOR3FVERTEX3FVSUNPROC is access procedure (arg1 : access gl_h.GLfloat; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8724

   type PFNGLNORMAL3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8725

   type PFNGLNORMAL3FVERTEX3FVSUNPROC is access procedure (arg1 : access gl_h.GLfloat; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8726

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
         arg10 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8727

   type PFNGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLfloat;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8728

   type PFNGLTEXCOORD2FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8729

   type PFNGLTEXCOORD2FVERTEX3FVSUNPROC is access procedure (arg1 : access gl_h.GLfloat; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8730

   type PFNGLTEXCOORD4FVERTEX4FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8731

   type PFNGLTEXCOORD4FVERTEX4FVSUNPROC is access procedure (arg1 : access gl_h.GLfloat; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8732

   type PFNGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLubyte;
         arg6 : gl_h.GLubyte;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat;
         arg9 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8733

   type PFNGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLfloat;
         arg2 : access gl_h.GLubyte;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8734

   type PFNGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8735

   type PFNGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLfloat;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8736

   type PFNGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8737

   type PFNGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLfloat;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8738

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
         arg12 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8739

   type PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLfloat;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8740

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
         arg15 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8741

   type PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC is access procedure
        (arg1 : access gl_h.GLfloat;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8742

   type PFNGLREPLACEMENTCODEUIVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8743

   type PFNGLREPLACEMENTCODEUIVERTEX3FVSUNPROC is access procedure (arg1 : access gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8744

   type PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLubyte;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8745

   type PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLubyte;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8746

   type PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8747

   type PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8748

   type PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8749

   type PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8750

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
         arg11 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8751

   type PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8752

   type PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8753

   type PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8754

   type PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat;
         arg8 : gl_h.GLfloat;
         arg9 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8755

   type PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8756

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
         arg13 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8757

   type PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC is access procedure
        (arg1 : access gl_h.GLuint;
         arg2 : access gl_h.GLfloat;
         arg3 : access gl_h.GLfloat;
         arg4 : access gl_h.GLfloat;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8758

   type PFNGLBLENDFUNCSEPARATEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:8766

   type PFNGLBLENDFUNCSEPARATEINGRPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:8774

   type PFNGLVERTEXWEIGHTFEXTPROC is access procedure (arg1 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8820

   type PFNGLVERTEXWEIGHTFVEXTPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8821

   type PFNGLVERTEXWEIGHTPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLsizei;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:8822

   type PFNGLFLUSHVERTEXARRAYRANGENVPROC is access procedure;  -- /usr/include/GL/glext.h:8835

   type PFNGLVERTEXARRAYRANGENVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : System.Address);  -- /usr/include/GL/glext.h:8836

   type PFNGLCOMBINERPARAMETERFVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8856

   type PFNGLCOMBINERPARAMETERFNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8857

   type PFNGLCOMBINERPARAMETERIVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8858

   type PFNGLCOMBINERPARAMETERINVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:8859

   type PFNGLCOMBINERINPUTNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum);  -- /usr/include/GL/glext.h:8860

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
         arg10 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:8861

   type PFNGLFINALCOMBINERINPUTNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:8862

   type PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8863

   type PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8864

   type PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8865

   type PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8866

   type PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8867

   type PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8868

   type PFNGLRESIZEBUFFERSMESAPROC is access procedure;  -- /usr/include/GL/glext.h:8892

   type PFNGLWINDOWPOS2DMESAPROC is access procedure (arg1 : gl_h.GLdouble; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:8923

   type PFNGLWINDOWPOS2DVMESAPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:8924

   type PFNGLWINDOWPOS2FMESAPROC is access procedure (arg1 : gl_h.GLfloat; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8925

   type PFNGLWINDOWPOS2FVMESAPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8926

   type PFNGLWINDOWPOS2IMESAPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:8927

   type PFNGLWINDOWPOS2IVMESAPROC is access procedure (arg1 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8928

   type PFNGLWINDOWPOS2SMESAPROC is access procedure (arg1 : gl_h.GLshort; arg2 : gl_h.GLshort);  -- /usr/include/GL/glext.h:8929

   type PFNGLWINDOWPOS2SVMESAPROC is access procedure (arg1 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:8930

   type PFNGLWINDOWPOS3DMESAPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:8931

   type PFNGLWINDOWPOS3DVMESAPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:8932

   type PFNGLWINDOWPOS3FMESAPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8933

   type PFNGLWINDOWPOS3FVMESAPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8934

   type PFNGLWINDOWPOS3IMESAPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:8935

   type PFNGLWINDOWPOS3IVMESAPROC is access procedure (arg1 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8936

   type PFNGLWINDOWPOS3SMESAPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  -- /usr/include/GL/glext.h:8937

   type PFNGLWINDOWPOS3SVMESAPROC is access procedure (arg1 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:8938

   type PFNGLWINDOWPOS4DMESAPROC is access procedure
        (arg1 : gl_h.GLdouble;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:8939

   type PFNGLWINDOWPOS4DVMESAPROC is access procedure (arg1 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:8940

   type PFNGLWINDOWPOS4FMESAPROC is access procedure
        (arg1 : gl_h.GLfloat;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:8941

   type PFNGLWINDOWPOS4FVMESAPROC is access procedure (arg1 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:8942

   type PFNGLWINDOWPOS4IMESAPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:8943

   type PFNGLWINDOWPOS4IVMESAPROC is access procedure (arg1 : access gl_h.GLint);  -- /usr/include/GL/glext.h:8944

   type PFNGLWINDOWPOS4SMESAPROC is access procedure
        (arg1 : gl_h.GLshort;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  -- /usr/include/GL/glext.h:8945

   type PFNGLWINDOWPOS4SVMESAPROC is access procedure (arg1 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:8946

   type PFNGLMULTIMODEDRAWARRAYSIBMPROC is access procedure
        (arg1 : access gl_h.GLenum;
         arg2 : access gl_h.GLint;
         arg3 : access gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:8959

   type PFNGLMULTIMODEDRAWELEMENTSIBMPROC is access procedure
        (arg1 : access gl_h.GLenum;
         arg2 : access gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint);  -- /usr/include/GL/glext.h:8960

   type PFNGLCOLORPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : System.Address;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:8975

   type PFNGLSECONDARYCOLORPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : System.Address;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:8976

   type PFNGLEDGEFLAGPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : System.Address;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:8977

   type PFNGLFOGCOORDPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : System.Address;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:8978

   type PFNGLINDEXPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : System.Address;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:8979

   type PFNGLNORMALPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : System.Address;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:8980

   type PFNGLTEXCOORDPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : System.Address;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:8981

   type PFNGLVERTEXPOINTERLISTIBMPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : System.Address;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:8982

   type PFNGLTBUFFERMASK3DFXPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9014

   type PFNGLSAMPLEMASKEXTPROC is access procedure (arg1 : gl_h.GLclampf; arg2 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:9023

   type PFNGLSAMPLEPATTERNEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9024

   type PFNGLTEXTURECOLORMASKSGISPROC is access procedure
        (arg1 : gl_h.GLboolean;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:9048

   type PFNGLIGLOOINTERFACESGIXPROC is access procedure (arg1 : gl_h.GLenum; arg2 : System.Address);  -- /usr/include/GL/glext.h:9056

   type PFNGLDELETEFENCESNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9078

   type PFNGLGENFENCESNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9079

   type PFNGLISFENCENVPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:9080

   type PFNGLTESTFENCENVPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:9081

   type PFNGLGETFENCEIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9082

   type PFNGLFINISHFENCENVPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9083

   type PFNGLSETFENCENVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9084

   type PFNGLMAPCONTROLPOINTSNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLboolean;
         arg9 : System.Address);  -- /usr/include/GL/glext.h:9100

   type PFNGLMAPPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9101

   type PFNGLMAPPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9102

   type PFNGLGETMAPCONTROLPOINTSNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLboolean;
         arg7 : System.Address);  -- /usr/include/GL/glext.h:9103

   type PFNGLGETMAPPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9104

   type PFNGLGETMAPPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9105

   type PFNGLGETMAPATTRIBPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9106

   type PFNGLGETMAPATTRIBPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9107

   type PFNGLEVALMAPSNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9108

   type PFNGLCOMBINERSTAGEPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9121

   type PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9122

   type PFNGLAREPROGRAMSRESIDENTNVPROC is access function
        (arg1 : gl_h.GLsizei;
         arg2 : access gl_h.GLuint;
         arg3 : access gl_h.GLboolean) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:9213

   type PFNGLBINDPROGRAMNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9214

   type PFNGLDELETEPROGRAMSNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9215

   type PFNGLEXECUTEPROGRAMNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9216

   type PFNGLGENPROGRAMSNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9217

   type PFNGLGETPROGRAMPARAMETERDVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9218

   type PFNGLGETPROGRAMPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9219

   type PFNGLGETPROGRAMIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9220

   type PFNGLGETPROGRAMSTRINGNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:9221

   type PFNGLGETTRACKMATRIXIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9222

   type PFNGLGETVERTEXATTRIBDVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9223

   type PFNGLGETVERTEXATTRIBFVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9224

   type PFNGLGETVERTEXATTRIBIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9225

   type PFNGLGETVERTEXATTRIBPOINTERVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:9226

   type PFNGLISPROGRAMNVPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:9227

   type PFNGLLOADPROGRAMNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:9228

   type PFNGLPROGRAMPARAMETER4DNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:9229

   type PFNGLPROGRAMPARAMETER4DVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9230

   type PFNGLPROGRAMPARAMETER4FNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9231

   type PFNGLPROGRAMPARAMETER4FVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9232

   type PFNGLPROGRAMPARAMETERS4DVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9233

   type PFNGLPROGRAMPARAMETERS4FVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9234

   type PFNGLREQUESTRESIDENTPROGRAMSNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9235

   type PFNGLTRACKMATRIXNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9236

   type PFNGLVERTEXATTRIBPOINTERNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:9237

   type PFNGLVERTEXATTRIB1DNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:9238

   type PFNGLVERTEXATTRIB1DVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9239

   type PFNGLVERTEXATTRIB1FNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9240

   type PFNGLVERTEXATTRIB1FVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9241

   type PFNGLVERTEXATTRIB1SNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLshort);  -- /usr/include/GL/glext.h:9242

   type PFNGLVERTEXATTRIB1SVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9243

   type PFNGLVERTEXATTRIB2DNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:9244

   type PFNGLVERTEXATTRIB2DVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9245

   type PFNGLVERTEXATTRIB2FNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9246

   type PFNGLVERTEXATTRIB2FVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9247

   type PFNGLVERTEXATTRIB2SNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  -- /usr/include/GL/glext.h:9248

   type PFNGLVERTEXATTRIB2SVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9249

   type PFNGLVERTEXATTRIB3DNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:9250

   type PFNGLVERTEXATTRIB3DVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9251

   type PFNGLVERTEXATTRIB3FNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9252

   type PFNGLVERTEXATTRIB3FVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9253

   type PFNGLVERTEXATTRIB3SNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  -- /usr/include/GL/glext.h:9254

   type PFNGLVERTEXATTRIB3SVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9255

   type PFNGLVERTEXATTRIB4DNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:9256

   type PFNGLVERTEXATTRIB4DVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9257

   type PFNGLVERTEXATTRIB4FNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9258

   type PFNGLVERTEXATTRIB4FVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9259

   type PFNGLVERTEXATTRIB4SNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort;
         arg5 : gl_h.GLshort);  -- /usr/include/GL/glext.h:9260

   type PFNGLVERTEXATTRIB4SVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9261

   type PFNGLVERTEXATTRIB4UBNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLubyte;
         arg3 : gl_h.GLubyte;
         arg4 : gl_h.GLubyte;
         arg5 : gl_h.GLubyte);  -- /usr/include/GL/glext.h:9262

   type PFNGLVERTEXATTRIB4UBVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:9263

   type PFNGLVERTEXATTRIBS1DVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9264

   type PFNGLVERTEXATTRIBS1FVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9265

   type PFNGLVERTEXATTRIBS1SVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9266

   type PFNGLVERTEXATTRIBS2DVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9267

   type PFNGLVERTEXATTRIBS2FVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9268

   type PFNGLVERTEXATTRIBS2SVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9269

   type PFNGLVERTEXATTRIBS3DVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9270

   type PFNGLVERTEXATTRIBS3FVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9271

   type PFNGLVERTEXATTRIBS3SVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9272

   type PFNGLVERTEXATTRIBS4DVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9273

   type PFNGLVERTEXATTRIBS4FVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9274

   type PFNGLVERTEXATTRIBS4SVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9275

   type PFNGLVERTEXATTRIBS4UBVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:9276

   type PFNGLTEXBUMPPARAMETERIVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9311

   type PFNGLTEXBUMPPARAMETERFVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9312

   type PFNGLGETTEXBUMPPARAMETERIVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9313

   type PFNGLGETTEXBUMPPARAMETERFVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9314

   type PFNGLGENFRAGMENTSHADERSATIPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLuint;  -- /usr/include/GL/glext.h:9335

   type PFNGLBINDFRAGMENTSHADERATIPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9336

   type PFNGLDELETEFRAGMENTSHADERATIPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9337

   type PFNGLBEGINFRAGMENTSHADERATIPROC is access procedure;  -- /usr/include/GL/glext.h:9338

   type PFNGLENDFRAGMENTSHADERATIPROC is access procedure;  -- /usr/include/GL/glext.h:9339

   type PFNGLPASSTEXCOORDATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9340

   type PFNGLSAMPLEMAPATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9341

   type PFNGLCOLORFRAGMENTOP1ATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint;
         arg7 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9342

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
         arg10 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9343

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
         arg13 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9344

   type PFNGLALPHAFRAGMENTOP1ATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9345

   type PFNGLALPHAFRAGMENTOP2ATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint;
         arg7 : gl_h.GLuint;
         arg8 : gl_h.GLuint;
         arg9 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9346

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
         arg12 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9347

   type PFNGLSETFRAGMENTSHADERCONSTANTATIPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9348

   type PFNGLPNTRIANGLESIATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:9357

   type PFNGLPNTRIANGLESFATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9358

   type PFNGLNEWOBJECTBUFFERATIPROC is access function
        (arg1 : gl_h.GLsizei;
         arg2 : System.Address;
         arg3 : gl_h.GLenum) return gl_h.GLuint;  -- /usr/include/GL/glext.h:9377

   type PFNGLISOBJECTBUFFERATIPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:9378

   type PFNGLUPDATEOBJECTBUFFERATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : System.Address;
         arg5 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9379

   type PFNGLGETOBJECTBUFFERFVATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9380

   type PFNGLGETOBJECTBUFFERIVATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9381

   type PFNGLFREEOBJECTBUFFERATIPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9382

   type PFNGLARRAYOBJECTATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9383

   type PFNGLGETARRAYOBJECTFVATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9384

   type PFNGLGETARRAYOBJECTIVATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9385

   type PFNGLVARIANTARRAYOBJECTATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9386

   type PFNGLGETVARIANTARRAYOBJECTFVATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9387

   type PFNGLGETVARIANTARRAYOBJECTIVATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9388

   type PFNGLBEGINVERTEXSHADEREXTPROC is access procedure;  -- /usr/include/GL/glext.h:9437

   type PFNGLENDVERTEXSHADEREXTPROC is access procedure;  -- /usr/include/GL/glext.h:9438

   type PFNGLBINDVERTEXSHADEREXTPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9439

   type PFNGLGENVERTEXSHADERSEXTPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLuint;  -- /usr/include/GL/glext.h:9440

   type PFNGLDELETEVERTEXSHADEREXTPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9441

   type PFNGLSHADEROP1EXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9442

   type PFNGLSHADEROP2EXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9443

   type PFNGLSHADEROP3EXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9444

   type PFNGLSWIZZLEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9445

   type PFNGLWRITEMASKEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9446

   type PFNGLINSERTCOMPONENTEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9447

   type PFNGLEXTRACTCOMPONENTEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9448

   type PFNGLGENSYMBOLSEXTPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint) return gl_h.GLuint;  -- /usr/include/GL/glext.h:9449

   type PFNGLSETINVARIANTEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:9450

   type PFNGLSETLOCALCONSTANTEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:9451

   type PFNGLVARIANTBVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:9452

   type PFNGLVARIANTSVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9453

   type PFNGLVARIANTIVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9454

   type PFNGLVARIANTFVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9455

   type PFNGLVARIANTDVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9456

   type PFNGLVARIANTUBVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:9457

   type PFNGLVARIANTUSVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:9458

   type PFNGLVARIANTUIVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9459

   type PFNGLVARIANTPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:9460

   type PFNGLENABLEVARIANTCLIENTSTATEEXTPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9461

   type PFNGLDISABLEVARIANTCLIENTSTATEEXTPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9462

   type PFNGLBINDLIGHTPARAMETEREXTPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum) return gl_h.GLuint;  -- /usr/include/GL/glext.h:9463

   type PFNGLBINDMATERIALPARAMETEREXTPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum) return gl_h.GLuint;  -- /usr/include/GL/glext.h:9464

   type PFNGLBINDTEXGENPARAMETEREXTPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum) return gl_h.GLuint;  -- /usr/include/GL/glext.h:9465

   type PFNGLBINDTEXTUREUNITPARAMETEREXTPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum) return gl_h.GLuint;  -- /usr/include/GL/glext.h:9466

   type PFNGLBINDPARAMETEREXTPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLuint;  -- /usr/include/GL/glext.h:9467

   type PFNGLISVARIANTENABLEDEXTPROC is access function (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:9468

   type PFNGLGETVARIANTBOOLEANVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLboolean);  -- /usr/include/GL/glext.h:9469

   type PFNGLGETVARIANTINTEGERVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9470

   type PFNGLGETVARIANTFLOATVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9471

   type PFNGLGETVARIANTPOINTERVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:9472

   type PFNGLGETINVARIANTBOOLEANVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLboolean);  -- /usr/include/GL/glext.h:9473

   type PFNGLGETINVARIANTINTEGERVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9474

   type PFNGLGETINVARIANTFLOATVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9475

   type PFNGLGETLOCALCONSTANTBOOLEANVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLboolean);  -- /usr/include/GL/glext.h:9476

   type PFNGLGETLOCALCONSTANTINTEGERVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9477

   type PFNGLGETLOCALCONSTANTFLOATVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9478

   type PFNGLVERTEXSTREAM1SATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLshort);  -- /usr/include/GL/glext.h:9530

   type PFNGLVERTEXSTREAM1SVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9531

   type PFNGLVERTEXSTREAM1IATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:9532

   type PFNGLVERTEXSTREAM1IVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9533

   type PFNGLVERTEXSTREAM1FATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9534

   type PFNGLVERTEXSTREAM1FVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9535

   type PFNGLVERTEXSTREAM1DATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:9536

   type PFNGLVERTEXSTREAM1DVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9537

   type PFNGLVERTEXSTREAM2SATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort);  -- /usr/include/GL/glext.h:9538

   type PFNGLVERTEXSTREAM2SVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9539

   type PFNGLVERTEXSTREAM2IATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:9540

   type PFNGLVERTEXSTREAM2IVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9541

   type PFNGLVERTEXSTREAM2FATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9542

   type PFNGLVERTEXSTREAM2FVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9543

   type PFNGLVERTEXSTREAM2DATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:9544

   type PFNGLVERTEXSTREAM2DVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9545

   type PFNGLVERTEXSTREAM3SATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  -- /usr/include/GL/glext.h:9546

   type PFNGLVERTEXSTREAM3SVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9547

   type PFNGLVERTEXSTREAM3IATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:9548

   type PFNGLVERTEXSTREAM3IVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9549

   type PFNGLVERTEXSTREAM3FATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9550

   type PFNGLVERTEXSTREAM3FVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9551

   type PFNGLVERTEXSTREAM3DATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:9552

   type PFNGLVERTEXSTREAM3DVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9553

   type PFNGLVERTEXSTREAM4SATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort;
         arg5 : gl_h.GLshort);  -- /usr/include/GL/glext.h:9554

   type PFNGLVERTEXSTREAM4SVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9555

   type PFNGLVERTEXSTREAM4IATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:9556

   type PFNGLVERTEXSTREAM4IVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9557

   type PFNGLVERTEXSTREAM4FATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9558

   type PFNGLVERTEXSTREAM4FVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9559

   type PFNGLVERTEXSTREAM4DATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:9560

   type PFNGLVERTEXSTREAM4DVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9561

   type PFNGLNORMALSTREAM3BATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLbyte;
         arg3 : gl_h.GLbyte;
         arg4 : gl_h.GLbyte);  -- /usr/include/GL/glext.h:9562

   type PFNGLNORMALSTREAM3BVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:9563

   type PFNGLNORMALSTREAM3SATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLshort;
         arg3 : gl_h.GLshort;
         arg4 : gl_h.GLshort);  -- /usr/include/GL/glext.h:9564

   type PFNGLNORMALSTREAM3SVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:9565

   type PFNGLNORMALSTREAM3IATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:9566

   type PFNGLNORMALSTREAM3IVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9567

   type PFNGLNORMALSTREAM3FATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9568

   type PFNGLNORMALSTREAM3FVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9569

   type PFNGLNORMALSTREAM3DATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:9570

   type PFNGLNORMALSTREAM3DVATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9571

   type PFNGLCLIENTACTIVEVERTEXSTREAMATIPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9572

   type PFNGLVERTEXBLENDENVIATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:9573

   type PFNGLVERTEXBLENDENVFATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9574

   type PFNGLELEMENTPOINTERATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : System.Address);  -- /usr/include/GL/glext.h:9584

   type PFNGLDRAWELEMENTARRAYATIPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:9585

   type PFNGLDRAWRANGEELEMENTARRAYATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:9586

   type PFNGLDRAWMESHARRAYSSUNPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:9594

   type PFNGLGENOCCLUSIONQUERIESNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9620

   type PFNGLDELETEOCCLUSIONQUERIESNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9621

   type PFNGLISOCCLUSIONQUERYNVPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:9622

   type PFNGLBEGINOCCLUSIONQUERYNVPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9623

   type PFNGLENDOCCLUSIONQUERYNVPROC is access procedure;  -- /usr/include/GL/glext.h:9624

   type PFNGLGETOCCLUSIONQUERYIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9625

   type PFNGLGETOCCLUSIONQUERYUIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9626

   type PFNGLPOINTPARAMETERINVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:9635

   type PFNGLPOINTPARAMETERIVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9636

   type PFNGLACTIVESTENCILFACEEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9656

   type PFNGLELEMENTPOINTERAPPLEPROC is access procedure (arg1 : gl_h.GLenum; arg2 : System.Address);  -- /usr/include/GL/glext.h:9676

   type PFNGLDRAWELEMENTARRAYAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:9677

   type PFNGLDRAWRANGEELEMENTARRAYAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:9678

   type PFNGLMULTIDRAWELEMENTARRAYAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : access gl_h.GLint;
         arg3 : access gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:9679

   type PFNGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLint;
         arg5 : access gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:9680

   type PFNGLGENFENCESAPPLEPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9695

   type PFNGLDELETEFENCESAPPLEPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9696

   type PFNGLSETFENCEAPPLEPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9697

   type PFNGLISFENCEAPPLEPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:9698

   type PFNGLTESTFENCEAPPLEPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:9699

   type PFNGLFINISHFENCEAPPLEPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9700

   type PFNGLTESTOBJECTAPPLEPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:9701

   type PFNGLFINISHOBJECTAPPLEPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:9702

   type PFNGLBINDVERTEXARRAYAPPLEPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9713

   type PFNGLDELETEVERTEXARRAYSAPPLEPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9714

   type PFNGLGENVERTEXARRAYSAPPLEPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:9715

   type PFNGLISVERTEXARRAYAPPLEPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:9716

   type PFNGLVERTEXARRAYRANGEAPPLEPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : System.Address);  -- /usr/include/GL/glext.h:9726

   type PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : System.Address);  -- /usr/include/GL/glext.h:9727

   type PFNGLVERTEXARRAYPARAMETERIAPPLEPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:9728

   type PFNGLDRAWBUFFERSATIPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLenum);  -- /usr/include/GL/glext.h:9744

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
         arg7 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:9777

   type PFNGLPROGRAMNAMEDPARAMETER4DNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble;
         arg7 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:9778

   type PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9779

   type PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9780

   type PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9781

   type PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLubyte;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:9782

   type PFNGLVERTEX2HNVPROC is access procedure (arg1 : GLhalfNV; arg2 : GLhalfNV);  -- /usr/include/GL/glext.h:9835

   type PFNGLVERTEX2HVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9836

   type PFNGLVERTEX3HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  -- /usr/include/GL/glext.h:9837

   type PFNGLVERTEX3HVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9838

   type PFNGLVERTEX4HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV);  -- /usr/include/GL/glext.h:9839

   type PFNGLVERTEX4HVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9840

   type PFNGLNORMAL3HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  -- /usr/include/GL/glext.h:9841

   type PFNGLNORMAL3HVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9842

   type PFNGLCOLOR3HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  -- /usr/include/GL/glext.h:9843

   type PFNGLCOLOR3HVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9844

   type PFNGLCOLOR4HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV);  -- /usr/include/GL/glext.h:9845

   type PFNGLCOLOR4HVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9846

   type PFNGLTEXCOORD1HNVPROC is access procedure (arg1 : GLhalfNV);  -- /usr/include/GL/glext.h:9847

   type PFNGLTEXCOORD1HVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9848

   type PFNGLTEXCOORD2HNVPROC is access procedure (arg1 : GLhalfNV; arg2 : GLhalfNV);  -- /usr/include/GL/glext.h:9849

   type PFNGLTEXCOORD2HVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9850

   type PFNGLTEXCOORD3HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  -- /usr/include/GL/glext.h:9851

   type PFNGLTEXCOORD3HVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9852

   type PFNGLTEXCOORD4HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV);  -- /usr/include/GL/glext.h:9853

   type PFNGLTEXCOORD4HVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9854

   type PFNGLMULTITEXCOORD1HNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : GLhalfNV);  -- /usr/include/GL/glext.h:9855

   type PFNGLMULTITEXCOORD1HVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access GLhalfNV);  -- /usr/include/GL/glext.h:9856

   type PFNGLMULTITEXCOORD2HNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  -- /usr/include/GL/glext.h:9857

   type PFNGLMULTITEXCOORD2HVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access GLhalfNV);  -- /usr/include/GL/glext.h:9858

   type PFNGLMULTITEXCOORD3HNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV);  -- /usr/include/GL/glext.h:9859

   type PFNGLMULTITEXCOORD3HVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access GLhalfNV);  -- /usr/include/GL/glext.h:9860

   type PFNGLMULTITEXCOORD4HNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV;
         arg5 : GLhalfNV);  -- /usr/include/GL/glext.h:9861

   type PFNGLMULTITEXCOORD4HVNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access GLhalfNV);  -- /usr/include/GL/glext.h:9862

   type PFNGLFOGCOORDHNVPROC is access procedure (arg1 : GLhalfNV);  -- /usr/include/GL/glext.h:9863

   type PFNGLFOGCOORDHVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9864

   type PFNGLSECONDARYCOLOR3HNVPROC is access procedure
        (arg1 : GLhalfNV;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  -- /usr/include/GL/glext.h:9865

   type PFNGLSECONDARYCOLOR3HVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9866

   type PFNGLVERTEXWEIGHTHNVPROC is access procedure (arg1 : GLhalfNV);  -- /usr/include/GL/glext.h:9867

   type PFNGLVERTEXWEIGHTHVNVPROC is access procedure (arg1 : access GLhalfNV);  -- /usr/include/GL/glext.h:9868

   type PFNGLVERTEXATTRIB1HNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : GLhalfNV);  -- /usr/include/GL/glext.h:9869

   type PFNGLVERTEXATTRIB1HVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLhalfNV);  -- /usr/include/GL/glext.h:9870

   type PFNGLVERTEXATTRIB2HNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV);  -- /usr/include/GL/glext.h:9871

   type PFNGLVERTEXATTRIB2HVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLhalfNV);  -- /usr/include/GL/glext.h:9872

   type PFNGLVERTEXATTRIB3HNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV);  -- /usr/include/GL/glext.h:9873

   type PFNGLVERTEXATTRIB3HVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLhalfNV);  -- /usr/include/GL/glext.h:9874

   type PFNGLVERTEXATTRIB4HNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLhalfNV;
         arg3 : GLhalfNV;
         arg4 : GLhalfNV;
         arg5 : GLhalfNV);  -- /usr/include/GL/glext.h:9875

   type PFNGLVERTEXATTRIB4HVNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLhalfNV);  -- /usr/include/GL/glext.h:9876

   type PFNGLVERTEXATTRIBS1HVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLhalfNV);  -- /usr/include/GL/glext.h:9877

   type PFNGLVERTEXATTRIBS2HVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLhalfNV);  -- /usr/include/GL/glext.h:9878

   type PFNGLVERTEXATTRIBS3HVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLhalfNV);  -- /usr/include/GL/glext.h:9879

   type PFNGLVERTEXATTRIBS4HVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLhalfNV);  -- /usr/include/GL/glext.h:9880

   type PFNGLPIXELDATARANGENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:9889

   type PFNGLFLUSHPIXELDATARANGENVPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9890

   type PFNGLPRIMITIVERESTARTNVPROC is access procedure;  -- /usr/include/GL/glext.h:9899

   type PFNGLPRIMITIVERESTARTINDEXNVPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9900

   type PFNGLMAPOBJECTBUFFERATIPROC is access function (arg1 : gl_h.GLuint) return System.Address;  -- /usr/include/GL/glext.h:9917

   type PFNGLUNMAPOBJECTBUFFERATIPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9918

   type PFNGLSTENCILOPSEPARATEATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9927

   type PFNGLSTENCILFUNCSEPARATEATIPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9928

   type PFNGLVERTEXATTRIBARRAYOBJECTATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLuint;
         arg7 : gl_h.GLuint);  -- /usr/include/GL/glext.h:9938

   type PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:9939

   type PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:9940

   type PFNGLDEPTHBOUNDSEXTPROC is access procedure (arg1 : gl_h.GLclampd; arg2 : gl_h.GLclampd);  -- /usr/include/GL/glext.h:9952

   type PFNGLBLENDEQUATIONSEPARATEEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:9964

   type PFNGLISRENDERBUFFEREXTPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:10016

   type PFNGLBINDRENDERBUFFEREXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10017

   type PFNGLDELETERENDERBUFFERSEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10018

   type PFNGLGENRENDERBUFFERSEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10019

   type PFNGLRENDERBUFFERSTORAGEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10020

   type PFNGLGETRENDERBUFFERPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10021

   type PFNGLISFRAMEBUFFEREXTPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:10022

   type PFNGLBINDFRAMEBUFFEREXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10023

   type PFNGLDELETEFRAMEBUFFERSEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10024

   type PFNGLGENFRAMEBUFFERSEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10025

   type PFNGLCHECKFRAMEBUFFERSTATUSEXTPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLenum;  -- /usr/include/GL/glext.h:10026

   type PFNGLFRAMEBUFFERTEXTURE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:10027

   type PFNGLFRAMEBUFFERTEXTURE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:10028

   type PFNGLFRAMEBUFFERTEXTURE3DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  -- /usr/include/GL/glext.h:10029

   type PFNGLFRAMEBUFFERRENDERBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10030

   type PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10031

   type PFNGLGENERATEMIPMAPEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10032

   type PFNGLSTRINGMARKERGREMEDYPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : System.Address);  -- /usr/include/GL/glext.h:10040

   type PFNGLSTENCILCLEARTAGEXTPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10052

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
         arg10 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10064

   type PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10072

   type PFNGLGETQUERYOBJECTI64VEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLint64EXT);  -- /usr/include/GL/glext.h:10085

   type PFNGLGETQUERYOBJECTUI64VEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLuint64EXT);  -- /usr/include/GL/glext.h:10086

   type PFNGLPROGRAMENVPARAMETERS4FVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10095

   type PFNGLPROGRAMLOCALPARAMETERS4FVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10096

   type PFNGLBUFFERPARAMETERIAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:10105

   type PFNGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : GLintptr;
         arg3 : GLsizeiptr);  -- /usr/include/GL/glext.h:10106

   type PFNGLPROGRAMLOCALPARAMETERI4INVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  -- /usr/include/GL/glext.h:10129

   type PFNGLPROGRAMLOCALPARAMETERI4IVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10130

   type PFNGLPROGRAMLOCALPARAMETERSI4IVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10131

   type PFNGLPROGRAMLOCALPARAMETERI4UINVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10132

   type PFNGLPROGRAMLOCALPARAMETERI4UIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10133

   type PFNGLPROGRAMLOCALPARAMETERSI4UIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10134

   type PFNGLPROGRAMENVPARAMETERI4INVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  -- /usr/include/GL/glext.h:10135

   type PFNGLPROGRAMENVPARAMETERI4IVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10136

   type PFNGLPROGRAMENVPARAMETERSI4IVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10137

   type PFNGLPROGRAMENVPARAMETERI4UINVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10138

   type PFNGLPROGRAMENVPARAMETERI4UIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10139

   type PFNGLPROGRAMENVPARAMETERSI4UIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10140

   type PFNGLGETPROGRAMLOCALPARAMETERIIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10141

   type PFNGLGETPROGRAMLOCALPARAMETERIUIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10142

   type PFNGLGETPROGRAMENVPARAMETERIIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10143

   type PFNGLGETPROGRAMENVPARAMETERIUIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10144

   type PFNGLPROGRAMVERTEXLIMITNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:10155

   type PFNGLFRAMEBUFFERTEXTUREEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:10156

   type PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:10157

   type PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10158

   type PFNGLPROGRAMPARAMETERIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:10166

   type PFNGLVERTEXATTRIBI1IEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLint);  -- /usr/include/GL/glext.h:10196

   type PFNGLVERTEXATTRIBI2IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:10197

   type PFNGLVERTEXATTRIBI3IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:10198

   type PFNGLVERTEXATTRIBI4IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:10199

   type PFNGLVERTEXATTRIBI1UIEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10200

   type PFNGLVERTEXATTRIBI2UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10201

   type PFNGLVERTEXATTRIBI3UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10202

   type PFNGLVERTEXATTRIBI4UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10203

   type PFNGLVERTEXATTRIBI1IVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10204

   type PFNGLVERTEXATTRIBI2IVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10205

   type PFNGLVERTEXATTRIBI3IVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10206

   type PFNGLVERTEXATTRIBI4IVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10207

   type PFNGLVERTEXATTRIBI1UIVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10208

   type PFNGLVERTEXATTRIBI2UIVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10209

   type PFNGLVERTEXATTRIBI3UIVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10210

   type PFNGLVERTEXATTRIBI4UIVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10211

   type PFNGLVERTEXATTRIBI4BVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLbyte);  -- /usr/include/GL/glext.h:10212

   type PFNGLVERTEXATTRIBI4SVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLshort);  -- /usr/include/GL/glext.h:10213

   type PFNGLVERTEXATTRIBI4UBVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLubyte);  -- /usr/include/GL/glext.h:10214

   type PFNGLVERTEXATTRIBI4USVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLushort);  -- /usr/include/GL/glext.h:10215

   type PFNGLVERTEXATTRIBIPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:10216

   type PFNGLGETVERTEXATTRIBIIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10217

   type PFNGLGETVERTEXATTRIBIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10218

   type PFNGLGETUNIFORMUIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10236

   type PFNGLBINDFRAGDATALOCATIONEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : access GLchar);  -- /usr/include/GL/glext.h:10237

   type PFNGLGETFRAGDATALOCATIONEXTPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLint;  -- /usr/include/GL/glext.h:10238

   type PFNGLUNIFORM1UIEXTPROC is access procedure (arg1 : gl_h.GLint; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10239

   type PFNGLUNIFORM2UIEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10240

   type PFNGLUNIFORM3UIEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10241

   type PFNGLUNIFORM4UIEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10242

   type PFNGLUNIFORM1UIVEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10243

   type PFNGLUNIFORM2UIVEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10244

   type PFNGLUNIFORM3UIVEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10245

   type PFNGLUNIFORM4UIVEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10246

   type PFNGLDRAWARRAYSINSTANCEDEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10255

   type PFNGLDRAWELEMENTSINSTANCEDEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : System.Address;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10256

   type PFNGLTEXBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10272

   type PFNGLDEPTHRANGEDNVPROC is access procedure (arg1 : gl_h.GLdouble; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10294

   type PFNGLCLEARDEPTHDNVPROC is access procedure (arg1 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10295

   type PFNGLDEPTHBOUNDSDNVPROC is access procedure (arg1 : gl_h.GLdouble; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10296

   type PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10308

   type PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10326

   type PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10327

   type PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10328

   type PFNGLCOLORMASKINDEXEDEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLboolean;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:10341

   type PFNGLGETBOOLEANINDEXEDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLboolean);  -- /usr/include/GL/glext.h:10342

   type PFNGLGETINTEGERINDEXEDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10343

   type PFNGLENABLEINDEXEDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10344

   type PFNGLDISABLEINDEXEDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10345

   type PFNGLISENABLEDINDEXEDEXTPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:10346

   type PFNGLBEGINTRANSFORMFEEDBACKNVPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10365

   type PFNGLENDTRANSFORMFEEDBACKNVPROC is access procedure;  -- /usr/include/GL/glext.h:10366

   type PFNGLTRANSFORMFEEDBACKATTRIBSNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : access gl_h.GLint;
         arg3 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10367

   type PFNGLBINDBUFFERRANGENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : GLintptr;
         arg5 : GLsizeiptr);  -- /usr/include/GL/glext.h:10368

   type PFNGLBINDBUFFEROFFSETNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : GLintptr);  -- /usr/include/GL/glext.h:10369

   type PFNGLBINDBUFFERBASENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10370

   type PFNGLTRANSFORMFEEDBACKVARYINGSNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLint;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10371

   type PFNGLACTIVEVARYINGNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLchar);  -- /usr/include/GL/glext.h:10372

   type PFNGLGETVARYINGLOCATIONNVPROC is access function (arg1 : gl_h.GLuint; arg2 : access GLchar) return gl_h.GLint;  -- /usr/include/GL/glext.h:10373

   type PFNGLGETACTIVEVARYINGNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLsizei;
         arg6 : access gl_h.GLenum;
         arg7 : access GLchar);  -- /usr/include/GL/glext.h:10374

   type PFNGLGETTRANSFORMFEEDBACKVARYINGNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10375

   type PFNGLTRANSFORMFEEDBACKSTREAMATTRIBSNVPROC is access procedure
        (arg1 : gl_h.GLsizei;
         arg2 : access gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint;
         arg5 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10376

   type PFNGLUNIFORMBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10386

   type PFNGLGETUNIFORMBUFFERSIZEEXTPROC is access function (arg1 : gl_h.GLuint; arg2 : gl_h.GLint) return gl_h.GLint;  -- /usr/include/GL/glext.h:10387

   type PFNGLGETUNIFORMOFFSETEXTPROC is access function (arg1 : gl_h.GLuint; arg2 : gl_h.GLint) return GLintptr;  -- /usr/include/GL/glext.h:10388

   type PFNGLTEXPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10401

   type PFNGLTEXPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10402

   type PFNGLGETTEXPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10403

   type PFNGLGETTEXPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10404

   type PFNGLCLEARCOLORIIEXTPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:10405

   type PFNGLCLEARCOLORIUIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10406

   type PFNGLFRAMETERMINATORGREMEDYPROC is access procedure;  -- /usr/include/GL/glext.h:10414

   type PFNGLBEGINCONDITIONALRENDERNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10423

   type PFNGLENDCONDITIONALRENDERNVPROC is access procedure;  -- /usr/include/GL/glext.h:10424

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
         arg11 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10437

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
         arg13 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10438

   type PFNGLGETVIDEOIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10439

   type PFNGLGETVIDEOUIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10440

   type PFNGLGETVIDEOI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLint64EXT);  -- /usr/include/GL/glext.h:10441

   type PFNGLGETVIDEOUI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLuint64EXT);  -- /usr/include/GL/glext.h:10442

   type PFNGLBEGINTRANSFORMFEEDBACKEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10456

   type PFNGLENDTRANSFORMFEEDBACKEXTPROC is access procedure;  -- /usr/include/GL/glext.h:10457

   type PFNGLBINDBUFFERRANGEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : GLintptr;
         arg5 : GLsizeiptr);  -- /usr/include/GL/glext.h:10458

   type PFNGLBINDBUFFEROFFSETEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : GLintptr);  -- /usr/include/GL/glext.h:10459

   type PFNGLBINDBUFFERBASEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10460

   type PFNGLTRANSFORMFEEDBACKVARYINGSEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10461

   type PFNGLGETTRANSFORMFEEDBACKVARYINGEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLsizei;
         arg6 : access gl_h.GLenum;
         arg7 : access GLchar);  -- /usr/include/GL/glext.h:10462

   type PFNGLCLIENTATTRIBDEFAULTEXTPROC is access procedure (arg1 : gl_h.GLbitfield);  -- /usr/include/GL/glext.h:10675

   type PFNGLPUSHCLIENTATTRIBDEFAULTEXTPROC is access procedure (arg1 : gl_h.GLbitfield);  -- /usr/include/GL/glext.h:10676

   type PFNGLMATRIXLOADFEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10677

   type PFNGLMATRIXLOADDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10678

   type PFNGLMATRIXMULTFEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10679

   type PFNGLMATRIXMULTDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10680

   type PFNGLMATRIXLOADIDENTITYEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10681

   type PFNGLMATRIXROTATEFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10682

   type PFNGLMATRIXROTATEDEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10683

   type PFNGLMATRIXSCALEFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10684

   type PFNGLMATRIXSCALEDEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10685

   type PFNGLMATRIXTRANSLATEFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLfloat;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10686

   type PFNGLMATRIXTRANSLATEDEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10687

   type PFNGLMATRIXFRUSTUMEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble;
         arg7 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10688

   type PFNGLMATRIXORTHOEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble;
         arg7 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10689

   type PFNGLMATRIXPOPEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10690

   type PFNGLMATRIXPUSHEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10691

   type PFNGLMATRIXLOADTRANSPOSEFEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10692

   type PFNGLMATRIXLOADTRANSPOSEDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10693

   type PFNGLMATRIXMULTTRANSPOSEFEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10694

   type PFNGLMATRIXMULTTRANSPOSEDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10695

   type PFNGLTEXTUREPARAMETERFEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10696

   type PFNGLTEXTUREPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10697

   type PFNGLTEXTUREPARAMETERIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:10698

   type PFNGLTEXTUREPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10699

   type PFNGLTEXTUREIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLenum;
         arg8 : gl_h.GLenum;
         arg9 : System.Address);  -- /usr/include/GL/glext.h:10700

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
         arg10 : System.Address);  -- /usr/include/GL/glext.h:10701

   type PFNGLTEXTURESUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLenum;
         arg8 : System.Address);  -- /usr/include/GL/glext.h:10702

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
         arg10 : System.Address);  -- /usr/include/GL/glext.h:10703

   type PFNGLCOPYTEXTUREIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLint);  -- /usr/include/GL/glext.h:10704

   type PFNGLCOPYTEXTUREIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLint);  -- /usr/include/GL/glext.h:10705

   type PFNGLCOPYTEXTURESUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10706

   type PFNGLCOPYTEXTURESUBIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10707

   type PFNGLGETTEXTUREIMAGEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:10708

   type PFNGLGETTEXTUREPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10709

   type PFNGLGETTEXTUREPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10710

   type PFNGLGETTEXTURELEVELPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10711

   type PFNGLGETTEXTURELEVELPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10712

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
         arg11 : System.Address);  -- /usr/include/GL/glext.h:10713

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
         arg12 : System.Address);  -- /usr/include/GL/glext.h:10714

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
         arg10 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10715

   type PFNGLMULTITEXPARAMETERFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10716

   type PFNGLMULTITEXPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10717

   type PFNGLMULTITEXPARAMETERIEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:10718

   type PFNGLMULTITEXPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10719

   type PFNGLMULTITEXIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLenum;
         arg8 : gl_h.GLenum;
         arg9 : System.Address);  -- /usr/include/GL/glext.h:10720

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
         arg10 : System.Address);  -- /usr/include/GL/glext.h:10721

   type PFNGLMULTITEXSUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLenum;
         arg8 : System.Address);  -- /usr/include/GL/glext.h:10722

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
         arg10 : System.Address);  -- /usr/include/GL/glext.h:10723

   type PFNGLCOPYMULTITEXIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLint);  -- /usr/include/GL/glext.h:10724

   type PFNGLCOPYMULTITEXIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLint);  -- /usr/include/GL/glext.h:10725

   type PFNGLCOPYMULTITEXSUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10726

   type PFNGLCOPYMULTITEXSUBIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10727

   type PFNGLGETMULTITEXIMAGEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum;
         arg6 : System.Address);  -- /usr/include/GL/glext.h:10728

   type PFNGLGETMULTITEXPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10729

   type PFNGLGETMULTITEXPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10730

   type PFNGLGETMULTITEXLEVELPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10731

   type PFNGLGETMULTITEXLEVELPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10732

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
         arg11 : System.Address);  -- /usr/include/GL/glext.h:10733

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
         arg12 : System.Address);  -- /usr/include/GL/glext.h:10734

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
         arg10 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10735

   type PFNGLBINDMULTITEXTUREEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10736

   type PFNGLENABLECLIENTSTATEINDEXEDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10737

   type PFNGLDISABLECLIENTSTATEINDEXEDEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10738

   type PFNGLMULTITEXCOORDPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:10739

   type PFNGLMULTITEXENVFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10740

   type PFNGLMULTITEXENVFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10741

   type PFNGLMULTITEXENVIEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:10742

   type PFNGLMULTITEXENVIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10743

   type PFNGLMULTITEXGENDEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10744

   type PFNGLMULTITEXGENDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10745

   type PFNGLMULTITEXGENFEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10746

   type PFNGLMULTITEXGENFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10747

   type PFNGLMULTITEXGENIEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:10748

   type PFNGLMULTITEXGENIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10749

   type PFNGLGETMULTITEXENVFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10750

   type PFNGLGETMULTITEXENVIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10751

   type PFNGLGETMULTITEXGENDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10752

   type PFNGLGETMULTITEXGENFVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10753

   type PFNGLGETMULTITEXGENIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10754

   type PFNGLGETFLOATINDEXEDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10755

   type PFNGLGETDOUBLEINDEXEDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10756

   type PFNGLGETPOINTERINDEXEDVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:10757

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
         arg10 : System.Address);  -- /usr/include/GL/glext.h:10758

   type PFNGLCOMPRESSEDTEXTUREIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLsizei;
         arg9 : System.Address);  -- /usr/include/GL/glext.h:10759

   type PFNGLCOMPRESSEDTEXTUREIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : System.Address);  -- /usr/include/GL/glext.h:10760

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
         arg12 : System.Address);  -- /usr/include/GL/glext.h:10761

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
         arg10 : System.Address);  -- /usr/include/GL/glext.h:10762

   type PFNGLCOMPRESSEDTEXTURESUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLsizei;
         arg8 : System.Address);  -- /usr/include/GL/glext.h:10763

   type PFNGLGETCOMPRESSEDTEXTUREIMAGEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:10764

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
         arg10 : System.Address);  -- /usr/include/GL/glext.h:10765

   type PFNGLCOMPRESSEDMULTITEXIMAGE2DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLint;
         arg8 : gl_h.GLsizei;
         arg9 : System.Address);  -- /usr/include/GL/glext.h:10766

   type PFNGLCOMPRESSEDMULTITEXIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLsizei;
         arg8 : System.Address);  -- /usr/include/GL/glext.h:10767

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
         arg12 : System.Address);  -- /usr/include/GL/glext.h:10768

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
         arg10 : System.Address);  -- /usr/include/GL/glext.h:10769

   type PFNGLCOMPRESSEDMULTITEXSUBIMAGE1DEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLsizei;
         arg8 : System.Address);  -- /usr/include/GL/glext.h:10770

   type PFNGLGETCOMPRESSEDMULTITEXIMAGEEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLint;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:10771

   type PFNGLNAMEDPROGRAMSTRINGEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:10772

   type PFNGLNAMEDPROGRAMLOCALPARAMETER4DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble;
         arg7 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10773

   type PFNGLNAMEDPROGRAMLOCALPARAMETER4DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10774

   type PFNGLNAMEDPROGRAMLOCALPARAMETER4FEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat;
         arg7 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10775

   type PFNGLNAMEDPROGRAMLOCALPARAMETER4FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10776

   type PFNGLGETNAMEDPROGRAMLOCALPARAMETERDVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10777

   type PFNGLGETNAMEDPROGRAMLOCALPARAMETERFVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10778

   type PFNGLGETNAMEDPROGRAMIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10779

   type PFNGLGETNAMEDPROGRAMSTRINGEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:10780

   type PFNGLNAMEDPROGRAMLOCALPARAMETERS4FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10781

   type PFNGLNAMEDPROGRAMLOCALPARAMETERI4IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : gl_h.GLint);  -- /usr/include/GL/glext.h:10782

   type PFNGLNAMEDPROGRAMLOCALPARAMETERI4IVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10783

   type PFNGLNAMEDPROGRAMLOCALPARAMETERSI4IVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10784

   type PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint;
         arg7 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10785

   type PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10786

   type PFNGLNAMEDPROGRAMLOCALPARAMETERSI4UIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10787

   type PFNGLGETNAMEDPROGRAMLOCALPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10788

   type PFNGLGETNAMEDPROGRAMLOCALPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10789

   type PFNGLTEXTUREPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10790

   type PFNGLTEXTUREPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10791

   type PFNGLGETTEXTUREPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10792

   type PFNGLGETTEXTUREPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10793

   type PFNGLMULTITEXPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10794

   type PFNGLMULTITEXPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10795

   type PFNGLGETMULTITEXPARAMETERIIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10796

   type PFNGLGETMULTITEXPARAMETERIUIVEXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10797

   type PFNGLPROGRAMUNIFORM1FEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10798

   type PFNGLPROGRAMUNIFORM2FEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10799

   type PFNGLPROGRAMUNIFORM3FEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10800

   type PFNGLPROGRAMUNIFORM4FEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLfloat;
         arg6 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10801

   type PFNGLPROGRAMUNIFORM1IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint);  -- /usr/include/GL/glext.h:10802

   type PFNGLPROGRAMUNIFORM2IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:10803

   type PFNGLPROGRAMUNIFORM3IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:10804

   type PFNGLPROGRAMUNIFORM4IEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  -- /usr/include/GL/glext.h:10805

   type PFNGLPROGRAMUNIFORM1FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10806

   type PFNGLPROGRAMUNIFORM2FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10807

   type PFNGLPROGRAMUNIFORM3FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10808

   type PFNGLPROGRAMUNIFORM4FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10809

   type PFNGLPROGRAMUNIFORM1IVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10810

   type PFNGLPROGRAMUNIFORM2IVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10811

   type PFNGLPROGRAMUNIFORM3IVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10812

   type PFNGLPROGRAMUNIFORM4IVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10813

   type PFNGLPROGRAMUNIFORMMATRIX2FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10814

   type PFNGLPROGRAMUNIFORMMATRIX3FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10815

   type PFNGLPROGRAMUNIFORMMATRIX4FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10816

   type PFNGLPROGRAMUNIFORMMATRIX2X3FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10817

   type PFNGLPROGRAMUNIFORMMATRIX3X2FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10818

   type PFNGLPROGRAMUNIFORMMATRIX2X4FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10819

   type PFNGLPROGRAMUNIFORMMATRIX4X2FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10820

   type PFNGLPROGRAMUNIFORMMATRIX3X4FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10821

   type PFNGLPROGRAMUNIFORMMATRIX4X3FVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10822

   type PFNGLPROGRAMUNIFORM1UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10823

   type PFNGLPROGRAMUNIFORM2UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10824

   type PFNGLPROGRAMUNIFORM3UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10825

   type PFNGLPROGRAMUNIFORM4UIEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLuint;
         arg6 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10826

   type PFNGLPROGRAMUNIFORM1UIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10827

   type PFNGLPROGRAMUNIFORM2UIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10828

   type PFNGLPROGRAMUNIFORM3UIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10829

   type PFNGLPROGRAMUNIFORM4UIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10830

   type PFNGLNAMEDBUFFERDATAEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLsizeiptr;
         arg3 : System.Address;
         arg4 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10831

   type PFNGLNAMEDBUFFERSUBDATAEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLintptr;
         arg3 : GLsizeiptr;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:10832

   type PFNGLMAPNAMEDBUFFEREXTPROC is access function (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum) return System.Address;  -- /usr/include/GL/glext.h:10833

   type PFNGLUNMAPNAMEDBUFFEREXTPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:10834

   type PFNGLMAPNAMEDBUFFERRANGEEXTPROC is access function
        (arg1 : gl_h.GLuint;
         arg2 : GLintptr;
         arg3 : GLsizeiptr;
         arg4 : gl_h.GLbitfield) return System.Address;  -- /usr/include/GL/glext.h:10835

   type PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLintptr;
         arg3 : GLsizeiptr);  -- /usr/include/GL/glext.h:10836

   type PFNGLNAMEDCOPYBUFFERSUBDATAEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : GLintptr;
         arg4 : GLintptr;
         arg5 : GLsizeiptr);  -- /usr/include/GL/glext.h:10837

   type PFNGLGETNAMEDBUFFERPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10838

   type PFNGLGETNAMEDBUFFERPOINTERVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:10839

   type PFNGLGETNAMEDBUFFERSUBDATAEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLintptr;
         arg3 : GLsizeiptr;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:10840

   type PFNGLTEXTUREBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10841

   type PFNGLMULTITEXBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10842

   type PFNGLNAMEDRENDERBUFFERSTORAGEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10843

   type PFNGLGETNAMEDRENDERBUFFERPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10844

   type PFNGLCHECKNAMEDFRAMEBUFFERSTATUSEXTPROC is access function (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum) return gl_h.GLenum;  -- /usr/include/GL/glext.h:10845

   type PFNGLNAMEDFRAMEBUFFERTEXTURE1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:10846

   type PFNGLNAMEDFRAMEBUFFERTEXTURE2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:10847

   type PFNGLNAMEDFRAMEBUFFERTEXTURE3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint);  -- /usr/include/GL/glext.h:10848

   type PFNGLNAMEDFRAMEBUFFERRENDERBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10849

   type PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10850

   type PFNGLGENERATETEXTUREMIPMAPEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10851

   type PFNGLGENERATEMULTITEXMIPMAPEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10852

   type PFNGLFRAMEBUFFERDRAWBUFFEREXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10853

   type PFNGLFRAMEBUFFERDRAWBUFFERSEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLenum);  -- /usr/include/GL/glext.h:10854

   type PFNGLFRAMEBUFFERREADBUFFEREXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10855

   type PFNGLGETFRAMEBUFFERPARAMETERIVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10856

   type PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10857

   type PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLECOVERAGEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:10858

   type PFNGLNAMEDFRAMEBUFFERTEXTUREEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint);  -- /usr/include/GL/glext.h:10859

   type PFNGLNAMEDFRAMEBUFFERTEXTURELAYEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLint);  -- /usr/include/GL/glext.h:10860

   type PFNGLNAMEDFRAMEBUFFERTEXTUREFACEEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10861

   type PFNGLTEXTURERENDERBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10862

   type PFNGLMULTITEXRENDERBUFFEREXTPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10863

   type PFNGLPROGRAMUNIFORM1DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10864

   type PFNGLPROGRAMUNIFORM2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10865

   type PFNGLPROGRAMUNIFORM3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10866

   type PFNGLPROGRAMUNIFORM4DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble;
         arg6 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:10867

   type PFNGLPROGRAMUNIFORM1DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10868

   type PFNGLPROGRAMUNIFORM2DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10869

   type PFNGLPROGRAMUNIFORM3DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10870

   type PFNGLPROGRAMUNIFORM4DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10871

   type PFNGLPROGRAMUNIFORMMATRIX2DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10872

   type PFNGLPROGRAMUNIFORMMATRIX3DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10873

   type PFNGLPROGRAMUNIFORMMATRIX4DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10874

   type PFNGLPROGRAMUNIFORMMATRIX2X3DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10875

   type PFNGLPROGRAMUNIFORMMATRIX2X4DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10876

   type PFNGLPROGRAMUNIFORMMATRIX3X2DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10877

   type PFNGLPROGRAMUNIFORMMATRIX3X4DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10878

   type PFNGLPROGRAMUNIFORMMATRIX4X2DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10879

   type PFNGLPROGRAMUNIFORMMATRIX4X3DVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLboolean;
         arg5 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:10880

   type PFNGLGETMULTISAMPLEFVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:10898

   type PFNGLSAMPLEMASKINDEXEDNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLbitfield);  -- /usr/include/GL/glext.h:10899

   type PFNGLTEXRENDERBUFFERNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10900

   type PFNGLBINDTRANSFORMFEEDBACKNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10914

   type PFNGLDELETETRANSFORMFEEDBACKSNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10915

   type PFNGLGENTRANSFORMFEEDBACKSNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10916

   type PFNGLISTRANSFORMFEEDBACKNVPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:10917

   type PFNGLPAUSETRANSFORMFEEDBACKNVPROC is access procedure;  -- /usr/include/GL/glext.h:10918

   type PFNGLRESUMETRANSFORMFEEDBACKNVPROC is access procedure;  -- /usr/include/GL/glext.h:10919

   type PFNGLDRAWTRANSFORMFEEDBACKNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10920

   type PFNGLGETPERFMONITORGROUPSAMDPROC is access procedure
        (arg1 : access gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10942

   type PFNGLGETPERFMONITORCOUNTERSAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : access gl_h.GLint;
         arg3 : access gl_h.GLint;
         arg4 : gl_h.GLsizei;
         arg5 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10943

   type PFNGLGETPERFMONITORGROUPSTRINGAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLsizei;
         arg4 : access GLchar);  -- /usr/include/GL/glext.h:10944

   type PFNGLGETPERFMONITORCOUNTERSTRINGAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access GLchar);  -- /usr/include/GL/glext.h:10945

   type PFNGLGETPERFMONITORCOUNTERINFOAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : System.Address);  -- /usr/include/GL/glext.h:10946

   type PFNGLGENPERFMONITORSAMDPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10947

   type PFNGLDELETEPERFMONITORSAMDPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10948

   type PFNGLSELECTPERFMONITORCOUNTERSAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLboolean;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:10949

   type PFNGLBEGINPERFMONITORAMDPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10950

   type PFNGLENDPERFMONITORAMDPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:10951

   type PFNGLGETPERFMONITORCOUNTERDATAAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint;
         arg5 : access gl_h.GLint);  -- /usr/include/GL/glext.h:10952

   type PFNGLTESSELLATIONFACTORAMDPROC is access procedure (arg1 : gl_h.GLfloat);  -- /usr/include/GL/glext.h:10965

   type PFNGLTESSELLATIONMODEAMDPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10966

   type PFNGLPROVOKINGVERTEXEXTPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10974

   type PFNGLBLENDFUNCINDEXEDAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10989

   type PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10990

   type PFNGLBLENDEQUATIONINDEXEDAMDPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10991

   type PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLenum);  -- /usr/include/GL/glext.h:10992

   type PFNGLTEXTURERANGEAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:11001

   type PFNGLGETTEXPARAMETERPOINTERVAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : System.Address);  -- /usr/include/GL/glext.h:11002

   type PFNGLENABLEVERTEXATTRIBAPPLEPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:11020

   type PFNGLDISABLEVERTEXATTRIBAPPLEPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:11021

   type PFNGLISVERTEXATTRIBENABLEDAPPLEPROC is access function (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:11022

   type PFNGLMAPVERTEXATTRIB1DAPPLEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:11023

   type PFNGLMAPVERTEXATTRIB1FAPPLEPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLfloat;
         arg4 : gl_h.GLfloat;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLint;
         arg7 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:11024

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
         arg11 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:11025

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
         arg11 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:11026

   type PFNGLOBJECTPURGEABLEAPPLEPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum) return gl_h.GLenum;  -- /usr/include/GL/glext.h:11040

   type PFNGLOBJECTUNPURGEABLEAPPLEPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum) return gl_h.GLenum;  -- /usr/include/GL/glext.h:11041

   type PFNGLGETOBJECTPARAMETERIVAPPLEPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:11042

   type PFNGLBEGINVIDEOCAPTURENVPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:11069

   type PFNGLBINDVIDEOCAPTURESTREAMBUFFERNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : GLintptrARB);  -- /usr/include/GL/glext.h:11070

   type PFNGLBINDVIDEOCAPTURESTREAMTEXTURENVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLenum;
         arg5 : gl_h.GLuint);  -- /usr/include/GL/glext.h:11071

   type PFNGLENDVIDEOCAPTURENVPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:11072

   type PFNGLGETVIDEOCAPTUREIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLint);  -- /usr/include/GL/glext.h:11073

   type PFNGLGETVIDEOCAPTURESTREAMIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:11074

   type PFNGLGETVIDEOCAPTURESTREAMFVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:11075

   type PFNGLGETVIDEOCAPTURESTREAMDVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:11076

   type PFNGLVIDEOCAPTURENVPROC is access function
        (arg1 : gl_h.GLuint;
         arg2 : access gl_h.GLuint;
         arg3 : access GLuint64EXT) return gl_h.GLenum;  -- /usr/include/GL/glext.h:11077

   type PFNGLVIDEOCAPTURESTREAMPARAMETERIVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLint);  -- /usr/include/GL/glext.h:11078

   type PFNGLVIDEOCAPTURESTREAMPARAMETERFVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:11079

   type PFNGLVIDEOCAPTURESTREAMPARAMETERDVNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLenum;
         arg4 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:11080

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
         arg15 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11088

   type PFNGLUSESHADERPROGRAMEXTPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint);  -- /usr/include/GL/glext.h:11098

   type PFNGLACTIVEPROGRAMEXTPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:11099

   type PFNGLCREATESHADERPROGRAMEXTPROC is access function (arg1 : gl_h.GLenum; arg2 : access GLchar) return gl_h.GLuint;  -- /usr/include/GL/glext.h:11100

   type PFNGLMAKEBUFFERRESIDENTNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:11125

   type PFNGLMAKEBUFFERNONRESIDENTNVPROC is access procedure (arg1 : gl_h.GLenum);  -- /usr/include/GL/glext.h:11126

   type PFNGLISBUFFERRESIDENTNVPROC is access function (arg1 : gl_h.GLenum) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:11127

   type PFNGLMAKENAMEDBUFFERRESIDENTNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:11128

   type PFNGLMAKENAMEDBUFFERNONRESIDENTNVPROC is access procedure (arg1 : gl_h.GLuint);  -- /usr/include/GL/glext.h:11129

   type PFNGLISNAMEDBUFFERRESIDENTNVPROC is access function (arg1 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:11130

   type PFNGLGETBUFFERPARAMETERUI64VNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11131

   type PFNGLGETNAMEDBUFFERPARAMETERUI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11132

   type PFNGLGETINTEGERUI64VNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11133

   type PFNGLUNIFORMUI64NVPROC is access procedure (arg1 : gl_h.GLint; arg2 : GLuint64EXT);  -- /usr/include/GL/glext.h:11134

   type PFNGLUNIFORMUI64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11135

   type PFNGLGETUNIFORMUI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11136

   type PFNGLPROGRAMUNIFORMUI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLuint64EXT);  -- /usr/include/GL/glext.h:11137

   type PFNGLPROGRAMUNIFORMUI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11138

   type PFNGLBUFFERADDRESSRANGENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : GLuint64EXT;
         arg4 : GLsizeiptr);  -- /usr/include/GL/glext.h:11157

   type PFNGLVERTEXFORMATNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11158

   type PFNGLNORMALFORMATNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11159

   type PFNGLCOLORFORMATNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11160

   type PFNGLINDEXFORMATNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11161

   type PFNGLTEXCOORDFORMATNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11162

   type PFNGLEDGEFLAGFORMATNVPROC is access procedure (arg1 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11163

   type PFNGLSECONDARYCOLORFORMATNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11164

   type PFNGLFOGCOORDFORMATNVPROC is access procedure (arg1 : gl_h.GLenum; arg2 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11165

   type PFNGLVERTEXATTRIBFORMATNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11166

   type PFNGLVERTEXATTRIBIFORMATNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11167

   type PFNGLGETINTEGERUI64I_VNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11168

   type PFNGLTEXTUREBARRIERNVPROC is access procedure;  -- /usr/include/GL/glext.h:11176

   type PFNGLBINDIMAGETEXTUREEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLint;
         arg4 : gl_h.GLboolean;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLenum;
         arg7 : gl_h.GLint);  -- /usr/include/GL/glext.h:11197

   type PFNGLMEMORYBARRIEREXTPROC is access procedure (arg1 : gl_h.GLbitfield);  -- /usr/include/GL/glext.h:11198

   type PFNGLVERTEXATTRIBL1DEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:11216

   type PFNGLVERTEXATTRIBL2DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:11217

   type PFNGLVERTEXATTRIBL3DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:11218

   type PFNGLVERTEXATTRIBL4DEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLdouble;
         arg3 : gl_h.GLdouble;
         arg4 : gl_h.GLdouble;
         arg5 : gl_h.GLdouble);  -- /usr/include/GL/glext.h:11219

   type PFNGLVERTEXATTRIBL1DVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:11220

   type PFNGLVERTEXATTRIBL2DVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:11221

   type PFNGLVERTEXATTRIBL3DVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:11222

   type PFNGLVERTEXATTRIBL4DVEXTPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:11223

   type PFNGLVERTEXATTRIBLPOINTEREXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei;
         arg5 : System.Address);  -- /usr/include/GL/glext.h:11224

   type PFNGLGETVERTEXATTRIBLDVEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access gl_h.GLdouble);  -- /usr/include/GL/glext.h:11225

   type PFNGLVERTEXARRAYVERTEXATTRIBLOFFSETEXTPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLuint;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLenum;
         arg6 : gl_h.GLsizei;
         arg7 : GLintptr);  -- /usr/include/GL/glext.h:11226

   type PFNGLPROGRAMSUBROUTINEPARAMETERSUIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:11235

   type PFNGLGETPROGRAMSUBROUTINEPARAMETERUIVNVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:11236

   type PFNGLUNIFORM1I64NVPROC is access procedure (arg1 : gl_h.GLint; arg2 : GLint64EXT);  -- /usr/include/GL/glext.h:11276

   type PFNGLUNIFORM2I64NVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : GLint64EXT;
         arg3 : GLint64EXT);  -- /usr/include/GL/glext.h:11277

   type PFNGLUNIFORM3I64NVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : GLint64EXT;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT);  -- /usr/include/GL/glext.h:11278

   type PFNGLUNIFORM4I64NVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : GLint64EXT;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT;
         arg5 : GLint64EXT);  -- /usr/include/GL/glext.h:11279

   type PFNGLUNIFORM1I64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLint64EXT);  -- /usr/include/GL/glext.h:11280

   type PFNGLUNIFORM2I64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLint64EXT);  -- /usr/include/GL/glext.h:11281

   type PFNGLUNIFORM3I64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLint64EXT);  -- /usr/include/GL/glext.h:11282

   type PFNGLUNIFORM4I64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLint64EXT);  -- /usr/include/GL/glext.h:11283

   type PFNGLUNIFORM1UI64NVPROC is access procedure (arg1 : gl_h.GLint; arg2 : GLuint64EXT);  -- /usr/include/GL/glext.h:11284

   type PFNGLUNIFORM2UI64NVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : GLuint64EXT;
         arg3 : GLuint64EXT);  -- /usr/include/GL/glext.h:11285

   type PFNGLUNIFORM3UI64NVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : GLuint64EXT;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT);  -- /usr/include/GL/glext.h:11286

   type PFNGLUNIFORM4UI64NVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : GLuint64EXT;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT;
         arg5 : GLuint64EXT);  -- /usr/include/GL/glext.h:11287

   type PFNGLUNIFORM1UI64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11288

   type PFNGLUNIFORM2UI64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11289

   type PFNGLUNIFORM3UI64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11290

   type PFNGLUNIFORM4UI64VNVPROC is access procedure
        (arg1 : gl_h.GLint;
         arg2 : gl_h.GLsizei;
         arg3 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11291

   type PFNGLGETUNIFORMI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : access GLint64EXT);  -- /usr/include/GL/glext.h:11292

   type PFNGLPROGRAMUNIFORM1I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLint64EXT);  -- /usr/include/GL/glext.h:11293

   type PFNGLPROGRAMUNIFORM2I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT);  -- /usr/include/GL/glext.h:11294

   type PFNGLPROGRAMUNIFORM3I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT;
         arg5 : GLint64EXT);  -- /usr/include/GL/glext.h:11295

   type PFNGLPROGRAMUNIFORM4I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT;
         arg5 : GLint64EXT;
         arg6 : GLint64EXT);  -- /usr/include/GL/glext.h:11296

   type PFNGLPROGRAMUNIFORM1I64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLint64EXT);  -- /usr/include/GL/glext.h:11297

   type PFNGLPROGRAMUNIFORM2I64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLint64EXT);  -- /usr/include/GL/glext.h:11298

   type PFNGLPROGRAMUNIFORM3I64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLint64EXT);  -- /usr/include/GL/glext.h:11299

   type PFNGLPROGRAMUNIFORM4I64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLint64EXT);  -- /usr/include/GL/glext.h:11300

   type PFNGLPROGRAMUNIFORM1UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLuint64EXT);  -- /usr/include/GL/glext.h:11301

   type PFNGLPROGRAMUNIFORM2UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT);  -- /usr/include/GL/glext.h:11302

   type PFNGLPROGRAMUNIFORM3UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT;
         arg5 : GLuint64EXT);  -- /usr/include/GL/glext.h:11303

   type PFNGLPROGRAMUNIFORM4UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT;
         arg5 : GLuint64EXT;
         arg6 : GLuint64EXT);  -- /usr/include/GL/glext.h:11304

   type PFNGLPROGRAMUNIFORM1UI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11305

   type PFNGLPROGRAMUNIFORM2UI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11306

   type PFNGLPROGRAMUNIFORM3UI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11307

   type PFNGLPROGRAMUNIFORM4UI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLsizei;
         arg4 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11308

   type PFNGLVERTEXATTRIBL1I64NVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : GLint64EXT);  -- /usr/include/GL/glext.h:11342

   type PFNGLVERTEXATTRIBL2I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLint64EXT;
         arg3 : GLint64EXT);  -- /usr/include/GL/glext.h:11343

   type PFNGLVERTEXATTRIBL3I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLint64EXT;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT);  -- /usr/include/GL/glext.h:11344

   type PFNGLVERTEXATTRIBL4I64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLint64EXT;
         arg3 : GLint64EXT;
         arg4 : GLint64EXT;
         arg5 : GLint64EXT);  -- /usr/include/GL/glext.h:11345

   type PFNGLVERTEXATTRIBL1I64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLint64EXT);  -- /usr/include/GL/glext.h:11346

   type PFNGLVERTEXATTRIBL2I64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLint64EXT);  -- /usr/include/GL/glext.h:11347

   type PFNGLVERTEXATTRIBL3I64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLint64EXT);  -- /usr/include/GL/glext.h:11348

   type PFNGLVERTEXATTRIBL4I64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLint64EXT);  -- /usr/include/GL/glext.h:11349

   type PFNGLVERTEXATTRIBL1UI64NVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : GLuint64EXT);  -- /usr/include/GL/glext.h:11350

   type PFNGLVERTEXATTRIBL2UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLuint64EXT;
         arg3 : GLuint64EXT);  -- /usr/include/GL/glext.h:11351

   type PFNGLVERTEXATTRIBL3UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLuint64EXT;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT);  -- /usr/include/GL/glext.h:11352

   type PFNGLVERTEXATTRIBL4UI64NVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : GLuint64EXT;
         arg3 : GLuint64EXT;
         arg4 : GLuint64EXT;
         arg5 : GLuint64EXT);  -- /usr/include/GL/glext.h:11353

   type PFNGLVERTEXATTRIBL1UI64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11354

   type PFNGLVERTEXATTRIBL2UI64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11355

   type PFNGLVERTEXATTRIBL3UI64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11356

   type PFNGLVERTEXATTRIBL4UI64VNVPROC is access procedure (arg1 : gl_h.GLuint; arg2 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11357

   type PFNGLGETVERTEXATTRIBLI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLint64EXT);  -- /usr/include/GL/glext.h:11358

   type PFNGLGETVERTEXATTRIBLUI64VNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : access GLuint64EXT);  -- /usr/include/GL/glext.h:11359

   type PFNGLVERTEXATTRIBLFORMATNVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLint;
         arg3 : gl_h.GLenum;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11360

   type PFNGLGENNAMESAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:11374

   type PFNGLDELETENAMESAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLuint);  -- /usr/include/GL/glext.h:11375

   type PFNGLISNAMEAMDPROC is access function (arg1 : gl_h.GLenum; arg2 : gl_h.GLuint) return gl_h.GLboolean;  -- /usr/include/GL/glext.h:11376

   type PFNGLDEBUGMESSAGEENABLEAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint;
         arg5 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:11387

   type PFNGLDEBUGMESSAGEINSERTAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLuint;
         arg4 : gl_h.GLsizei;
         arg5 : access GLchar);  -- /usr/include/GL/glext.h:11388

   type PFNGLDEBUGMESSAGECALLBACKAMDPROC is access procedure (arg1 : access procedure
           (arg1 : gl_h.GLuint;
            arg2 : gl_h.GLenum;
            arg3 : gl_h.GLenum;
            arg4 : gl_h.GLsizei;
            arg5 : access GLchar;
            arg6 : System.Address); arg2 : System.Address);  -- /usr/include/GL/glext.h:11389

   type PFNGLGETDEBUGMESSAGELOGAMDPROC is access function
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLsizei;
         arg3 : access gl_h.GLenum;
         arg4 : access gl_h.GLuint;
         arg5 : access gl_h.GLuint;
         arg6 : access gl_h.GLsizei;
         arg7 : access GLchar) return gl_h.GLuint;  -- /usr/include/GL/glext.h:11390

   type PFNGLVDPAUINITNVPROC is access procedure (arg1 : System.Address; arg2 : System.Address);  -- /usr/include/GL/glext.h:11407

   type PFNGLVDPAUFININVPROC is access procedure;  -- /usr/include/GL/glext.h:11408

   type PFNGLVDPAUREGISTERVIDEOSURFACENVPROC is access function
        (arg1 : System.Address;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint) return GLvdpauSurfaceNV;  -- /usr/include/GL/glext.h:11409

   type PFNGLVDPAUREGISTEROUTPUTSURFACENVPROC is access function
        (arg1 : System.Address;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLuint) return GLvdpauSurfaceNV;  -- /usr/include/GL/glext.h:11410

   type PFNGLVDPAUISSURFACENVPROC is access procedure (arg1 : GLvdpauSurfaceNV);  -- /usr/include/GL/glext.h:11411

   type PFNGLVDPAUUNREGISTERSURFACENVPROC is access procedure (arg1 : GLvdpauSurfaceNV);  -- /usr/include/GL/glext.h:11412

   type PFNGLVDPAUGETSURFACEIVNVPROC is access procedure
        (arg1 : GLvdpauSurfaceNV;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : access gl_h.GLsizei;
         arg5 : access gl_h.GLint);  -- /usr/include/GL/glext.h:11413

   type PFNGLVDPAUSURFACEACCESSNVPROC is access procedure (arg1 : GLvdpauSurfaceNV; arg2 : gl_h.GLenum);  -- /usr/include/GL/glext.h:11414

   type PFNGLVDPAUMAPSURFACESNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access GLvdpauSurfaceNV);  -- /usr/include/GL/glext.h:11415

   type PFNGLVDPAUUNMAPSURFACESNVPROC is access procedure (arg1 : gl_h.GLsizei; arg2 : access GLvdpauSurfaceNV);  -- /usr/include/GL/glext.h:11416

   type PFNGLTEXIMAGE2DMULTISAMPLECOVERAGENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:11441

   type PFNGLTEXIMAGE3DMULTISAMPLECOVERAGENVPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLsizei;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:11442

   type PFNGLTEXTUREIMAGE2DMULTISAMPLENVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:11443

   type PFNGLTEXTUREIMAGE3DMULTISAMPLENVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLint;
         arg5 : gl_h.GLsizei;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:11444

   type PFNGLTEXTUREIMAGE2DMULTISAMPLECOVERAGENVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:11445

   type PFNGLTEXTUREIMAGE3DMULTISAMPLECOVERAGENVPROC is access procedure
        (arg1 : gl_h.GLuint;
         arg2 : gl_h.GLenum;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLint;
         arg6 : gl_h.GLsizei;
         arg7 : gl_h.GLsizei;
         arg8 : gl_h.GLsizei;
         arg9 : gl_h.GLboolean);  -- /usr/include/GL/glext.h:11446

   type PFNGLSETMULTISAMPLEFVAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLuint;
         arg3 : access gl_h.GLfloat);  -- /usr/include/GL/glext.h:11458

   type PFNGLIMPORTSYNCEXTPROC is access function
        (arg1 : gl_h.GLenum;
         arg2 : GLintptr;
         arg3 : gl_h.GLbitfield) return GLsync;  -- /usr/include/GL/glext.h:11466

   type PFNGLMULTIDRAWARRAYSINDIRECTAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : System.Address;
         arg3 : gl_h.GLsizei;
         arg4 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11475

   type PFNGLMULTIDRAWELEMENTSINDIRECTAMDPROC is access procedure
        (arg1 : gl_h.GLenum;
         arg2 : gl_h.GLenum;
         arg3 : System.Address;
         arg4 : gl_h.GLsizei;
         arg5 : gl_h.GLsizei);  -- /usr/include/GL/glext.h:11476

end glext_h;
