; ModuleID = 'blender/source/blender/editors/space_text/text_format_osl.c'
source_filename = "blender/source/blender/editors/space_text/text_format_osl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TextFormatType = type { ptr, ptr, ptr, ptr, ptr }
%struct.FlattenString = type { [256 x i8], [256 x i32], ptr, ptr, i32, i32 }
%struct.TextLine = type { ptr, ptr, ptr, ptr, i32, i32 }

@ED_text_format_register_osl.tft = internal global %struct.TextFormatType zeroinitializer, align 8
@ED_text_format_register_osl.ext = internal global [2 x ptr] [ptr @.str, ptr null], align 16
@.str = private unnamed_addr constant [4 x i8] c"osl\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"shader\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"surface\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"displacement\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"closure\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"emit\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"illuminance\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"illuminate\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"friend\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"varying\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_text_format_register_osl() local_unnamed_addr #0 {
  store ptr @txtfmt_osl_format_identifier, ptr getelementptr inbounds (%struct.TextFormatType, ptr @ED_text_format_register_osl.tft, i64 0, i32 2), align 8, !tbaa !34
  store ptr @txtfmt_osl_format_line, ptr getelementptr inbounds (%struct.TextFormatType, ptr @ED_text_format_register_osl.tft, i64 0, i32 3), align 8, !tbaa !39
  store ptr @ED_text_format_register_osl.ext, ptr getelementptr inbounds (%struct.TextFormatType, ptr @ED_text_format_register_osl.tft, i64 0, i32 4), align 8, !tbaa !40
  tail call void @ED_text_format_register(ptr noundef nonnull @ED_text_format_register_osl.tft) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @txtfmt_osl_format_identifier(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @txtfmt_osl_find_specialvar(ptr noundef %0), !range !41
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %31

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @txtfmt_osl_find_builtinfunc(ptr noundef %0), !range !42
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @txtfmt_osl_find_reserved(ptr noundef %0), !range !43
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i8, ptr %0, align 1, !tbaa !44
  %12 = icmp eq i8 %11, 35
  br i1 %12, label %13, label %31

13:                                               ; preds = %10, %13
  %14 = phi i64 [ %19, %13 ], [ 1, %10 ]
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !44
  %17 = tail call zeroext i8 @text_check_whitespace(i8 noundef zeroext %16) #4
  %18 = icmp eq i8 %17, 0
  %19 = add nuw i64 %14, 1
  br i1 %18, label %20, label %13, !llvm.loop !45

20:                                               ; preds = %13, %20
  %21 = phi i64 [ %26, %20 ], [ %14, %13 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !44
  %24 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %23) #4
  %25 = icmp eq i8 %24, 0
  %26 = add nuw i64 %21, 1
  br i1 %25, label %27, label %20, !llvm.loop !48

27:                                               ; preds = %20
  %28 = and i64 %21, 4294967295
  %29 = icmp eq i64 %28, 4294967295
  %30 = select i1 %29, i8 113, i8 100
  br label %31

31:                                               ; preds = %27, %10, %7, %4, %1
  %32 = phi i8 [ 118, %1 ], [ 98, %4 ], [ 114, %7 ], [ 113, %10 ], [ %30, %27 ]
  ret i8 %32
}

