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

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %10, label %144, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.y4m_hnd_t, ptr %9, i64 0, i32 3
  store i32 0, ptr %12, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 10
  store i32 0, ptr %13, align 4, !tbaa !11
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load ptr, ptr @stdin, align 8, !tbaa !13
  br label %20

18:                                               ; preds = %11
  %19 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.1) #14
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  store ptr %21, ptr %9, align 8, !tbaa !14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %144, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.y4m_hnd_t, ptr %9, i64 0, i32 5
  store i32 6, ptr %24, align 8, !tbaa !15
  br label %25

25:                                               ; preds = %23, %33
  %26 = phi i64 [ 0, %23 ], [ %32, %33 ]
  %27 = tail call i32 @fgetc(ptr noundef nonnull %21) #14
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [90 x i8], ptr %7, i64 0, i64 %26
  store i8 %28, ptr %29, align 1, !tbaa !16
  %30 = and i32 %27, 255
  %31 = icmp eq i32 %30, 10
  %32 = add nuw i64 %26, 1
  br i1 %31, label %35, label %33

33:                                               ; preds = %25
  %34 = icmp eq i64 %32, 80
  br i1 %34, label %144, label %25, !llvm.loop !17

35:                                               ; preds = %25
  %36 = and i64 %32, 4294967295
  %37 = getelementptr inbounds [90 x i8], ptr %7, i64 0, i64 %36
  store i8 32, ptr %37, align 1, !tbaa !16
  %38 = add nuw i64 %26, 2
  %39 = and i64 %38, 4294967295
  %40 = getelementptr inbounds [90 x i8], ptr %7, i64 0, i64 %39
  store i8 0, ptr %40, align 1, !tbaa !16
  %41 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %7, ptr noundef nonnull dereferenceable(9) @.str.2, i64 9)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %144

43:                                               ; preds = %35
  %44 = trunc i64 %26 to i32
  %45 = add nuw nsw i32 %44, 1
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [90 x i8], ptr %7, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.y4m_hnd_t, ptr %9, i64 0, i32 4
  store i32 %45, ptr %48, align 4, !tbaa !19
  %49 = icmp ugt i32 %44, 9
  br i1 %49, label %50, label %143

50:                                               ; preds = %43
  %51 = getelementptr inbounds [90 x i8], ptr %7, i64 0, i64 10
  %52 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 5
  %53 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 6
  %54 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 1
  %55 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 2
  %56 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 4
  %57 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 7
  %58 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 3
  %59 = getelementptr inbounds %struct.y4m_hnd_t, ptr %9, i64 0, i32 2
  %60 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 11
  %61 = getelementptr inbounds %struct.y4m_hnd_t, ptr %9, i64 0, i32 1
  br label %66

62:                                               ; preds = %133
  %63 = icmp eq i32 %137, 0
  %64 = select i1 %63, i32 %135, i32 %137
  %65 = icmp ult i32 %64, 2
  br i1 %65, label %143, label %140

66:                                               ; preds = %50, %133
  %67 = phi ptr [ %51, %50 ], [ %138, %133 ]
  %68 = phi i32 [ 0, %50 ], [ %135, %133 ]
  %69 = phi i32 [ 0, %50 ], [ %137, %133 ]
  %70 = load i8, ptr %67, align 1, !tbaa !16
  %71 = icmp eq i8 %70, 32
  br i1 %71, label %133, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds i8, ptr %67, i64 1
  switch i8 %70, label %133 [
    i8 87, label %74
    i8 72, label %78
    i8 67, label %82
    i8 73, label %87
    i8 70, label %93
    i8 65, label %107
    i8 88, label %121
  ]

74:                                               ; preds = %72
  %75 = call i64 @strtol(ptr noundef nonnull %73, ptr noundef nonnull %8, i32 noundef 10) #15
  %76 = trunc i64 %75 to i32
  store i32 %76, ptr %60, align 4, !tbaa !20
  store i32 %76, ptr %61, align 8, !tbaa !21
  %77 = load ptr, ptr %8, align 8, !tbaa !13
  br label %133

78:                                               ; preds = %72
  %79 = call i64 @strtol(ptr noundef nonnull %73, ptr noundef nonnull %8, i32 noundef 10) #15
  %80 = trunc i64 %79 to i32
  store i32 %80, ptr %58, align 4, !tbaa !22
  store i32 %80, ptr %59, align 4, !tbaa !23
  %81 = load ptr, ptr %8, align 8, !tbaa !13
  br label %133

82:                                               ; preds = %72
  %83 = call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.3, ptr noundef nonnull dereferenceable(1) %73, i64 noundef 3) #13
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 1, i32 9
  %86 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %73, i32 noundef 32) #13
  br label %133

87:                                               ; preds = %72
  %88 = getelementptr inbounds i8, ptr %67, i64 2
  %89 = load i8, ptr %73, align 1, !tbaa !16
  switch i8 %89, label %133 [
    i8 116, label %90
    i8 98, label %91
    i8 109, label %92
  ]

90:                                               ; preds = %87
  store i32 1, ptr %56, align 4, !tbaa !24
  store i32 1, ptr %57, align 4, !tbaa !25
  br label %133

