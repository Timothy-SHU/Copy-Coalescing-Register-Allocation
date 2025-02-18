; ModuleID = 'x264_src/input/y4m.c'
source_filename = "x264_src/input/y4m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.y4m_hnd_t = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }

@y4m_input = dso_local local_unnamed_addr constant %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr @x264_picture_alloc, ptr @read_frame, ptr null, ptr @x264_picture_clean, ptr @close_file }, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"YUV4MPEG2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"420\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"YSCSS=\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"y4m [error]: colorspace unhandled\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"y4m [error]: bad header magic (%x <=> %s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"y4m [error]: bad frame header!\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal noundef i32 @open_file(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [90 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 90, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %154, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.y4m_hnd_t, ptr %9, i64 0, i32 3
  store i32 0, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 10
  store i32 0, ptr %13, align 4, !tbaa !40
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load ptr, ptr @stdin, align 8, !tbaa !42
  br label %20

18:                                               ; preds = %11
  %19 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.1)
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  store ptr %21, ptr %9, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %154, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.y4m_hnd_t, ptr %9, i64 0, i32 5
  store i32 6, ptr %24, align 8, !tbaa !44
  br label %25

25:                                               ; preds = %23, %41
  %26 = phi i64 [ 0, %23 ], [ %42, %41 ]
  %27 = load ptr, ptr %9, align 8, !tbaa !43
  %28 = tail call i32 @fgetc(ptr noundef %27)
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [90 x i8], ptr %7, i64 0, i64 %26
  store i8 %29, ptr %30, align 1, !tbaa !45
  %31 = and i32 %28, 255
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = trunc i64 %26 to i32
  %35 = add nuw i64 %26, 1
  %36 = and i64 %35, 4294967295
  %37 = getelementptr inbounds [90 x i8], ptr %7, i64 0, i64 %36
  store i8 32, ptr %37, align 1, !tbaa !45
  %38 = add nuw i64 %26, 2
  %39 = and i64 %38, 4294967295
  %40 = getelementptr inbounds [90 x i8], ptr %7, i64 0, i64 %39
  store i8 0, ptr %40, align 1, !tbaa !45
  br label %44

41:                                               ; preds = %25
  %42 = add nuw nsw i64 %26, 1
  %43 = icmp eq i64 %42, 80
  br i1 %43, label %44, label %25, !llvm.loop !46

44:                                               ; preds = %41, %33
  %45 = phi i32 [ %34, %33 ], [ 80, %41 ]
  %46 = icmp eq i32 %45, 80
  br i1 %46, label %154, label %47

47:                                               ; preds = %44
  %48 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %7, ptr noundef nonnull dereferenceable(9) @.str.2, i64 9)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %154

50:                                               ; preds = %47
  %51 = add nuw nsw i32 %45, 1
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [90 x i8], ptr %7, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.y4m_hnd_t, ptr %9, i64 0, i32 4
  store i32 %51, ptr %54, align 4, !tbaa !49
  %55 = icmp ugt i32 %45, 9
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = getelementptr inbounds [90 x i8], ptr %7, i64 0, i64 10
  %58 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 5
  %59 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 6
  %60 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 1
  %61 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 2
  %62 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 4
  %63 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 4
  %64 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 7
  %65 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 4
  %66 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 7
  %67 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 3
  %68 = getelementptr inbounds %struct.y4m_hnd_t, ptr %9, i64 0, i32 2
  %69 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 11
  %70 = getelementptr inbounds %struct.y4m_hnd_t, ptr %9, i64 0, i32 1
  br label %77

71:                                               ; preds = %144, %50
  %72 = phi i32 [ 0, %50 ], [ %145, %144 ]
  %73 = phi i32 [ 0, %50 ], [ %146, %144 ]
  %74 = icmp eq i32 %72, 0
  %75 = select i1 %74, i32 %73, i32 %72
  %76 = icmp ult i32 %75, 2
  br i1 %76, label %153, label %150