; Function Attrs: nounwind uwtable
define internal void @txtfmt_osl_format_line(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca %struct.FlattenString, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 1304, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %7 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TextLine, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  store ptr %12, ptr %6, align 8, !tbaa !53
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #5
  %16 = getelementptr i8, ptr %12, i64 %15
  %17 = getelementptr i8, ptr %16, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !44
  br label %19

19:                                               ; preds = %3, %10, %14
  %20 = phi i8 [ %18, %14 ], [ 0, %10 ], [ 0, %3 ]
  %21 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  store ptr %22, ptr %6, align 8, !tbaa !53
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #5
  %26 = getelementptr i8, ptr %22, i64 %25
  %27 = getelementptr i8, ptr %26, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !44
  br label %29

29:                                               ; preds = %19, %24
  %30 = phi i8 [ %28, %24 ], [ -1, %19 ]
  %31 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = call i32 @flatten_string(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %32) #4
  %34 = getelementptr inbounds %struct.FlattenString, ptr %4, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  store ptr %35, ptr %5, align 8, !tbaa !53
  %36 = call i32 @text_check_format_len(ptr noundef %1, i32 noundef %33) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %244, label %38

38:                                               ; preds = %29
  %39 = load ptr, ptr %21, align 8, !tbaa !52
  store ptr %39, ptr %6, align 8, !tbaa !53
  %40 = load ptr, ptr %5, align 8, !tbaa !53
  %41 = load i8, ptr %40, align 1, !tbaa !44
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %232, label %43

43:                                               ; preds = %38, %223
  %44 = phi i8 [ %230, %223 ], [ %41, %38 ]
  %45 = phi ptr [ %229, %223 ], [ %40, %38 ]
  %46 = phi i8 [ %226, %223 ], [ 32, %38 ]
  %47 = phi i8 [ %224, %223 ], [ %20, %38 ]
  %48 = icmp eq i8 %44, 92
  br i1 %48, label %49, label %68

49:                                               ; preds = %43, %57
  %50 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 %46, ptr %50, align 1, !tbaa !44
  %51 = load ptr, ptr %6, align 8, !tbaa !53
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %52, ptr %6, align 8, !tbaa !53
  %53 = load ptr, ptr %5, align 8, !tbaa !53
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %54, ptr %5, align 8, !tbaa !53
  %55 = load i8, ptr %54, align 1, !tbaa !44
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %232, label %57

57:                                               ; preds = %49
  store i8 %46, ptr %52, align 1, !tbaa !44
  %58 = load ptr, ptr %6, align 8, !tbaa !53
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %59, ptr %6, align 8, !tbaa !53
  %60 = load ptr, ptr %5, align 8, !tbaa !53
  %61 = call i32 @BLI_str_utf8_size_safe(ptr noundef %60) #4
  %62 = load ptr, ptr %5, align 8, !tbaa !53
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %62, i64 %63
  store ptr %64, ptr %5, align 8, !tbaa !53
  %65 = load i8, ptr %64, align 1, !tbaa !44
  switch i8 %65, label %66 [
    i8 0, label %232
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
  %78 = icmp eq i8 %69, 42
  br i1 %78, label %79, label %89

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %70, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !44
  %82 = icmp eq i8 %81, 47
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 35, ptr %84, align 1, !tbaa !44
  %85 = load ptr, ptr %6, align 8, !tbaa !53
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  store ptr %86, ptr %6, align 8, !tbaa !53
  %87 = load ptr, ptr %5, align 8, !tbaa !53
  %88 = getelementptr inbounds i8, ptr %87, i64 1
  store ptr %88, ptr %5, align 8, !tbaa !53
  store i8 35, ptr %86, align 1, !tbaa !44
  br label %98

89:                                               ; preds = %79, %77
  %90 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 35, ptr %90, align 1, !tbaa !44
  br label %98

91:                                               ; preds = %73
  %92 = and i32 %74, 2
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 39, i32 34
  %95 = icmp eq i32 %94, %71
  %96 = select i1 %95, i8 0, i8 %47
  %97 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 108, ptr %97, align 1, !tbaa !44
  br label %98

98:                                               ; preds = %83, %89, %91
  %99 = phi i8 [ 0, %83 ], [ %47, %89 ], [ %96, %91 ]
  %100 = load ptr, ptr %5, align 8, !tbaa !53
  %101 = call i32 @BLI_str_utf8_size_safe(ptr noundef %100) #4
  %102 = load ptr, ptr %5, align 8, !tbaa !53
  %103 = sext i32 %101 to i64
  %104 = getelementptr i8, ptr %102, i64 %103
  %105 = getelementptr i8, ptr %104, i64 -1
  store ptr %105, ptr %5, align 8, !tbaa !53
  br label %223

106:                                              ; preds = %68
  %107 = icmp eq i8 %69, 47
  br i1 %107, label %108, label %131

108:                                              ; preds = %106
  %109 = getelementptr inbounds i8, ptr %70, i64 1
  %110 = load i8, ptr %109, align 1, !tbaa !44
  %111 = icmp eq i8 %110, 47
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load ptr, ptr %6, align 8, !tbaa !53
  %114 = load ptr, ptr %21, align 8, !tbaa !52
  %115 = ptrtoint ptr %113 to i64
  %116 = ptrtoint ptr %114 to i64
  %117 = sub i64 %116, %115
  %118 = trunc i64 %117 to i32
  %119 = add i32 %33, %118
  call void @text_format_fill(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 35, i32 noundef %119) #4
  br label %223

120:                                              ; preds = %108
  br i1 %107, label %121, label %131

121:                                              ; preds = %120
  %122 = getelementptr inbounds i8, ptr %70, i64 1
  %123 = load i8, ptr %122, align 1, !tbaa !44
  %124 = icmp eq i8 %123, 42
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 35, ptr %126, align 1, !tbaa !44
  %127 = load ptr, ptr %6, align 8, !tbaa !53
  %128 = getelementptr inbounds i8, ptr %127, i64 1
  store ptr %128, ptr %6, align 8, !tbaa !53
  %129 = load ptr, ptr %5, align 8, !tbaa !53
  %130 = getelementptr inbounds i8, ptr %129, i64 1
  store ptr %130, ptr %5, align 8, !tbaa !53
  store i8 35, ptr %128, align 1, !tbaa !44
  br label %223

131:                                              ; preds = %106, %121, %120
  switch i8 %69, label %138 [
    i8 34, label %132
    i8 39, label %132
    i8 32, label %136
  ]

132:                                              ; preds = %131, %131
  %133 = icmp eq i8 %69, 34
  %134 = select i1 %133, i8 2, i8 1
  %135 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 108, ptr %135, align 1, !tbaa !44
  br label %223

136:                                              ; preds = %131
  %137 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 95, ptr %137, align 1, !tbaa !44
  br label %223

138:                                              ; preds = %131
  %139 = icmp eq i8 %46, 113
  br i1 %139, label %143, label %140

140:                                              ; preds = %138
  %141 = call zeroext i8 @text_check_digit(i8 noundef zeroext %69) #4
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %140, %138
  %144 = load ptr, ptr %5, align 8, !tbaa !53
  %145 = load i8, ptr %144, align 1, !tbaa !44
  %146 = icmp eq i8 %145, 46
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = getelementptr inbounds i8, ptr %144, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !44
  %150 = call zeroext i8 @text_check_digit(i8 noundef zeroext %149) #4
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %147, %140
  %153 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 110, ptr %153, align 1, !tbaa !44
  br label %223

154:                                              ; preds = %147, %143
  %155 = load ptr, ptr %5, align 8, !tbaa !53
  %156 = load i8, ptr %155, align 1, !tbaa !44
  %157 = icmp eq i8 %156, 35
  br i1 %157, label %163, label %158

158:                                              ; preds = %154
  %159 = call zeroext i8 @text_check_delim(i8 noundef zeroext %156) #4
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 33, ptr %162, align 1, !tbaa !44
  br label %223

163:                                              ; preds = %158, %154
  %164 = load ptr, ptr %5, align 8, !tbaa !53
  br i1 %139, label %165, label %172

165:                                              ; preds = %163
  %166 = call i32 @BLI_str_utf8_size_safe(ptr noundef %164) #4
  %167 = load ptr, ptr %5, align 8, !tbaa !53
  %168 = sext i32 %166 to i64
  %169 = getelementptr i8, ptr %167, i64 %168
  %170 = getelementptr i8, ptr %169, i64 -1
  store ptr %170, ptr %5, align 8, !tbaa !53
  %171 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 113, ptr %171, align 1, !tbaa !44
  br label %223

172:                                              ; preds = %163
  %173 = call fastcc i32 @txtfmt_osl_find_specialvar(ptr noundef %164), !range !41
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %207

175:                                              ; preds = %172
  %176 = load ptr, ptr %5, align 8, !tbaa !53
  %177 = call fastcc i32 @txtfmt_osl_find_builtinfunc(ptr noundef %176), !range !42
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %207

179:                                              ; preds = %175
  %180 = load ptr, ptr %5, align 8, !tbaa !53
  %181 = call fastcc i32 @txtfmt_osl_find_reserved(ptr noundef %180), !range !43
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %207

183:                                              ; preds = %179
  %184 = load ptr, ptr %5, align 8, !tbaa !53
  %185 = load i8, ptr %184, align 1, !tbaa !44
  %186 = icmp eq i8 %185, 35
  br i1 %186, label %187, label %203

187:                                              ; preds = %183, %187
  %188 = phi i64 [ %193, %187 ], [ 1, %183 ]
  %189 = getelementptr inbounds i8, ptr %184, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !44
  %191 = call zeroext i8 @text_check_whitespace(i8 noundef zeroext %190) #4
  %192 = icmp eq i8 %191, 0
  %193 = add nuw i64 %188, 1
  br i1 %192, label %194, label %187, !llvm.loop !45

194:                                              ; preds = %187, %194
  %195 = phi i64 [ %200, %194 ], [ %188, %187 ]
  %196 = getelementptr inbounds i8, ptr %184, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !44
  %198 = call zeroext i8 @text_check_identifier(i8 noundef zeroext %197) #4
  %199 = icmp eq i8 %198, 0
  %200 = add nuw i64 %195, 1
  br i1 %199, label %201, label %194, !llvm.loop !48

201:                                              ; preds = %194
  %202 = trunc i64 %195 to i32
  br label %203

203:                                              ; preds = %183, %201
  %204 = phi i32 [ -1, %183 ], [ %202, %201 ]
  %205 = icmp eq i32 %204, -1
  %206 = select i1 %205, i8 %46, i8 100
  br label %207

207:                                              ; preds = %203, %179, %175, %172
  %208 = phi i8 [ 118, %172 ], [ 98, %175 ], [ 114, %179 ], [ %206, %203 ]
  %209 = phi i32 [ %173, %172 ], [ %177, %175 ], [ %181, %179 ], [ %204, %203 ]
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = icmp eq i8 %208, 100
  br i1 %212, label %213, label %214

213:                                              ; preds = %211
  call void @text_format_fill(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %208, i32 noundef %209) #4
  br label %223

214:                                              ; preds = %211
  call void @text_format_fill_ascii(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %208, i32 noundef %209) #4
  br label %223

215:                                              ; preds = %207
  %216 = load ptr, ptr %5, align 8, !tbaa !53
  %217 = call i32 @BLI_str_utf8_size_safe(ptr noundef %216) #4
  %218 = load ptr, ptr %5, align 8, !tbaa !53
  %219 = sext i32 %217 to i64
  %220 = getelementptr i8, ptr %218, i64 %219
  %221 = getelementptr i8, ptr %220, i64 -1
  store ptr %221, ptr %5, align 8, !tbaa !53
  %222 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 113, ptr %222, align 1, !tbaa !44
  br label %223

223:                                              ; preds = %98, %125, %136, %161, %215, %214, %213, %165, %152, %132, %112
  %224 = phi i8 [ %99, %98 ], [ 0, %112 ], [ 8, %125 ], [ %134, %132 ], [ 0, %136 ], [ 0, %152 ], [ 0, %161 ], [ 0, %165 ], [ 0, %213 ], [ 0, %214 ], [ 0, %215 ]
  %225 = load ptr, ptr %6, align 8, !tbaa !53
  %226 = load i8, ptr %225, align 1, !tbaa !44
  %227 = getelementptr inbounds i8, ptr %225, i64 1
  store ptr %227, ptr %6, align 8, !tbaa !53
  %228 = load ptr, ptr %5, align 8, !tbaa !53
  %229 = getelementptr inbounds i8, ptr %228, i64 1
  store ptr %229, ptr %5, align 8, !tbaa !53
  %230 = load i8, ptr %229, align 1, !tbaa !44
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %43, !llvm.loop !57

232:                                              ; preds = %223, %49, %57, %38
  %233 = phi i8 [ %20, %38 ], [ %47, %57 ], [ %47, %49 ], [ %224, %223 ]
  %234 = load ptr, ptr %6, align 8, !tbaa !53
  store i8 0, ptr %234, align 1, !tbaa !44
  %235 = load ptr, ptr %6, align 8, !tbaa !53
  %236 = getelementptr inbounds i8, ptr %235, i64 1
  store ptr %236, ptr %6, align 8, !tbaa !53
  store i8 %233, ptr %236, align 1, !tbaa !44
  %237 = icmp ne i8 %233, %30
  %238 = icmp ne i8 %2, 0
  %239 = and i1 %238, %237
  br i1 %239, label %240, label %244

240:                                              ; preds = %232
  %241 = load ptr, ptr %1, align 8, !tbaa !58
  %242 = icmp eq ptr %241, null
  br i1 %242, label %244, label %243

243:                                              ; preds = %240
  call void @txtfmt_osl_format_line(ptr noundef %0, ptr noundef nonnull %241, i8 noundef zeroext %2)
  br label %244

244:                                              ; preds = %232, %240, %243, %29
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
define internal fastcc i32 @txtfmt_osl_find_specialvar(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.1, i64 noundef 6) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.2, i64 noundef 7) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.3, i64 noundef 6) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.4, i64 noundef 12) #5
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %12, i32 0, i32 12
  br label %14

