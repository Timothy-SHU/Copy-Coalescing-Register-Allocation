; ModuleID = 'blender/source/blender/imbuf/intern/readimage.c'
source_filename = "blender/source/blender/imbuf/intern/readimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImFileType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s: NULL pointer\0A\00", align 1
@__func__.IMB_ibImageFromMemory = private unnamed_addr constant [22 x i8] c"IMB_ibImageFromMemory\00", align 1
@IMB_FILE_TYPES = external global [0 x %struct.ImFileType], align 8
@IMB_FILE_TYPES_LAST = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: unknown fileformat (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: couldn't get mapping %s\0A\00", align 1
@__func__.IMB_loadifffile = private unnamed_addr constant [16 x i8] c"IMB_loadifffile\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: couldn't unmap file %s\0A\00", align 1
@imb_ext_image_filepath_only = external global [0 x ptr], align 8
@__func__.IMB_ibImageFromFile = private unnamed_addr constant [20 x i8] c"IMB_ibImageFromFile\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c".tx\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Couldn't get memory mapping for %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Couldn't unmap memory for %s.\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_ibImageFromMemory(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !34
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.IMB_ibImageFromMemory) #7
  br label %40

11:                                               ; preds = %5
  %12 = icmp eq ptr %3, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef 64) #8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !34
  %17 = icmp ugt ptr %16, @IMB_FILE_TYPES
  br i1 %17, label %18, label %34

18:                                               ; preds = %15, %30
  %19 = phi ptr [ %31, %30 ], [ %16, %15 ]
  %20 = phi ptr [ %32, %30 ], [ @IMB_FILE_TYPES, %15 ]
  %21 = getelementptr inbounds %struct.ImFileType, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = call ptr %22(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !34
  br label %30

29:                                               ; preds = %24
  call fastcc void @imb_handle_alpha(ptr noundef nonnull %25, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %6) #9
  br label %40

30:                                               ; preds = %27, %18
  %31 = phi ptr [ %28, %27 ], [ %19, %18 ]
  %32 = getelementptr inbounds %struct.ImFileType, ptr %20, i64 1
  %33 = icmp ult ptr %32, %31
  br i1 %33, label %18, label %34, !llvm.loop !41

34:                                               ; preds = %30, %15
  %35 = and i32 %2, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load ptr, ptr @stderr, align 8, !tbaa !34
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.IMB_ibImageFromMemory, ptr noundef %4) #7
  br label %40

40:                                               ; preds = %34, %37, %29, %8
  %41 = phi ptr [ null, %8 ], [ %25, %29 ], [ null, %37 ], [ null, %34 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  ret ptr %41
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @imb_handle_alpha(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !43 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call ptr @colormanage_colorspace_get_named(ptr noundef %3) #8
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  store ptr %15, ptr %16, align 8, !tbaa !50
  br label %17

17:                                               ; preds = %14, %10, %6
  %18 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %3, i64 noundef 64) #8
  br label %19

19:                                               ; preds = %17, %4
  %20 = and i32 %1, 8192
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !51
  br label %25

25:                                               ; preds = %19, %22
  %26 = phi i32 [ %24, %22 ], [ %1, %19 ]
  %27 = and i32 %1, 16384
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @IMB_rectfill_alpha(ptr noundef %0, float noundef 1.000000e+00) #8
  br label %43

30:                                               ; preds = %25
  %31 = and i32 %26, 4096
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  tail call void @IMB_unpremultiply_alpha(ptr noundef nonnull %0) #8
  br label %43

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @IMB_premultiply_alpha(ptr noundef nonnull %0) #8
  br label %43

43:                                               ; preds = %33, %37, %38, %42, %29
  tail call void @colormanage_imbuf_make_linear(ptr noundef %0, ptr noundef %3) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_loadifffile(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %0, -1
  br i1 %6, label %26, label %7

7:                                                ; preds = %5
  %8 = tail call fastcc zeroext i8 @imb_is_filepath_format(ptr noundef %1) #9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @IMB_ibImageFromFile(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #9
  br label %26

12:                                               ; preds = %7
  %13 = tail call i64 @BLI_file_descriptor_size(i32 noundef %0) #8
  %14 = tail call ptr @mmap(ptr noundef null, i64 noundef %13, i32 noundef 1, i32 noundef 1, i32 noundef %0, i64 noundef 0) #8
  %15 = icmp eq ptr %14, inttoptr (i64 -1 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !34
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.IMB_loadifffile, ptr noundef %4) #7
  br label %26

19:                                               ; preds = %12
  %20 = tail call ptr @IMB_ibImageFromMemory(ptr noundef %14, i64 noundef %13, i32 noundef %2, ptr noundef %3, ptr noundef %4) #9
  %21 = tail call i32 @munmap(ptr noundef %14, i64 noundef %13) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @stderr, align 8, !tbaa !34
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.IMB_loadifffile, ptr noundef %4) #7
  br label %26

26:                                               ; preds = %19, %23, %5, %16, %10
  %27 = phi ptr [ %11, %10 ], [ null, %16 ], [ null, %5 ], [ %20, %23 ], [ %20, %19 ]
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @imb_is_filepath_format(ptr noundef %0) unnamed_addr #0 !PGOFuncName !52 {
  %2 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_image_filepath_only) #8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @IMB_ibImageFromFile(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !53 {
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %6 = icmp eq ptr %2, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %2, i64 noundef 64) #8
  br label %9

