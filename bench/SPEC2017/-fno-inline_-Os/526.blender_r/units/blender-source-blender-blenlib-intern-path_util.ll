; ModuleID = 'blender/source/blender/blenlib/intern/path_util.c'
source_filename = "blender/source/blender/blenlib/intern/path_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr, ptr, i32 }
%struct.anon.0 = type { ptr, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"%s%.*d%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c%03d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"/../\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"/./\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%.*s%.*d%s\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%.*s%.*d-%.*d%s\00", align 1
@BLI_get_folder.path = internal global [1024 x i8] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [10 x i8] c"datafiles\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"autosave\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"scripts\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"python\00", align 1
@BLI_get_user_folder_notest.path = internal global [1024 x i8] zeroinitializer, align 16
@BLI_get_folder_version.path = internal global [1024 x i8] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@bprogname = internal global [1024 x i8] zeroinitializer, align 16
@bprogdir = internal global [1024 x i8] zeroinitializer, align 16
@btempdir_session = internal global [1024 x i8] zeroinitializer, align 16
@btempdir_base = internal global [1024 x i8] zeroinitializer, align 16
@blender_version_decimal.version_str = internal global [5 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"%d.%02d\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"blender_XXXXXX\00", align 1
@.str.26 = private unnamed_addr constant [77 x i8] c"Warning! Could not generate a temp file name for '%s', falling back to '%s'\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@reltable.BLI_get_user_folder_notest = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable.BLI_get_user_folder_notest to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable.BLI_get_user_folder_notest to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.15 to i64), i64 ptrtoint (ptr @reltable.BLI_get_user_folder_notest to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable.BLI_get_user_folder_notest to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_stringdec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @BLI_last_slash(ptr noundef %0) #27
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %7 = trunc i64 %6 to i32
  %8 = icmp eq ptr %5, null
  %9 = ptrtoint ptr %5 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = select i1 %8, i32 0, i32 %12
  %14 = and i64 %6, 4294967295
  %15 = zext i32 %13 to i64
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %7)
  br label %17

17:                                               ; preds = %20, %4
  %18 = phi i64 [ %21, %20 ], [ %14, %4 ]
  %19 = icmp ugt i64 %18, %15
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = add nsw i64 %18, -1
  %22 = and i64 %21, 4294967295
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !34
  %25 = icmp eq i8 %24, 46
  br i1 %25, label %26, label %17, !llvm.loop !37

26:                                               ; preds = %20
  %27 = trunc i64 %21 to i32
  br label %28

28:                                               ; preds = %17, %26
  %29 = phi i32 [ %27, %26 ], [ %16, %17 ]
  %30 = icmp eq i32 %29, %13
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %0, i64 %15
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = icmp eq i8 %33, 46
  %35 = select i1 %34, i32 %13, i32 %7
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i32 [ %29, %28 ], [ %35, %31 ]
  %38 = add i32 %37, -1
  %39 = icmp slt i32 %38, %13
  br i1 %39, label %92, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @__ctype_b_loc() #29
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  br label %43

43:                                               ; preds = %40, %60
  %44 = phi i32 [ %38, %40 ], [ %64, %60 ]
  %45 = phi i32 [ 0, %40 ], [ %63, %60 ]
  %46 = phi i32 [ 0, %40 ], [ %62, %60 ]
  %47 = phi i8 [ 0, %40 ], [ %61, %60 ]
  %48 = sext i32 %44 to i64
  %49 = getelementptr inbounds i8, ptr %0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !34
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds i16, ptr %42, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !41
  %54 = and i16 %53, 2048
  %55 = icmp eq i16 %54, 0
  %56 = icmp eq i8 %47, 0
  br i1 %55, label %59, label %57

57:                                               ; preds = %43
  %58 = select i1 %56, i32 %44, i32 %46
  br label %60

59:                                               ; preds = %43
  br i1 %56, label %60, label %67

60:                                               ; preds = %59, %57
  %61 = phi i8 [ 0, %59 ], [ 1, %57 ]
  %62 = phi i32 [ %46, %59 ], [ %58, %57 ]
  %63 = phi i32 [ %45, %59 ], [ %44, %57 ]
  %64 = add i32 %44, -1
  %65 = icmp slt i32 %64, %13
  br i1 %65, label %66, label %43, !llvm.loop !43

66:                                               ; preds = %60
  br i1 %55, label %92, label %67

67:                                               ; preds = %59, %66
  %68 = phi i32 [ %62, %66 ], [ %46, %59 ]
  %69 = phi i32 [ %63, %66 ], [ %45, %59 ]
  %70 = icmp eq ptr %2, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = add i32 %68, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %0, i64 %73
  %75 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %74) #30
  br label %76

76:                                               ; preds = %71, %67
  %77 = icmp eq ptr %1, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %76
  %79 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #30
  %80 = zext i32 %69 to i64
  %81 = getelementptr inbounds i8, ptr %1, i64 %80
  store i8 0, ptr %81, align 1, !tbaa !34
  br label %82

82:                                               ; preds = %78, %76
  %83 = icmp eq ptr %3, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %82
  %85 = sub i32 %68, %69
  %86 = trunc i32 %85 to i16
  %87 = add i16 %86, 1
  store i16 %87, ptr %3, align 2, !tbaa !41
  br label %88

88:                                               ; preds = %84, %82
  %89 = zext i32 %69 to i64
  %90 = getelementptr inbounds i8, ptr %0, i64 %89
  %91 = tail call i32 @atoi(ptr nocapture noundef %90) #28
  br label %107

92:                                               ; preds = %36, %66
  %93 = icmp eq ptr %2, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %92
  %95 = zext i32 %37 to i64
  %96 = getelementptr inbounds i8, ptr %0, i64 %95
  %97 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %96) #30
  br label %98

98:                                               ; preds = %94, %92
  %99 = icmp eq ptr %1, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %98
  %101 = add i32 %37, 1
  %102 = zext i32 %101 to i64
  %103 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef %0, i64 noundef %102) #30
  br label %104

104:                                              ; preds = %100, %98
  %105 = icmp eq ptr %3, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %104
  store i16 0, ptr %3, align 2, !tbaa !41
  br label %107

107:                                              ; preds = %104, %106, %88
  %108 = phi i32 [ %91, %88 ], [ 0, %106 ], [ 0, %104 ]
  ret i32 %108
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_last_slash(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #28
  %3 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #28
  %4 = icmp eq ptr %2, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %3, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = icmp slt ptr %2, %3
  %9 = select i1 %8, ptr %3, ptr %2
  br label %10

10:                                               ; preds = %7, %5, %1
  %11 = phi ptr [ %3, %1 ], [ %2, %5 ], [ %9, %7 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BLI_stringenc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = zext i16 %3 to i32
  %7 = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %1, i32 noundef %6, i32 noundef %7, ptr noundef %2) #30
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite) uwtable
define dso_local i32 @BLI_split_name_num(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #10 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  %6 = trunc i64 %5 to i32
  store i32 0, ptr %1, align 4, !tbaa !44
  %7 = shl i64 %5, 32
  %8 = add i64 %7, 4294967296
  %9 = ashr exact i64 %8, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %2, i64 %9, i1 false)
  %10 = icmp sgt i32 %6, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = add i64 %5, 4294967295
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds i8, ptr %2, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %16 = icmp eq i8 %15, %3
  br i1 %16, label %43, label %17

17:                                               ; preds = %4, %11
  %18 = shl i64 %5, 32
  %19 = ashr exact i64 %18, 32
  br label %20

20:                                               ; preds = %35, %17
  %21 = phi i64 [ %22, %35 ], [ %19, %17 ]
  %22 = add nsw i64 %21, -1
  %23 = icmp eq i64 %21, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %2, i64 %22
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = icmp eq i8 %26, %3
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = trunc i64 %22 to i32
  %30 = getelementptr inbounds i8, ptr %0, i64 %22
  store i8 0, ptr %30, align 1, !tbaa !34
  %31 = getelementptr inbounds i8, ptr %2, i64 %21
  %32 = tail call i64 @atol(ptr nocapture noundef nonnull %31) #28
  %33 = trunc i64 %32 to i32
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0)
  store i32 %34, ptr %1, align 4, !tbaa !44
  br label %43