77:                                               ; preds = %56, %144
  %78 = phi ptr [ %57, %56 ], [ %148, %144 ]
  %79 = phi i32 [ 0, %56 ], [ %146, %144 ]
  %80 = phi i32 [ 0, %56 ], [ %145, %144 ]
  %81 = load i8, ptr %78, align 1, !tbaa !45
  %82 = icmp eq i8 %81, 32
  br i1 %82, label %144, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds i8, ptr %78, i64 1
  switch i8 %81, label %144 [
    i8 87, label %85
    i8 72, label %89
    i8 67, label %93
    i8 73, label %98
    i8 70, label %104
    i8 65, label %118
    i8 88, label %132
  ]

85:                                               ; preds = %83
  %86 = call i64 @strtol(ptr noundef nonnull %84, ptr noundef nonnull %8, i32 noundef 10) #12
  %87 = trunc i64 %86 to i32
  store i32 %87, ptr %69, align 4, !tbaa !50
  store i32 %87, ptr %70, align 8, !tbaa !51
  %88 = load ptr, ptr %8, align 8, !tbaa !42
  br label %144

89:                                               ; preds = %83
  %90 = call i64 @strtol(ptr noundef nonnull %84, ptr noundef nonnull %8, i32 noundef 10) #12
  %91 = trunc i64 %90 to i32
  store i32 %91, ptr %67, align 4, !tbaa !52
  store i32 %91, ptr %68, align 4, !tbaa !53
  %92 = load ptr, ptr %8, align 8, !tbaa !42
  br label %144

93:                                               ; preds = %83
  %94 = call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.3, ptr noundef nonnull dereferenceable(1) %84, i64 noundef 3) #13
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 1, i32 9
  %97 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %84, i32 noundef 32) #13
  br label %144

98:                                               ; preds = %83
  %99 = getelementptr inbounds i8, ptr %78, i64 2
  %100 = load i8, ptr %84, align 1, !tbaa !45
  switch i8 %100, label %144 [
    i8 116, label %101
    i8 98, label %102
    i8 109, label %103
  ]

101:                                              ; preds = %98
  store i32 1, ptr %65, align 4, !tbaa !54
  store i32 1, ptr %66, align 4, !tbaa !55
  br label %144

102:                                              ; preds = %98
  store i32 1, ptr %63, align 4, !tbaa !54
  store i32 0, ptr %64, align 4, !tbaa !55
  br label %144

103:                                              ; preds = %98
  store i32 1, ptr %62, align 4, !tbaa !54
  br label %144

104:                                              ; preds = %83
  %105 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %84, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %106 = icmp eq i32 %105, 2
  %107 = load i32, ptr %5, align 4
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %106, i1 %108, i1 false
  %110 = load i32, ptr %6, align 4
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  call void @x264_reduce_fraction(ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %114 = load i32, ptr %5, align 4, !tbaa !56
  store i32 %114, ptr %60, align 4, !tbaa !57
  %115 = load i32, ptr %6, align 4, !tbaa !56
  store i32 %115, ptr %61, align 4, !tbaa !58
  br label %116

116:                                              ; preds = %113, %104
  %117 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %84, i32 noundef 32) #13
  br label %144

118:                                              ; preds = %83
  %119 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %84, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %120 = icmp eq i32 %119, 2
  %121 = load i32, ptr %5, align 4
  %122 = icmp ne i32 %121, 0
  %123 = select i1 %120, i1 %122, i1 false
  %124 = load i32, ptr %6, align 4
  %125 = icmp ne i32 %124, 0
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  call void @x264_reduce_fraction(ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %128 = load i32, ptr %5, align 4, !tbaa !56
  store i32 %128, ptr %58, align 4, !tbaa !59
  %129 = load i32, ptr %6, align 4, !tbaa !56
  store i32 %129, ptr %59, align 4, !tbaa !60
  br label %130

130:                                              ; preds = %127, %118
  %131 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %84, i32 noundef 32) #13
  br label %144

132:                                              ; preds = %83
  %133 = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.5, ptr noundef nonnull dereferenceable(1) %84, i64 noundef 6) #13
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = getelementptr inbounds i8, ptr %78, i64 7
  %137 = call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.3, ptr noundef nonnull dereferenceable(1) %136, i64 noundef 3) #13
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, i32 1, i32 9
  br label %140

