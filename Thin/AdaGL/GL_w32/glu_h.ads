with Interfaces.C; use Interfaces.C;
with System;
with gl_h;

package glu_h is

   --  Extensions
   GLU_EXT_object_space_tess : constant := 1;
   GLU_EXT_nurbs_tessellator : constant := 1;
   
   --  Boolean
   GLU_FALSE : constant := 0;
   GLU_TRUE : constant := 1;
   
   --  Version
   GLU_VERSION_1_1 : constant := 1;
   GLU_VERSION_1_2 : constant := 1;
   GLU_VERSION_1_3 : constant := 1;
   
   --  StringName
   GLU_VERSION : constant := 100800;
   GLU_EXTENSIONS : constant := 100801;
   
   --  ErrorCode
   GLU_INVALID_ENUM : constant := 100900;
   GLU_INVALID_VALUE : constant := 100901;
   GLU_OUT_OF_MEMORY : constant := 100902;
   GLU_INCOMPATIBLE_GL_VERSION : constant := 100903;
   GLU_INVALID_OPERATION : constant := 100904;
   
   --  NurbsDisplay
   GLU_OUTLINE_POLYGON : constant := 100240;
   GLU_OUTLINE_PATCH : constant := 100241;
   
   --  NurbsCallback
   GLU_NURBS_ERROR : constant := 100103;
   GLU_ERROR : constant := 100103;
   GLU_NURBS_BEGIN : constant := 100164;
   GLU_NURBS_BEGIN_EXT : constant := 100164;
   GLU_NURBS_VERTEX : constant := 100165;
   GLU_NURBS_VERTEX_EXT : constant := 100165;
   GLU_NURBS_NORMAL : constant := 100166;
   GLU_NURBS_NORMAL_EXT : constant := 100166;
   GLU_NURBS_COLOR : constant := 100167;
   GLU_NURBS_COLOR_EXT : constant := 100167;
   GLU_NURBS_TEXTURE_COORD : constant := 100168;
   GLU_NURBS_TEX_COORD_EXT : constant := 100168;
   GLU_NURBS_END : constant := 100169;
   GLU_NURBS_END_EXT : constant := 100169;
   GLU_NURBS_BEGIN_DATA : constant := 100170;
   GLU_NURBS_BEGIN_DATA_EXT : constant := 100170;
   GLU_NURBS_VERTEX_DATA : constant := 100171;
   GLU_NURBS_VERTEX_DATA_EXT : constant := 100171;
   GLU_NURBS_NORMAL_DATA : constant := 100172;
   GLU_NURBS_NORMAL_DATA_EXT : constant := 100172;
   GLU_NURBS_COLOR_DATA : constant := 100173;
   GLU_NURBS_COLOR_DATA_EXT : constant := 100173;
   GLU_NURBS_TEXTURE_COORD_DATA : constant := 100174;
   GLU_NURBS_TEX_COORD_DATA_EXT : constant := 100174;
   GLU_NURBS_END_DATA : constant := 100175;
   GLU_NURBS_END_DATA_EXT : constant := 100175;
   
   --  NurbsError
   GLU_NURBS_ERROR1 : constant := 100251;
   GLU_NURBS_ERROR2 : constant := 100252;
   GLU_NURBS_ERROR3 : constant := 100253;
   GLU_NURBS_ERROR4 : constant := 100254;
   GLU_NURBS_ERROR5 : constant := 100255;
   GLU_NURBS_ERROR6 : constant := 100256;
   GLU_NURBS_ERROR7 : constant := 100257;
   GLU_NURBS_ERROR8 : constant := 100258;
   GLU_NURBS_ERROR9 : constant := 100259;
   GLU_NURBS_ERROR10 : constant := 100260;
   GLU_NURBS_ERROR11 : constant := 100261;
   GLU_NURBS_ERROR12 : constant := 100262;
   GLU_NURBS_ERROR13 : constant := 100263;
   GLU_NURBS_ERROR14 : constant := 100264;
   GLU_NURBS_ERROR15 : constant := 100265;
   GLU_NURBS_ERROR16 : constant := 100266;
   GLU_NURBS_ERROR17 : constant := 100267;
   GLU_NURBS_ERROR18 : constant := 100268;
   GLU_NURBS_ERROR19 : constant := 100269;
   GLU_NURBS_ERROR20 : constant := 100270;
   GLU_NURBS_ERROR21 : constant := 100271;
   GLU_NURBS_ERROR22 : constant := 100272;
   GLU_NURBS_ERROR23 : constant := 100273;
   GLU_NURBS_ERROR24 : constant := 100274;
   GLU_NURBS_ERROR25 : constant := 100275;
   GLU_NURBS_ERROR26 : constant := 100276;
   GLU_NURBS_ERROR27 : constant := 100277;
   GLU_NURBS_ERROR28 : constant := 100278;
   GLU_NURBS_ERROR29 : constant := 100279;
   GLU_NURBS_ERROR30 : constant := 100280;
   GLU_NURBS_ERROR31 : constant := 100281;
   GLU_NURBS_ERROR32 : constant := 100282;
   GLU_NURBS_ERROR33 : constant := 100283;
   GLU_NURBS_ERROR34 : constant := 100284;
   GLU_NURBS_ERROR35 : constant := 100285;
   GLU_NURBS_ERROR36 : constant := 100286;
   GLU_NURBS_ERROR37 : constant := 100287;
   
   --  NurbsProperty
   GLU_AUTO_LOAD_MATRIX : constant := 100200;
   GLU_CULLING : constant := 100201;
   GLU_SAMPLING_TOLERANCE : constant := 100203;
   GLU_DISPLAY_MODE : constant := 100204;
   GLU_PARAMETRIC_TOLERANCE : constant := 100202;
   GLU_SAMPLING_METHOD : constant := 100205;
   GLU_U_STEP : constant := 100206;
   GLU_V_STEP : constant := 100207;
   GLU_NURBS_MODE : constant := 100160;
   GLU_NURBS_MODE_EXT : constant := 100160;
   GLU_NURBS_TESSELLATOR : constant := 100161;
   GLU_NURBS_TESSELLATOR_EXT : constant := 100161;
   GLU_NURBS_RENDERER : constant := 100162;
   GLU_NURBS_RENDERER_EXT : constant := 100162;
   
   --  NurbsSampling
   GLU_OBJECT_PARAMETRIC_ERROR : constant := 100208;
   GLU_OBJECT_PARAMETRIC_ERROR_EXT : constant := 100208;
   GLU_OBJECT_PATH_LENGTH : constant := 100209;
   GLU_OBJECT_PATH_LENGTH_EXT : constant := 100209;
   GLU_PATH_LENGTH : constant := 100215;
   GLU_PARAMETRIC_ERROR : constant := 100216;
   GLU_DOMAIN_DISTANCE : constant := 100217;
   
   --  NurbsTrim
   GLU_MAP1_TRIM_2 : constant := 100210;
   GLU_MAP1_TRIM_3 : constant := 100211;
   
   --  QuadricDrawStyle
   GLU_POINT : constant := 100010;
   GLU_LINE : constant := 100011
   GLU_FILL : constant := 100012; 
   GLU_SILHOUETTE : constant := 100013;
   
   -- QuadricCallback
   --      GLU_ERROR

   --  QuadricNormal   
   GLU_SMOOTH : constant := 100000;
   GLU_FLAT : constant := 100001;
   GLU_NONE : constant := 100002;
   
   --  QuadricOrientation
   GLU_OUTSIDE : constant := 100020;
   GLU_INSIDE : constant := 100021;
   
   --  TessCallback
   GLU_TESS_BEGIN : constant := 100100;
   GLU_BEGIN : constant := 100100;
   GLU_TESS_VERTEX : constant := 100101;
   GLU_VERTEX : constant := 100101;
   GLU_TESS_END : constant := 100102;
   GLU_END : constant := 100102;
   GLU_TESS_ERROR : constant := 100103;
   GLU_TESS_EDGE_FLAG : constant := 100104;
   GLU_EDGE_FLAG : constant := 100104;
   GLU_TESS_COMBINE : constant := 100105;
   GLU_TESS_BEGIN_DATA : constant := 100106;
   GLU_TESS_VERTEX_DATA : constant := 100107;
   GLU_TESS_END_DATA : constant := 100108;
   GLU_TESS_ERROR_DATA : constant := 100109;
   GLU_TESS_EDGE_FLAG_DATA : constant := 100110;
   GLU_TESS_COMBINE_DATA : constant := 100111;
   
   --  TessContour
   GLU_CW : constant := 100120;
   GLU_CCW : constant := 100121;
   GLU_INTERIOR : constant := 100122;
   GLU_EXTERIOR : constant := 100123;
   GLU_UNKNOWN : constant := 100124;
   
   --  TessProperty
   GLU_TESS_WINDING_RULE : constant := 100140;
   GLU_TESS_BOUNDARY_ONLY : constant := 100141;
   GLU_TESS_TOLERANCE : constant := 100142;
   
   --  TessError
   GLU_TESS_ERROR1 : constant := 100151;
   GLU_TESS_ERROR2 : constant := 100152;
   GLU_TESS_ERROR3 : constant := 100153;
   GLU_TESS_ERROR4 : constant := 100154;
   GLU_TESS_ERROR5 : constant := 100155;
   GLU_TESS_ERROR6 : constant := 100156;
   GLU_TESS_ERROR7 : constant := 100157;
   GLU_TESS_ERROR8 : constant := 100158;
   GLU_TESS_MISSING_BEGIN_POLYGON : constant := 100151;
   GLU_TESS_MISSING_BEGIN_CONTOUR : constant := 100152;
   GLU_TESS_MISSING_END_POLYGON : constant := 100153;
   GLU_TESS_MISSING_END_CONTOUR : constant := 100154;
   GLU_TESS_COORD_TOO_LARGE : constant := 100155;
   GLU_TESS_NEED_COMBINE_CALLBACK : constant := 100156;
   
   --  TessWinding
   GLU_TESS_WINDING_ODD : constant := 100130;
   GLU_TESS_WINDING_NONZERO : constant := 100131;
   GLU_TESS_WINDING_POSITIVE : constant := 100132;
   GLU_TESS_WINDING_NEGATIVE : constant := 100133;
   GLU_TESS_WINDING_ABS_GEQ_TWO : constant := 100134;

   GLU_TESS_MAX_COORD : constant := 1.0e150;

  -- Internal convenience typedefs
   type u_GLUfuncptr is access procedure;

   procedure gluBeginCurve (nurb : System.Address);
   pragma Import (StdCall, gluBeginCurve, "gluBeginCurve");

   procedure gluBeginPolygon (tess : System.Address);
   pragma Import (StdCall, gluBeginPolygon, "gluBeginPolygon");

   procedure gluBeginSurface (nurb : System.Address);
   pragma Import (StdCall, gluBeginSurface, "gluBeginSurface");

   procedure gluBeginTrim (nurb : System.Address);
   pragma Import (StdCall, gluBeginTrim, "gluBeginTrim");

   function gluBuild1DMipmapLevels
     (target : GL_H.GLenum;
      internalFormat : GL_H.GLint;
      width : GL_H.GLsizei;
      format : GL_H.GLenum;
      c_type : GL_H.GLenum;
      level : GL_H.GLint;
      base : GL_H.GLint;
      max : GL_H.GLint;
      data : System.Address) return GL_H.GLint;
   pragma Import (StdCall, gluBuild1DMipmapLevels,
		  "gluBuild1DMipmapLevels");

   function gluBuild1DMipmaps
     (target : GL_H.GLenum;
      internalFormat : GL_H.GLint;
      width : GL_H.GLsizei;
      format : GL_H.GLenum;
      c_type : GL_H.GLenum;
      data : System.Address) return GL_H.GLint;
   pragma Import (StdCall, gluBuild1DMipmaps, "gluBuild1DMipmaps");

   function gluBuild2DMipmapLevels
     (target : GL_H.GLenum;
      internalFormat : GL_H.GLint;
      width : GL_H.GLsizei;
      height : GL_H.GLsizei;
      format : GL_H.GLenum;
      c_type : GL_H.GLenum;
      level : GL_H.GLint;
      base : GL_H.GLint;
      max : GL_H.GLint;
      data : System.Address) return GL_H.GLint;
   pragma Import (StdCall, gluBuild2DMipmapLevels,
		  "gluBuild2DMipmapLevels");

   function gluBuild2DMipmaps
     (target : GL_H.GLenum;
      internalFormat : GL_H.GLint;
      width : GL_H.GLsizei;
      height : GL_H.GLsizei;
      format : GL_H.GLenum;
      c_type : GL_H.GLenum;
      data : System.Address) return GL_H.GLint;
   pragma Import (StdCall, gluBuild2DMipmaps,
		  "gluBuild2DMipmaps");

   function gluBuild3DMipmapLevels
     (target : GL_H.GLenum;
      internalFormat : GL_H.GLint;
      width : GL_H.GLsizei;
      height : GL_H.GLsizei;
      depth : GL_H.GLsizei;
      format : GL_H.GLenum;
      c_type : GL_H.GLenum;
      level : GL_H.GLint;
      base : GL_H.GLint;
      max : GL_H.GLint;
      data : System.Address) return GL_H.GLint;
   pragma Import (StdCall, gluBuild3DMipmapLevels,
		  "gluBuild3DMipmapLevels");

   function gluBuild3DMipmaps
     (target : GL_H.GLenum;
      internalFormat : GL_H.GLint;
      width : GL_H.GLsizei;
      height : GL_H.GLsizei;
      depth : GL_H.GLsizei;
      format : GL_H.GLenum;
      c_type : GL_H.GLenum;
      data : System.Address) return GL_H.GLint;
   pragma Import (StdCall, gluBuild3DMipmaps,
		  "gluBuild3DMipmaps");

   function gluCheckExtension (extName : access GL_H.GLubyte;
			       extString : access GL_H.GLubyte) return GL_H.GLboolean;
   pragma Import (StdCall, gluCheckExtension, "gluCheckExtension");

   procedure gluCylinder
     (quad : System.Address;
      base : GL_H.GLdouble;
      top : GL_H.GLdouble;
      height : GL_H.GLdouble;
      slices : GL_H.GLint;
      stacks : GL_H.GLint);
   pragma Import (StdCall, gluCylinder, "gluCylinder");

   procedure gluDeleteNurbsRenderer (nurb : System.Address);  -- /usr/include/GL/glu.h:301
   pragma Import (StdCall, gluDeleteNurbsRenderer,
		  "gluDeleteNurbsRenderer");

   procedure gluDeleteQuadric (quad : System.Address);
   pragma Import (StdCall, gluDeleteQuadric, "gluDeleteQuadric");

   procedure gluDeleteTess (tess : System.Address);
   pragma Import (StdCall, gluDeleteTess, "gluDeleteTess");

   procedure gluDisk
     (quad : System.Address;
      inner : GL_H.GLdouble;
      outer : GL_H.GLdouble;
      slices : GL_H.GLint;
      loops : GL_H.GLint);
   pragma Import (StdCall, gluDisk, "gluDisk");

   procedure gluEndCurve (nurb : System.Address);
   pragma Import (StdCall, gluEndCurve, "gluEndCurve");

   procedure gluEndPolygon (tess : System.Address);
   pragma Import (StdCall, gluEndPolygon, "gluEndPolygon");

   procedure gluEndSurface (nurb : System.Address);
   pragma Import (StdCall, gluEndSurface, "gluEndSurface");

   procedure gluEndTrim (nurb : System.Address);
   pragma Import (StdCall, gluEndTrim, "gluEndTrim");

   function gluErrorString (error : GL_H.GLenum) return access GL_H.GLubyte;
   pragma Import (StdCall, gluErrorString, "gluErrorString");

   procedure gluGetNurbsProperty
     (nurb : System.Address;
      property : GL_H.GLenum;
      data : access GL_H.GLfloat);
   pragma Import (StdCall, gluGetNurbsProperty,
		  "gluGetNurbsProperty");

   function gluGetString (name : GL_H.GLenum) return access GL_H.GLubyte;
   pragma Import (StdCall, gluGetString, "gluGetString");

   procedure gluGetTessProperty
     (tess : System.Address;
      which : GL_H.GLenum;
      data : access GL_H.GLdouble);
   pragma Import (StdCall, gluGetTessProperty,
		  "gluGetTessProperty");

   procedure gluLoadSamplingMatrices
     (nurb : System.Address;
      model : access GL_H.GLfloat;
      perspective : access GL_H.GLfloat;
      view : access GL_H.GLint);
   pragma Import (StdCall, gluLoadSamplingMatrices,
		  "gluLoadSamplingMatrices");

   procedure gluLookAt
     (eyeX : GL_H.GLdouble;
      eyeY : GL_H.GLdouble;
      eyeZ : GL_H.GLdouble;
      centerX : GL_H.GLdouble;
      centerY : GL_H.GLdouble;
      centerZ : GL_H.GLdouble;
      upX : GL_H.GLdouble;
      upY : GL_H.GLdouble;
      upZ : GL_H.GLdouble);
   pragma Import (StdCall, gluLookAt, "gluLookAt");

   function gluNewNurbsRenderer return System.Address;
   pragma Import (StdCall, gluNewNurbsRenderer, "gluNewNurbsRenderer");

   function gluNewQuadric return System.Address;
   pragma Import (StdCall, gluNewQuadric, "gluNewQuadric");

   function gluNewTess return System.Address;
   pragma Import (StdCall, gluNewTess, "gluNewTess");

   procedure gluNextContour (tess : System.Address;
			     c_type : GL_H.GLenum);
   pragma Import (StdCall, gluNextContour, "gluNextContour");

   procedure gluNurbsCallback
     (nurb : System.Address;
      which : GL_H.GLenum;
      CallBackFunc : access procedure);
   pragma Import (StdCall, gluNurbsCallback,
		  "gluNurbsCallback");

   procedure gluNurbsCallbackData (nurb : System.Address; userData : System.Address);
   pragma Import (StdCall, gluNurbsCallbackData,
		  "gluNurbsCallbackData");

   procedure gluNurbsCallbackDataEXT (nurb : System.Address;
				      userData : System.Address);
   pragma Import (StdCall, gluNurbsCallbackDataEXT,
		  "gluNurbsCallbackDataEXT");

   procedure gluNurbsCurve
     (nurb : System.Address;
      knotCount : GL_H.GLint;
      knots : access GL_H.GLfloat;
      stride : GL_H.GLint;
      control : access GL_H.GLfloat;
      order : GL_H.GLint;
      c_type : GL_H.GLenum);
   pragma Import (StdCall, gluNurbsCurve, "gluNurbsCurve");

   procedure gluNurbsProperty
     (nurb : System.Address;
      property : GL_H.GLenum;
      value : GL_H.GLfloat);
   pragma Import (StdCall, gluNurbsProperty, "gluNurbsProperty");

   procedure gluNurbsSurface
     (nurb : System.Address;
      sKnotCount : GL_H.GLint;
      sKnots : access GL_H.GLfloat;
      tKnotCount : GL_H.GLint;
      tKnots : access GL_H.GLfloat;
      sStride : GL_H.GLint;
      tStride : GL_H.GLint;
      control : access GL_H.GLfloat;
      sOrder : GL_H.GLint;
      tOrder : GL_H.GLint;
      c_type : GL_H.GLenum);
   pragma Import (StdCall, gluNurbsSurface, "gluNurbsSurface");

   procedure gluOrtho2D
     (left : GL_H.GLdouble;
      right : GL_H.GLdouble;
      bottom : GL_H.GLdouble;
      top : GL_H.GLdouble);
   pragma Import (StdCall, gluOrtho2D, "gluOrtho2D");

   procedure gluPartialDisk
     (quad : System.Address;
      inner : GL_H.GLdouble;
      outer : GL_H.GLdouble;
      slices : GL_H.GLint;
      loops : GL_H.GLint;
      start : GL_H.GLdouble;
      sweep : GL_H.GLdouble);
   pragma Import (StdCall, gluPartialDisk, "gluPartialDisk");

   procedure gluPerspective
     (fovy : GL_H.GLdouble;
      aspect : GL_H.GLdouble;
      zNear : GL_H.GLdouble;
      zFar : GL_H.GLdouble);
   pragma Import (StdCall, gluPerspective, "gluPerspective");

   procedure gluPickMatrix
     (x : GL_H.GLdouble;
      y : GL_H.GLdouble;
      delX : GL_H.GLdouble;
      delY : GL_H.GLdouble;
      viewport : access GL_H.GLint);
   pragma Import (StdCall, gluPickMatrix, "gluPickMatrix");

   function gluProject
     (objX : GL_H.GLdouble;
      objY : GL_H.GLdouble;
      objZ : GL_H.GLdouble;
      model : access GL_H.GLdouble;
      proj : access GL_H.GLdouble;
      view : access GL_H.GLint;
      winX : access GL_H.GLdouble;
      winY : access GL_H.GLdouble;
      winZ : access GL_H.GLdouble) return GL_H.GLint;
   pragma Import (StdCall, gluProject, "gluProject");

   procedure gluPwlCurve
     (nurb : System.Address;
      count : GL_H.GLint;
      data : access GL_H.GLfloat;
      stride : GL_H.GLint;
      c_type : GL_H.GLenum);
   pragma Import (StdCall, gluPwlCurve, "gluPwlCurve");

   procedure gluQuadricCallback
     (quad : System.Address;
      which : GL_H.GLenum;
      CallBackFunc : access procedure);
   pragma Import (StdCall, gluQuadricCallback, "gluQuadricCallback");

   procedure gluQuadricDrawStyle (quad : System.Address;
				  draw : GL_H.GLenum);
   pragma Import (StdCall, gluQuadricDrawStyle, "gluQuadricDrawStyle");

   procedure gluQuadricNormals (quad : System.Address; normal : GL_H.GLenum);
   pragma Import (StdCall, gluQuadricNormals, "gluQuadricNormals");

   procedure gluQuadricOrientation (quad : System.Address;
				    orientation : GL_H.GLenum);
   pragma Import (StdCall, gluQuadricOrientation,
		  "gluQuadricOrientation");

   procedure gluQuadricTexture (quad : System.Address; texture : GL_H.GLboolean);
   pragma Import (StdCall, gluQuadricTexture, "gluQuadricTexture");

   function gluScaleImage
     (format : GL_H.GLenum;
      wIn : GL_H.GLsizei;
      hIn : GL_H.GLsizei;
      typeIn : GL_H.GLenum;
      dataIn : System.Address;
      wOut : GL_H.GLsizei;
      hOut : GL_H.GLsizei;
      typeOut : GL_H.GLenum;
      dataOut : System.Address) return GL_H.GLint;
   pragma Import (StdCall, gluScaleImage, "gluScaleImage");

   procedure gluSphere
     (quad : System.Address;
      radius : GL_H.GLdouble;
      slices : GL_H.GLint;
      stacks : GL_H.GLint);
   pragma Import (StdCall, gluSphere, "gluSphere");

   procedure gluTessBeginContour (tess : System.Address);
   pragma Import (StdCall, gluTessBeginContour, "gluTessBeginContour");

   procedure gluTessBeginPolygon (tess : System.Address;
				  data : System.Address);
   pragma Import (StdCall, gluTessBeginPolygon, "gluTessBeginPolygon");

   procedure gluTessCallback
     (tess : System.Address;
      which : GL_H.GLenum;
      CallBackFunc : access procedure);
   pragma Import (StdCall, gluTessCallback, "gluTessCallback");

   procedure gluTessEndContour (tess : System.Address);
   pragma Import (StdCall, gluTessEndContour, "gluTessEndContour");

   procedure gluTessEndPolygon (tess : System.Address);
   pragma Import (StdCall, gluTessEndPolygon, "gluTessEndPolygon");

   procedure gluTessNormal
     (tess : System.Address;
      valueX : GL_H.GLdouble;
      valueY : GL_H.GLdouble;
      valueZ : GL_H.GLdouble);
   pragma Import (StdCall, gluTessNormal, "gluTessNormal");

   procedure gluTessProperty
     (tess : System.Address;
      which : GL_H.GLenum;
      data : GL_H.GLdouble);
   pragma Import (StdCall, gluTessProperty, "gluTessProperty");

   procedure gluTessVertex
     (tess : System.Address;
      location : access GL_H.GLdouble;
      data : System.Address);
   pragma Import (StdCall, gluTessVertex, "gluTessVertex");

   function gluUnProject
     (winX : GL_H.GLdouble;
      winY : GL_H.GLdouble;
      winZ : GL_H.GLdouble;
      model : access GL_H.GLdouble;
      proj : access GL_H.GLdouble;
      view : access GL_H.GLint;
      objX : access GL_H.GLdouble;
      objY : access GL_H.GLdouble;
      objZ : access GL_H.GLdouble) return GL_H.GLint;
   pragma Import (StdCall, gluUnProject, "gluUnProject");

   function gluUnProject4
     (winX : GL_H.GLdouble;
      winY : GL_H.GLdouble;
      winZ : GL_H.GLdouble;
      clipW : GL_H.GLdouble;
      model : access GL_H.GLdouble;
      proj : access GL_H.GLdouble;
      view : access GL_H.GLint;
      nearVal : GL_H.GLdouble;
      farVal : GL_H.GLdouble;
      objX : access GL_H.GLdouble;
      objY : access GL_H.GLdouble;
      objZ : access GL_H.GLdouble;
      objW : access GL_H.GLdouble) return GL_H.GLint;
   pragma Import (StdCall, gluUnProject4, "gluUnProject4");

end glu_h;
