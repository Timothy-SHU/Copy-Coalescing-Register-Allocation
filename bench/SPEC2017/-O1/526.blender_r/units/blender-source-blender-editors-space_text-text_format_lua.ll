; ModuleID = 'blender/source/blender/editors/space_text/text_format_lua.c'
source_filename = "blender/source/blender/editors/space_text/text_format_lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TextFormatType = type { ptr, ptr, ptr, ptr, ptr }
%struct.FlattenString = type { [256 x i8], [256 x i32], ptr, ptr, i32, i32 }
%struct.TextLine = type { ptr, ptr, ptr, ptr, i32, i32 }

@ED_text_format_register_lua.tft = internal global %struct.TextFormatType zeroinitializer, align 8
@ED_text_format_register_lua.ext = internal global [2 x ptr] [ptr @.str, ptr null], align 16
@.str = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"collectgarbage\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"dofile\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"getfenv\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"ipairs\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"loadfile\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"loadstring\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"pairs\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"pcall\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"rawequal\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"rawget\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"rawset\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"setfenv\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"tonumber\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"tostring\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"xpcall\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"elseif\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_text_format_register_lua() local_unnamed_addr #0 {
  store ptr @txtfmt_lua_format_identifier, ptr getelementptr inbounds (%struct.TextFormatType, ptr @ED_text_format_register_lua.tft, i64 0, i32 2), align 8, !tbaa !34
  store ptr @txtfmt_lua_format_line, ptr getelementptr inbounds (%struct.TextFormatType, ptr @ED_text_format_register_lua.tft, i64 0, i32 3), align 8, !tbaa !39
  store ptr @ED_text_format_register_lua.ext, ptr getelementptr inbounds (%struct.TextFormatType, ptr @ED_text_format_register_lua.tft, i64 0, i32 4), align 8, !tbaa !40
  tail call void @ED_text_format_register(ptr noundef nonnull @ED_text_format_register_lua.tft) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @txtfmt_lua_format_identifier(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @txtfmt_lua_find_specialvar(ptr noundef %0), !range !41
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @txtfmt_lua_find_keyword(ptr noundef %0), !range !42
  %6 = icmp eq i32 %5, -1
  %7 = select i1 %6, i8 113, i8 98
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 118, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define internal void @txtfmt_lua_format_line(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca %struct.FlattenString, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 1304, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %7 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TextLine, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  store ptr %12, ptr %6, align 8, !tbaa !47
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #5
  %16 = getelementptr i8, ptr %12, i64 %15
  %17 = getelementptr i8, ptr %16, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !48
  br label %19

19:                                               ; preds = %3, %10, %14
  %20 = phi i8 [ %18, %14 ], [ 0, %10 ], [ 0, %3 ]
  %21 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  store ptr %22, ptr %6, align 8, !tbaa !47
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #5
  %26 = getelementptr i8, ptr %22, i64 %25
  %27 = getelementptr i8, ptr %26, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !48
  br label %29

29:                                               ; preds = %19, %24
  %30 = phi i8 [ %28, %24 ], [ -1, %19 ]
  %31 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = call i32 @flatten_string(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %32) #4
  %34 = getelementptr inbounds %struct.FlattenString, ptr %4, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  store ptr %35, ptr %5, align 8, !tbaa !47
  %36 = call i32 @text_check_format_len(ptr noundef %1, i32 noundef %33) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %266, label %38

38:                                               ; preds = %29
  %39 = load ptr, ptr %21, align 8, !tbaa !46
  store ptr %39, ptr %6, align 8, !tbaa !47
  %40 = load ptr, ptr %5, align 8, !tbaa !47
  %41 = load i8, ptr %40, align 1, !tbaa !48
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %254, label %43

43:                                               ; preds = %38, %245
  %44 = phi i8 [ %252, %245 ], [ %41, %38 ]
  %45 = phi ptr [ %251, %245 ], [ %40, %38 ]
  %46 = phi i8 [ %248, %245 ], [ 32, %38 ]
  %47 = phi i8 [ %246, %245 ], [ %20, %38 ]
  %48 = icmp eq i8 %44, 92
  br i1 %48, label %49, label %68

49:                                               ; preds = %43, %57
  %50 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 %46, ptr %50, align 1, !tbaa !48
  %51 = load ptr, ptr %6, align 8, !tbaa !47
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %52, ptr %6, align 8, !tbaa !47
  %53 = load ptr, ptr %5, align 8, !tbaa !47
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %54, ptr %5, align 8, !tbaa !47
  %55 = load i8, ptr %54, align 1, !tbaa !48
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %254, label %57

57:                                               ; preds = %49
  store i8 %46, ptr %52, align 1, !tbaa !48
  %58 = load ptr, ptr %6, align 8, !tbaa !47
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %59, ptr %6, align 8, !tbaa !47
  %60 = load ptr, ptr %5, align 8, !tbaa !47
  %61 = call i32 @BLI_str_utf8_size_safe(ptr noundef %60) #4
  %62 = load ptr, ptr %5, align 8, !tbaa !47
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %62, i64 %63
  store ptr %64, ptr %5, align 8, !tbaa !47
  %65 = load i8, ptr %64, align 1, !tbaa !48
  switch i8 %65, label %66 [
    i8 0, label %254
    i8 92, label %49
  ]

66:                                               ; preds = %57
  %67 = getelementptr inbounds i8, ptr %62, i64 %63
  br label %68

68:                                               ; preds = %66, %43
  %69 = phi i8 [ %44, %43 ], [ %65, %66 ]
  %70 = phi ptr [ %45, %43 ], [ %67, %66 ]
  %71 = zext i8 %69 to i32
  %72 = icmp eq i8 %47, 0
  br i1 %72, label %106, label %73

73:                                               ; preds = %68
  %74 = zext i8 %47 to i32
  %75 = and i32 %74, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %73
  %78 = icmp eq i8 %69, 93
  br i1 %78, label %79, label %89

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %70, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !48
  %82 = icmp eq i8 %81, 93
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 35, ptr %84, align 1, !tbaa !48
  %85 = load ptr, ptr %6, align 8, !tbaa !47
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  store ptr %86, ptr %6, align 8, !tbaa !47
  %87 = load ptr, ptr %5, align 8, !tbaa !47
  %88 = getelementptr inbounds i8, ptr %87, i64 1
  store ptr %88, ptr %5, align 8, !tbaa !47
  store i8 35, ptr %86, align 1, !tbaa !48
  br label %98

89:                                               ; preds = %79, %77
  %90 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 35, ptr %90, align 1, !tbaa !48
  br label %98

91:                                               ; preds = %73
  %92 = and i32 %74, 2
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 39, i32 34
  %95 = icmp eq i32 %94, %71
  %96 = select i1 %95, i8 0, i8 %47
  %97 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 108, ptr %97, align 1, !tbaa !48
  br label %98

98:                                               ; preds = %83, %89, %91
  %99 = phi i8 [ 0, %83 ], [ %47, %89 ], [ %96, %91 ]
  %100 = load ptr, ptr %5, align 8, !tbaa !47
  %101 = call i32 @BLI_str_utf8_size_safe(ptr noundef %100) #4
  %102 = load ptr, ptr %5, align 8, !tbaa !47
  %103 = sext i32 %101 to i64
  %104 = getelementptr i8, ptr %102, i64 %103
  %105 = getelementptr i8, ptr %104, i64 -1
  store ptr %105, ptr %5, align 8, !tbaa !47
  br label %245

106:                                              ; preds = %68
  %107 = icmp eq i8 %69, 45
  br i1 %107, label %108, label %147

108:                                              ; preds = %106
  %109 = getelementptr inbounds i8, ptr %70, i64 1
  %110 = load i8, ptr %109, align 1, !tbaa !48
  %111 = icmp eq i8 %110, 45
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, ptr %70, i64 2
  %114 = load i8, ptr %113, align 1, !tbaa !48
  %115 = icmp eq i8 %114, 91
  br i1 %115, label %116, label %134

116:                                              ; preds = %112
  %117 = getelementptr inbounds i8, ptr %70, i64 3
  %118 = load i8, ptr %117, align 1, !tbaa !48
  %119 = icmp eq i8 %118, 91
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 35, ptr %121, align 1, !tbaa !48
  %122 = load ptr, ptr %6, align 8, !tbaa !47
  %123 = getelementptr inbounds i8, ptr %122, i64 1
  store ptr %123, ptr %6, align 8, !tbaa !47
  %124 = load ptr, ptr %5, align 8, !tbaa !47
  %125 = getelementptr inbounds i8, ptr %124, i64 1
  store ptr %125, ptr %5, align 8, !tbaa !47
  store i8 35, ptr %123, align 1, !tbaa !48
  %126 = load ptr, ptr %6, align 8, !tbaa !47
  %127 = getelementptr inbounds i8, ptr %126, i64 1
  store ptr %127, ptr %6, align 8, !tbaa !47
  %128 = load ptr, ptr %5, align 8, !tbaa !47
  %129 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %129, ptr %5, align 8, !tbaa !47
  store i8 35, ptr %127, align 1, !tbaa !48
  %130 = load ptr, ptr %6, align 8, !tbaa !47
  %131 = getelementptr inbounds i8, ptr %130, i64 1
  store ptr %131, ptr %6, align 8, !tbaa !47
  %132 = load ptr, ptr %5, align 8, !tbaa !47
  %133 = getelementptr inbounds i8, ptr %132, i64 1
  store ptr %133, ptr %5, align 8, !tbaa !47
  store i8 35, ptr %131, align 1, !tbaa !48
  br label %245

134:                                              ; preds = %116, %112, %108
  br i1 %107, label %135, label %147

135:                                              ; preds = %134
  %136 = getelementptr inbounds i8, ptr %70, i64 1
  %137 = load i8, ptr %136, align 1, !tbaa !48
  %138 = icmp eq i8 %137, 45
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load ptr, ptr %6, align 8, !tbaa !47
  %141 = load ptr, ptr %21, align 8, !tbaa !46
  %142 = ptrtoint ptr %140 to i64
  %143 = ptrtoint ptr %141 to i64
  %144 = sub i64 %143, %142
  %145 = trunc i64 %144 to i32
  %146 = add i32 %33, %145
  call void @text_format_fill(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 35, i32 noundef %146) #4
  br label %245

147:                                              ; preds = %106, %135, %134
  switch i8 %69, label %154 [
    i8 34, label %148
    i8 39, label %148
    i8 32, label %152
  ]

148:                                              ; preds = %147, %147
  %149 = icmp eq i8 %69, 34
  %150 = select i1 %149, i8 2, i8 1
  %151 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 108, ptr %151, align 1, !tbaa !48
  br label %245

152:                                              ; preds = %147
  %153 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 95, ptr %153, align 1, !tbaa !48
  br label %245

154:                                              ; preds = %147
  %155 = icmp eq i8 %46, 113
  br i1 %155, label %159, label %156

156:                                              ; preds = %154
  %157 = call zeroext i8 @text_check_digit(i8 noundef zeroext %69) #4
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %156, %154
  %160 = load ptr, ptr %5, align 8, !tbaa !47
  %161 = load i8, ptr %160, align 1, !tbaa !48
  %162 = icmp eq i8 %161, 46
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, ptr %160, i64 1
  %165 = load i8, ptr %164, align 1, !tbaa !48
  %166 = call zeroext i8 @text_check_digit(i8 noundef zeroext %165) #4
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %163, %156
  %169 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 110, ptr %169, align 1, !tbaa !48
  br label %245

170:                                              ; preds = %163, %159
  br i1 %155, label %206, label %171

171:                                              ; preds = %170
  %172 = load ptr, ptr %5, align 8, !tbaa !47
  %173 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %172, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #5
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %171
  %176 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %172, ptr noundef nonnull dereferenceable(5) @.str.48, i64 noundef 4) #5
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %172, ptr noundef nonnull dereferenceable(6) @.str.49, i64 noundef 5) #5
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, i32 0, i32 5
  br label %182