9:                                                ; preds = %7, %4
  %10 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !34
  %11 = icmp ugt ptr %10, @IMB_FILE_TYPES
  br i1 %11, label %12, label %28

12:                                               ; preds = %9, %24
  %13 = phi ptr [ %25, %24 ], [ %10, %9 ]
  %14 = phi ptr [ %26, %24 ], [ @IMB_FILE_TYPES, %9 ]
  %15 = getelementptr inbounds %struct.ImFileType, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = call ptr %16(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !34
  br label %24

23:                                               ; preds = %18
  call fastcc void @imb_handle_alpha(ptr noundef nonnull %19, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #9
  br label %34

24:                                               ; preds = %21, %12
  %25 = phi ptr [ %22, %21 ], [ %13, %12 ]
  %26 = getelementptr inbounds %struct.ImFileType, ptr %14, i64 1
  %27 = icmp ult ptr %26, %25
  br i1 %27, label %12, label %28, !llvm.loop !55

28:                                               ; preds = %24, %9
  %29 = and i32 %1, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load ptr, ptr @stderr, align 8, !tbaa !34
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.IMB_ibImageFromFile, ptr noundef %3) #7
  br label %34

34:                                               ; preds = %28, %31, %23
  %35 = phi ptr [ %19, %23 ], [ null, %31 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  ret ptr %35
}

; Function Attrs: optsize
declare i64 @BLI_file_descriptor_size(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_loadiffname(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #6
  call fastcc void @imb_cache_filename(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %1) #9
  %5 = call i32 @BLI_open(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0) #8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = call ptr @IMB_loadifffile(i32 noundef %5, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 27
  %12 = call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef %0, i64 noundef 1024) #8
  %13 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 28
  %14 = call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %4, i64 noundef 1024) #8
  %15 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 20
  %16 = load i32, ptr %15, align 8, !tbaa !56
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %29

18:                                               ; preds = %10, %18
  %19 = phi i64 [ %25, %18 ], [ 1, %10 ]
  %20 = add nsw i64 %19, -1
  %21 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ImBuf, ptr %22, i64 0, i32 28
  %24 = call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef nonnull %4, i64 noundef 1024) #8
  %25 = add nuw nsw i64 %19, 1
  %26 = load i32, ptr %15, align 8, !tbaa !56
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %18, label %29, !llvm.loop !57

29:                                               ; preds = %18, %10
  %30 = and i32 %1, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  call void @IMB_de_interlace(ptr noundef nonnull %8) #8
  br label %33

33:                                               ; preds = %29, %32, %7
  %34 = call i32 @close(i32 noundef %5) #8
  br label %35