14:                                               ; preds = %10, %7, %4, %1
  %15 = phi i1 [ false, %1 ], [ false, %4 ], [ false, %7 ], [ %12, %10 ]
  %16 = phi i32 [ 6, %1 ], [ 7, %4 ], [ 6, %7 ], [ %13, %10 ]
  br i1 %15, label %24, label %17

17:                                               ; preds = %14
  %18 = zext nneg i32 %16 to i64
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !44
  %21 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %20) #4
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 %16, i32 -1
  br label %24

24:                                               ; preds = %17, %14
  %25 = phi i32 [ -1, %14 ], [ %23, %17 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @txtfmt_osl_find_builtinfunc(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.5, i64 noundef 5) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %74, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.6, i64 noundef 7) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %74, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.7, i64 noundef 5) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %74, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.8, i64 noundef 8) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %74, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.9, i64 noundef 2) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %74, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.10, i64 noundef 4) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %74, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.11, i64 noundef 4) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %74, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.12, i64 noundef 5) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %74, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.13, i64 noundef 3) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.14, i64 noundef 2) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %74, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.15, i64 noundef 11) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %74, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.16, i64 noundef 10) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %74, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.17, i64 noundef 3) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %74, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.18, i64 noundef 6) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.19, i64 noundef 6) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %74, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.20, i64 noundef 6) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.21, i64 noundef 5) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.22, i64 noundef 6) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.23, i64 noundef 6) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.24, i64 noundef 6) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.25, i64 noundef 6) #5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.26, i64 noundef 6) #5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.27, i64 noundef 4) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.28, i64 noundef 5) #5
  %72 = icmp ne i32 %71, 0
  %73 = select i1 %72, i32 0, i32 5
  br label %74

