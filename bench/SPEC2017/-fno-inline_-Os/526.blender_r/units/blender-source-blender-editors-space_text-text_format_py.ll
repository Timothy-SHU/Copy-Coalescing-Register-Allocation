; ModuleID = 'blender/source/blender/editors/space_text/text_format_py.c'
source_filename = "blender/source/blender/editors/space_text/text_format_py.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TextFormatType = type { ptr, ptr, ptr, ptr, ptr }
%struct.FlattenString = type { [256 x i8], [256 x i32], ptr, ptr, i32, i32 }
%struct.TextLine = type { ptr, ptr, ptr, ptr, i32, i32 }

@ED_text_format_register_py.tft = internal global %struct.TextFormatType zeroinitializer, align 8
@ED_text_format_register_py.ext = internal global [2 x ptr] [ptr @.str, ptr null], align 16
@.str = private unnamed_addr constant [3 x i8] c"py\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"except\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"nonlocal\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"raise\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"yield\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"False\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_text_format_register_py() local_unnamed_addr #0 {
  store ptr @txtfmt_py_format_identifier, ptr getelementptr inbounds (%struct.TextFormatType, ptr @ED_text_format_register_py.tft, i64 0, i32 2), align 8, !tbaa !34
  store ptr @txtfmt_py_format_line, ptr getelementptr inbounds (%struct.TextFormatType, ptr @ED_text_format_register_py.tft, i64 0, i32 3), align 8, !tbaa !39
  store ptr @ED_text_format_register_py.ext, ptr getelementptr inbounds (%struct.TextFormatType, ptr @ED_text_format_register_py.tft, i64 0, i32 4), align 8, !tbaa !40
  tail call void @ED_text_format_register(ptr noundef nonnull @ED_text_format_register_py.tft) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @txtfmt_py_format_identifier(ptr nocapture noundef readonly %0) #0 !PGOFuncName !41 {
  %2 = tail call fastcc i32 @txtfmt_py_find_specialvar(ptr noundef %0) #5, !range !42
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @txtfmt_py_find_builtinfunc(ptr noundef %0) #5, !range !43
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @txtfmt_py_find_decorator(ptr noundef %0) #5
  %9 = icmp eq i32 %8, -1
  %10 = select i1 %9, i8 113, i8 114
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i8 [ 118, %1 ], [ 98, %4 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @txtfmt_py_format_line(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !44 {
  %4 = alloca %struct.FlattenString, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 1304, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %7 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TextLine, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #7
  %16 = getelementptr i8, ptr %12, i64 %15
  %17 = getelementptr i8, ptr %16, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !49
  br label %19

19:                                               ; preds = %3, %10, %14
  %20 = phi i8 [ %18, %14 ], [ 0, %10 ], [ 0, %3 ]
  %21 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #7
  %26 = getelementptr i8, ptr %22, i64 %25
  %27 = getelementptr i8, ptr %26, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !49
  br label %29

29:                                               ; preds = %19, %24
  %30 = phi i8 [ %28, %24 ], [ -1, %19 ]
  %31 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = call i32 @flatten_string(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %32) #4
  %34 = getelementptr inbounds %struct.FlattenString, ptr %4, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  store ptr %35, ptr %5, align 8, !tbaa !53
  %36 = call i32 @text_check_format_len(ptr noundef nonnull %1, i32 noundef %33) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %255, label %38

38:                                               ; preds = %29
  %39 = load ptr, ptr %21, align 8, !tbaa !48
  store ptr %39, ptr %6, align 8, !tbaa !53
  %40 = load ptr, ptr %5, align 8, !tbaa !53
  %41 = load i8, ptr %40, align 1, !tbaa !49
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %243, label %43

43:                                               ; preds = %38, %232
  %44 = phi i8 [ %239, %232 ], [ %41, %38 ]
  %45 = phi ptr [ %238, %232 ], [ %40, %38 ]
  %46 = phi i8 [ %235, %232 ], [ 32, %38 ]
  %47 = phi i8 [ %233, %232 ], [ %20, %38 ]
  %48 = icmp eq i8 %44, 92
  br i1 %48, label %49, label %70

49:                                               ; preds = %43, %57
  %50 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 %46, ptr %50, align 1, !tbaa !49
  %51 = load ptr, ptr %6, align 8, !tbaa !53
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %52, ptr %6, align 8, !tbaa !53
  %53 = load ptr, ptr %5, align 8, !tbaa !53
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %54, ptr %5, align 8, !tbaa !53
  %55 = load i8, ptr %54, align 1, !tbaa !49
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %243, label %57

57:                                               ; preds = %49
  store i8 %46, ptr %52, align 1, !tbaa !49
  %58 = load ptr, ptr %6, align 8, !tbaa !53
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %59, ptr %6, align 8, !tbaa !53
  %60 = load ptr, ptr %5, align 8, !tbaa !53
  %61 = call i32 @BLI_str_utf8_size_safe(ptr noundef %60) #4
  %62 = load ptr, ptr %5, align 8, !tbaa !53
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %62, i64 %63
  store ptr %64, ptr %5, align 8, !tbaa !53
  %65 = load i8, ptr %64, align 1, !tbaa !49
  switch i8 %65, label %68 [
    i8 0, label %66
    i8 92, label %49
  ]

66:                                               ; preds = %57
  %67 = load ptr, ptr %6, align 8, !tbaa !53
  br label %243

68:                                               ; preds = %57
  %69 = getelementptr inbounds i8, ptr %62, i64 %63
  br label %70

70:                                               ; preds = %68, %43
  %71 = phi i8 [ %44, %43 ], [ %65, %68 ]
  %72 = phi ptr [ %45, %43 ], [ %69, %68 ]
  %73 = icmp eq i8 %47, 0
  br i1 %73, label %113, label %74

74:                                               ; preds = %70
  %75 = zext i8 %71 to i32
  %76 = zext i8 %47 to i32
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  %79 = and i32 %76, 2
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 39, i32 34
  %82 = icmp eq i32 %81, %75
  br i1 %78, label %102, label %83

83:                                               ; preds = %74
  br i1 %82, label %84, label %104

84:                                               ; preds = %83
  %85 = getelementptr inbounds i8, ptr %72, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !49
  %87 = icmp eq i8 %71, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %72, i64 2
  %90 = load i8, ptr %89, align 1, !tbaa !49
  %91 = icmp eq i8 %71, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 108, ptr %93, align 1, !tbaa !49
  %94 = load ptr, ptr %6, align 8, !tbaa !53
  %95 = getelementptr inbounds i8, ptr %94, i64 1
  store ptr %95, ptr %6, align 8, !tbaa !53
  %96 = load ptr, ptr %5, align 8, !tbaa !53
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %97, ptr %5, align 8, !tbaa !53
  store i8 108, ptr %95, align 1, !tbaa !49
  %98 = load ptr, ptr %6, align 8, !tbaa !53
  %99 = getelementptr inbounds i8, ptr %98, i64 1
  store ptr %99, ptr %6, align 8, !tbaa !53
  %100 = load ptr, ptr %5, align 8, !tbaa !53
  %101 = getelementptr inbounds i8, ptr %100, i64 1
  store ptr %101, ptr %5, align 8, !tbaa !53
  br label %104

102:                                              ; preds = %74
  %103 = select i1 %82, i8 0, i8 %47
  br label %104

104:                                              ; preds = %102, %83, %84, %88, %92
  %105 = phi i8 [ 0, %92 ], [ %47, %88 ], [ %47, %84 ], [ %47, %83 ], [ %103, %102 ]
  %106 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 108, ptr %106, align 1, !tbaa !49
  %107 = load ptr, ptr %5, align 8, !tbaa !53
  %108 = call i32 @BLI_str_utf8_size_safe(ptr noundef %107) #4
  %109 = load ptr, ptr %5, align 8, !tbaa !53
  %110 = sext i32 %108 to i64
  %111 = getelementptr i8, ptr %109, i64 %110
  %112 = getelementptr i8, ptr %111, i64 -1
  store ptr %112, ptr %5, align 8, !tbaa !53
  br label %232

113:                                              ; preds = %70
  switch i8 %71, label %150 [
    i8 35, label %114
    i8 34, label %122
    i8 39, label %122
    i8 32, label %148
  ]

114:                                              ; preds = %113
  %115 = load ptr, ptr %6, align 8, !tbaa !53
  %116 = load ptr, ptr %21, align 8, !tbaa !48
  %117 = ptrtoint ptr %115 to i64
  %118 = ptrtoint ptr %116 to i64
  %119 = sub i64 %118, %117
  %120 = trunc i64 %119 to i32
  %121 = add i32 %33, %120
  call void @text_format_fill(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 35, i32 noundef %121) #4
  br label %232

122:                                              ; preds = %113, %113
  %123 = icmp eq i8 %71, 34
  %124 = select i1 %123, i8 2, i8 1
  %125 = getelementptr inbounds i8, ptr %72, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !49
  %127 = icmp eq i8 %126, %71
  br i1 %127, label %130, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr %6, align 8, !tbaa !53
  br label %145

130:                                              ; preds = %122
  %131 = getelementptr inbounds i8, ptr %72, i64 2
  %132 = load i8, ptr %131, align 1, !tbaa !49
  %133 = icmp eq i8 %132, %71
  %134 = load ptr, ptr %6, align 8, !tbaa !53
  br i1 %133, label %135, label %145

135:                                              ; preds = %130
  store i8 108, ptr %134, align 1, !tbaa !49
  %136 = load ptr, ptr %6, align 8, !tbaa !53
  %137 = getelementptr inbounds i8, ptr %136, i64 1
  store ptr %137, ptr %6, align 8, !tbaa !53
  %138 = load ptr, ptr %5, align 8, !tbaa !53
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %139, ptr %5, align 8, !tbaa !53
  store i8 108, ptr %137, align 1, !tbaa !49
  %140 = load ptr, ptr %6, align 8, !tbaa !53
  %141 = getelementptr inbounds i8, ptr %140, i64 1
  store ptr %141, ptr %6, align 8, !tbaa !53
  %142 = load ptr, ptr %5, align 8, !tbaa !53
  %143 = getelementptr inbounds i8, ptr %142, i64 1
  store ptr %143, ptr %5, align 8, !tbaa !53
  %144 = or disjoint i8 %124, 4
  br label %145

145:                                              ; preds = %128, %135, %130
  %146 = phi ptr [ %141, %135 ], [ %134, %130 ], [ %129, %128 ]
  %147 = phi i8 [ %144, %135 ], [ %124, %130 ], [ %124, %128 ]
  store i8 108, ptr %146, align 1, !tbaa !49
  br label %232

148:                                              ; preds = %113
  %149 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 95, ptr %149, align 1, !tbaa !49
  br label %232

150:                                              ; preds = %113
  %151 = icmp eq i8 %46, 113
  br i1 %151, label %158, label %152

152:                                              ; preds = %150
  %153 = call zeroext i8 @text_check_digit(i8 noundef zeroext %71) #4
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %152
  %156 = load ptr, ptr %5, align 8, !tbaa !53
  %157 = load i8, ptr %156, align 1, !tbaa !49
  br label %158

158:                                              ; preds = %155, %150
  %159 = phi i8 [ %157, %155 ], [ %71, %150 ]
  %160 = phi ptr [ %156, %155 ], [ %72, %150 ]
  %161 = icmp eq i8 %159, 46
  br i1 %161, label %162, label %171

162:                                              ; preds = %158
  %163 = getelementptr inbounds i8, ptr %160, i64 1
  %164 = load i8, ptr %163, align 1, !tbaa !49
  %165 = call zeroext i8 @text_check_digit(i8 noundef zeroext %164) #4
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load ptr, ptr %5, align 8, !tbaa !53
  br label %171

169:                                              ; preds = %162, %152
  %170 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 110, ptr %170, align 1, !tbaa !49
  br label %232

171:                                              ; preds = %167, %158
  %172 = phi ptr [ %168, %167 ], [ %160, %158 ]
  br i1 %151, label %186, label %173

173:                                              ; preds = %171
  %174 = call fastcc i32 @txtfmt_py_find_bool(ptr noundef %172) #5, !range !42
  switch i32 %174, label %177 [
    i32 -1, label %175
    i32 0, label %178
  ]

175:                                              ; preds = %173
  %176 = load ptr, ptr %5, align 8, !tbaa !53
  br label %186

177:                                              ; preds = %173
  call void @text_format_fill_ascii(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 110, i32 noundef %174) #4
  br label %232

178:                                              ; preds = %173
  %179 = load ptr, ptr %5, align 8, !tbaa !53
  %180 = call i32 @BLI_str_utf8_size_safe(ptr noundef %179) #4
  %181 = load ptr, ptr %5, align 8, !tbaa !53
  %182 = sext i32 %180 to i64
  %183 = getelementptr i8, ptr %181, i64 %182
  %184 = getelementptr i8, ptr %183, i64 -1
  store ptr %184, ptr %5, align 8, !tbaa !53
  %185 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 113, ptr %185, align 1, !tbaa !49
  br label %232

186:                                              ; preds = %175, %171
  %187 = phi ptr [ %176, %175 ], [ %172, %171 ]
  %188 = load i8, ptr %187, align 1, !tbaa !49
  %189 = icmp eq i8 %188, 64
  br i1 %189, label %195, label %190

190:                                              ; preds = %186
  %191 = call zeroext i8 @text_check_delim(i8 noundef zeroext %188) #4
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 33, ptr %194, align 1, !tbaa !49
  br label %232

195:                                              ; preds = %190, %186
  %196 = load ptr, ptr %5, align 8, !tbaa !53
  br i1 %151, label %197, label %204

197:                                              ; preds = %195
  %198 = call i32 @BLI_str_utf8_size_safe(ptr noundef %196) #4
  %199 = load ptr, ptr %5, align 8, !tbaa !53
  %200 = sext i32 %198 to i64
  %201 = getelementptr i8, ptr %199, i64 %200
  %202 = getelementptr i8, ptr %201, i64 -1
  store ptr %202, ptr %5, align 8, !tbaa !53
  %203 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 113, ptr %203, align 1, !tbaa !49
  br label %232

204:                                              ; preds = %195
  %205 = call fastcc i32 @txtfmt_py_find_specialvar(ptr noundef %196) #5, !range !42
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load ptr, ptr %5, align 8, !tbaa !53
  %209 = call fastcc i32 @txtfmt_py_find_builtinfunc(ptr noundef %208) #5, !range !43
  %210 = icmp eq i32 %209, -1
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = load ptr, ptr %5, align 8, !tbaa !53
  %213 = call fastcc i32 @txtfmt_py_find_decorator(ptr noundef %212) #5
  %214 = icmp eq i32 %213, -1
  %215 = select i1 %214, i8 %46, i8 100
  br label %216

216:                                              ; preds = %211, %207, %204
  %217 = phi i8 [ 118, %204 ], [ 98, %207 ], [ %215, %211 ]
  %218 = phi i32 [ %205, %204 ], [ %209, %207 ], [ %213, %211 ]
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = icmp eq i8 %217, 100
  br i1 %221, label %222, label %223

222:                                              ; preds = %220
  call void @text_format_fill(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 100, i32 noundef %218) #4
  br label %232

223:                                              ; preds = %220
  call void @text_format_fill_ascii(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %217, i32 noundef %218) #4
  br label %232

224:                                              ; preds = %216
  %225 = load ptr, ptr %5, align 8, !tbaa !53
  %226 = call i32 @BLI_str_utf8_size_safe(ptr noundef %225) #4
  %227 = load ptr, ptr %5, align 8, !tbaa !53
  %228 = sext i32 %226 to i64
  %229 = getelementptr i8, ptr %227, i64 %228
  %230 = getelementptr i8, ptr %229, i64 -1
  store ptr %230, ptr %5, align 8, !tbaa !53
  %231 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 113, ptr %231, align 1, !tbaa !49
  br label %232

232:                                              ; preds = %104, %145, %169, %193, %224, %223, %222, %197, %177, %178, %148, %114
  %233 = phi i8 [ %105, %104 ], [ 0, %114 ], [ %147, %145 ], [ 0, %148 ], [ 0, %169 ], [ 0, %177 ], [ 0, %178 ], [ 0, %193 ], [ 0, %197 ], [ 0, %222 ], [ 0, %223 ], [ 0, %224 ]
  %234 = load ptr, ptr %6, align 8, !tbaa !53
  %235 = load i8, ptr %234, align 1, !tbaa !49
  %236 = getelementptr inbounds i8, ptr %234, i64 1
  store ptr %236, ptr %6, align 8, !tbaa !53
  %237 = load ptr, ptr %5, align 8, !tbaa !53
  %238 = getelementptr inbounds i8, ptr %237, i64 1
  store ptr %238, ptr %5, align 8, !tbaa !53
  %239 = load i8, ptr %238, align 1, !tbaa !49
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %43, !llvm.loop !54

241:                                              ; preds = %232
  %242 = getelementptr inbounds i8, ptr %234, i64 1
  br label %243

243:                                              ; preds = %49, %241, %66, %38
  %244 = phi ptr [ %39, %38 ], [ %67, %66 ], [ %242, %241 ], [ %52, %49 ]
  %245 = phi i8 [ %20, %38 ], [ %47, %66 ], [ %233, %241 ], [ %47, %49 ]
  store i8 0, ptr %244, align 1, !tbaa !49
  %246 = load ptr, ptr %6, align 8, !tbaa !53
  %247 = getelementptr inbounds i8, ptr %246, i64 1
  store ptr %247, ptr %6, align 8, !tbaa !53
  store i8 %245, ptr %247, align 1, !tbaa !49
  %248 = icmp ne i8 %245, %30
  %249 = icmp ne i8 %2, 0
  %250 = and i1 %249, %248
  br i1 %250, label %251, label %255

251:                                              ; preds = %243
  %252 = load ptr, ptr %1, align 8, !tbaa !56
  %253 = icmp eq ptr %252, null
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  call void @txtfmt_py_format_line(ptr noundef %0, ptr noundef nonnull %252, i8 noundef zeroext %2) #5
  br label %255

255:                                              ; preds = %243, %251, %254, %29
  call void @flatten_string_free(ptr noundef nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1304, ptr nonnull %4) #6
  ret void
}

; Function Attrs: optsize
declare void @ED_text_format_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @txtfmt_py_find_specialvar(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !57 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.1, i64 noundef 3) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.2, i64 noundef 5) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1, %4
  %8 = phi i32 [ 5, %4 ], [ 3, %1 ]
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !49
  %12 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %11) #4
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 %8, i32 -1
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -1, %4 ], [ %14, %7 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @txtfmt_py_find_builtinfunc(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !58 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.3, i64 noundef 3) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %85, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.4, i64 noundef 2) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %85, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.5, i64 noundef 6) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %85, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.6, i64 noundef 5) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %85, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.7, i64 noundef 8) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %85, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.8, i64 noundef 3) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %85, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.9, i64 noundef 4) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %85, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.10, i64 noundef 4) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %85, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.11, i64 noundef 6) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %85, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.12, i64 noundef 7) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %85, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.13, i64 noundef 3) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %85, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.14, i64 noundef 4) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %85, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.15, i64 noundef 6) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %85, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.16, i64 noundef 2) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %85, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.17, i64 noundef 6) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %85, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.18, i64 noundef 2) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %85, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.19, i64 noundef 2) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %85, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.20, i64 noundef 6) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.21, i64 noundef 8) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %85, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.22, i64 noundef 3) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.23, i64 noundef 2) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.24, i64 noundef 4) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.25, i64 noundef 5) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.26, i64 noundef 6) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.27, i64 noundef 3) #7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.28, i64 noundef 5) #7
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.29, i64 noundef 4) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.30, i64 noundef 5) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1, %82
  %86 = phi i32 [ 5, %82 ], [ 4, %79 ], [ 5, %76 ], [ 3, %73 ], [ 6, %70 ], [ 5, %67 ], [ 4, %64 ], [ 2, %61 ], [ 3, %58 ], [ 8, %55 ], [ 6, %52 ], [ 2, %49 ], [ 2, %46 ], [ 6, %43 ], [ 2, %40 ], [ 6, %37 ], [ 4, %34 ], [ 3, %31 ], [ 7, %28 ], [ 6, %25 ], [ 4, %22 ], [ 4, %19 ], [ 3, %16 ], [ 8, %13 ], [ 5, %10 ], [ 6, %7 ], [ 2, %4 ], [ 3, %1 ]
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !49
  %90 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %89) #4
  %91 = icmp eq i8 %90, 0
  %92 = select i1 %91, i32 %86, i32 -1
  br label %93