140:                                              ; preds = %135, %132
  %141 = phi i32 [ %79, %132 ], [ %139, %135 ]
  %142 = phi ptr [ %84, %132 ], [ %136, %135 ]
  %143 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %142, i32 noundef 32) #13
  br label %144

144:                                              ; preds = %85, %89, %93, %116, %130, %140, %83, %98, %103, %102, %101, %77
  %145 = phi i32 [ %80, %77 ], [ %80, %83 ], [ %80, %140 ], [ %80, %130 ], [ %80, %116 ], [ %80, %98 ], [ %80, %103 ], [ %80, %102 ], [ %80, %101 ], [ %96, %93 ], [ %80, %89 ], [ %80, %85 ]
  %146 = phi i32 [ %79, %77 ], [ %79, %83 ], [ %141, %140 ], [ %79, %130 ], [ %79, %116 ], [ %79, %98 ], [ %79, %103 ], [ %79, %102 ], [ %79, %101 ], [ %79, %93 ], [ %79, %89 ], [ %79, %85 ]
  %147 = phi ptr [ %78, %77 ], [ %84, %83 ], [ %143, %140 ], [ %131, %130 ], [ %117, %116 ], [ %99, %98 ], [ %99, %103 ], [ %99, %102 ], [ %99, %101 ], [ %97, %93 ], [ %92, %89 ], [ %88, %85 ]
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  %149 = icmp ult ptr %148, %53
  br i1 %149, label %77, label %71, !llvm.loop !61

150:                                              ; preds = %71
  %151 = load ptr, ptr @stderr, align 8, !tbaa !42
  %152 = call i64 @fwrite(ptr nonnull @.str.6, i64 34, i64 1, ptr %151) #14
  br label %154

153:                                              ; preds = %71
  store ptr %9, ptr %1, align 8, !tbaa !42
  br label %154

154:                                              ; preds = %44, %47, %20, %4, %153, %150
  %155 = phi i32 [ -1, %150 ], [ 0, %153 ], [ -1, %4 ], [ -1, %20 ], [ -1, %47 ], [ -1, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 90, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %155
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = tail call i64 @ftell(ptr noundef %2)
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = tail call i32 @fseek(ptr noundef %4, i64 noundef 0, i32 noundef 2)
  %6 = load ptr, ptr %0, align 8, !tbaa !43
  %7 = tail call i64 @ftell(ptr noundef %6)
  %8 = load ptr, ptr %0, align 8, !tbaa !43
  %9 = tail call i32 @fseek(ptr noundef %8, i64 noundef %3, i32 noundef 0)
  %10 = getelementptr inbounds %struct.y4m_hnd_t, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !49
  %12 = sext i32 %11 to i64
  %13 = sub i64 %7, %12
  %14 = getelementptr inbounds %struct.y4m_hnd_t, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.y4m_hnd_t, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !53
  %18 = mul i32 %15, 3
  %19 = mul i32 %18, %17
  %20 = sdiv i32 %19, 2
  %21 = getelementptr inbounds %struct.y4m_hnd_t, ptr %0, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !44
  %23 = add nsw i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %13, %24
  %26 = trunc i64 %25 to i32
  ret i32 %26
}

declare i32 @x264_picture_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @read_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #1 {
  %4 = alloca [16 x i8], align 16
  %5 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp slt i32 %6, %2
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !43
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !53
  %15 = mul i32 %12, 3
  %16 = mul i32 %15, %14
  %17 = sdiv i32 %16, 2
  %18 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = add nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %21, %10
  %23 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !49
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = tail call i32 @fseek(ptr noundef %9, i64 noundef %26, i32 noundef 0)
  br label %28

28:                                               ; preds = %8, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %29 = load ptr, ptr %1, align 8, !tbaa !43
  %30 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 5, ptr noundef %29)
  %31 = and i64 %30, 4294967295
  %32 = icmp eq i64 %31, 5
  br i1 %32, label %33, label %93