35:                                               ; preds = %3, %33
  %36 = phi ptr [ %8, %33 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #6
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @imb_cache_filename(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !58 {
  %4 = and i32 %2, 2048
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %1, i64 noundef 1024) #8
  %8 = tail call zeroext i8 @BLI_replace_extension(ptr noundef %0, i64 noundef 1024, ptr noundef nonnull @.str.4) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = tail call zeroext i8 @BLI_file_older(ptr noundef %1, ptr noundef %0) #8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %3
  %14 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %1, i64 noundef 1024) #8
  br label %15

15:                                               ; preds = %10, %6, %13
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @IMB_de_interlace(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_testiffname(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  call fastcc void @imb_cache_filename(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1) #9
  %5 = call i32 @BLI_open(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = or i32 %1, 130
  %9 = call ptr @IMB_loadifffile(i32 noundef %5, ptr noundef %0, i32 noundef %8, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 27
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef %0, i64 noundef 1024) #8
  %14 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 28
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %3, i64 noundef 1024) #8
  br label %16

16:                                               ; preds = %11, %7
  %17 = call i32 @close(i32 noundef %5) #8
  br label %18

18:                                               ; preds = %2, %16
  %19 = phi ptr [ %9, %16 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #6
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_loadtile(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 28
  %6 = tail call i32 @BLI_open(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #8
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  tail call fastcc void @imb_loadtilefile(ptr noundef %0, i32 noundef %6, i32 noundef %1, i32 noundef %2, ptr noundef %3) #9
  %9 = tail call i32 @close(i32 noundef %6) #8
  br label %10

10:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @imb_loadtilefile(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !59 {
  %6 = tail call i64 @BLI_file_descriptor_size(i32 noundef %1) #8
  %7 = tail call ptr @mmap(ptr noundef null, i64 noundef %6, i32 noundef 1, i32 noundef 1, i32 noundef %1, i64 noundef 0) #8
  %8 = icmp eq ptr %7, inttoptr (i64 -1 to ptr)
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !34
  %11 = icmp ugt ptr %10, @IMB_FILE_TYPES
  br i1 %11, label %12, label %28

12:                                               ; preds = %9, %24
  %13 = phi ptr [ %25, %24 ], [ @IMB_FILE_TYPES, %9 ]
  %14 = getelementptr inbounds %struct.ImFileType, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ImFileType, ptr %13, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = tail call i32 %19(ptr noundef nonnull %13, ptr noundef %0) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %14, align 8, !tbaa !60
  tail call void %23(ptr noundef %0, ptr noundef %7, i64 noundef %6, i32 noundef %2, i32 noundef %3, ptr noundef %4) #8
  br label %24

24:                                               ; preds = %12, %17, %22
  %25 = getelementptr inbounds %struct.ImFileType, ptr %13, i64 1
  %26 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !34
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %12, label %28, !llvm.loop !62

28:                                               ; preds = %24, %9
  %29 = tail call i32 @munmap(ptr noundef %7, i64 noundef %6) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28, %5
  %32 = phi ptr [ @.str.5, %5 ], [ @.str.6, %28 ]
  %33 = load ptr, ptr @stderr, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 28
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull %32, ptr noundef nonnull %34) #7
  br label %36

36:                                               ; preds = %31, %28
  ret void
}

; Function Attrs: optsize
declare ptr @colormanage_colorspace_get_named(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @IMB_rectfill_alpha(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @IMB_unpremultiply_alpha(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @IMB_premultiply_alpha(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @colormanage_imbuf_make_linear(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_testextensie_array(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_replace_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_file_older(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { cold optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 40}
!39 = !{!"ImFileType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !40, i64 72, !40, i64 76, !40, i64 80}
!40 = !{!"int", !36, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"readimage.c:imb_handle_alpha"}
!44 = !{!45, !35, i64 40}
!45 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !46, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !47, i64 2436, !48, i64 2456}
!46 = !{!"float", !36, i64 0}
!47 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!48 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!49 = !{!45, !35, i64 48}
!50 = !{!45, !35, i64 2400}
!51 = !{!45, !40, i64 32}
!52 = !{!"readimage.c:imb_is_filepath_format"}
!53 = !{!"readimage.c:IMB_ibImageFromFile"}
!54 = !{!39, !35, i64 48}
!55 = distinct !{!55, !42}
!56 = !{!45, !40, i64 280}
!57 = distinct !{!57, !42}
!58 = !{!"readimage.c:imb_cache_filename"}
!59 = !{!"readimage.c:imb_loadtilefile"}
!60 = !{!39, !35, i64 64}
!61 = !{!39, !35, i64 32}
!62 = distinct !{!62, !42}