35:                                               ; preds = %24
  %36 = tail call ptr @__ctype_b_loc() #29
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = zext i8 %26 to i64
  %39 = getelementptr inbounds i16, ptr %37, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !41
  %41 = and i16 %40, 2048
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %20, !llvm.loop !46

43:                                               ; preds = %20, %35, %11, %28
  %44 = phi i32 [ %29, %28 ], [ %6, %11 ], [ %6, %35 ], [ %6, %20 ]
  ret i32 %44
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i64 @atol(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_newname(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #31
  %6 = call i32 @BLI_stringdec(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #27
  %7 = icmp slt i32 %1, 0
  %8 = load i16, ptr %5, align 2
  %9 = icmp ult i16 %8, 4
  %10 = select i1 %7, i1 %9, i1 false
  %11 = icmp ne i16 %8, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = add nsw i32 %6, %1
  br label %33

15:                                               ; preds = %2
  %16 = icmp ugt i16 %8, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %15
  %18 = zext i16 %8 to i32
  %19 = add nsw i32 %18, -2
  %20 = insertelement <4 x i32> poison, i32 %19, i64 0
  %21 = shufflevector <4 x i32> %20, <4 x i32> poison, <4 x i32> zeroinitializer
  %22 = icmp ult <4 x i32> %21, <i32 0, i32 1, i32 2, i32 3>
  %23 = select <4 x i1> %22, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %24 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %23)
  br label %25

25:                                               ; preds = %17, %15
  %26 = phi i32 [ 1, %15 ], [ %24, %17 ]
  %27 = icmp sge i32 %6, %26
  %28 = add nsw i32 %6, %1
  %29 = icmp slt i32 %28, %26
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = add i16 %8, -1
  store i16 %32, ptr %5, align 2, !tbaa !41
  br label %33

33:                                               ; preds = %13, %25, %31
  %34 = phi i32 [ %14, %13 ], [ %28, %25 ], [ %28, %31 ]
  %35 = phi i16 [ %8, %13 ], [ %8, %25 ], [ %32, %31 ]
  %36 = icmp eq i16 %35, 4
  %37 = call i32 @llvm.smax.i32(i32 %34, i32 0)
  %38 = select i1 %36, i32 %37, i32 %34
  call void @BLI_stringenc(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i16 noundef zeroext %35, i32 noundef %38) #27
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_uniquename_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = load i8, ptr %4, align 1, !tbaa !34
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = sext i32 %5 to i64
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %2, i64 noundef %14) #30
  br label %16

16:                                               ; preds = %13, %6
  %17 = tail call zeroext i8 %0(ptr noundef %1, ptr noundef nonnull %4) #30
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #31
  %20 = call i32 @BLI_split_name_num(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %4, i8 noundef zeroext %3) #27
  %21 = zext i8 %3 to i32
  %22 = load i32, ptr %10, align 4, !tbaa !44
  %23 = icmp ne i32 %20, 0
  %24 = sext i32 %5 to i64
  br label %25

25:                                               ; preds = %41, %19
  %26 = phi i32 [ %27, %41 ], [ %22, %19 ]
  %27 = add nsw i32 %26, 1
  %28 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %27) #30
  %29 = trunc i64 %28 to i32
  %30 = icmp slt i32 %29, %5
  %31 = select i1 %23, i1 %30, i1 false
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef %24) #30
  br label %41

34:                                               ; preds = %25
  store i8 0, ptr %8, align 16, !tbaa !34
  %35 = sub nsw i32 %5, %29
  %36 = sext i32 %35 to i64
  %37 = call ptr @BLI_strncat_utf8(ptr noundef nonnull %8, ptr noundef nonnull %9, i64 noundef %36) #30
  %38 = shl i64 %28, 32
  %39 = add i64 %38, 4294967296
  %40 = ashr exact i64 %39, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr nonnull align 16 %7, i64 %40, i1 false)
  br label %41

41:                                               ; preds = %34, %32
  %42 = call zeroext i8 %0(ptr noundef %1, ptr noundef nonnull %8) #30
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %25, !llvm.loop !47

44:                                               ; preds = %41
  %45 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %8, i64 noundef %24) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #31
  br label %46

46:                                               ; preds = %16, %44
  %47 = phi i8 [ 1, %44 ], [ 0, %16 ]
  ret i8 %47
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_strncat_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_uniquename(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.anon, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #31
  store ptr %0, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 2
  store i32 %4, ptr %9, align 8, !tbaa !51
  %10 = icmp eq ptr %1, null
  %11 = icmp eq ptr %2, null
  %12 = or i1 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = sext i32 %4 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @uniquename_unique_check, ptr noundef nonnull %7, ptr noundef nonnull %2, i8 noundef zeroext %3, ptr noundef %15, i32 noundef %5) #27, !range !52
  br label %17

17:                                               ; preds = %6, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #31
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @uniquename_unique_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !PGOFuncName !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = tail call fastcc zeroext i8 @uniquename_find_dupe(ptr noundef %3, ptr noundef %5, ptr noundef %1, i32 noundef %7) #27, !range !52
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_cleanup_path(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i8 @BLI_path_abs(ptr noundef %1, ptr noundef nonnull %0) #27, !range !52
  br label %17

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !34
  %8 = icmp eq i8 %7, 47
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = icmp eq i8 %11, 47
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %1, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %71, label %17

17:                                               ; preds = %13, %6, %9, %4
  %18 = phi ptr [ %1, %4 ], [ %1, %9 ], [ %1, %6 ], [ %14, %13 ]
  %19 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.2) #28
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = ptrtoint ptr %18 to i64
  %23 = xor i64 %22, -1
  %24 = getelementptr inbounds i8, ptr %18, i64 3
  br label %28

25:                                               ; preds = %51, %17
  %26 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.3) #28
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %57

28:                                               ; preds = %21, %51
  %29 = phi ptr [ %19, %21 ], [ %52, %51 ]
  %30 = ptrtoint ptr %29 to i64
  %31 = add i64 %30, %23
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = getelementptr inbounds i8, ptr %29, i64 3
  br label %35

35:                                               ; preds = %33, %40
  %36 = phi i64 [ %31, %33 ], [ %41, %40 ]
  %37 = getelementptr inbounds i8, ptr %18, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = icmp eq i8 %38, 47
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = add nsw i64 %36, -1
  %42 = icmp sgt i64 %36, 1
  br i1 %42, label %35, label %43, !llvm.loop !54

43:                                               ; preds = %40, %35
  %44 = phi i64 [ 0, %40 ], [ %36, %35 ]
  %45 = getelementptr inbounds i8, ptr %18, i64 %44
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #28
  %47 = add i64 %46, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %45, ptr nonnull align 1 %34, i64 %47, i1 false)
  br label %51

48:                                               ; preds = %28
  %49 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #28
  %50 = add i64 %49, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %18, ptr nonnull align 1 %24, i64 %50, i1 false)
  br label %51

51:                                               ; preds = %48, %43
  %52 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.2) #28
  %53 = icmp eq ptr %52, null
  br i1 %53, label %25, label %28, !llvm.loop !55

54:                                               ; preds = %57, %25
  %55 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.4) #28
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %64

57:                                               ; preds = %25, %57
  %58 = phi ptr [ %62, %57 ], [ %26, %25 ]
  %59 = getelementptr inbounds i8, ptr %58, i64 2
  %60 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %59) #28
  %61 = add i64 %60, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %58, ptr nonnull align 1 %59, i64 %61, i1 false)
  %62 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.3) #28
  %63 = icmp eq ptr %62, null
  br i1 %63, label %54, label %57, !llvm.loop !56