93:                                               ; preds = %85, %82
  %94 = phi i32 [ -1, %82 ], [ %92, %85 ]
  ret i32 %94
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @txtfmt_py_find_decorator(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !59 {
  %2 = load i8, ptr %0, align 1, !tbaa !49
  %3 = icmp eq i8 %2, 64
  br i1 %3, label %4, label %20

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %10, %4 ], [ 1, %1 ]
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !49
  %8 = tail call zeroext i8 @text_check_whitespace(i8 noundef zeroext %7) #4
  %9 = icmp eq i8 %8, 0
  %10 = add nuw i64 %5, 1
  br i1 %9, label %11, label %4, !llvm.loop !60

11:                                               ; preds = %4, %11
  %12 = phi i64 [ %17, %11 ], [ %5, %4 ]
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !49
  %15 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %14) #4
  %16 = icmp eq i8 %15, 0
  %17 = add nuw i64 %12, 1
  br i1 %16, label %18, label %11, !llvm.loop !61

18:                                               ; preds = %11
  %19 = trunc i64 %12 to i32
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ -1, %1 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @text_check_identifier(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @text_check_whitespace(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @flatten_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @text_check_format_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @flatten_string_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @text_format_fill(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @text_check_digit(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @txtfmt_py_find_bool(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !62 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.31, i64 noundef 4) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.32, i64 noundef 4) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.33, i64 noundef 5) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %4, %1, %7
  %11 = phi i32 [ 5, %7 ], [ 4, %1 ], [ 4, %4 ]
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !49
  %15 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %14) #4
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i32 %11, i32 -1
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i32 [ -1, %7 ], [ %17, %10 ]
  ret i32 %19
}