182:                                              ; preds = %178, %175, %171
  %183 = phi i1 [ false, %171 ], [ false, %175 ], [ %180, %178 ]
  %184 = phi i32 [ 3, %171 ], [ 4, %175 ], [ %181, %178 ]
  br i1 %183, label %192, label %185

185:                                              ; preds = %182
  %186 = zext nneg i32 %184 to i64
  %187 = getelementptr inbounds i8, ptr %172, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !48
  %189 = call zeroext i8 @text_check_identifier(i8 noundef zeroext %188) #4
  %190 = icmp eq i8 %189, 0
  %191 = select i1 %190, i32 %184, i32 -1
  br label %192

192:                                              ; preds = %182, %185
  %193 = phi i32 [ -1, %182 ], [ %191, %185 ]
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %206, label %195

195:                                              ; preds = %192
  %196 = icmp sgt i32 %193, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %195
  call void @text_format_fill_ascii(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 110, i32 noundef %193) #4
  br label %245

198:                                              ; preds = %195
  %199 = load ptr, ptr %5, align 8, !tbaa !47
  %200 = call i32 @BLI_str_utf8_size_safe(ptr noundef %199) #4
  %201 = load ptr, ptr %5, align 8, !tbaa !47
  %202 = sext i32 %200 to i64
  %203 = getelementptr i8, ptr %201, i64 %202
  %204 = getelementptr i8, ptr %203, i64 -1
  store ptr %204, ptr %5, align 8, !tbaa !47
  %205 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 113, ptr %205, align 1, !tbaa !48
  br label %245