64:                                               ; preds = %54, %64
  %65 = phi ptr [ %69, %64 ], [ %55, %54 ]
  %66 = getelementptr inbounds i8, ptr %65, i64 1
  %67 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %66) #28
  %68 = add i64 %67, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %65, ptr nonnull align 1 %66, i64 %68, i1 false)
  %69 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.4) #28
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %64, !llvm.loop !57

71:                                               ; preds = %64, %54, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BLI_path_abs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %0) #27, !range !52
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #31
  %6 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 1024) #30
  %7 = tail call ptr @__ctype_b_loc() #29
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = load i8, ptr %3, align 16, !tbaa !34
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i16, ptr %8, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !41
  %13 = and i16 %12, 1024
  %14 = icmp ne i16 %13, 0
  %15 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 58
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 2
  %21 = load i8, ptr %20, align 2
  switch i8 %21, label %28 [
    i8 92, label %22
    i8 47, label %22
  ]

22:                                               ; preds = %19, %19
  %23 = tail call ptr @__ctype_tolower_loc() #29
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = getelementptr inbounds i32, ptr %24, i64 %10
  %26 = load i32, ptr %25, align 4, !tbaa !44
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr %15, align 1, !tbaa !34
  store i8 47, ptr %3, align 16, !tbaa !34
  br label %28

28:                                               ; preds = %19, %22, %2
  %29 = call fastcc i32 @BLI_path_unc_prefix_len(ptr noundef nonnull %3) #27, !range !58
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %3, i64 %30
  call void @BLI_char_switch(ptr noundef nonnull %31, i8 noundef zeroext 92, i8 noundef zeroext 47) #27
  %32 = icmp eq i8 %5, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %28
  %34 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 1024) #30
  call void @BLI_cleanup_path(ptr noundef null, ptr noundef nonnull %4) #27
  %35 = call ptr @BLI_last_slash(ptr noundef nonnull %4) #27
  %36 = call fastcc i32 @BLI_path_unc_prefix_len(ptr noundef nonnull %4) #27, !range !58
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %4, i64 %37
  call void @BLI_char_switch(ptr noundef nonnull %38, i8 noundef zeroext 92, i8 noundef zeroext 47) #27
  %39 = icmp eq ptr %35, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %33
  %41 = ptrtoint ptr %35 to i64
  %42 = ptrtoint ptr %4 to i64
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds i8, ptr %3, i64 2
  %45 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %44, i64 noundef 1024) #30
  %46 = shl i64 %43, 32
  %47 = add i64 %46, 4294967296
  %48 = ashr exact i64 %47, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull align 16 %4, i64 %48, i1 false)
  %49 = getelementptr inbounds i8, ptr %3, i64 %48
  %50 = sub nsw i64 1024, %48
  %51 = call ptr @BLI_strncpy(ptr noundef nonnull %49, ptr noundef %0, i64 noundef %50) #30
  br label %54

52:                                               ; preds = %33
  %53 = getelementptr inbounds i8, ptr %3, i64 2
  br label %54