74:                                               ; preds = %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %75 = phi i1 [ false, %1 ], [ false, %4 ], [ false, %7 ], [ false, %10 ], [ false, %13 ], [ false, %16 ], [ false, %19 ], [ false, %22 ], [ false, %25 ], [ false, %28 ], [ false, %31 ], [ false, %34 ], [ false, %37 ], [ false, %40 ], [ false, %43 ], [ false, %46 ], [ false, %49 ], [ false, %52 ], [ false, %55 ], [ false, %58 ], [ false, %61 ], [ false, %64 ], [ false, %67 ], [ %72, %70 ]
  %76 = phi i32 [ 5, %1 ], [ 7, %4 ], [ 5, %7 ], [ 8, %10 ], [ 2, %13 ], [ 4, %16 ], [ 4, %19 ], [ 5, %22 ], [ 3, %25 ], [ 2, %28 ], [ 11, %31 ], [ 10, %34 ], [ 3, %37 ], [ 6, %40 ], [ 6, %43 ], [ 6, %46 ], [ 5, %49 ], [ 6, %52 ], [ 6, %55 ], [ 6, %58 ], [ 6, %61 ], [ 6, %64 ], [ 4, %67 ], [ %73, %70 ]
  br i1 %75, label %84, label %77

77:                                               ; preds = %74
  %78 = zext nneg i32 %76 to i64
  %79 = getelementptr inbounds i8, ptr %0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !44
  %81 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %80) #4
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, i32 %76, i32 -1
  br label %84