206:                                              ; preds = %192, %170
  %207 = load ptr, ptr %5, align 8, !tbaa !47
  %208 = load i8, ptr %207, align 1, !tbaa !48
  %209 = icmp eq i8 %208, 35
  br i1 %209, label %215, label %210

210:                                              ; preds = %206
  %211 = call zeroext i8 @text_check_delim(i8 noundef zeroext %208) #4
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 33, ptr %214, align 1, !tbaa !48
  br label %245

215:                                              ; preds = %210, %206
  %216 = load ptr, ptr %5, align 8, !tbaa !47
  br i1 %155, label %217, label %224

217:                                              ; preds = %215
  %218 = call i32 @BLI_str_utf8_size_safe(ptr noundef %216) #4
  %219 = load ptr, ptr %5, align 8, !tbaa !47
  %220 = sext i32 %218 to i64
  %221 = getelementptr i8, ptr %219, i64 %220
  %222 = getelementptr i8, ptr %221, i64 -1
  store ptr %222, ptr %5, align 8, !tbaa !47
  %223 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 113, ptr %223, align 1, !tbaa !48
  br label %245

224:                                              ; preds = %215
  %225 = call fastcc i32 @txtfmt_lua_find_specialvar(ptr noundef %216), !range !41
  %226 = icmp eq i32 %225, -1
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load ptr, ptr %5, align 8, !tbaa !47
  %229 = call fastcc i32 @txtfmt_lua_find_keyword(ptr noundef %228), !range !42
  %230 = icmp eq i32 %229, -1
  %231 = select i1 %230, i8 %46, i8 98
  br label %232

