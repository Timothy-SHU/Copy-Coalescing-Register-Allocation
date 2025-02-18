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

; Function Attrs: nounwind uwtable
define dso_local void @ED_text_format_register_py() local_unnamed_addr #0 {
  store ptr @txtfmt_py_format_identifier, ptr getelementptr inbounds (%struct.TextFormatType, ptr @ED_text_format_register_py.tft, i64 0, i32 2), align 8, !tbaa !34
  store ptr @txtfmt_py_format_line, ptr getelementptr inbounds (%struct.TextFormatType, ptr @ED_text_format_register_py.tft, i64 0, i32 3), align 8, !tbaa !39
  store ptr @ED_text_format_register_py.ext, ptr getelementptr inbounds (%struct.TextFormatType, ptr @ED_text_format_register_py.tft, i64 0, i32 4), align 8, !tbaa !40
  tail call void @ED_text_format_register(ptr noundef nonnull @ED_text_format_register_py.tft) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @txtfmt_py_format_identifier(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.1, i64 noundef 3) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.2, i64 noundef 5) #5
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %6, i64 0, i64 5
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i1 [ false, %1 ], [ %6, %4 ]
  %10 = phi i64 [ 3, %1 ], [ %7, %4 ]
  br i1 %9, label %16, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %0, i64 %10
  %13 = load i8, ptr %12, align 1, !tbaa !41
  %14 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %13) #4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %8, %11
  %17 = tail call fastcc i32 @txtfmt_py_find_builtinfunc(ptr noundef %0), !range !42
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load i8, ptr %0, align 1, !tbaa !41
  %21 = icmp eq i8 %20, 64
  br i1 %21, label %22, label %40

22:                                               ; preds = %19, %22
  %23 = phi i64 [ %28, %22 ], [ 1, %19 ]
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !41
  %26 = tail call zeroext i8 @text_check_whitespace(i8 noundef zeroext %25) #4
  %27 = icmp eq i8 %26, 0
  %28 = add nuw i64 %23, 1
  br i1 %27, label %29, label %22, !llvm.loop !43

29:                                               ; preds = %22, %29
  %30 = phi i64 [ %35, %29 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !41
  %33 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %32) #4
  %34 = icmp eq i8 %33, 0
  %35 = add nuw i64 %30, 1
  br i1 %34, label %36, label %29, !llvm.loop !46

36:                                               ; preds = %29
  %37 = and i64 %30, 4294967295
  %38 = icmp eq i64 %37, 4294967295
  %39 = select i1 %38, i8 113, i8 114
  br label %40

40:                                               ; preds = %36, %19, %16, %11
  %41 = phi i8 [ 118, %11 ], [ 98, %16 ], [ 113, %19 ], [ %39, %36 ]
  ret i8 %41
}

