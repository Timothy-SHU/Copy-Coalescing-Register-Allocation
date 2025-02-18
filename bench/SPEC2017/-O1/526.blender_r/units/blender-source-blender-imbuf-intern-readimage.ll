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

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_ibImageFromMemory(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !34
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.IMB_ibImageFromMemory) #7
  br label %37

11:                                               ; preds = %5
  %12 = icmp eq ptr %3, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef 64) #6
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !34
  %17 = icmp ugt ptr %16, @IMB_FILE_TYPES
  br i1 %17, label %18, label %31

18:                                               ; preds = %15, %27
  %19 = phi ptr [ %28, %27 ], [ @IMB_FILE_TYPES, %15 ]
  %20 = getelementptr inbounds %struct.ImFileType, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = call ptr %21(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call fastcc void @imb_handle_alpha(ptr noundef nonnull %24, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %6)
  br label %37

27:                                               ; preds = %18, %23
  %28 = getelementptr inbounds %struct.ImFileType, ptr %19, i64 1
  %29 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !34
  %30 = icmp ult ptr %28, %29
  br i1 %30, label %18, label %31, !llvm.loop !41

31:                                               ; preds = %27, %15
  %32 = and i32 %2, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr @stderr, align 8, !tbaa !34
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.IMB_ibImageFromMemory, ptr noundef %4) #7
  br label %37

37:                                               ; preds = %31, %34, %26, %8
  %38 = phi ptr [ null, %8 ], [ %24, %26 ], [ null, %34 ], [ null, %31 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  ret ptr %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @imb_handle_alpha(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
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
  %15 = tail call ptr @colormanage_colorspace_get_named(ptr noundef %3) #6
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  store ptr %15, ptr %16, align 8, !tbaa !50
  br label %17

17:                                               ; preds = %14, %10, %6
  %18 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %3, i64 noundef 64) #6
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
  tail call void @IMB_rectfill_alpha(ptr noundef %0, float noundef 1.000000e+00) #6
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
  tail call void @IMB_unpremultiply_alpha(ptr noundef %0) #6
  br label %43

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @IMB_premultiply_alpha(ptr noundef %0) #6
  br label %43

43:                                               ; preds = %33, %37, %38, %42, %29
  tail call void @colormanage_imbuf_make_linear(ptr noundef %0, ptr noundef %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_loadifffile(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i8], align 16
  %7 = icmp eq i32 %0, -1
  br i1 %7, label %53, label %8

8:                                                ; preds = %5
  %9 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %1, ptr noundef nonnull @imb_ext_image_filepath_only) #6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %12 = icmp eq ptr %3, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef 64) #6
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !34
  %17 = icmp ugt ptr %16, @IMB_FILE_TYPES
  br i1 %17, label %18, label %31

18:                                               ; preds = %15, %27
  %19 = phi ptr [ %28, %27 ], [ @IMB_FILE_TYPES, %15 ]
  %20 = getelementptr inbounds %struct.ImFileType, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = call ptr %21(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call fastcc void @imb_handle_alpha(ptr noundef nonnull %24, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %6)
  br label %37

27:                                               ; preds = %23, %18
  %28 = getelementptr inbounds %struct.ImFileType, ptr %19, i64 1
  %29 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !34
  %30 = icmp ult ptr %28, %29
  br i1 %30, label %18, label %31, !llvm.loop !53

31:                                               ; preds = %27, %15
  %32 = and i32 %2, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr @stderr, align 8, !tbaa !34
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.IMB_ibImageFromFile, ptr noundef %4) #7
  br label %37

37:                                               ; preds = %26, %31, %34
  %38 = phi ptr [ %24, %26 ], [ null, %34 ], [ null, %31 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  br label %53

39:                                               ; preds = %8
  %40 = tail call i64 @BLI_file_descriptor_size(i32 noundef %0) #6
  %41 = tail call ptr @mmap(ptr noundef null, i64 noundef %40, i32 noundef 1, i32 noundef 1, i32 noundef %0, i64 noundef 0) #6
  %42 = icmp eq ptr %41, inttoptr (i64 -1 to ptr)
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load ptr, ptr @stderr, align 8, !tbaa !34
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.IMB_loadifffile, ptr noundef %4) #7
  br label %53

46:                                               ; preds = %39
  %47 = tail call ptr @IMB_ibImageFromMemory(ptr noundef %41, i64 noundef %40, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  %48 = tail call i32 @munmap(ptr noundef %41, i64 noundef %40) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @stderr, align 8, !tbaa !34
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.IMB_loadifffile, ptr noundef %4) #7
  br label %53

53:                                               ; preds = %46, %50, %5, %43, %37
  %54 = phi ptr [ %38, %37 ], [ null, %43 ], [ null, %5 ], [ %47, %50 ], [ %47, %46 ]
  ret ptr %54
}

declare i64 @BLI_file_descriptor_size(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_loadiffname(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #6
  %5 = and i32 %1, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 1024) #6
  %9 = call zeroext i8 @BLI_replace_extension(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull @.str.4) #6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = call zeroext i8 @BLI_file_older(ptr noundef %0, ptr noundef nonnull %4) #6
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %3
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 1024) #6
  br label %16

16:                                               ; preds = %7, %11, %14
  %17 = call i32 @BLI_open(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0) #6
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %47, label %19