232:                                              ; preds = %227, %224
  %233 = phi i8 [ 118, %224 ], [ %231, %227 ]
  %234 = phi i32 [ %225, %224 ], [ %229, %227 ]
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  call void @text_format_fill_ascii(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %233, i32 noundef %234) #4
  br label %245

237:                                              ; preds = %232
  %238 = load ptr, ptr %5, align 8, !tbaa !47
  %239 = call i32 @BLI_str_utf8_size_safe(ptr noundef %238) #4
  %240 = load ptr, ptr %5, align 8, !tbaa !47
  %241 = sext i32 %239 to i64
  %242 = getelementptr i8, ptr %240, i64 %241
  %243 = getelementptr i8, ptr %242, i64 -1
  store ptr %243, ptr %5, align 8, !tbaa !47
  %244 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 113, ptr %244, align 1, !tbaa !48
  br label %245

245:                                              ; preds = %98, %139, %152, %198, %197, %217, %237, %236, %213, %168, %148, %120
  %246 = phi i8 [ %99, %98 ], [ 8, %120 ], [ 0, %139 ], [ %150, %148 ], [ 0, %152 ], [ 0, %168 ], [ 0, %197 ], [ 0, %198 ], [ 0, %213 ], [ 0, %217 ], [ 0, %236 ], [ 0, %237 ]
  %247 = load ptr, ptr %6, align 8, !tbaa !47
  %248 = load i8, ptr %247, align 1, !tbaa !48
  %249 = getelementptr inbounds i8, ptr %247, i64 1
  store ptr %249, ptr %6, align 8, !tbaa !47
  %250 = load ptr, ptr %5, align 8, !tbaa !47
  %251 = getelementptr inbounds i8, ptr %250, i64 1
  store ptr %251, ptr %5, align 8, !tbaa !47
  %252 = load i8, ptr %251, align 1, !tbaa !48
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %43, !llvm.loop !52