; Function Attrs: nounwind uwtable
define internal void @txtfmt_py_format_line(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca %struct.FlattenString, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 1304, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %7 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TextLine, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  store ptr %12, ptr %6, align 8, !tbaa !51
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #5
  %16 = getelementptr i8, ptr %12, i64 %15
  %17 = getelementptr i8, ptr %16, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !41
  br label %19

19:                                               ; preds = %3, %10, %14
  %20 = phi i8 [ %18, %14 ], [ 0, %10 ], [ 0, %3 ]
  %21 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  store ptr %22, ptr %6, align 8, !tbaa !51
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #5
  %26 = getelementptr i8, ptr %22, i64 %25
  %27 = getelementptr i8, ptr %26, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !41
  br label %29

29:                                               ; preds = %19, %24
  %30 = phi i8 [ %28, %24 ], [ -1, %19 ]
  %31 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = call i32 @flatten_string(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %32) #4
  %34 = getelementptr inbounds %struct.FlattenString, ptr %4, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  store ptr %35, ptr %5, align 8, !tbaa !51
  %36 = call i32 @text_check_format_len(ptr noundef %1, i32 noundef %33) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %303, label %38

38:                                               ; preds = %29
  %39 = load ptr, ptr %21, align 8, !tbaa !50
  store ptr %39, ptr %6, align 8, !tbaa !51
  %40 = load ptr, ptr %5, align 8, !tbaa !51
  %41 = load i8, ptr %40, align 1, !tbaa !41
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %291, label %43

43:                                               ; preds = %38, %282
  %44 = phi i8 [ %289, %282 ], [ %41, %38 ]
  %45 = phi ptr [ %288, %282 ], [ %40, %38 ]
  %46 = phi i8 [ %285, %282 ], [ 32, %38 ]
  %47 = phi i8 [ %283, %282 ], [ %20, %38 ]
  %48 = icmp eq i8 %44, 92
  br i1 %48, label %49, label %68

49:                                               ; preds = %43, %57
  %50 = load ptr, ptr %6, align 8, !tbaa !51
  store i8 %46, ptr %50, align 1, !tbaa !41
  %51 = load ptr, ptr %6, align 8, !tbaa !51
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %52, ptr %6, align 8, !tbaa !51
  %53 = load ptr, ptr %5, align 8, !tbaa !51
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %54, ptr %5, align 8, !tbaa !51
  %55 = load i8, ptr %54, align 1, !tbaa !41
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %291, label %57

57:                                               ; preds = %49
  store i8 %46, ptr %52, align 1, !tbaa !41
  %58 = load ptr, ptr %6, align 8, !tbaa !51
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %59, ptr %6, align 8, !tbaa !51
  %60 = load ptr, ptr %5, align 8, !tbaa !51
  %61 = call i32 @BLI_str_utf8_size_safe(ptr noundef %60) #4
  %62 = load ptr, ptr %5, align 8, !tbaa !51
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %62, i64 %63
  store ptr %64, ptr %5, align 8, !tbaa !51
  %65 = load i8, ptr %64, align 1, !tbaa !41
  switch i8 %65, label %66 [
    i8 0, label %291
    i8 92, label %49
  ]

66:                                               ; preds = %57
  %67 = getelementptr inbounds i8, ptr %62, i64 %63
  br label %68

68:                                               ; preds = %66, %43
  %69 = phi i8 [ %44, %43 ], [ %65, %66 ]
  %70 = phi ptr [ %45, %43 ], [ %67, %66 ]
  %71 = icmp eq i8 %47, 0
  br i1 %71, label %113, label %72

72:                                               ; preds = %68
  %73 = zext i8 %69 to i32
  %74 = zext i8 %47 to i32
  %75 = and i32 %74, 4
  %76 = icmp eq i32 %75, 0
  %77 = and i32 %74, 2
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 39, i32 34
  %80 = icmp eq i32 %79, %73
  br i1 %76, label %102, label %81

81:                                               ; preds = %72
  br i1 %80, label %82, label %104

82:                                               ; preds = %81
  %83 = getelementptr inbounds i8, ptr %70, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !41
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %79, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = getelementptr inbounds i8, ptr %70, i64 2
  %89 = load i8, ptr %88, align 1, !tbaa !41
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %79, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load ptr, ptr %6, align 8, !tbaa !51
  store i8 108, ptr %93, align 1, !tbaa !41
  %94 = load ptr, ptr %6, align 8, !tbaa !51
  %95 = getelementptr inbounds i8, ptr %94, i64 1
  store ptr %95, ptr %6, align 8, !tbaa !51
  %96 = load ptr, ptr %5, align 8, !tbaa !51
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %97, ptr %5, align 8, !tbaa !51
  store i8 108, ptr %95, align 1, !tbaa !41
  %98 = load ptr, ptr %6, align 8, !tbaa !51
  %99 = getelementptr inbounds i8, ptr %98, i64 1
  store ptr %99, ptr %6, align 8, !tbaa !51
  %100 = load ptr, ptr %5, align 8, !tbaa !51
  %101 = getelementptr inbounds i8, ptr %100, i64 1
  store ptr %101, ptr %5, align 8, !tbaa !51
  br label %104

102:                                              ; preds = %72
  %103 = select i1 %80, i8 0, i8 %47
  br label %104

104:                                              ; preds = %102, %81, %82, %87, %92
  %105 = phi i8 [ 0, %92 ], [ %47, %87 ], [ %47, %82 ], [ %47, %81 ], [ %103, %102 ]
  %106 = load ptr, ptr %6, align 8, !tbaa !51
  store i8 108, ptr %106, align 1, !tbaa !41
  %107 = load ptr, ptr %5, align 8, !tbaa !51
  %108 = call i32 @BLI_str_utf8_size_safe(ptr noundef %107) #4
  %109 = load ptr, ptr %5, align 8, !tbaa !51
  %110 = sext i32 %108 to i64
  %111 = getelementptr i8, ptr %109, i64 %110
  %112 = getelementptr i8, ptr %111, i64 -1
  store ptr %112, ptr %5, align 8, !tbaa !51
  br label %282

113:                                              ; preds = %68
  switch i8 %69, label %148 [
    i8 35, label %114
    i8 34, label %122
    i8 39, label %122
    i8 32, label %146
  ]

114:                                              ; preds = %113
  %115 = load ptr, ptr %6, align 8, !tbaa !51
  %116 = load ptr, ptr %21, align 8, !tbaa !50
  %117 = ptrtoint ptr %115 to i64
  %118 = ptrtoint ptr %116 to i64
  %119 = sub i64 %118, %117
  %120 = trunc i64 %119 to i32
  %121 = add i32 %33, %120
  call void @text_format_fill(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 35, i32 noundef %121) #4
  br label %282

122:                                              ; preds = %113, %113
  %123 = icmp eq i8 %69, 34
  %124 = select i1 %123, i8 2, i8 1
  %125 = getelementptr inbounds i8, ptr %70, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !41
  %127 = icmp eq i8 %126, %69
  br i1 %127, label %128, label %143

128:                                              ; preds = %122
  %129 = getelementptr inbounds i8, ptr %70, i64 2
  %130 = load i8, ptr %129, align 1, !tbaa !41
  %131 = icmp eq i8 %130, %69
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load ptr, ptr %6, align 8, !tbaa !51
  store i8 108, ptr %133, align 1, !tbaa !41
  %134 = load ptr, ptr %6, align 8, !tbaa !51
  %135 = getelementptr inbounds i8, ptr %134, i64 1
  store ptr %135, ptr %6, align 8, !tbaa !51
  %136 = load ptr, ptr %5, align 8, !tbaa !51
  %137 = getelementptr inbounds i8, ptr %136, i64 1
  store ptr %137, ptr %5, align 8, !tbaa !51
  store i8 108, ptr %135, align 1, !tbaa !41
  %138 = load ptr, ptr %6, align 8, !tbaa !51
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %139, ptr %6, align 8, !tbaa !51
  %140 = load ptr, ptr %5, align 8, !tbaa !51
  %141 = getelementptr inbounds i8, ptr %140, i64 1
  store ptr %141, ptr %5, align 8, !tbaa !51
  %142 = or disjoint i8 %124, 4
  br label %143

143:                                              ; preds = %132, %128, %122
  %144 = phi i8 [ %142, %132 ], [ %124, %128 ], [ %124, %122 ]
  %145 = load ptr, ptr %6, align 8, !tbaa !51
  store i8 108, ptr %145, align 1, !tbaa !41
  br label %282

146:                                              ; preds = %113
  %147 = load ptr, ptr %6, align 8, !tbaa !51
  store i8 95, ptr %147, align 1, !tbaa !41
  br label %282

148:                                              ; preds = %113
  %149 = icmp eq i8 %46, 113
  br i1 %149, label %153, label %150

150:                                              ; preds = %148
  %151 = call zeroext i8 @text_check_digit(i8 noundef zeroext %69) #4
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %150, %148
  %154 = load ptr, ptr %5, align 8, !tbaa !51
  %155 = load i8, ptr %154, align 1, !tbaa !41
  %156 = icmp eq i8 %155, 46
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = getelementptr inbounds i8, ptr %154, i64 1
  %159 = load i8, ptr %158, align 1, !tbaa !41
  %160 = call zeroext i8 @text_check_digit(i8 noundef zeroext %159) #4
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %157, %150
  %163 = load ptr, ptr %6, align 8, !tbaa !51
  store i8 110, ptr %163, align 1, !tbaa !41
  br label %282

164:                                              ; preds = %157, %153
  br i1 %149, label %200, label %165

165:                                              ; preds = %164
  %166 = load ptr, ptr %5, align 8, !tbaa !51
  %167 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %166, ptr noundef nonnull dereferenceable(5) @.str.31, i64 noundef 4) #5
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %165
  %170 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %166, ptr noundef nonnull dereferenceable(5) @.str.32, i64 noundef 4) #5
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %169
  %173 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %166, ptr noundef nonnull dereferenceable(6) @.str.33, i64 noundef 5) #5
  %174 = icmp ne i32 %173, 0
  %175 = select i1 %174, i32 0, i32 5
  br label %176