91:                                               ; preds = %87
  store i32 1, ptr %56, align 4, !tbaa !24
  store i32 0, ptr %57, align 4, !tbaa !25
  br label %133

92:                                               ; preds = %87
  store i32 1, ptr %56, align 4, !tbaa !24
  br label %133

93:                                               ; preds = %72
  %94 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %73, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %95 = icmp eq i32 %94, 2
  %96 = load i32, ptr %5, align 4
  %97 = icmp ne i32 %96, 0
  %98 = select i1 %95, i1 %97, i1 false
  %99 = load i32, ptr %6, align 4
  %100 = icmp ne i32 %99, 0
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  call void @x264_reduce_fraction(ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %103 = load i32, ptr %5, align 4, !tbaa !26
  store i32 %103, ptr %54, align 4, !tbaa !27
  %104 = load i32, ptr %6, align 4, !tbaa !26
  store i32 %104, ptr %55, align 4, !tbaa !28
  br label %105

105:                                              ; preds = %102, %93
  %106 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %73, i32 noundef 32) #13
  br label %133

107:                                              ; preds = %72
  %108 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %73, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %109 = icmp eq i32 %108, 2
  %110 = load i32, ptr %5, align 4
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %109, i1 %111, i1 false
  %113 = load i32, ptr %6, align 4
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %112, i1 %114, i1 false
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  call void @x264_reduce_fraction(ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %117 = load i32, ptr %5, align 4, !tbaa !26
  store i32 %117, ptr %52, align 4, !tbaa !29
  %118 = load i32, ptr %6, align 4, !tbaa !26
  store i32 %118, ptr %53, align 4, !tbaa !30
  br label %119

119:                                              ; preds = %116, %107
  %120 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %73, i32 noundef 32) #13
  br label %133

121:                                              ; preds = %72
  %122 = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.5, ptr noundef nonnull dereferenceable(1) %73, i64 noundef 6) #13
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = getelementptr inbounds i8, ptr %67, i64 7
  %126 = call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.3, ptr noundef nonnull dereferenceable(1) %125, i64 noundef 3) #13
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 1, i32 9
  br label %129

129:                                              ; preds = %124, %121
  %130 = phi i32 [ %68, %121 ], [ %128, %124 ]
  %131 = phi ptr [ %73, %121 ], [ %125, %124 ]
  %132 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %131, i32 noundef 32) #13
  br label %133

133:                                              ; preds = %74, %78, %82, %105, %119, %129, %72, %87, %92, %91, %90, %66
  %134 = phi i32 [ %69, %66 ], [ %69, %72 ], [ %69, %129 ], [ %69, %119 ], [ %69, %105 ], [ %69, %87 ], [ %69, %92 ], [ %69, %91 ], [ %69, %90 ], [ %85, %82 ], [ %69, %78 ], [ %69, %74 ]
  %135 = phi i32 [ %68, %66 ], [ %68, %72 ], [ %130, %129 ], [ %68, %119 ], [ %68, %105 ], [ %68, %87 ], [ %68, %92 ], [ %68, %91 ], [ %68, %90 ], [ %68, %82 ], [ %68, %78 ], [ %68, %74 ]
  %136 = phi ptr [ %67, %66 ], [ %73, %72 ], [ %132, %129 ], [ %120, %119 ], [ %106, %105 ], [ %88, %87 ], [ %88, %92 ], [ %88, %91 ], [ %88, %90 ], [ %86, %82 ], [ %81, %78 ], [ %77, %74 ]
  %137 = freeze i32 %134
  %138 = getelementptr inbounds i8, ptr %136, i64 1
  %139 = icmp ult ptr %138, %47
  br i1 %139, label %66, label %62, !llvm.loop !31

140:                                              ; preds = %62
  %141 = load ptr, ptr @stderr, align 8, !tbaa !13
  %142 = call i64 @fwrite(ptr nonnull @.str.6, i64 34, i64 1, ptr %141) #16
  br label %144

143:                                              ; preds = %43, %62
  store ptr %9, ptr %1, align 8, !tbaa !13
  br label %144

144:                                              ; preds = %33, %35, %20, %4, %143, %140
  %145 = phi i32 [ -1, %140 ], [ 0, %143 ], [ -1, %4 ], [ -1, %20 ], [ -1, %35 ], [ -1, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 90, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %145
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = tail call i64 @ftell(ptr noundef %2) #14
  %4 = load ptr, ptr %0, align 8, !tbaa !14
  %5 = tail call i32 @fseek(ptr noundef %4, i64 noundef 0, i32 noundef 2) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !14
  %7 = tail call i64 @ftell(ptr noundef %6) #14
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = tail call i32 @fseek(ptr noundef %8, i64 noundef %3, i32 noundef 0) #14
  %10 = getelementptr inbounds %struct.y4m_hnd_t, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !19
  %12 = sext i32 %11 to i64
  %13 = sub i64 %7, %12
  %14 = getelementptr inbounds %struct.y4m_hnd_t, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.y4m_hnd_t, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !23
  %18 = mul i32 %15, 3
  %19 = mul i32 %18, %17
  %20 = sdiv i32 %19, 2
  %21 = getelementptr inbounds %struct.y4m_hnd_t, ptr %0, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !15
  %23 = add nsw i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %13, %24
  %26 = trunc i64 %25 to i32
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @x264_picture_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @read_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp slt i32 %5, %2
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !14
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !21
  %12 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !23
  %14 = mul i32 %11, 3
  %15 = mul i32 %14, %13
  %16 = sdiv i32 %15, 2
  %17 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !15
  %19 = add nsw i32 %16, %18
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %20, %9
  %22 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !19
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = tail call i32 @fseek(ptr noundef %8, i64 noundef %25, i32 noundef 0) #14
  br label %27

27:                                               ; preds = %7, %3
  %28 = tail call fastcc i32 @read_frame_internal(ptr noundef %0, ptr noundef nonnull %1) #14, !range !32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = add nsw i32 %2, 1
  store i32 %31, ptr %4, align 8, !tbaa !5
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi i32 [ 0, %30 ], [ -1, %27 ]
  ret i32 %33
}