254:                                              ; preds = %245, %49, %57, %38
  %255 = phi i8 [ %20, %38 ], [ %47, %57 ], [ %47, %49 ], [ %246, %245 ]
  %256 = load ptr, ptr %6, align 8, !tbaa !47
  store i8 0, ptr %256, align 1, !tbaa !48
  %257 = load ptr, ptr %6, align 8, !tbaa !47
  %258 = getelementptr inbounds i8, ptr %257, i64 1
  store ptr %258, ptr %6, align 8, !tbaa !47
  store i8 %255, ptr %258, align 1, !tbaa !48
  %259 = icmp ne i8 %255, %30
  %260 = icmp ne i8 %2, 0
  %261 = and i1 %260, %259
  br i1 %261, label %262, label %266

262:                                              ; preds = %254
  %263 = load ptr, ptr %1, align 8, !tbaa !55
  %264 = icmp eq ptr %263, null
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  call void @txtfmt_lua_format_line(ptr noundef %0, ptr noundef nonnull %263, i8 noundef zeroext %2)
  br label %266

266:                                              ; preds = %254, %262, %265, %29
  call void @flatten_string_free(ptr noundef nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1304, ptr nonnull %4) #4
  ret void
}

declare void @ED_text_format_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @txtfmt_lua_find_specialvar(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.1, i64 noundef 6) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %86, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.2, i64 noundef 14) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %86, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.3, i64 noundef 6) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %86, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.4, i64 noundef 5) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %86, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.5, i64 noundef 2) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %86, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.6, i64 noundef 7) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %86, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.7, i64 noundef 12) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %86, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.8, i64 noundef 7) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %86, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.9, i64 noundef 6) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %86, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.10, i64 noundef 4) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %86, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.11, i64 noundef 8) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %86, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.12, i64 noundef 10) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %86, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.13, i64 noundef 4) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %86, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.14, i64 noundef 5) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %86, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.15, i64 noundef 5) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %86, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.16, i64 noundef 5) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %86, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.17, i64 noundef 8) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %86, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.18, i64 noundef 6) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %86, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.19, i64 noundef 6) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.20, i64 noundef 6) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %86, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.21, i64 noundef 7) #5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.22, i64 noundef 12) #5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.23, i64 noundef 8) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.24, i64 noundef 8) #5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.25, i64 noundef 4) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.26, i64 noundef 6) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.27, i64 noundef 8) #5
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.28, i64 noundef 6) #5
  %84 = icmp ne i32 %83, 0
  %85 = select i1 %84, i32 0, i32 6
  br label %86

86:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %87 = phi i1 [ false, %1 ], [ false, %4 ], [ false, %7 ], [ false, %10 ], [ false, %13 ], [ false, %16 ], [ false, %19 ], [ false, %22 ], [ false, %25 ], [ false, %28 ], [ false, %31 ], [ false, %34 ], [ false, %37 ], [ false, %40 ], [ false, %43 ], [ false, %46 ], [ false, %49 ], [ false, %52 ], [ false, %55 ], [ false, %58 ], [ false, %61 ], [ false, %64 ], [ false, %67 ], [ false, %70 ], [ false, %73 ], [ false, %76 ], [ false, %79 ], [ %84, %82 ]
  %88 = phi i32 [ 6, %1 ], [ 14, %4 ], [ 6, %7 ], [ 5, %10 ], [ 2, %13 ], [ 7, %16 ], [ 12, %19 ], [ 7, %22 ], [ 6, %25 ], [ 4, %28 ], [ 8, %31 ], [ 10, %34 ], [ 4, %37 ], [ 5, %40 ], [ 5, %43 ], [ 5, %46 ], [ 8, %49 ], [ 6, %52 ], [ 6, %55 ], [ 6, %58 ], [ 7, %61 ], [ 12, %64 ], [ 8, %67 ], [ 8, %70 ], [ 4, %73 ], [ 6, %76 ], [ 8, %79 ], [ %85, %82 ]
  br i1 %87, label %96, label %89