84:                                               ; preds = %77, %74
  %85 = phi i32 [ -1, %74 ], [ %83, %77 ]
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @txtfmt_osl_find_reserved(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.29, i64 noundef 4) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %110, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.30, i64 noundef 4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %110, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.31, i64 noundef 5) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %110, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.32, i64 noundef 4) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %110, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.33, i64 noundef 5) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %110, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %110, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.35, i64 noundef 7) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %110, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %110, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.37, i64 noundef 4) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %110, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.38, i64 noundef 6) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %110, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.39, i64 noundef 5) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %110, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.40, i64 noundef 6) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %110, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.41, i64 noundef 4) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %110, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.42, i64 noundef 6) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %110, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.43, i64 noundef 4) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %110, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.44, i64 noundef 3) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %110, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.45, i64 noundef 8) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %110, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.46, i64 noundef 7) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %110, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.47, i64 noundef 9) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %110, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.48, i64 noundef 5) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %110, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.49, i64 noundef 6) #5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %110, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.50, i64 noundef 6) #5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %110, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %110, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.52, i64 noundef 6) #5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %110, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.53, i64 noundef 8) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %110, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.54, i64 noundef 4) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %110, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.55, i64 noundef 5) #5
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %110, label %82

82:                                               ; preds = %79
  %83 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.56, i64 noundef 4) #5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %110, label %85