176:                                              ; preds = %172, %169, %165
  %177 = phi i1 [ false, %165 ], [ false, %169 ], [ %174, %172 ]
  %178 = phi i32 [ 4, %165 ], [ 4, %169 ], [ %175, %172 ]
  br i1 %177, label %186, label %179

179:                                              ; preds = %176
  %180 = zext nneg i32 %178 to i64
  %181 = getelementptr inbounds i8, ptr %166, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !41
  %183 = call zeroext i8 @text_check_identifier(i8 noundef zeroext %182) #4
  %184 = icmp eq i8 %183, 0
  %185 = select i1 %184, i32 %178, i32 -1
  br label %186

186:                                              ; preds = %176, %179
  %187 = phi i32 [ -1, %176 ], [ %185, %179 ]
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %200, label %189

189:                                              ; preds = %186
  %190 = icmp sgt i32 %187, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %189
  call void @text_format_fill_ascii(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 110, i32 noundef %187) #4
  br label %282

192:                                              ; preds = %189
  %193 = load ptr, ptr %5, align 8, !tbaa !51
  %194 = call i32 @BLI_str_utf8_size_safe(ptr noundef %193) #4
  %195 = load ptr, ptr %5, align 8, !tbaa !51
  %196 = sext i32 %194 to i64
  %197 = getelementptr i8, ptr %195, i64 %196
  %198 = getelementptr i8, ptr %197, i64 -1
  store ptr %198, ptr %5, align 8, !tbaa !51
  %199 = load ptr, ptr %6, align 8, !tbaa !51
  store i8 113, ptr %199, align 1, !tbaa !41
  br label %282