33:                                               ; preds = %28
  %34 = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 5
  store i8 0, ptr %34, align 1, !tbaa !45
  %35 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %4, ptr noundef nonnull dereferenceable(5) @.str.7, i64 5)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @stderr, align 8, !tbaa !42
  %39 = load i32, ptr %4, align 16, !tbaa !45
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.8, i32 noundef %39, ptr noundef nonnull %4) #14
  br label %93

41:                                               ; preds = %33, %46
  %42 = phi i32 [ %47, %46 ], [ 0, %33 ]
  %43 = load ptr, ptr %1, align 8, !tbaa !43
  %44 = tail call i32 @fgetc(ptr noundef %43)
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = add nuw nsw i32 %42, 1
  %48 = icmp eq i32 %47, 80
  br i1 %48, label %49, label %41, !llvm.loop !62

49:                                               ; preds = %41, %46
  %50 = phi i32 [ %42, %41 ], [ 80, %46 ]
  %51 = icmp eq i32 %50, 80
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load ptr, ptr @stderr, align 8, !tbaa !42
  %54 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 31, i64 1, ptr %53) #14
  br label %93

55:                                               ; preds = %49
  %56 = add nuw nsw i32 %50, 6
  %57 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 5
  store i32 %56, ptr %57, align 8, !tbaa !44
  %58 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !42
  %60 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !51
  %62 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !53
  %64 = mul nsw i32 %63, %61
  %65 = sext i32 %64 to i64
  %66 = load ptr, ptr %1, align 8, !tbaa !43
  %67 = tail call i64 @fread(ptr noundef %59, i64 noundef %65, i64 noundef 1, ptr noundef %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !42
  %72 = load i32, ptr %60, align 8, !tbaa !51
  %73 = load i32, ptr %62, align 4, !tbaa !53
  %74 = mul nsw i32 %73, %72
  %75 = sdiv i32 %74, 4
  %76 = sext i32 %75 to i64
  %77 = load ptr, ptr %1, align 8, !tbaa !43
  %78 = tail call i64 @fread(ptr noundef %71, i64 noundef %76, i64 noundef 1, ptr noundef %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !42
  %83 = load i32, ptr %60, align 8, !tbaa !51
  %84 = load i32, ptr %62, align 4, !tbaa !53
  %85 = mul nsw i32 %84, %83
  %86 = sdiv i32 %85, 4
  %87 = sext i32 %86 to i64
  %88 = load ptr, ptr %1, align 8, !tbaa !43
  %89 = tail call i64 @fread(ptr noundef %82, i64 noundef %87, i64 noundef 1, ptr noundef %88)
  %90 = icmp eq i64 %89, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  br i1 %90, label %94, label %91

91:                                               ; preds = %80
  %92 = add nsw i32 %2, 1
  store i32 %92, ptr %5, align 8, !tbaa !34
  br label %94

93:                                               ; preds = %55, %69, %28, %52, %37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  br label %94

94:                                               ; preds = %93, %80, %91
  %95 = phi i32 [ 0, %91 ], [ -1, %80 ], [ -1, %93 ]
  ret i32 %95
}

declare void @x264_picture_clean(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @close_file(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @fclose(ptr noundef nonnull %4)
  tail call void @free(ptr noundef %0) #12
  br label %8

8:                                                ; preds = %1, %3, %6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !39, i64 16}
!35 = !{!"", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !39, i64 40}
!41 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!42 = !{!36, !36, i64 0}
!43 = !{!35, !36, i64 0}
!44 = !{!35, !39, i64 24}
!45 = !{!37, !37, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!35, !39, i64 20}
!50 = !{!41, !39, i64 44}
!51 = !{!35, !39, i64 8}
!52 = !{!41, !39, i64 12}
!53 = !{!35, !39, i64 12}
!54 = !{!41, !39, i64 16}
!55 = !{!41, !39, i64 28}
!56 = !{!39, !39, i64 0}
!57 = !{!41, !39, i64 4}
!58 = !{!41, !39, i64 8}
!59 = !{!41, !39, i64 20}
!60 = !{!41, !39, i64 24}
!61 = distinct !{!61, !47, !48}
!62 = distinct !{!62, !47, !48}