; Function Attrs: optsize
declare void @text_format_fill_ascii(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @text_check_delim(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 16}
!35 = !{!"TextFormatType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 24}
!40 = !{!35, !36, i64 32}
!41 = !{!"text_format_py.c:txtfmt_py_format_identifier"}
!42 = !{i32 -1, i32 6}
!43 = !{i32 -1, i32 9}
!44 = !{!"text_format_py.c:txtfmt_py_format_line"}
!45 = !{!46, !36, i64 8}
!46 = !{!"TextLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !47, i64 32, !47, i64 36}
!47 = !{!"int", !37, i64 0}
!48 = !{!46, !36, i64 24}
!49 = !{!37, !37, i64 0}
!50 = !{!46, !36, i64 16}
!51 = !{!52, !36, i64 1280}
!52 = !{!"FlattenString", !37, i64 0, !37, i64 256, !36, i64 1280, !36, i64 1288, !47, i64 1296, !47, i64 1300}
!53 = !{!36, !36, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!46, !36, i64 0}
!57 = !{!"text_format_py.c:txtfmt_py_find_specialvar"}
!58 = !{!"text_format_py.c:txtfmt_py_find_builtinfunc"}
!59 = !{!"text_format_py.c:txtfmt_py_find_decorator"}
!60 = distinct !{!60, !55}
!61 = distinct !{!61, !55}
!62 = !{!"text_format_py.c:txtfmt_py_find_bool"}