200:                                              ; preds = %186, %164
  %201 = load ptr, ptr %5, align 8, !tbaa !51
  %202 = load i8, ptr %201, align 1, !tbaa !41
  %203 = icmp eq i8 %202, 64
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  %205 = call zeroext i8 @text_check_delim(i8 noundef zeroext %202) #4
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr %6, align 8, !tbaa !51
  store i8 33, ptr %208, align 1, !tbaa !41
  br label %282

209:                                              ; preds = %204, %200
  %210 = load ptr, ptr %5, align 8, !tbaa !51
  br i1 %149, label %211, label %218

211:                                              ; preds = %209
  %212 = call i32 @BLI_str_utf8_size_safe(ptr noundef %210) #4
  %213 = load ptr, ptr %5, align 8, !tbaa !51
  %214 = sext i32 %212 to i64
  %215 = getelementptr i8, ptr %213, i64 %214
  %216 = getelementptr i8, ptr %215, i64 -1
  store ptr %216, ptr %5, align 8, !tbaa !51
  %217 = load ptr, ptr %6, align 8, !tbaa !51
  store i8 113, ptr %217, align 1, !tbaa !41
  br label %282

218:                                              ; preds = %209
  %219 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %210, ptr noundef nonnull dereferenceable(4) @.str.1, i64 noundef 3) #5
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %218
  %222 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %210, ptr noundef nonnull dereferenceable(6) @.str.2, i64 noundef 5) #5
  %223 = icmp ne i32 %222, 0
  %224 = select i1 %223, i32 0, i32 5
  br label %225

225:                                              ; preds = %221, %218
  %226 = phi i1 [ false, %218 ], [ %223, %221 ]
  %227 = phi i32 [ 3, %218 ], [ %224, %221 ]
  br i1 %226, label %235, label %228

228:                                              ; preds = %225
  %229 = zext nneg i32 %227 to i64
  %230 = getelementptr inbounds i8, ptr %210, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !41
  %232 = call zeroext i8 @text_check_identifier(i8 noundef zeroext %231) #4
  %233 = icmp eq i8 %232, 0
  %234 = select i1 %233, i32 %227, i32 -1
  br label %235

235:                                              ; preds = %225, %228
  %236 = phi i32 [ -1, %225 ], [ %234, %228 ]
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %238, label %266

238:                                              ; preds = %235
  %239 = load ptr, ptr %5, align 8, !tbaa !51
  %240 = call fastcc i32 @txtfmt_py_find_builtinfunc(ptr noundef %239), !range !42
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %242, label %266

242:                                              ; preds = %238
  %243 = load ptr, ptr %5, align 8, !tbaa !51
  %244 = load i8, ptr %243, align 1, !tbaa !41
  %245 = icmp eq i8 %244, 64
  br i1 %245, label %246, label %262