; Function Attrs: optsize
declare void @x264_picture_clean(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @close_file(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @fclose(ptr noundef nonnull %4) #14
  tail call void @free(ptr noundef nonnull %0) #15
  br label %8

8:                                                ; preds = %1, %3, %6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @read_frame_internal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %4 = load ptr, ptr %1, align 8, !tbaa !14
  %5 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 5, ptr noundef %4) #14
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 5
  br i1 %7, label %8, label %64

8:                                                ; preds = %2
  %9 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 5
  store i8 0, ptr %9, align 1, !tbaa !16
  %10 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %3, ptr noundef nonnull dereferenceable(5) @.str.7, i64 5)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @stderr, align 8, !tbaa !13
  %14 = load i32, ptr %3, align 16, !tbaa !16
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef %14, ptr noundef nonnull %3) #17
  br label %64

16:                                               ; preds = %8, %21
  %17 = phi i32 [ %22, %21 ], [ 0, %8 ]
  %18 = load ptr, ptr %1, align 8, !tbaa !14
  %19 = tail call i32 @fgetc(ptr noundef %18) #14
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = add nuw nsw i32 %17, 1
  %23 = icmp eq i32 %22, 80
  br i1 %23, label %24, label %16, !llvm.loop !33

24:                                               ; preds = %21
  %25 = load ptr, ptr @stderr, align 8, !tbaa !13
  %26 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 31, i64 1, ptr %25) #16
  br label %64

27:                                               ; preds = %16
  %28 = add nuw nsw i32 %17, 6
  %29 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 5
  store i32 %28, ptr %29, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !21
  %34 = getelementptr inbounds %struct.y4m_hnd_t, ptr %1, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !23
  %36 = mul nsw i32 %35, %33
  %37 = sext i32 %36 to i64
  %38 = load ptr, ptr %1, align 8, !tbaa !14
  %39 = tail call i64 @fread(ptr noundef %31, i64 noundef %37, i64 noundef 1, ptr noundef %38) #14
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !13
  %44 = load i32, ptr %32, align 8, !tbaa !21
  %45 = load i32, ptr %34, align 4, !tbaa !23
  %46 = mul nsw i32 %45, %44
  %47 = sdiv i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = load ptr, ptr %1, align 8, !tbaa !14
  %50 = tail call i64 @fread(ptr noundef %43, i64 noundef %48, i64 noundef 1, ptr noundef %49) #14
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = load i32, ptr %32, align 8, !tbaa !21
  %56 = load i32, ptr %34, align 4, !tbaa !23
  %57 = mul nsw i32 %56, %55
  %58 = sdiv i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = load ptr, ptr %1, align 8, !tbaa !14
  %61 = tail call i64 @fread(ptr noundef %54, i64 noundef %59, i64 noundef 1, ptr noundef %60) #14
  %62 = icmp eq i64 %61, 0
  %63 = sext i1 %62 to i32
  br label %64

64:                                               ; preds = %52, %27, %41, %2, %24, %12
  %65 = phi i32 [ -1, %12 ], [ -1, %24 ], [ -1, %2 ], [ -1, %41 ], [ -1, %27 ], [ %63, %52 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret i32 %65
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind optsize allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize willreturn memory(read) }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { cold }
attributes #17 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !10, i64 40}
!12 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!13 = !{!7, !7, i64 0}
!14 = !{!6, !7, i64 0}
!15 = !{!6, !10, i64 24}
!16 = !{!8, !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!6, !10, i64 20}
!20 = !{!12, !10, i64 44}
!21 = !{!6, !10, i64 8}
!22 = !{!12, !10, i64 12}
!23 = !{!6, !10, i64 12}
!24 = !{!12, !10, i64 16}
!25 = !{!12, !10, i64 28}
!26 = !{!10, !10, i64 0}
!27 = !{!12, !10, i64 4}
!28 = !{!12, !10, i64 8}
!29 = !{!12, !10, i64 20}
!30 = !{!12, !10, i64 24}
!31 = distinct !{!31, !18}
!32 = !{i32 -1, i32 1}
!33 = distinct !{!33, !18}