54:                                               ; preds = %28, %40, %52
  %55 = phi ptr [ %3, %40 ], [ %53, %52 ], [ %3, %28 ]
  %56 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %55, i64 noundef 1024) #30
  call void @BLI_cleanup_path(ptr noundef null, ptr noundef %0) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #31
  ret i8 %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_cleanup_dir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_cleanup_path(ptr noundef %0, ptr noundef %1) #27
  %3 = tail call i32 @BLI_add_slash(ptr noundef %1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_add_slash(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %3 = trunc i64 %2 to i32
  %4 = icmp eq i32 %3, 0
  %5 = shl i64 %2, 32
  br i1 %4, label %12, label %6

6:                                                ; preds = %1
  %7 = add i64 %5, -4294967296
  %8 = ashr exact i64 %7, 32
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !34
  %11 = icmp eq i8 %10, 47
  br i1 %11, label %18, label %12

12:                                               ; preds = %1, %6
  %13 = ashr exact i64 %5, 32
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  store i8 47, ptr %14, align 1, !tbaa !34
  %15 = add nsw i32 %3, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  store i8 0, ptr %17, align 1, !tbaa !34
  br label %18

18:                                               ; preds = %6, %12
  %19 = phi i32 [ %15, %12 ], [ %3, %6 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_cleanup_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_cleanup_path(ptr noundef %0, ptr noundef %1) #27
  tail call void @BLI_del_slash(ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BLI_del_slash(ptr nocapture noundef %0) local_unnamed_addr #14 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %3 = getelementptr i8, ptr %0, i64 -1
  %4 = and i64 %2, 4294967295
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = shl i64 %2, 32
  %8 = ashr exact i64 %7, 32
  br label %9

9:                                                ; preds = %6, %14
  %10 = phi i64 [ %8, %6 ], [ %15, %14 ]
  %11 = getelementptr i8, ptr %3, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !34
  %13 = icmp eq i8 %12, 47
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  store i8 0, ptr %11, align 1, !tbaa !34
  %15 = add nsw i64 %10, -1
  %16 = and i64 %15, 4294967295
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %9, !llvm.loop !59

18:                                               ; preds = %14, %9, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_path_is_rel(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = icmp eq i8 %2, 47
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = icmp eq i8 %6, 47
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_path_is_unc(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = icmp eq i8 %2, 92
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = icmp eq i8 %6, 92
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_path_rel(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #31
  %5 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %0) #27, !range !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %97

7:                                                ; preds = %2
  %8 = load i8, ptr %1, align 1, !tbaa !34
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %97, label %10

10:                                               ; preds = %7
  %11 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef 1024) #30
  %12 = call fastcc i32 @BLI_path_unc_prefix_len(ptr noundef nonnull %3) #27, !range !58
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %3, i64 %13
  call void @BLI_char_switch(ptr noundef nonnull %14, i8 noundef zeroext 92, i8 noundef zeroext 47) #27
  %15 = call fastcc i32 @BLI_path_unc_prefix_len(ptr noundef %0) #27, !range !58
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  call void @BLI_char_switch(ptr noundef %17, i8 noundef zeroext 92, i8 noundef zeroext 47) #27
  call void @BLI_cleanup_path(ptr noundef null, ptr noundef %0) #27
  call void @BLI_cleanup_path(ptr noundef null, ptr noundef nonnull %3) #27
  %18 = call ptr @BLI_last_slash(ptr noundef nonnull %3) #27
  %19 = icmp eq ptr %18, null
  br i1 %19, label %97, label %20

20:                                               ; preds = %10
  %21 = load i8, ptr %3, align 16, !tbaa !34
  %22 = load i8, ptr %0, align 1, !tbaa !34
  br label %23

23:                                               ; preds = %20, %35
  %24 = phi i8 [ %34, %35 ], [ %22, %20 ]
  %25 = phi i8 [ %32, %35 ], [ %21, %20 ]
  %26 = phi ptr [ %30, %35 ], [ %3, %20 ]
  %27 = phi ptr [ %31, %35 ], [ %0, %20 ]
  %28 = icmp eq i8 %25, %24
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = getelementptr inbounds i8, ptr %26, i64 1
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !34
  %33 = icmp eq i8 %32, 0
  %34 = load i8, ptr %31, align 1, !tbaa !34
  br i1 %33, label %43, label %35

35:                                               ; preds = %29
  %36 = icmp eq i8 %34, 0
  br i1 %36, label %37, label %23, !llvm.loop !60

37:                                               ; preds = %23, %35
  %38 = phi i8 [ %32, %35 ], [ %25, %23 ]
  %39 = phi i8 [ 0, %35 ], [ %24, %23 ]
  %40 = phi ptr [ %30, %35 ], [ %26, %23 ]
  %41 = phi ptr [ %31, %35 ], [ %27, %23 ]
  %42 = icmp ne i8 %38, 47
  br label %43

43:                                               ; preds = %29, %37
  %44 = phi i1 [ %42, %37 ], [ true, %29 ]
  %45 = phi i8 [ %39, %37 ], [ %34, %29 ]
  %46 = phi ptr [ %40, %37 ], [ %30, %29 ]
  %47 = phi ptr [ %41, %37 ], [ %31, %29 ]
  %48 = icmp eq i8 %45, 47
  br i1 %48, label %60, label %49

49:                                               ; preds = %43
  %50 = icmp ult ptr %47, %0
  br i1 %50, label %72, label %51

51:                                               ; preds = %49, %56
  %52 = phi ptr [ %57, %56 ], [ %47, %49 ]
  %53 = phi ptr [ %58, %56 ], [ %46, %49 ]
  %54 = load i8, ptr %52, align 1, !tbaa !34
  %55 = icmp eq i8 %54, 47
  br i1 %55, label %72, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, ptr %52, i64 -1
  %58 = getelementptr inbounds i8, ptr %53, i64 -1
  %59 = icmp ult ptr %57, %0
  br i1 %59, label %72, label %51, !llvm.loop !61

60:                                               ; preds = %43
  %61 = icmp uge ptr %46, %3
  %62 = and i1 %61, %44
  br i1 %62, label %66, label %72

63:                                               ; preds = %66
  %64 = load i8, ptr %69, align 1, !tbaa !34
  %65 = icmp eq i8 %64, 47
  br i1 %65, label %72, label %66

66:                                               ; preds = %60, %63
  %67 = phi ptr [ %70, %63 ], [ %47, %60 ]
  %68 = phi ptr [ %69, %63 ], [ %46, %60 ]
  %69 = getelementptr inbounds i8, ptr %68, i64 -1
  %70 = getelementptr inbounds i8, ptr %67, i64 -1
  %71 = icmp ult ptr %69, %3
  br i1 %71, label %72, label %63

72:                                               ; preds = %56, %51, %66, %63, %49, %60
  %73 = phi ptr [ %46, %60 ], [ %46, %49 ], [ %69, %63 ], [ %69, %66 ], [ %58, %56 ], [ %53, %51 ]
  %74 = phi ptr [ %47, %60 ], [ %47, %49 ], [ %70, %63 ], [ %70, %66 ], [ %57, %56 ], [ %52, %51 ]
  %75 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %4, ptr noundef nonnull @.str.4) #30
  %76 = getelementptr inbounds i8, ptr %4, i64 %75
  %77 = icmp ult ptr %73, %3
  %78 = select i1 %77, ptr %3, ptr %73
  %79 = icmp ult ptr %78, %18
  br i1 %79, label %80, label %92

80:                                               ; preds = %72, %88
  %81 = phi ptr [ %89, %88 ], [ %76, %72 ]
  %82 = phi ptr [ %90, %88 ], [ %78, %72 ]
  %83 = load i8, ptr %82, align 1, !tbaa !34
  %84 = icmp eq i8 %83, 47
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = call i64 @BLI_strcpy_rlen(ptr noundef %81, ptr noundef nonnull @.str.5) #30
  %87 = getelementptr inbounds i8, ptr %81, i64 %86
  br label %88

88:                                               ; preds = %85, %80
  %89 = phi ptr [ %87, %85 ], [ %81, %80 ]
  %90 = getelementptr inbounds i8, ptr %82, i64 1
  %91 = icmp ult ptr %90, %18
  br i1 %91, label %80, label %92, !llvm.loop !62

92:                                               ; preds = %88, %72
  %93 = phi ptr [ %76, %72 ], [ %89, %88 ]
  %94 = getelementptr inbounds i8, ptr %74, i64 1
  %95 = call i64 @BLI_strcpy_rlen(ptr noundef %93, ptr noundef nonnull %94) #30
  %96 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %4) #30
  br label %97

97:                                               ; preds = %10, %92, %7, %2
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #31
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_char_switch(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #16 {
  %4 = load i8, ptr %0, align 1, !tbaa !34
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3, %11
  %7 = phi i8 [ %13, %11 ], [ %4, %3 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %3 ]
  %9 = icmp eq i8 %7, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i8 %2, ptr %8, align 1, !tbaa !34
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %6, !llvm.loop !63

15:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @BLI_path_unc_prefix_len(ptr nocapture noundef readonly %0) unnamed_addr #15 !PGOFuncName !64 {
  %2 = tail call zeroext i8 @BLI_path_is_unc(ptr noundef %0) #27, !range !52
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 2
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = icmp eq i8 %6, 63
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 3
  %10 = load i8, ptr %9, align 1, !tbaa !34
  %11 = icmp eq i8 %10, 92
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %4
  br label %13

13:                                               ; preds = %1, %8, %12
  %14 = phi i32 [ 2, %12 ], [ 4, %8 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i64 @BLI_strcpy_rlen(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_path_suffix(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [1024 x i8], align 16
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #31
  %9 = add i64 %7, %6
  %10 = add i64 %9, %8
  %11 = icmp ult i64 %10, %1
  br i1 %11, label %12, label %25

12:                                               ; preds = %4, %16
  %13 = phi i64 [ %14, %16 ], [ %6, %4 ]
  %14 = add i64 %13, -1
  %15 = icmp sgt i64 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %0, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !34
  switch i8 %18, label %12 [
    i8 46, label %19
    i8 47, label %20
    i8 92, label %20
  ], !llvm.loop !65

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %12, %16, %16, %19
  %21 = phi i64 [ %14, %19 ], [ %6, %16 ], [ %6, %16 ], [ %6, %12 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %22, i64 noundef 1024) #30
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %5) #30
  br label %25

25:                                               ; preds = %4, %20
  %26 = phi i8 [ 1, %20 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #31
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_parent_dir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [1028 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #31
  store i32 3092014, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %3) #31
  call void @BLI_join_dirfile(ptr noundef nonnull %3, i64 noundef 1028, ptr noundef %0, ptr noundef nonnull %2) #27
  call void @BLI_cleanup_dir(ptr noundef null, ptr noundef nonnull %3) #27
  %4 = call zeroext i8 @BLI_testextensie(ptr noundef nonnull %3, ptr noundef nonnull %2) #27, !range !52
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 1028) #30
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi i8 [ 1, %6 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #31
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_join_dirfile(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i64 @BLI_strnlen(ptr noundef %2, i64 noundef %1) #30
  %6 = icmp eq i64 %5, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %2, i64 %1, i1 false)
  %8 = getelementptr i8, ptr %0, i64 %1
  %9 = getelementptr i8, ptr %8, i64 -1
  store i8 0, ptr %9, align 1, !tbaa !34
  br label %29

10:                                               ; preds = %4
  %11 = add i64 %5, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %2, i64 %11, i1 false)
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = icmp eq i64 %5, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %13
  %16 = getelementptr i8, ptr %0, i64 %5
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = icmp eq i8 %18, 47
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  store i8 47, ptr %16, align 1, !tbaa !34
  %21 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 0, ptr %21, align 1, !tbaa !34
  br label %22

22:                                               ; preds = %20, %15, %13
  %23 = phi i64 [ %11, %20 ], [ %5, %15 ], [ 0, %13 ]
  %24 = icmp ult i64 %23, %1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %0, i64 %23
  %27 = sub i64 %1, %23
  %28 = tail call ptr @BLI_strncpy(ptr noundef %26, ptr noundef %3, i64 noundef %27) #30
  br label %29

29:                                               ; preds = %22, %10, %25, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %5 = tail call fastcc zeroext i8 @testextensie_ex(ptr noundef %0, i64 noundef %3, ptr noundef %1, i64 noundef %4) #27, !range !52
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_path_frame(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call fastcc void @ensure_digits(ptr noundef %0, i32 noundef %2) #27
  br label %9

9:                                                ; preds = %8, %3
  %10 = call fastcc zeroext i8 @stringframe_chars(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #27, !range !52
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #31
  %13 = load i32, ptr %4, align 4, !tbaa !44
  %14 = load i32, ptr %5, align 4, !tbaa !44
  %15 = sub nsw i32 %14, %13
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 1024, ptr noundef nonnull @.str.7, i32 noundef %13, ptr noundef %0, i32 noundef %15, i32 noundef %1, ptr noundef %17) #30
  %19 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 1024) #30
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #31
  br label %20

20:                                               ; preds = %9, %12
  %21 = phi i8 [ 1, %12 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #31
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ensure_digits(ptr noundef %0, i32 noundef %1) unnamed_addr #17 !PGOFuncName !66 {
  %3 = tail call ptr @BLI_last_slash(ptr noundef %0) #27
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr %0, ptr %3
  %6 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 35) #28
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #28
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = shl i64 %9, 32
  %14 = ashr exact i64 %13, 32
  %15 = getelementptr i8, ptr %5, i64 %14
  %16 = zext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %15, i8 35, i64 %16, i1 false), !tbaa !34
  %17 = trunc i64 %9 to i32
  %18 = add i32 %17, %1
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i32 [ %10, %8 ], [ %18, %12 ]
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %5, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !34
  br label %23

23:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @stringframe_chars(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #18 !PGOFuncName !67 {
  br label %4

4:                                                ; preds = %19, %3
  %5 = phi i32 [ 0, %3 ], [ %20, %19 ]
  %6 = phi i32 [ 0, %3 ], [ %21, %19 ]
  %7 = phi i32 [ 0, %3 ], [ %23, %19 ]
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !34
  switch i8 %10, label %18 [
    i8 0, label %24
    i8 92, label %19
    i8 47, label %19
    i8 35, label %11
  ]

11:                                               ; preds = %4, %11
  %12 = phi i32 [ %13, %11 ], [ %7, %4 ]
  %13 = add i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !34
  %17 = icmp eq i8 %16, 35
  br i1 %17, label %11, label %19, !llvm.loop !68

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %11, %4, %4, %18
  %20 = phi i32 [ %5, %4 ], [ %5, %4 ], [ %5, %18 ], [ %7, %11 ]
  %21 = phi i32 [ 0, %4 ], [ 0, %4 ], [ %6, %18 ], [ %13, %11 ]
  %22 = phi i32 [ %7, %4 ], [ %7, %4 ], [ %7, %18 ], [ %12, %11 ]
  %23 = add i32 %22, 1
  br label %4, !llvm.loop !69

24:                                               ; preds = %4
  %25 = icmp ne i32 %6, 0
  %26 = select i1 %25, i32 %5, i32 -1
  %27 = select i1 %25, i32 %6, i32 -1
  %28 = zext i1 %25 to i8
  store i32 %26, ptr %1, align 4, !tbaa !44
  store i32 %27, ptr %2, align 4, !tbaa !44
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_path_frame_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #31
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @ensure_digits(ptr noundef %0, i32 noundef %3) #27
  br label %10

10:                                               ; preds = %9, %4
  %11 = call fastcc zeroext i8 @stringframe_chars(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #27, !range !52
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #31
  %14 = load i32, ptr %5, align 4, !tbaa !44
  %15 = load i32, ptr %6, align 4, !tbaa !44
  %16 = sub nsw i32 %15, %14
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %14, ptr noundef %0, i32 noundef %16, i32 noundef %1, i32 noundef %16, i32 noundef %2, ptr noundef %18) #30
  %20 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 1024) #30
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #31
  br label %21

21:                                               ; preds = %10, %13
  %22 = phi i8 [ 1, %13 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  ret i8 %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @BLI_path_frame_check_chars(ptr nocapture noundef readonly %0) local_unnamed_addr #18 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  %4 = call fastcc zeroext i8 @stringframe_chars(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #27, !range !52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #31
  ret i8 %4
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_path_cwd(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i8, ptr %0, align 1, !tbaa !34
  %8 = icmp eq i8 %7, 47
  br i1 %8, label %11, label %9

9:                                                ; preds = %1, %6
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %2, i8 0, i64 1024, i1 false)
  %10 = call ptr @BLI_current_working_dir(ptr noundef nonnull %2, i64 noundef 1024) #30
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #31
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i8 [ 1, %9 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: optsize
declare ptr @BLI_current_working_dir(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_getlastdir(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %10, %3
  %5 = phi ptr [ %0, %3 ], [ %13, %10 ]
  %6 = phi ptr [ null, %3 ], [ %11, %10 ]
  %7 = phi ptr [ null, %3 ], [ %12, %10 ]
  %8 = load i8, ptr %5, align 1, !tbaa !34
  switch i8 %8, label %10 [
    i8 0, label %14
    i8 92, label %9
    i8 47, label %9
  ]

9:                                                ; preds = %4, %4
  br label %10

10:                                               ; preds = %4, %9
  %11 = phi ptr [ %5, %9 ], [ %6, %4 ]
  %12 = phi ptr [ %6, %9 ], [ %7, %4 ]
  %13 = getelementptr inbounds i8, ptr %5, i64 1
  br label %4, !llvm.loop !70

14:                                               ; preds = %4
  %15 = icmp eq ptr %7, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, ptr %7, i64 1
  %18 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %17, i64 noundef %2) #30
  br label %21

19:                                               ; preds = %14
  %20 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %0, i64 noundef %2) #30
  br label %21

21:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @BLI_getDefaultDocumentFolder() local_unnamed_addr #20 {
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_get_folder(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  switch i32 %0, label %42 [
    i32 2, label %3
    i32 32, label %12
    i32 52, label %15
    i32 34, label %21
    i32 31, label %24
    i32 33, label %27
    i32 53, label %30
    i32 54, label %36
  ]

3:                                                ; preds = %2
  %4 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 272) #27
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @get_path_local(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 272) #27, !range !52
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @get_path_system(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 272) #27
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %43, label %42

12:                                               ; preds = %2
  %13 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 272) #27
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %43, label %42

15:                                               ; preds = %2
  %16 = tail call fastcc zeroext i8 @get_path_local(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 272) #27, !range !52
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @get_path_system(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 272) #27
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %43, label %42

21:                                               ; preds = %2
  %22 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.12, ptr noundef %1, i32 noundef 272) #27
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %43, label %42

24:                                               ; preds = %2
  %25 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.13, ptr noundef %1, i32 noundef 272) #27
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %43, label %42

27:                                               ; preds = %2
  %28 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef 272) #27
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %43, label %42

30:                                               ; preds = %2
  %31 = tail call fastcc zeroext i8 @get_path_local(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef 272) #27, !range !52
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = tail call fastcc zeroext i8 @get_path_system(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef 272) #27
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %42

36:                                               ; preds = %2
  %37 = tail call fastcc zeroext i8 @get_path_local(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.18, ptr noundef %1, i32 noundef 272) #27, !range !52
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i8 @get_path_system(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.18, ptr noundef %1, i32 noundef 272) #27
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %2, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6, %3
  br label %43

43:                                               ; preds = %39, %33, %27, %24, %21, %18, %12, %9, %42
  %44 = phi ptr [ @BLI_get_folder.path, %42 ], [ null, %9 ], [ null, %12 ], [ null, %18 ], [ null, %21 ], [ null, %24 ], [ null, %27 ], [ null, %33 ], [ null, %39 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @get_path_user(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !71 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #31
  %6 = tail call fastcc zeroext i8 @is_portable_install() #27, !range !52
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @get_path_local(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #27, !range !52
  br label %23

10:                                               ; preds = %4
  store i8 0, ptr %5, align 16, !tbaa !34
  tail call fastcc void @blender_version_decimal(i32 noundef %3) #27
  %11 = tail call ptr @GHOST_getUserDir(i32 noundef %3, ptr noundef nonnull @blender_version_decimal.version_str) #30
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %11, i64 noundef 1024) #30
  %15 = load i8, ptr %5, align 16, !tbaa !34
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = icmp eq ptr %2, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = call fastcc zeroext i8 @test_path(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %2) #27, !range !52
  br label %23

21:                                               ; preds = %17
  %22 = call fastcc zeroext i8 @test_path(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, ptr noundef %1) #27, !range !52
  br label %23

23:                                               ; preds = %10, %13, %21, %19, %8
  %24 = phi i8 [ %9, %8 ], [ %20, %19 ], [ %22, %21 ], [ 0, %13 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #31
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @get_path_local(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !72 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #31
  %6 = icmp eq ptr %1, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %2, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  call void @BLI_join_dirfile(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull %1, ptr noundef nonnull %2) #27
  br label %13

10:                                               ; preds = %7
  %11 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %1, i64 noundef 1024) #30
  br label %13

12:                                               ; preds = %4
  store i8 0, ptr %5, align 16, !tbaa !34
  br label %13

13:                                               ; preds = %9, %10, %12
  call fastcc void @blender_version_decimal(i32 noundef %3) #27
  %14 = call fastcc zeroext i8 @test_path(ptr noundef %0, ptr noundef nonnull @bprogdir, ptr noundef nonnull @blender_version_decimal.version_str, ptr noundef nonnull %5) #27, !range !52
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #31
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @get_path_system(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !73 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #31
  %8 = icmp eq ptr %1, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  call void @BLI_join_dirfile(ptr noundef nonnull %7, i64 noundef 1024, ptr noundef nonnull %1, ptr noundef nonnull %2) #27
  br label %15

12:                                               ; preds = %9
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %1, i64 noundef 1024) #30
  br label %15

14:                                               ; preds = %4
  store i8 0, ptr %7, align 16, !tbaa !34
  br label %15

15:                                               ; preds = %11, %12, %14
  %16 = call ptr @BLI_current_working_dir(ptr noundef nonnull %6, i64 noundef 1024) #30
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = call fastcc zeroext i8 @test_path(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.23, ptr noundef nonnull %7) #27, !range !52
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %18, %15
  %22 = call fastcc zeroext i8 @test_path(ptr noundef %0, ptr noundef nonnull @bprogdir, ptr noundef nonnull @.str.23, ptr noundef nonnull %7) #27, !range !52
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  store i8 0, ptr %5, align 16, !tbaa !34
  call fastcc void @blender_version_decimal(i32 noundef %3) #27
  %25 = call ptr @GHOST_getSystemDir(i32 noundef %3, ptr noundef nonnull @blender_version_decimal.version_str) #30
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %25, i64 noundef 1024) #30
  %29 = load i8, ptr %5, align 16, !tbaa !34
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = icmp eq ptr %2, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = call fastcc zeroext i8 @test_path(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %2) #27, !range !52
  br label %37

35:                                               ; preds = %31
  %36 = call fastcc zeroext i8 @test_path(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, ptr noundef %1) #27, !range !52
  br label %37

37:                                               ; preds = %24, %27, %21, %18, %35, %33
  %38 = phi i8 [ %34, %33 ], [ %36, %35 ], [ 1, %18 ], [ 1, %21 ], [ 0, %27 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #31
  ret i8 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_get_user_folder_notest(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %0, -31
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  %7 = shl i64 %6, 2
  %8 = call ptr @llvm.load.relative.i64(ptr @reltable.BLI_get_user_folder_notest, i64 %7)
  %9 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_user_folder_notest.path, ptr noundef nonnull %8, ptr noundef %1, i32 noundef 272) #27
  br label %10

10:                                               ; preds = %2, %5
  %11 = load i8, ptr @BLI_get_user_folder_notest.path, align 16, !tbaa !34
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr null, ptr @BLI_get_user_folder_notest.path
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_get_folder_create(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %0, -31
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call ptr @BLI_get_folder(i32 noundef %0, ptr noundef %1) #27
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call ptr @BLI_get_user_folder_notest(i32 noundef %0, ptr noundef %1) #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @BLI_dir_create_recursive(ptr noundef nonnull %9) #30
  br label %12

12:                                               ; preds = %5, %11, %8, %2
  %13 = phi ptr [ null, %2 ], [ %6, %5 ], [ %9, %11 ], [ null, %8 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @BLI_dir_create_recursive(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_get_folder_version(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  switch i32 %0, label %10 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_folder_version.path, ptr noundef null, ptr noundef null, i32 noundef %1) #27
  br label %11

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @get_path_local(ptr noundef nonnull @BLI_get_folder_version.path, ptr noundef null, ptr noundef null, i32 noundef %1) #27, !range !52
  br label %11

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i8 @get_path_system(ptr noundef nonnull @BLI_get_folder_version.path, ptr noundef null, ptr noundef null, i32 noundef %1) #27
  br label %11

10:                                               ; preds = %3
  store i8 0, ptr @BLI_get_folder_version.path, align 16, !tbaa !34
  br label %11

11:                                               ; preds = %10, %8, %6, %4
  %12 = phi i8 [ 0, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %13 = icmp eq i8 %12, 0
  %14 = icmp ne i8 %2, 0
  %15 = and i1 %14, %13
  %16 = select i1 %15, ptr null, ptr @BLI_get_folder_version.path
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_setenv(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #20 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_setenv_if_new(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #20 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_make_exist(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_char_switch(ptr noundef %0, i8 noundef zeroext 92, i8 noundef zeroext 47) #27
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %3 = getelementptr i8, ptr %0, i64 1
  %4 = tail call zeroext i8 @BLI_is_dir(ptr noundef %0) #30
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = trunc i64 %2 to i32
  br label %8

8:                                                ; preds = %6, %27
  %9 = phi i32 [ %25, %27 ], [ %7, %6 ]
  %10 = add i32 %9, -1
  %11 = sext i32 %10 to i64
  %12 = tail call i32 @llvm.smin.i32(i32 %10, i32 1)
  %13 = add i32 %12, -1
  br label %14

14:                                               ; preds = %19, %8
  %15 = phi i64 [ %20, %19 ], [ %11, %8 ]
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = icmp eq i8 %17, 47
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nsw i64 %15, -1
  %21 = icmp slt i64 %15, 2
  br i1 %21, label %24, label %14, !llvm.loop !74

22:                                               ; preds = %14
  %23 = trunc i64 %15 to i32
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i32 [ %23, %22 ], [ %13, %19 ]
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = zext nneg i32 %25 to i64
  %29 = getelementptr i8, ptr %3, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !34
  %30 = tail call zeroext i8 @BLI_is_dir(ptr noundef nonnull %0) #30
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %8, label %33, !llvm.loop !75

32:                                               ; preds = %24
  store i16 47, ptr %0, align 1
  br label %33

33:                                               ; preds = %27, %1, %32
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_is_dir(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_make_existing_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #31
  call void @BLI_split_dir_part(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 1024) #27
  call void @BLI_dir_create_recursive(ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_split_dir_part(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  tail call void @BLI_split_dirfile(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %2, i64 noundef 0) #27
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_make_file_string(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #21 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %4
  store i8 0, ptr %1, align 1, !tbaa !34
  %7 = icmp eq ptr %2, null
  %8 = icmp eq ptr %3, null
  %9 = or i1 %7, %8
  br i1 %9, label %53, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %0, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %10
  %13 = load i8, ptr %2, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 47
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %2, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = icmp eq i8 %17, 47
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #30
  %21 = tail call ptr @BLI_last_slash(ptr noundef nonnull %1) #27
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 0, ptr %24, align 1, !tbaa !34
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds i8, ptr %2, i64 2
  br label %27

27:                                               ; preds = %25, %15, %12, %10
  %28 = phi ptr [ %26, %25 ], [ %2, %15 ], [ %2, %12 ], [ %2, %10 ]
  %29 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %28) #30
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %31 = trunc i64 %30 to i32
  %32 = getelementptr i8, ptr %1, i64 -1
  %33 = icmp sgt i32 %31, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = and i64 %30, 4294967295
  br label %36

36:                                               ; preds = %34, %40
  %37 = phi i64 [ %35, %34 ], [ %41, %40 ]
  %38 = getelementptr i8, ptr %32, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !34
  switch i8 %39, label %43 [
    i8 47, label %40
    i8 92, label %40
  ]

40:                                               ; preds = %36, %36
  store i8 0, ptr %38, align 1, !tbaa !34
  %41 = add nsw i64 %37, -1
  %42 = icmp sgt i64 %37, 1
  br i1 %42, label %36, label %43, !llvm.loop !76

43:                                               ; preds = %40, %36, %27
  %44 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %45 = getelementptr inbounds i8, ptr %1, i64 %44
  store i16 47, ptr %45, align 1
  br label %46

46:                                               ; preds = %49, %43
  %47 = phi ptr [ %3, %43 ], [ %50, %49 ]
  %48 = load i8, ptr %47, align 1, !tbaa !34
  switch i8 %48, label %51 [
    i8 92, label %49
    i8 47, label %49
  ]

49:                                               ; preds = %46, %46
  %50 = getelementptr inbounds i8, ptr %47, i64 1
  br label %46, !llvm.loop !77

51:                                               ; preds = %46
  %52 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %47) #30
  tail call void @BLI_path_native_slash(ptr noundef nonnull %1) #27
  br label %53

53:                                               ; preds = %4, %6, %51
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_path_native_slash(ptr nocapture noundef %0) local_unnamed_addr #16 {
  %2 = tail call fastcc i32 @BLI_path_unc_prefix_len(ptr noundef %0) #27, !range !58
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @BLI_char_switch(ptr noundef %4, i8 noundef zeroext 92, i8 noundef zeroext 47) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @testextensie_ex(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 !PGOFuncName !78 {
  %5 = icmp ne i64 %3, 0
  %6 = icmp ult i64 %3, %1
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 %1
  %10 = sub i64 0, %3
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  %12 = tail call i32 @BLI_strcasecmp(ptr noundef %2, ptr noundef nonnull %11) #30
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %8, %4
  %16 = phi i8 [ 0, %4 ], [ %14, %8 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_testextensie_n(ptr noundef %0, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #31
  call void @llvm.va_start(ptr nonnull %2)
  %4 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, ptr %2, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 16
  %11 = zext nneg i32 %7 to i64
  %12 = getelementptr i8, ptr %10, i64 %11
  %13 = add nuw nsw i32 %7, 8
  store i32 %13, ptr %2, align 16
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr i8, ptr %15, i64 8
  store ptr %16, ptr %4, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %12, %9 ], [ %15, %14 ]
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #28
  %23 = call fastcc zeroext i8 @testextensie_ex(ptr noundef %0, i64 noundef %3, ptr noundef nonnull %19, i64 noundef %22) #27, !range !52
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %6, label %25, !llvm.loop !79

25:                                               ; preds = %21, %17
  %26 = phi i8 [ 0, %17 ], [ 1, %21 ]
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #31
  ret i8 %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #22

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %4 = load ptr, ptr %1, align 8, !tbaa !39
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %11

6:                                                ; preds = %11
  %7 = add nuw i64 %12, 1
  %8 = getelementptr inbounds ptr, ptr %1, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !llvm.loop !80

11:                                               ; preds = %2, %6
  %12 = phi i64 [ %7, %6 ], [ 0, %2 ]
  %13 = phi ptr [ %9, %6 ], [ %4, %2 ]
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #28
  %15 = tail call fastcc zeroext i8 @testextensie_ex(ptr noundef %0, i64 noundef %3, ptr noundef nonnull %13, i64 noundef %14) #27, !range !52
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %6, label %17

17:                                               ; preds = %11, %6, %2
  %18 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 1, %11 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_testextensie_glob(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #31
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %1, %2 ], [ %21, %8 ]
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 59) #28
  %10 = icmp eq ptr %9, null
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %5 to i64
  %13 = sub i64 %11, %12
  %14 = shl i64 %13, 32
  %15 = add i64 %14, 4294967296
  %16 = ashr exact i64 %15, 32
  %17 = select i1 %10, i64 16, i64 %16
  %18 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %5, i64 noundef %17) #30
  %19 = call i32 @fnmatch(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 16) #30
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds i8, ptr %5, i64 %17
  br i1 %20, label %22, label %4, !llvm.loop !81

22:                                               ; preds = %4, %8
  %23 = phi i8 [ 1, %8 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #31
  ret i8 %23
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @fnmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BLI_replace_extension(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #14 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi i64 [ %4, %3 ], [ %8, %10 ]
  %8 = add i64 %7, -1
  %9 = icmp sgt i64 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !34
  switch i8 %12, label %6 [
    i8 46, label %13
    i8 47, label %14
    i8 92, label %14
  ]

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %10, %10, %6, %13
  %15 = phi i64 [ %8, %13 ], [ %4, %6 ], [ %4, %10 ], [ %4, %10 ]
  %16 = add i64 %15, %5
  %17 = icmp ult i64 %16, %1
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %0, i64 %15
  %20 = add i64 %5, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %2, i64 %20, i1 false)
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi i8 [ 1, %18 ], [ 0, %14 ]
  ret i8 %22
}

; Function Attrs: nofree noinline nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BLI_ensure_extension(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #14 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  %6 = icmp ugt i64 %5, %4
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = sub i64 %4, %5
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %2) #28
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %7, %3
  %13 = add i64 %4, -1
  %14 = icmp sgt i64 %13, -1
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %0, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = icmp eq i8 %17, 46
  br i1 %18, label %24, label %28

19:                                               ; preds = %24
  %20 = add nsw i64 %26, -1
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !34
  %23 = icmp eq i8 %22, 46
  br i1 %23, label %24, label %28, !llvm.loop !82

24:                                               ; preds = %15, %19
  %25 = phi ptr [ %21, %19 ], [ %16, %15 ]
  %26 = phi i64 [ %20, %19 ], [ %13, %15 ]
  store i8 0, ptr %25, align 1, !tbaa !34
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %19, label %28, !llvm.loop !82

28:                                               ; preds = %19, %24, %15, %12
  %29 = phi i64 [ %4, %12 ], [ %4, %15 ], [ 0, %24 ], [ %26, %19 ]
  %30 = add i64 %29, %5
  %31 = icmp ult i64 %30, %1
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %0, i64 %29
  %34 = add i64 %5, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %2, i64 %34, i1 false)
  br label %35

35:                                               ; preds = %28, %7, %32
  %36 = phi i8 [ 1, %32 ], [ 1, %7 ], [ 0, %28 ]
  ret i8 %36
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BLI_ensure_filename(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #17 {
  %4 = tail call ptr @BLI_last_slash(ptr noundef %0) #27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  %11 = xor i64 %10, -1
  %12 = add i64 %11, %1
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %6, %3
  %15 = getelementptr inbounds i8, ptr %4, i64 1
  %16 = select i1 %5, ptr %0, ptr %15
  %17 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %2) #30
  br label %18

18:                                               ; preds = %6, %14
  %19 = phi i8 [ 1, %14 ], [ 0, %6 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_split_dirfile(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @BLI_last_slash(ptr noundef %0) #27
  %7 = icmp eq ptr %6, null
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = add i64 %10, 1
  %12 = select i1 %7, i64 0, i64 %11
  %13 = icmp eq ptr %1, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %5
  %15 = icmp eq i64 %12, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = add i64 %12, 1
  %18 = tail call i64 @llvm.umin.i64(i64 %17, i64 %3)
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef %0, i64 noundef %18) #30
  br label %21

20:                                               ; preds = %14
  store i8 0, ptr %1, align 1, !tbaa !34
  br label %21

21:                                               ; preds = %16, %20, %5
  %22 = icmp eq ptr %2, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds i8, ptr %0, i64 %12
  %25 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %24, i64 noundef %4) #30
  br label %26

26:                                               ; preds = %23, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_split_file_part(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  tail call void @BLI_split_dirfile(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef 0, i64 noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_path_append(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @BLI_strnlen(ptr noundef %0, i64 noundef %1) #30
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i64 %4
  %8 = getelementptr i8, ptr %7, i64 -1
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = icmp eq i8 %9, 47
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = add i64 %4, 1
  store i8 47, ptr %7, align 1, !tbaa !34
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  store i8 0, ptr %13, align 1, !tbaa !34
  br label %14

14:                                               ; preds = %11, %6, %3
  %15 = phi i64 [ %12, %11 ], [ %4, %6 ], [ 0, %3 ]
  %16 = icmp ult i64 %15, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds i8, ptr %0, i64 %15
  %19 = sub i64 %1, %15
  %20 = tail call ptr @BLI_strncpy(ptr noundef %18, ptr noundef %2, i64 noundef %19) #30
  br label %21

21:                                               ; preds = %14, %17
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_path_basename(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BLI_last_slash(ptr noundef %0) #27
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds i8, ptr %2, i64 1
  %5 = select i1 %3, ptr %0, ptr %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_first_slash(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #28
  %3 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #28
  %4 = icmp eq ptr %2, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %3, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = icmp slt ptr %2, %3
  %9 = select i1 %8, ptr %2, ptr %3
  br label %10

10:                                               ; preds = %7, %5, %1
  %11 = phi ptr [ %3, %1 ], [ %2, %5 ], [ %9, %7 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_init_program_path(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @bli_where_am_i(ptr noundef %0) #27
  tail call void @BLI_split_dir_part(ptr noundef nonnull @bprogname, ptr noundef nonnull @bprogdir, i64 noundef 1024) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bli_where_am_i(ptr noundef %0) unnamed_addr #0 !PGOFuncName !83 {
  %2 = tail call ptr @BLI_strncpy(ptr noundef nonnull @bprogname, ptr noundef %0, i64 noundef 1024) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BLI_program_path() local_unnamed_addr #20 {
  ret ptr @bprogname
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BLI_program_dir() local_unnamed_addr #20 {
  ret ptr @bprogdir
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_temp_dir_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call fastcc void @BLI_where_is_temp(ptr noundef nonnull @btempdir_session, ptr noundef nonnull @btempdir_base) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_where_is_temp(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !84 {
  tail call void @BLI_temp_dir_session_purge() #27
  store i8 0, ptr %0, align 1, !tbaa !34
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  store i8 0, ptr %1, align 1, !tbaa !34
  %5 = tail call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i64 noundef 1024) #30
  %6 = tail call ptr @BLI_strdupcat(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #30
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #28
  %8 = add i64 %7, 1
  %9 = icmp ult i64 %8, 1025
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call ptr @mkdtemp(ptr noundef %6) #30
  br label %12

12:                                               ; preds = %10, %4
  %13 = tail call zeroext i8 @BLI_is_dir(ptr noundef %6) #30
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %0, i64 noundef 1024) #30
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef %6, i64 noundef 1024) #30
  %18 = tail call i32 @BLI_add_slash(ptr noundef nonnull %0) #27
  br label %21

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef %6, ptr noundef nonnull %0) #27
  br label %21

21:                                               ; preds = %19, %15
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  tail call void %22(ptr noundef %6) #30
  br label %25

23:                                               ; preds = %2
  %24 = tail call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i64 noundef 1024) #30
  br label %25

25:                                               ; preds = %23, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @BLI_temp_dir_session() local_unnamed_addr #23 {
  %1 = load i8, ptr @btempdir_session, align 16, !tbaa !34
  %2 = icmp eq i8 %1, 0
  %3 = select i1 %2, ptr @btempdir_base, ptr @btempdir_session
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BLI_temp_dir_base() local_unnamed_addr #20 {
  ret ptr @btempdir_base
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_system_temporary_dir(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @BLI_where_is_temp(ptr noundef %0, ptr noundef null) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_temp_dir_session_purge() local_unnamed_addr #0 {
  %1 = load i8, ptr @btempdir_session, align 16, !tbaa !34
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @BLI_is_dir(ptr noundef nonnull @btempdir_session) #30
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @BLI_delete(ptr noundef nonnull @btempdir_session, i8 noundef zeroext 1, i8 noundef zeroext 1) #30
  br label %8

8:                                                ; preds = %6, %3, %0
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_delete(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @uniquename_find_dupe(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #12 !PGOFuncName !85 {
  %5 = sext i32 %3 to i64
  %6 = load ptr, ptr %0, align 8, !tbaa !39
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4, %15
  %9 = phi ptr [ %16, %15 ], [ %6, %4 ]
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %9, i64 %5
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %2) #28
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8, %11
  %16 = load ptr, ptr %9, align 8, !tbaa !39
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !86

18:                                               ; preds = %11, %15, %4
  %19 = phi i8 [ 0, %4 ], [ 0, %15 ], [ 1, %11 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_portable_install() unnamed_addr #0 !PGOFuncName !87 {
  %1 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #31
  %2 = call fastcc zeroext i8 @get_path_local(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 272) #27, !range !52
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #31
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @test_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !88 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #31
  %6 = icmp eq ptr %2, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  call void @BLI_join_dirfile(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef %1, ptr noundef nonnull %2) #27
  br label %10

8:                                                ; preds = %4
  %9 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 1024) #30
  br label %10

10:                                               ; preds = %8, %7
  %11 = icmp eq ptr %3, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  call void @BLI_make_file_string(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3) #27
  br label %15

13:                                               ; preds = %10
  %14 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 1024) #30
  br label %15

15:                                               ; preds = %13, %12
  %16 = call zeroext i8 @BLI_is_dir(ptr noundef %0) #30
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #31
  ret i8 %18
}

; Function Attrs: optsize
declare ptr @GHOST_getUserDir(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @blender_version_decimal(i32 noundef %0) unnamed_addr #8 !PGOFuncName !89 {
  %2 = sdiv i32 %0, 100
  %3 = srem i32 %0, 100
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @blender_version_decimal.version_str, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %2, i32 noundef %3) #30
  ret void
}

; Function Attrs: optsize
declare ptr @GHOST_getSystemDir(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_strdupcat(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare ptr @mkdtemp(ptr noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #26

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #23 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { optsize }
attributes #28 = { nounwind optsize willreturn memory(read) }
attributes #29 = { nounwind optsize willreturn memory(none) }
attributes #30 = { nounwind optsize }
attributes #31 = { nounwind }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !35, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !35, i64 0}
!43 = distinct !{!43, !38}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !35, i64 0}
!46 = distinct !{!46, !38}
!47 = distinct !{!47, !38}
!48 = !{!49, !40, i64 0}
!49 = !{!"", !40, i64 0, !40, i64 8, !45, i64 16}
!50 = !{!49, !40, i64 8}
!51 = !{!49, !45, i64 16}
!52 = !{i8 0, i8 2}
!53 = !{!"path_util.c:uniquename_unique_check"}
!54 = distinct !{!54, !38}
!55 = distinct !{!55, !38}
!56 = distinct !{!56, !38}
!57 = distinct !{!57, !38}
!58 = !{i32 0, i32 5}
!59 = distinct !{!59, !38}
!60 = distinct !{!60, !38}
!61 = distinct !{!61, !38}
!62 = distinct !{!62, !38}
!63 = distinct !{!63, !38}
!64 = !{!"path_util.c:BLI_path_unc_prefix_len"}
!65 = distinct !{!65, !38}
!66 = !{!"path_util.c:ensure_digits"}
!67 = !{!"path_util.c:stringframe_chars"}
!68 = distinct !{!68, !38}
!69 = distinct !{!69, !38}
!70 = distinct !{!70, !38}
!71 = !{!"path_util.c:get_path_user"}
!72 = !{!"path_util.c:get_path_local"}
!73 = !{!"path_util.c:get_path_system"}
!74 = distinct !{!74, !38}
!75 = distinct !{!75, !38}
!76 = distinct !{!76, !38}
!77 = distinct !{!77, !38}
!78 = !{!"path_util.c:testextensie_ex"}
!79 = distinct !{!79, !38}
!80 = distinct !{!80, !38}
!81 = distinct !{!81, !38}
!82 = distinct !{!82, !38}
!83 = !{!"path_util.c:bli_where_am_i"}
!84 = !{!"path_util.c:BLI_where_is_temp"}
!85 = !{!"path_util.c:uniquename_find_dupe"}
!86 = distinct !{!86, !38}
!87 = !{!"path_util.c:is_portable_install"}
!88 = !{!"path_util.c:test_path"}
!89 = !{!"path_util.c:blender_version_decimal"}