246:                                              ; preds = %242, %246
  %247 = phi i64 [ %252, %246 ], [ 1, %242 ]
  %248 = getelementptr inbounds i8, ptr %243, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !41
  %250 = call zeroext i8 @text_check_whitespace(i8 noundef zeroext %249) #4
  %251 = icmp eq i8 %250, 0
  %252 = add nuw i64 %247, 1
  br i1 %251, label %253, label %246, !llvm.loop !43

253:                                              ; preds = %246, %253
  %254 = phi i64 [ %259, %253 ], [ %247, %246 ]
  %255 = getelementptr inbounds i8, ptr %243, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !41
  %257 = call zeroext i8 @text_check_identifier(i8 noundef zeroext %256) #4
  %258 = icmp eq i8 %257, 0
  %259 = add nuw i64 %254, 1
  br i1 %258, label %260, label %253, !llvm.loop !46

260:                                              ; preds = %253
  %261 = trunc i64 %254 to i32
  br label %262

262:                                              ; preds = %242, %260
  %263 = phi i32 [ -1, %242 ], [ %261, %260 ]
  %264 = icmp eq i32 %263, -1
  %265 = select i1 %264, i8 %46, i8 100
  br label %266

266:                                              ; preds = %262, %238, %235
  %267 = phi i8 [ 118, %235 ], [ 98, %238 ], [ %265, %262 ]
  %268 = phi i32 [ %236, %235 ], [ %240, %238 ], [ %263, %262 ]
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %266
  %271 = icmp eq i8 %267, 100
  br i1 %271, label %272, label %273

272:                                              ; preds = %270
  call void @text_format_fill(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %267, i32 noundef %268) #4
  br label %282

273:                                              ; preds = %270
  call void @text_format_fill_ascii(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %267, i32 noundef %268) #4
  br label %282

274:                                              ; preds = %266
  %275 = load ptr, ptr %5, align 8, !tbaa !51
  %276 = call i32 @BLI_str_utf8_size_safe(ptr noundef %275) #4
  %277 = load ptr, ptr %5, align 8, !tbaa !51
  %278 = sext i32 %276 to i64
  %279 = getelementptr i8, ptr %277, i64 %278
  %280 = getelementptr i8, ptr %279, i64 -1
  store ptr %280, ptr %5, align 8, !tbaa !51
  %281 = load ptr, ptr %6, align 8, !tbaa !51
  store i8 113, ptr %281, align 1, !tbaa !41
  br label %282

282:                                              ; preds = %104, %143, %162, %207, %274, %273, %272, %211, %191, %192, %146, %114
  %283 = phi i8 [ %105, %104 ], [ 0, %114 ], [ %144, %143 ], [ 0, %146 ], [ 0, %162 ], [ 0, %191 ], [ 0, %192 ], [ 0, %207 ], [ 0, %211 ], [ 0, %272 ], [ 0, %273 ], [ 0, %274 ]
  %284 = load ptr, ptr %6, align 8, !tbaa !51
  %285 = load i8, ptr %284, align 1, !tbaa !41
  %286 = getelementptr inbounds i8, ptr %284, i64 1
  store ptr %286, ptr %6, align 8, !tbaa !51
  %287 = load ptr, ptr %5, align 8, !tbaa !51
  %288 = getelementptr inbounds i8, ptr %287, i64 1
  store ptr %288, ptr %5, align 8, !tbaa !51
  %289 = load i8, ptr %288, align 1, !tbaa !41
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %43, !llvm.loop !55

291:                                              ; preds = %282, %49, %57, %38
  %292 = phi i8 [ %20, %38 ], [ %47, %57 ], [ %47, %49 ], [ %283, %282 ]
  %293 = load ptr, ptr %6, align 8, !tbaa !51
  store i8 0, ptr %293, align 1, !tbaa !41
  %294 = load ptr, ptr %6, align 8, !tbaa !51
  %295 = getelementptr inbounds i8, ptr %294, i64 1
  store ptr %295, ptr %6, align 8, !tbaa !51
  store i8 %292, ptr %295, align 1, !tbaa !41
  %296 = icmp ne i8 %292, %30
  %297 = icmp ne i8 %2, 0
  %298 = and i1 %297, %296
  br i1 %298, label %299, label %303