85:                                               ; preds = %82
  %86 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.57, i64 noundef 3) #5
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %110, label %88

88:                                               ; preds = %85
  %89 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.58, i64 noundef 7) #5
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  %92 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.59, i64 noundef 7) #5
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %91
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.60, i64 noundef 5) #5
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %94
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.61, i64 noundef 8) #5
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.62, i64 noundef 7) #5
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.63, i64 noundef 7) #5
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.64, i64 noundef 8) #5
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %108, i32 0, i32 8
  br label %110

110:                                              ; preds = %106, %103, %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %111 = phi i1 [ false, %1 ], [ false, %4 ], [ false, %7 ], [ false, %10 ], [ false, %13 ], [ false, %16 ], [ false, %19 ], [ false, %22 ], [ false, %25 ], [ false, %28 ], [ false, %31 ], [ false, %34 ], [ false, %37 ], [ false, %40 ], [ false, %43 ], [ false, %46 ], [ false, %49 ], [ false, %52 ], [ false, %55 ], [ false, %58 ], [ false, %61 ], [ false, %64 ], [ false, %67 ], [ false, %70 ], [ false, %73 ], [ false, %76 ], [ false, %79 ], [ false, %82 ], [ false, %85 ], [ false, %88 ], [ false, %91 ], [ false, %94 ], [ false, %97 ], [ false, %100 ], [ false, %103 ], [ %108, %106 ]
  %112 = phi i32 [ 4, %1 ], [ 4, %4 ], [ 5, %7 ], [ 4, %10 ], [ 5, %13 ], [ 6, %16 ], [ 7, %19 ], [ 6, %22 ], [ 4, %25 ], [ 6, %28 ], [ 5, %31 ], [ 6, %34 ], [ 4, %37 ], [ 6, %40 ], [ 4, %43 ], [ 3, %46 ], [ 8, %49 ], [ 7, %52 ], [ 9, %55 ], [ 5, %58 ], [ 6, %61 ], [ 6, %64 ], [ 6, %67 ], [ 6, %70 ], [ 8, %73 ], [ 4, %76 ], [ 5, %79 ], [ 4, %82 ], [ 3, %85 ], [ 7, %88 ], [ 7, %91 ], [ 5, %94 ], [ 8, %97 ], [ 7, %100 ], [ 7, %103 ], [ %109, %106 ]
  br i1 %111, label %120, label %113

113:                                              ; preds = %110
  %114 = zext nneg i32 %112 to i64
  %115 = getelementptr inbounds i8, ptr %0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !44
  %117 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %116) #4
  %118 = icmp eq i8 %117, 0
  %119 = select i1 %118, i32 %112, i32 -1
  br label %120

120:                                              ; preds = %113, %110
  %121 = phi i32 [ -1, %110 ], [ %119, %113 ]
  ret i32 %121
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

declare zeroext i8 @text_check_delim(i8 noundef zeroext) local_unnamed_addr #1

declare void @text_format_fill_ascii(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

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
!41 = !{i32 -1, i32 13}
!42 = !{i32 -1, i32 12}
!43 = !{i32 -1, i32 10}
!44 = !{!37, !37, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !46, !47}
!49 = !{!50, !36, i64 8}
!50 = !{!"TextLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !51, i64 32, !51, i64 36}
!51 = !{!"int", !37, i64 0}
!52 = !{!50, !36, i64 24}
!53 = !{!36, !36, i64 0}
!54 = !{!50, !36, i64 16}
!55 = !{!56, !36, i64 1280}
!56 = !{!"FlattenString", !37, i64 0, !37, i64 256, !36, i64 1280, !36, i64 1288, !51, i64 1296, !51, i64 1300}
!57 = distinct !{!57, !46, !47}
!58 = !{!50, !36, i64 0}