19:                                               ; preds = %16
  %20 = call ptr @IMB_loadifffile(i32 noundef %17, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 27
  %24 = call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef %0, i64 noundef 1024) #6
  %25 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 28
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull %4, i64 noundef 1024) #6
  %27 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 20
  %28 = load i32, ptr %27, align 8, !tbaa !54
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %41

30:                                               ; preds = %22, %30
  %31 = phi i64 [ %37, %30 ], [ 1, %22 ]
  %32 = add nsw i64 %31, -1
  %33 = getelementptr inbounds %struct.ImBuf, ptr %20, i64 0, i32 19, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 28
  %36 = call ptr @BLI_strncpy(ptr noundef nonnull %35, ptr noundef nonnull %4, i64 noundef 1024) #6
  %37 = add nuw nsw i64 %31, 1
  %38 = load i32, ptr %27, align 8, !tbaa !54
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %30, label %41, !llvm.loop !55

41:                                               ; preds = %30, %22
  %42 = and i32 %1, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @IMB_de_interlace(ptr noundef nonnull %20) #6
  br label %45

45:                                               ; preds = %41, %44, %19
  %46 = call i32 @close(i32 noundef %17) #6
  br label %47

47:                                               ; preds = %16, %45
  %48 = phi ptr [ %20, %45 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #6
  ret ptr %48
}

declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @IMB_de_interlace(ptr noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_testiffname(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %5 = and i32 %1, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 1024) #6
  %9 = call zeroext i8 @BLI_replace_extension(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef nonnull @.str.4) #6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = call zeroext i8 @BLI_file_older(ptr noundef %0, ptr noundef nonnull %3) #6
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 1024) #6
  br label %16

16:                                               ; preds = %7, %11, %14
  %17 = call i32 @BLI_open(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #6
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  %20 = or i32 %1, 130
  %21 = call ptr @IMB_loadifffile(i32 noundef %17, ptr noundef %0, i32 noundef %20, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 27
  %25 = call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %0, i64 noundef 1024) #6
  %26 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 28
  %27 = call ptr @BLI_strncpy(ptr noundef nonnull %26, ptr noundef nonnull %3, i64 noundef 1024) #6
  br label %28

28:                                               ; preds = %23, %19
  %29 = call i32 @close(i32 noundef %17) #6
  br label %30

30:                                               ; preds = %16, %28
  %31 = phi ptr [ %21, %28 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #6
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define dso_local void @imb_loadtile(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 28
  %6 = tail call i32 @BLI_open(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #6
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %40, label %8

8:                                                ; preds = %4
  %9 = tail call i64 @BLI_file_descriptor_size(i32 noundef %6) #6
  %10 = tail call ptr @mmap(ptr noundef null, i64 noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef %6, i64 noundef 0) #6
  %11 = icmp eq ptr %10, inttoptr (i64 -1 to ptr)
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !34
  %14 = icmp ugt ptr %13, @IMB_FILE_TYPES
  br i1 %14, label %15, label %31

15:                                               ; preds = %12, %27
  %16 = phi ptr [ %28, %27 ], [ @IMB_FILE_TYPES, %12 ]
  %17 = getelementptr inbounds %struct.ImFileType, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ImFileType, ptr %16, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = tail call i32 %22(ptr noundef nonnull %16, ptr noundef %0) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %17, align 8, !tbaa !56
  tail call void %26(ptr noundef %0, ptr noundef %10, i64 noundef %9, i32 noundef %1, i32 noundef %2, ptr noundef %3) #6
  br label %27

27:                                               ; preds = %25, %20, %15
  %28 = getelementptr inbounds %struct.ImFileType, ptr %16, i64 1
  %29 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !34
  %30 = icmp ult ptr %28, %29
  br i1 %30, label %15, label %31, !llvm.loop !58

31:                                               ; preds = %27, %12
  %32 = tail call i32 @munmap(ptr noundef %10, i64 noundef %9) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31, %8
  %35 = phi ptr [ @.str.5, %8 ], [ @.str.6, %31 ]
  %36 = load ptr, ptr @stderr, align 8, !tbaa !34
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull %35, ptr noundef nonnull %5) #7
  br label %38

38:                                               ; preds = %34, %31
  %39 = tail call i32 @close(i32 noundef %6) #6
  br label %40

40:                                               ; preds = %4, %38
  ret void
}

declare ptr @colormanage_colorspace_get_named(ptr noundef) local_unnamed_addr #4

declare void @IMB_rectfill_alpha(ptr noundef, float noundef) local_unnamed_addr #4

declare void @IMB_unpremultiply_alpha(ptr noundef) local_unnamed_addr #4

declare void @IMB_premultiply_alpha(ptr noundef) local_unnamed_addr #4

declare void @colormanage_imbuf_make_linear(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @BLI_testextensie_array(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @BLI_replace_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @BLI_file_older(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { cold }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 40}
!39 = !{!"ImFileType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !40, i64 72, !40, i64 76, !40, i64 80}
!40 = !{!"int", !36, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !35, i64 40}
!45 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !46, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !47, i64 2436, !48, i64 2456}
!46 = !{!"float", !36, i64 0}
!47 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!48 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!49 = !{!45, !35, i64 48}
!50 = !{!45, !35, i64 2400}
!51 = !{!45, !40, i64 32}
!52 = !{!39, !35, i64 48}
!53 = distinct !{!53, !42, !43}
!54 = !{!45, !40, i64 280}
!55 = distinct !{!55, !42, !43}
!56 = !{!39, !35, i64 64}
!57 = !{!39, !35, i64 32}
!58 = distinct !{!58, !42, !43}