299:                                              ; preds = %291
  %300 = load ptr, ptr %1, align 8, !tbaa !56
  %301 = icmp eq ptr %300, null
  br i1 %301, label %303, label %302

302:                                              ; preds = %299
  call void @txtfmt_py_format_line(ptr noundef %0, ptr noundef nonnull %300, i8 noundef zeroext %2)
  br label %303

303:                                              ; preds = %291, %299, %302, %29
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
define internal fastcc i32 @txtfmt_py_find_builtinfunc(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.3, i64 noundef 3) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %86, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.4, i64 noundef 2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %86, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.5, i64 noundef 6) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %86, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.6, i64 noundef 5) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %86, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.7, i64 noundef 8) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %86, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.8, i64 noundef 3) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %86, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.9, i64 noundef 4) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %86, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.10, i64 noundef 4) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %86, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.11, i64 noundef 6) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %86, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.12, i64 noundef 7) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %86, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.13, i64 noundef 3) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %86, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.14, i64 noundef 4) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %86, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.15, i64 noundef 6) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %86, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.16, i64 noundef 2) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %86, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.17, i64 noundef 6) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %86, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.18, i64 noundef 2) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %86, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.19, i64 noundef 2) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %86, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.20, i64 noundef 6) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %86, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.21, i64 noundef 8) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.22, i64 noundef 3) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %86, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.23, i64 noundef 2) #5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.24, i64 noundef 4) #5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.25, i64 noundef 5) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.26, i64 noundef 6) #5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.27, i64 noundef 3) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.28, i64 noundef 5) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.29, i64 noundef 4) #5
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.30, i64 noundef 5) #5
  %84 = icmp ne i32 %83, 0
  %85 = select i1 %84, i32 0, i32 5
  br label %86

86:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %87 = phi i1 [ false, %1 ], [ false, %4 ], [ false, %7 ], [ false, %10 ], [ false, %13 ], [ false, %16 ], [ false, %19 ], [ false, %22 ], [ false, %25 ], [ false, %28 ], [ false, %31 ], [ false, %34 ], [ false, %37 ], [ false, %40 ], [ false, %43 ], [ false, %46 ], [ false, %49 ], [ false, %52 ], [ false, %55 ], [ false, %58 ], [ false, %61 ], [ false, %64 ], [ false, %67 ], [ false, %70 ], [ false, %73 ], [ false, %76 ], [ false, %79 ], [ %84, %82 ]
  %88 = phi i32 [ 3, %1 ], [ 2, %4 ], [ 6, %7 ], [ 5, %10 ], [ 8, %13 ], [ 3, %16 ], [ 4, %19 ], [ 4, %22 ], [ 6, %25 ], [ 7, %28 ], [ 3, %31 ], [ 4, %34 ], [ 6, %37 ], [ 2, %40 ], [ 6, %43 ], [ 2, %46 ], [ 2, %49 ], [ 6, %52 ], [ 8, %55 ], [ 3, %58 ], [ 2, %61 ], [ 4, %64 ], [ 5, %67 ], [ 6, %70 ], [ 3, %73 ], [ 5, %76 ], [ 4, %79 ], [ %85, %82 ]
  br i1 %87, label %96, label %89

89:                                               ; preds = %86
  %90 = zext nneg i32 %88 to i64
  %91 = getelementptr inbounds i8, ptr %0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !41
  %93 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %92) #4
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i32 %88, i32 -1
  br label %96

96:                                               ; preds = %89, %86
  %97 = phi i32 [ -1, %86 ], [ %95, %89 ]
  ret i32 %97
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @text_check_identifier(i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @text_check_whitespace(i8 noundef zeroext) local_unnamed_addr #1

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
!41 = !{!37, !37, i64 0}
!42 = !{i32 -1, i32 9}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !44, !45}
!47 = !{!48, !36, i64 8}
!48 = !{!"TextLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !49, i64 32, !49, i64 36}
!49 = !{!"int", !37, i64 0}
!50 = !{!48, !36, i64 24}
!51 = !{!36, !36, i64 0}
!52 = !{!48, !36, i64 16}
!53 = !{!54, !36, i64 1280}
!54 = !{!"FlattenString", !37, i64 0, !37, i64 256, !36, i64 1280, !36, i64 1288, !49, i64 1296, !49, i64 1300}
!55 = distinct !{!55, !44, !45}
!56 = !{!48, !36, i64 0}