89:                                               ; preds = %86
  %90 = zext nneg i32 %88 to i64
  %91 = getelementptr inbounds i8, ptr %0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !48
  %93 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %92) #4
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i32 %88, i32 -1
  br label %96

96:                                               ; preds = %89, %86
  %97 = phi i32 [ -1, %86 ], [ %95, %89 ]
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @txtfmt_lua_find_keyword(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.29, i64 noundef 3) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %56, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.30, i64 noundef 5) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %56, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.31, i64 noundef 2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.32, i64 noundef 4) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %56, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.34, i64 noundef 3) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.35, i64 noundef 3) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.36, i64 noundef 8) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.37, i64 noundef 2) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.38, i64 noundef 2) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.39, i64 noundef 5) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.40, i64 noundef 3) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.41, i64 noundef 2) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.42, i64 noundef 6) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.43, i64 noundef 6) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.44, i64 noundef 4) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.45, i64 noundef 5) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.46, i64 noundef 5) #5
  %54 = icmp ne i32 %53, 0
  %55 = select i1 %54, i32 0, i32 5
  br label %56

56:                                               ; preds = %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %57 = phi i1 [ false, %1 ], [ false, %4 ], [ false, %7 ], [ false, %10 ], [ false, %13 ], [ false, %16 ], [ false, %19 ], [ false, %22 ], [ false, %25 ], [ false, %28 ], [ false, %31 ], [ false, %34 ], [ false, %37 ], [ false, %40 ], [ false, %43 ], [ false, %46 ], [ false, %49 ], [ %54, %52 ]
  %58 = phi i32 [ 3, %1 ], [ 5, %4 ], [ 2, %7 ], [ 4, %10 ], [ 6, %13 ], [ 3, %16 ], [ 3, %19 ], [ 8, %22 ], [ 2, %25 ], [ 2, %28 ], [ 5, %31 ], [ 3, %34 ], [ 2, %37 ], [ 6, %40 ], [ 6, %43 ], [ 4, %46 ], [ 5, %49 ], [ %55, %52 ]
  br i1 %57, label %66, label %59

59:                                               ; preds = %56
  %60 = zext nneg i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !48
  %63 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %62) #4
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, i32 %58, i32 -1
  br label %66

66:                                               ; preds = %59, %56
  %67 = phi i32 [ -1, %56 ], [ %65, %59 ]
  ret i32 %67
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @text_check_identifier(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

declare i32 @flatten_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @text_check_format_len(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @flatten_string_free(ptr noundef) local_unnamed_addr #1

declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #1

declare void @text_format_fill(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @text_check_digit(i8 noundef zeroext) local_unnamed_addr #1

declare void @text_format_fill_ascii(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @text_check_delim(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 16}
!35 = !{!"TextFormatType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 24}
!40 = !{!35, !36, i64 32}
!41 = !{i32 -1, i32 15}
!42 = !{i32 -1, i32 9}
!43 = !{!44, !36, i64 8}
!44 = !{!"TextLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !45, i64 32, !45, i64 36}
!45 = !{!"int", !37, i64 0}
!46 = !{!44, !36, i64 24}
!47 = !{!36, !36, i64 0}
!48 = !{!37, !37, i64 0}
!49 = !{!44, !36, i64 16}
!50 = !{!51, !36, i64 1280}
!51 = !{!"FlattenString", !37, i64 0, !37, i64 256, !36, i64 1280, !36, i64 1288, !45, i64 1296, !45, i64 1300}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!44, !36, i64 0}
