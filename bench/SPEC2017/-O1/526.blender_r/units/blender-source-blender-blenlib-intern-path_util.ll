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

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_stringdec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #26
  %6 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #26
  %7 = icmp eq ptr %5, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %6, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = icmp slt ptr %5, %6
  %12 = select i1 %11, ptr %6, ptr %5
  br label %13

13:                                               ; preds = %4, %8, %10
  %14 = phi ptr [ %6, %4 ], [ %5, %8 ], [ %12, %10 ]
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %16 = trunc i64 %15 to i32
  %17 = icmp eq ptr %14, null
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %0 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = select i1 %17, i32 0, i32 %21
  %23 = and i64 %15, 4294967295
  %24 = zext i32 %22 to i64
  %25 = tail call i32 @llvm.umin.i32(i32 %22, i32 %16)
  br label %26

26:                                               ; preds = %29, %13
  %27 = phi i64 [ %30, %29 ], [ %23, %13 ]
  %28 = icmp ugt i64 %27, %24
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = add nsw i64 %27, -1
  %31 = and i64 %30, 4294967295
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = icmp eq i8 %33, 46
  br i1 %34, label %35, label %26, !llvm.loop !37

35:                                               ; preds = %29
  %36 = trunc i64 %30 to i32
  br label %37

37:                                               ; preds = %26, %35
  %38 = phi i32 [ %36, %35 ], [ %25, %26 ]
  %39 = icmp eq i32 %38, %22
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = zext i32 %38 to i64
  %42 = getelementptr inbounds i8, ptr %0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !34
  %44 = icmp eq i8 %43, 46
  %45 = select i1 %44, i32 %38, i32 %16
  br label %46

46:                                               ; preds = %40, %37
  %47 = phi i32 [ %38, %37 ], [ %45, %40 ]
  %48 = add i32 %47, -1
  %49 = icmp slt i32 %48, %22
  br i1 %49, label %76, label %50

50:                                               ; preds = %46
  %51 = tail call ptr @__ctype_b_loc() #27
  %52 = load ptr, ptr %51, align 8, !tbaa !40
  br label %53

53:                                               ; preds = %50, %70
  %54 = phi i32 [ %48, %50 ], [ %74, %70 ]
  %55 = phi i32 [ 0, %50 ], [ %73, %70 ]
  %56 = phi i32 [ 0, %50 ], [ %72, %70 ]
  %57 = phi i8 [ 0, %50 ], [ %71, %70 ]
  %58 = sext i32 %54 to i64
  %59 = getelementptr inbounds i8, ptr %0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !34
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i16, ptr %52, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !42
  %64 = and i16 %63, 2048
  %65 = icmp eq i16 %64, 0
  %66 = icmp eq i8 %57, 0
  br i1 %65, label %69, label %67

67:                                               ; preds = %53
  %68 = select i1 %66, i32 %54, i32 %56
  br label %70

69:                                               ; preds = %53
  br i1 %66, label %70, label %80

70:                                               ; preds = %69, %67
  %71 = phi i8 [ 0, %69 ], [ 1, %67 ]
  %72 = phi i32 [ %56, %69 ], [ %68, %67 ]
  %73 = phi i32 [ %55, %69 ], [ %54, %67 ]
  %74 = add i32 %54, -1
  %75 = icmp slt i32 %74, %22
  br i1 %75, label %76, label %53, !llvm.loop !44

76:                                               ; preds = %70, %46
  %77 = phi i1 [ true, %46 ], [ %65, %70 ]
  %78 = phi i32 [ 0, %46 ], [ %72, %70 ]
  %79 = phi i32 [ 0, %46 ], [ %73, %70 ]
  br i1 %77, label %106, label %80

80:                                               ; preds = %69, %76
  %81 = phi i32 [ %78, %76 ], [ %56, %69 ]
  %82 = phi i32 [ %79, %76 ], [ %55, %69 ]
  %83 = icmp eq ptr %2, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = add i32 %81, 1
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %0, i64 %86
  %88 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %87) #28
  br label %89

89:                                               ; preds = %84, %80
  %90 = icmp eq ptr %1, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %89
  %92 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #28
  %93 = zext i32 %82 to i64
  %94 = getelementptr inbounds i8, ptr %1, i64 %93
  store i8 0, ptr %94, align 1, !tbaa !34
  br label %95

95:                                               ; preds = %91, %89
  %96 = icmp eq ptr %3, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %95
  %98 = sub i32 %81, %82
  %99 = trunc i32 %98 to i16
  %100 = add i16 %99, 1
  store i16 %100, ptr %3, align 2, !tbaa !42
  br label %101

101:                                              ; preds = %97, %95
  %102 = zext i32 %82 to i64
  %103 = getelementptr inbounds i8, ptr %0, i64 %102
  %104 = tail call i64 @strtol(ptr nocapture noundef nonnull %103, ptr noundef null, i32 noundef 10) #28
  %105 = trunc i64 %104 to i32
  br label %121

106:                                              ; preds = %76
  %107 = icmp eq ptr %2, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %106
  %109 = zext i32 %47 to i64
  %110 = getelementptr inbounds i8, ptr %0, i64 %109
  %111 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %110) #28
  br label %112

112:                                              ; preds = %108, %106
  %113 = icmp eq ptr %1, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %112
  %115 = add i32 %47, 1
  %116 = zext i32 %115 to i64
  %117 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef %0, i64 noundef %116) #28
  br label %118

118:                                              ; preds = %114, %112
  %119 = icmp eq ptr %3, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %118
  store i16 0, ptr %3, align 2, !tbaa !42
  br label %121

121:                                              ; preds = %118, %120, %101
  %122 = phi i32 [ %105, %101 ], [ 0, %120 ], [ 0, %118 ]
  ret i32 %122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_last_slash(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #26
  %3 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #26
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @BLI_stringenc(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = zext i16 %3 to i32
  %7 = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %1, i32 noundef %6, i32 noundef %7, ptr noundef %2) #28
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @BLI_split_name_num(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #7 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %6 = trunc i64 %5 to i32
  store i32 0, ptr %1, align 4, !tbaa !45
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
  br i1 %16, label %44, label %17

17:                                               ; preds = %4, %11
  %18 = shl i64 %5, 32
  %19 = ashr exact i64 %18, 32
  br label %20

20:                                               ; preds = %36, %17
  %21 = phi i64 [ %22, %36 ], [ %19, %17 ]
  %22 = add nsw i64 %21, -1
  %23 = icmp eq i64 %21, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %2, i64 %22
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = icmp eq i8 %26, %3
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = trunc i64 %22 to i32
  %30 = getelementptr inbounds i8, ptr %2, i64 %22
  %31 = getelementptr inbounds i8, ptr %0, i64 %22
  store i8 0, ptr %31, align 1, !tbaa !34
  %32 = getelementptr inbounds i8, ptr %30, i64 1
  %33 = tail call i64 @strtol(ptr nocapture noundef nonnull %32, ptr noundef null, i32 noundef 10) #28
  %34 = trunc i64 %33 to i32
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0)
  store i32 %35, ptr %1, align 4, !tbaa !45
  br label %44

36:                                               ; preds = %24
  %37 = tail call ptr @__ctype_b_loc() #27
  %38 = load ptr, ptr %37, align 8, !tbaa !40
  %39 = zext i8 %26 to i64
  %40 = getelementptr inbounds i16, ptr %38, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !42
  %42 = and i16 %41, 2048
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %20, !llvm.loop !47

44:                                               ; preds = %20, %36, %11, %28
  %45 = phi i32 [ %29, %28 ], [ %6, %11 ], [ %6, %36 ], [ %6, %20 ]
  ret i32 %45
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local void @BLI_newname(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #28
  %6 = call i32 @BLI_stringdec(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %7 = icmp slt i32 %1, 0
  %8 = load i16, ptr %5, align 2
  %9 = icmp ult i16 %8, 4
  %10 = select i1 %7, i1 %9, i1 false
  %11 = icmp ne i16 %8, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = icmp ugt i16 %8, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = zext i16 %8 to i32
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i32 [ %20, %17 ], [ 1, %15 ]
  %19 = phi i32 [ %21, %17 ], [ %16, %15 ]
  %20 = mul nsw i32 %18, 10
  %21 = add nsw i32 %19, -1
  %22 = icmp sgt i32 %19, 2
  br i1 %22, label %17, label %23, !llvm.loop !48

23:                                               ; preds = %17, %13
  %24 = phi i32 [ 1, %13 ], [ %20, %17 ]
  %25 = icmp sge i32 %6, %24
  %26 = add nsw i32 %6, %1
  %27 = icmp slt i32 %26, %24
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = add i16 %8, -1
  store i16 %30, ptr %5, align 2, !tbaa !42
  br label %31

31:                                               ; preds = %23, %29, %2
  %32 = add nsw i32 %6, %1
  %33 = load i16, ptr %5, align 2, !tbaa !42
  %34 = icmp eq i16 %33, 4
  %35 = call i32 @llvm.smax.i32(i32 %32, i32 0)
  %36 = select i1 %34, i32 %35, i32 %32
  %37 = zext i16 %33 to i32
  %38 = call i32 @llvm.smax.i32(i32 %36, i32 0)
  %39 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %3, i32 noundef %37, i32 noundef %38, ptr noundef nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_uniquename_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = load i8, ptr %4, align 1, !tbaa !34
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = sext i32 %5 to i64
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %2, i64 noundef %13) #28
  br label %15

15:                                               ; preds = %12, %6
  %16 = tail call zeroext i8 %0(ptr noundef %1, ptr noundef nonnull %4) #28
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %84, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #28
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #26
  %20 = trunc i64 %19 to i32
  %21 = shl i64 %19, 32
  %22 = add i64 %21, 4294967296
  %23 = ashr exact i64 %22, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %9, ptr nonnull align 1 %4, i64 %23, i1 false)
  %24 = icmp sgt i32 %20, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = add i64 %19, 4294967295
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds i8, ptr %4, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = icmp eq i8 %29, %3
  br i1 %30, label %56, label %31

31:                                               ; preds = %25, %18
  %32 = ashr exact i64 %21, 32
  br label %33

33:                                               ; preds = %48, %31
  %34 = phi i64 [ %35, %48 ], [ %32, %31 ]
  %35 = add nsw i64 %34, -1
  %36 = icmp eq i64 %34, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %4, i64 %35
  %39 = load i8, ptr %38, align 1, !tbaa !34
  %40 = icmp eq i8 %39, %3
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = trunc i64 %35 to i32
  %43 = getelementptr inbounds i8, ptr %9, i64 %35
  store i8 0, ptr %43, align 1, !tbaa !34
  %44 = getelementptr inbounds i8, ptr %4, i64 %34
  %45 = tail call i64 @strtol(ptr nocapture noundef nonnull %44, ptr noundef null, i32 noundef 10) #28
  %46 = trunc i64 %45 to i32
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0)
  br label %56

48:                                               ; preds = %37
  %49 = tail call ptr @__ctype_b_loc() #27
  %50 = load ptr, ptr %49, align 8, !tbaa !40
  %51 = zext i8 %39 to i64
  %52 = getelementptr inbounds i16, ptr %50, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !42
  %54 = and i16 %53, 2048
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %33, !llvm.loop !47

56:                                               ; preds = %33, %48, %25, %41
  %57 = phi i32 [ 0, %25 ], [ %47, %41 ], [ 0, %48 ], [ 0, %33 ]
  %58 = phi i32 [ 1, %25 ], [ %42, %41 ], [ %20, %48 ], [ %20, %33 ]
  %59 = zext i8 %3 to i32
  %60 = icmp ne i32 %58, 0
  %61 = sext i32 %5 to i64
  br label %62

62:                                               ; preds = %78, %56
  %63 = phi i32 [ %57, %56 ], [ %64, %78 ]
  %64 = add nuw nsw i32 %63, 1
  %65 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %59, i32 noundef %64) #28
  %66 = trunc i64 %65 to i32
  %67 = icmp slt i32 %66, %5
  %68 = select i1 %60, i1 %67, i1 false
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef %61) #28
  br label %78

71:                                               ; preds = %62
  store i8 0, ptr %8, align 16, !tbaa !34
  %72 = sub nsw i32 %5, %66
  %73 = sext i32 %72 to i64
  %74 = call ptr @BLI_strncat_utf8(ptr noundef nonnull %8, ptr noundef nonnull %9, i64 noundef %73) #28
  %75 = shl i64 %65, 32
  %76 = add i64 %75, 4294967296
  %77 = ashr exact i64 %76, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr nonnull align 16 %7, i64 %77, i1 false)
  br label %78

78:                                               ; preds = %71, %69
  %79 = call zeroext i8 %0(ptr noundef %1, ptr noundef nonnull %8) #28
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %62, !llvm.loop !49

81:                                               ; preds = %78
  %82 = sext i32 %5 to i64
  %83 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %8, i64 noundef %82) #28
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #28
  br label %84

84:                                               ; preds = %15, %81
  %85 = phi i8 [ 1, %81 ], [ 0, %15 ]
  ret i8 %85
}

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

declare ptr @BLI_strncat_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BLI_uniquename(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.anon, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #28
  store ptr %0, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 2
  store i32 %4, ptr %9, align 8, !tbaa !53
  %10 = icmp eq ptr %1, null
  %11 = icmp eq ptr %2, null
  %12 = or i1 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = sext i32 %4 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @uniquename_unique_check, ptr noundef nonnull %7, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %15, i32 noundef %5), !range !54
  br label %17

17:                                               ; preds = %6, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #28
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @uniquename_unique_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !53
  %8 = sext i32 %7 to i64
  %9 = load ptr, ptr %3, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %2, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %2 ]
  %13 = icmp eq ptr %12, %5
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %12, i64 %8
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %1) #26
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %11
  %19 = load ptr, ptr %12, align 8, !tbaa !40
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !55

21:                                               ; preds = %14, %18, %2
  %22 = phi i8 [ 0, %2 ], [ 1, %14 ], [ 0, %18 ]
  ret i8 %22
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_cleanup_path(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i8 @BLI_path_abs(ptr noundef %1, ptr noundef nonnull %0), !range !54
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
  %19 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.2) #26
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = ptrtoint ptr %18 to i64
  %23 = xor i64 %22, -1
  %24 = getelementptr inbounds i8, ptr %18, i64 3
  br label %28

25:                                               ; preds = %51, %17
  %26 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.3) #26
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
  br i1 %42, label %35, label %43, !llvm.loop !56

43:                                               ; preds = %40, %35
  %44 = phi i64 [ 0, %40 ], [ %36, %35 ]
  %45 = getelementptr inbounds i8, ptr %18, i64 %44
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #26
  %47 = add i64 %46, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %45, ptr nonnull align 1 %34, i64 %47, i1 false)
  br label %51

48:                                               ; preds = %28
  %49 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #26
  %50 = add i64 %49, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %18, ptr nonnull align 1 %24, i64 %50, i1 false)
  br label %51

51:                                               ; preds = %48, %43
  %52 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.2) #26
  %53 = icmp eq ptr %52, null
  br i1 %53, label %25, label %28, !llvm.loop !57

54:                                               ; preds = %57, %25
  %55 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.4) #26
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %64

57:                                               ; preds = %25, %57
  %58 = phi ptr [ %62, %57 ], [ %26, %25 ]
  %59 = getelementptr inbounds i8, ptr %58, i64 2
  %60 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %59) #26
  %61 = add i64 %60, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %58, ptr nonnull align 1 %59, i64 %61, i1 false)
  %62 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.3) #26
  %63 = icmp eq ptr %62, null
  br i1 %63, label %54, label %57, !llvm.loop !58

64:                                               ; preds = %54, %64
  %65 = phi ptr [ %69, %64 ], [ %55, %54 ]
  %66 = getelementptr inbounds i8, ptr %65, i64 1
  %67 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %66) #26
  %68 = add i64 %67, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %65, ptr nonnull align 1 %66, i64 %68, i1 false)
  %69 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.4) #26
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %64, !llvm.loop !59

71:                                               ; preds = %64, %54, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BLI_path_abs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = load i8, ptr %0, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 47
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = icmp eq i8 %9, 47
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i8 [ 0, %2 ], [ %11, %7 ]
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #28
  %14 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef 1024) #28
  %15 = tail call ptr @__ctype_b_loc() #27
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = load i8, ptr %3, align 16, !tbaa !34
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i16, ptr %16, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !42
  %21 = and i16 %20, 1024
  %22 = icmp ne i16 %21, 0
  %23 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 1
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 58
  %26 = select i1 %22, i1 %25, i1 false
  br i1 %26, label %27, label %36

27:                                               ; preds = %12
  %28 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 2
  %29 = load i8, ptr %28, align 2
  switch i8 %29, label %36 [
    i8 92, label %30
    i8 47, label %30
  ]

30:                                               ; preds = %27, %27
  %31 = tail call ptr @__ctype_tolower_loc() #27
  %32 = load ptr, ptr %31, align 8, !tbaa !40
  %33 = getelementptr inbounds i32, ptr %32, i64 %18
  %34 = load i32, ptr %33, align 4, !tbaa !45
  %35 = trunc i32 %34 to i8
  store i8 %35, ptr %23, align 1, !tbaa !34
  store i8 47, ptr %3, align 16, !tbaa !34
  br label %36

36:                                               ; preds = %27, %30, %12
  %37 = load i8, ptr %3, align 16, !tbaa !34
  %38 = icmp ne i8 %37, 92
  %39 = load i8, ptr %23, align 1
  %40 = icmp ne i8 %39, 92
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %3, i64 2
  %44 = load i8, ptr %43, align 2, !tbaa !34
  %45 = icmp eq i8 %44, 63
  %46 = getelementptr inbounds i8, ptr %3, i64 3
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 92
  %49 = select i1 %45, i1 %48, i1 false
  %50 = select i1 %49, i64 4, i64 2
  br label %51

51:                                               ; preds = %42, %36
  %52 = phi i64 [ 0, %36 ], [ %50, %42 ]
  %53 = getelementptr inbounds i8, ptr %3, i64 %52
  br label %54

54:                                               ; preds = %58, %51
  %55 = phi ptr [ %53, %51 ], [ %59, %58 ]
  %56 = load i8, ptr %55, align 1, !tbaa !34
  switch i8 %56, label %58 [
    i8 0, label %60
    i8 92, label %57
  ]

57:                                               ; preds = %54
  store i8 47, ptr %55, align 1, !tbaa !34
  br label %58

58:                                               ; preds = %54, %57
  %59 = getelementptr inbounds i8, ptr %55, i64 1
  br label %54, !llvm.loop !60

60:                                               ; preds = %54
  %61 = icmp eq i8 %13, 0
  br i1 %61, label %114, label %62

62:                                               ; preds = %60
  %63 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 1024) #28
  call void @BLI_cleanup_path(ptr noundef null, ptr noundef nonnull %4)
  %64 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 47) #26
  %65 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 92) #26
  %66 = icmp eq ptr %64, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = icmp eq ptr %65, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %67
  %70 = icmp slt ptr %64, %65
  %71 = select i1 %70, ptr %65, ptr %64
  br label %72

72:                                               ; preds = %62, %67, %69
  %73 = phi ptr [ %65, %62 ], [ %64, %67 ], [ %71, %69 ]
  %74 = load i8, ptr %4, align 16, !tbaa !34
  %75 = icmp ne i8 %74, 92
  %76 = getelementptr inbounds i8, ptr %4, i64 1
  %77 = load i8, ptr %76, align 1
  %78 = icmp ne i8 %77, 92
  %79 = select i1 %75, i1 true, i1 %78
  br i1 %79, label %89, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds i8, ptr %4, i64 2
  %82 = load i8, ptr %81, align 2, !tbaa !34
  %83 = icmp eq i8 %82, 63
  %84 = getelementptr inbounds i8, ptr %4, i64 3
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 92
  %87 = select i1 %83, i1 %86, i1 false
  %88 = select i1 %87, i64 4, i64 2
  br label %89

89:                                               ; preds = %80, %72
  %90 = phi i64 [ 0, %72 ], [ %88, %80 ]
  %91 = getelementptr inbounds i8, ptr %4, i64 %90
  br label %92

92:                                               ; preds = %96, %89
  %93 = phi ptr [ %91, %89 ], [ %97, %96 ]
  %94 = load i8, ptr %93, align 1, !tbaa !34
  switch i8 %94, label %96 [
    i8 0, label %98
    i8 92, label %95
  ]

95:                                               ; preds = %92
  store i8 47, ptr %93, align 1, !tbaa !34
  br label %96

96:                                               ; preds = %92, %95
  %97 = getelementptr inbounds i8, ptr %93, i64 1
  br label %92, !llvm.loop !60

98:                                               ; preds = %92
  %99 = icmp eq ptr %73, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %98
  %101 = ptrtoint ptr %73 to i64
  %102 = ptrtoint ptr %4 to i64
  %103 = sub i64 %101, %102
  %104 = getelementptr inbounds i8, ptr %3, i64 2
  %105 = call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef nonnull %104, i64 noundef 1024) #28
  %106 = shl i64 %103, 32
  %107 = add i64 %106, 4294967296
  %108 = ashr exact i64 %107, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull align 16 %4, i64 %108, i1 false)
  %109 = getelementptr inbounds i8, ptr %3, i64 %108
  %110 = sub nsw i64 1024, %108
  %111 = call ptr @BLI_strncpy(ptr noundef nonnull %109, ptr noundef nonnull %0, i64 noundef %110) #28
  br label %114

112:                                              ; preds = %98
  %113 = getelementptr inbounds i8, ptr %3, i64 2
  br label %114

114:                                              ; preds = %60, %100, %112
  %115 = phi ptr [ %3, %100 ], [ %113, %112 ], [ %3, %60 ]
  %116 = call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef nonnull %115, i64 noundef 1024) #28
  call void @BLI_cleanup_path(ptr noundef null, ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #28
  ret i8 %13
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local void @BLI_cleanup_dir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_cleanup_path(ptr noundef %0, ptr noundef %1)
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %4 = and i64 %3, 4294967295
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = shl i64 %3, 32
  %8 = add i64 %7, -4294967296
  %9 = ashr exact i64 %8, 32
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = icmp eq i8 %11, 47
  br i1 %12, label %20, label %13

13:                                               ; preds = %6, %2
  %14 = shl i64 %3, 32
  %15 = ashr exact i64 %14, 32
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  store i8 47, ptr %16, align 1, !tbaa !34
  %17 = add i64 %14, 4294967296
  %18 = ashr exact i64 %17, 32
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  store i8 0, ptr %19, align 1, !tbaa !34
  br label %20

20:                                               ; preds = %6, %13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @BLI_add_slash(ptr nocapture noundef %0) local_unnamed_addr #11 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %3 = trunc i64 %2 to i32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = shl i64 %2, 32
  %7 = add i64 %6, -4294967296
  %8 = ashr exact i64 %7, 32
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !34
  %11 = icmp eq i8 %10, 47
  br i1 %11, label %19, label %12

12:                                               ; preds = %5, %1
  %13 = shl i64 %2, 32
  %14 = ashr exact i64 %13, 32
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  store i8 47, ptr %15, align 1, !tbaa !34
  %16 = add nsw i32 %3, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  store i8 0, ptr %18, align 1, !tbaa !34
  br label %19

19:                                               ; preds = %5, %12
  %20 = phi i32 [ %16, %12 ], [ %3, %5 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_cleanup_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_cleanup_path(ptr noundef %0, ptr noundef %1)
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %4 = getelementptr i8, ptr %1, i64 -1
  %5 = and i64 %3, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = shl i64 %3, 32
  %9 = ashr exact i64 %8, 32
  br label %10

10:                                               ; preds = %7, %15
  %11 = phi i64 [ %9, %7 ], [ %16, %15 ]
  %12 = getelementptr i8, ptr %4, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 47
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  store i8 0, ptr %12, align 1, !tbaa !34
  %16 = add nsw i64 %11, -1
  %17 = and i64 %16, 4294967295
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %10, !llvm.loop !61

19:                                               ; preds = %10, %15, %2
  ret void
}

; Function Attrs: nofree nounwind memory(argmem: readwrite) uwtable
define dso_local void @BLI_del_slash(ptr nocapture noundef %0) local_unnamed_addr #12 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
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
  br i1 %17, label %18, label %9, !llvm.loop !61

18:                                               ; preds = %14, %9, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_path_is_rel(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_path_is_unc(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
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

; Function Attrs: nounwind uwtable
define dso_local void @BLI_path_rel(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #28
  %5 = load i8, ptr %0, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 47
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = icmp eq i8 %9, 47
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i8 [ 0, %2 ], [ %11, %7 ]
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %150

15:                                               ; preds = %12
  %16 = load i8, ptr %1, align 1, !tbaa !34
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %150, label %18

18:                                               ; preds = %15
  %19 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef 1024) #28
  %20 = load i8, ptr %3, align 16, !tbaa !34
  %21 = icmp ne i8 %20, 92
  %22 = getelementptr inbounds i8, ptr %3, i64 1
  %23 = load i8, ptr %22, align 1
  %24 = icmp ne i8 %23, 92
  %25 = select i1 %21, i1 true, i1 %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds i8, ptr %3, i64 2
  %28 = load i8, ptr %27, align 2, !tbaa !34
  %29 = icmp eq i8 %28, 63
  %30 = getelementptr inbounds i8, ptr %3, i64 3
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 92
  %33 = select i1 %29, i1 %32, i1 false
  %34 = select i1 %33, i64 4, i64 2
  br label %35

35:                                               ; preds = %26, %18
  %36 = phi i64 [ 0, %18 ], [ %34, %26 ]
  %37 = getelementptr inbounds i8, ptr %3, i64 %36
  br label %38

38:                                               ; preds = %42, %35
  %39 = phi ptr [ %37, %35 ], [ %43, %42 ]
  %40 = load i8, ptr %39, align 1, !tbaa !34
  switch i8 %40, label %42 [
    i8 0, label %44
    i8 92, label %41
  ]

41:                                               ; preds = %38
  store i8 47, ptr %39, align 1, !tbaa !34
  br label %42

42:                                               ; preds = %38, %41
  %43 = getelementptr inbounds i8, ptr %39, i64 1
  br label %38, !llvm.loop !60

44:                                               ; preds = %38
  %45 = load i8, ptr %0, align 1, !tbaa !34
  %46 = icmp eq i8 %45, 92
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %0, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = icmp eq i8 %49, 92
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %0, i64 2
  %53 = load i8, ptr %52, align 1, !tbaa !34
  %54 = icmp eq i8 %53, 63
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %0, i64 3
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = icmp eq i8 %57, 92
  br i1 %58, label %60, label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %44, %47, %55, %59
  %61 = phi i64 [ 2, %59 ], [ 4, %55 ], [ 0, %47 ], [ 0, %44 ]
  %62 = getelementptr inbounds i8, ptr %0, i64 %61
  br label %63

63:                                               ; preds = %67, %60
  %64 = phi ptr [ %62, %60 ], [ %68, %67 ]
  %65 = load i8, ptr %64, align 1, !tbaa !34
  switch i8 %65, label %67 [
    i8 0, label %69
    i8 92, label %66
  ]

66:                                               ; preds = %63
  store i8 47, ptr %64, align 1, !tbaa !34
  br label %67

67:                                               ; preds = %63, %66
  %68 = getelementptr inbounds i8, ptr %64, i64 1
  br label %63, !llvm.loop !60

69:                                               ; preds = %63
  call void @BLI_cleanup_path(ptr noundef null, ptr noundef nonnull %0)
  call void @BLI_cleanup_path(ptr noundef null, ptr noundef nonnull %3)
  %70 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 47) #26
  %71 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 92) #26
  %72 = icmp eq ptr %70, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = icmp eq ptr %71, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %73
  %76 = icmp slt ptr %70, %71
  %77 = select i1 %76, ptr %71, ptr %70
  br label %78

78:                                               ; preds = %69, %73, %75
  %79 = phi ptr [ %71, %69 ], [ %70, %73 ], [ %77, %75 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %150, label %81

81:                                               ; preds = %78, %92
  %82 = phi ptr [ %88, %92 ], [ %3, %78 ]
  %83 = phi ptr [ %89, %92 ], [ %0, %78 ]
  %84 = load i8, ptr %82, align 1, !tbaa !34
  %85 = load i8, ptr %83, align 1, !tbaa !34
  %86 = icmp eq i8 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = getelementptr inbounds i8, ptr %82, i64 1
  %89 = getelementptr inbounds i8, ptr %83, i64 1
  %90 = load i8, ptr %88, align 1, !tbaa !34
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i8, ptr %89, align 1, !tbaa !34
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %81, !llvm.loop !62

95:                                               ; preds = %87, %92, %81
  %96 = phi ptr [ %88, %87 ], [ %88, %92 ], [ %82, %81 ]
  %97 = phi ptr [ %89, %87 ], [ %89, %92 ], [ %83, %81 ]
  %98 = load i8, ptr %97, align 1, !tbaa !34
  %99 = icmp eq i8 %98, 47
  br i1 %99, label %111, label %100

100:                                              ; preds = %95
  %101 = icmp ult ptr %97, %0
  br i1 %101, label %125, label %102

102:                                              ; preds = %100, %107
  %103 = phi ptr [ %108, %107 ], [ %97, %100 ]
  %104 = phi ptr [ %109, %107 ], [ %96, %100 ]
  %105 = load i8, ptr %103, align 1, !tbaa !34
  %106 = icmp eq i8 %105, 47
  br i1 %106, label %125, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds i8, ptr %103, i64 -1
  %109 = getelementptr inbounds i8, ptr %104, i64 -1
  %110 = icmp ult ptr %108, %0
  br i1 %110, label %125, label %102, !llvm.loop !63

111:                                              ; preds = %95
  %112 = load i8, ptr %96, align 1, !tbaa !34
  %113 = icmp ne i8 %112, 47
  %114 = icmp uge ptr %96, %3
  %115 = and i1 %114, %113
  br i1 %115, label %116, label %125

116:                                              ; preds = %111, %121
  %117 = phi ptr [ %122, %121 ], [ %96, %111 ]
  %118 = phi ptr [ %123, %121 ], [ %97, %111 ]
  %119 = load i8, ptr %117, align 1, !tbaa !34
  %120 = icmp eq i8 %119, 47
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds i8, ptr %117, i64 -1
  %123 = getelementptr inbounds i8, ptr %118, i64 -1
  %124 = icmp ult ptr %122, %3
  br i1 %124, label %125, label %116

125:                                              ; preds = %107, %102, %121, %116, %100, %111
  %126 = phi ptr [ %96, %111 ], [ %96, %100 ], [ %122, %121 ], [ %117, %116 ], [ %104, %102 ], [ %109, %107 ]
  %127 = phi ptr [ %97, %111 ], [ %97, %100 ], [ %123, %121 ], [ %118, %116 ], [ %103, %102 ], [ %108, %107 ]
  %128 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %4, ptr noundef nonnull @.str.4) #28
  %129 = getelementptr inbounds i8, ptr %4, i64 %128
  %130 = icmp ult ptr %126, %3
  %131 = select i1 %130, ptr %3, ptr %126
  %132 = icmp ult ptr %131, %79
  br i1 %132, label %133, label %145

133:                                              ; preds = %125, %141
  %134 = phi ptr [ %142, %141 ], [ %129, %125 ]
  %135 = phi ptr [ %143, %141 ], [ %131, %125 ]
  %136 = load i8, ptr %135, align 1, !tbaa !34
  %137 = icmp eq i8 %136, 47
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = call i64 @BLI_strcpy_rlen(ptr noundef %134, ptr noundef nonnull @.str.5) #28
  %140 = getelementptr inbounds i8, ptr %134, i64 %139
  br label %141

141:                                              ; preds = %138, %133
  %142 = phi ptr [ %140, %138 ], [ %134, %133 ]
  %143 = getelementptr inbounds i8, ptr %135, i64 1
  %144 = icmp ult ptr %143, %79
  br i1 %144, label %133, label %145, !llvm.loop !64

145:                                              ; preds = %141, %125
  %146 = phi ptr [ %129, %125 ], [ %142, %141 ]
  %147 = getelementptr inbounds i8, ptr %127, i64 1
  %148 = call i64 @BLI_strcpy_rlen(ptr noundef %146, ptr noundef nonnull %147) #28
  %149 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %4) #28
  br label %150

150:                                              ; preds = %78, %145, %15, %12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_char_switch(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #14 {
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
  br i1 %14, label %15, label %6, !llvm.loop !60

15:                                               ; preds = %11, %3
  ret void
}

declare i64 @BLI_strcpy_rlen(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_path_suffix(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [1024 x i8], align 16
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  %9 = add i64 %7, %6
  %10 = add i64 %9, %8
  %11 = icmp ult i64 %10, %1
  br i1 %11, label %12, label %25

12:                                               ; preds = %4, %16
  %13 = phi i64 [ %14, %16 ], [ %6, %4 ]
  %14 = add i64 %13, -1
  %15 = icmp sgt i64 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %0, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !34
  switch i8 %18, label %12 [
    i8 46, label %20
    i8 47, label %19
    i8 92, label %19
  ], !llvm.loop !65

19:                                               ; preds = %16, %16, %12
  br label %20

20:                                               ; preds = %16, %19
  %21 = phi i64 [ %6, %19 ], [ %14, %16 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %22, i64 noundef 1024) #28
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %5) #28
  br label %25

25:                                               ; preds = %4, %20
  %26 = phi i8 [ 1, %20 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  ret i8 %26
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_parent_dir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [1028 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  store i32 3092014, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %3) #28
  %4 = tail call i64 @BLI_strnlen(ptr noundef %0, i64 noundef 1028) #28
  %5 = icmp eq i64 %4, 1028
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr align 1 %0, i64 %4, i1 false)
  %7 = getelementptr i8, ptr %3, i64 %4
  %8 = getelementptr i8, ptr %7, i64 -1
  store i8 0, ptr %8, align 1, !tbaa !34
  br label %28

9:                                                ; preds = %1
  %10 = add i64 %4, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr align 1 %0, i64 %10, i1 false)
  %11 = icmp ult i64 %10, 1028
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = icmp eq i64 %4, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = getelementptr i8, ptr %3, i64 %4
  %16 = getelementptr i8, ptr %15, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = icmp eq i8 %17, 47
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  store i8 47, ptr %15, align 1, !tbaa !34
  %20 = getelementptr inbounds i8, ptr %3, i64 %10
  store i8 0, ptr %20, align 1, !tbaa !34
  br label %21

21:                                               ; preds = %19, %14, %12
  %22 = phi i64 [ %10, %19 ], [ %4, %14 ], [ 0, %12 ]
  %23 = icmp ult i64 %22, 1028
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %3, i64 %22
  %26 = sub nsw i64 1028, %22
  %27 = call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull %2, i64 noundef %26) #28
  br label %28

28:                                               ; preds = %6, %9, %21, %24
  call void @BLI_cleanup_path(ptr noundef null, ptr noundef nonnull %3)
  %29 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %30 = and i64 %29, 4294967295
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = shl i64 %29, 32
  %34 = add i64 %33, -4294967296
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds i8, ptr %3, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = icmp eq i8 %37, 47
  br i1 %38, label %46, label %39

39:                                               ; preds = %32, %28
  %40 = shl i64 %29, 32
  %41 = ashr exact i64 %40, 32
  %42 = getelementptr inbounds i8, ptr %3, i64 %41
  store i8 47, ptr %42, align 1, !tbaa !34
  %43 = add i64 %40, 4294967296
  %44 = ashr exact i64 %43, 32
  %45 = getelementptr inbounds i8, ptr %3, i64 %44
  store i8 0, ptr %45, align 1, !tbaa !34
  br label %46

46:                                               ; preds = %32, %39
  %47 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %48 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %49 = icmp ne i64 %48, 0
  %50 = icmp ult i64 %48, %47
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = getelementptr inbounds i8, ptr %3, i64 %47
  %54 = sub i64 0, %48
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  %56 = call i32 @BLI_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull %55) #28
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %46, %52
  %59 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 1028) #28
  br label %60

60:                                               ; preds = %52, %58
  %61 = phi i8 [ 1, %58 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #28
  ret i8 %61
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_join_dirfile(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i64 @BLI_strnlen(ptr noundef %2, i64 noundef %1) #28
  %6 = icmp eq i64 %5, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %2, i64 %5, i1 false)
  %8 = getelementptr i8, ptr %0, i64 %5
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
  %28 = tail call ptr @BLI_strncpy(ptr noundef %26, ptr noundef %3, i64 noundef %27) #28
  br label %29

29:                                               ; preds = %22, %10, %25, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %5 = icmp ne i64 %4, 0
  %6 = icmp ult i64 %4, %3
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %0, i64 %3
  %10 = sub i64 0, %4
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  %12 = tail call i32 @BLI_strcasecmp(ptr noundef %1, ptr noundef nonnull %11) #28
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %2, %8
  %16 = phi i8 [ 0, %2 ], [ %14, %8 ]
  ret i8 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_path_frame(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #26
  %8 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #26
  %9 = icmp eq ptr %7, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %8, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = icmp slt ptr %7, %8
  %14 = select i1 %13, ptr %8, ptr %7
  br label %15

15:                                               ; preds = %12, %10, %6
  %16 = phi ptr [ %8, %6 ], [ %7, %10 ], [ %14, %12 ]
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr %0, ptr %16
  %19 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %18, i32 noundef 35) #26
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #26
  %23 = trunc i64 %22 to i32
  %24 = shl i64 %22, 32
  %25 = ashr exact i64 %24, 32
  %26 = getelementptr i8, ptr %18, i64 %25
  %27 = zext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %26, i8 35, i64 %27, i1 false), !tbaa !34
  %28 = add i32 %23, %2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %18, i64 %29
  store i8 0, ptr %30, align 1, !tbaa !34
  br label %31

31:                                               ; preds = %21, %15, %3
  br label %32

32:                                               ; preds = %31, %47
  %33 = phi i32 [ %48, %47 ], [ 0, %31 ]
  %34 = phi i32 [ %49, %47 ], [ 0, %31 ]
  %35 = phi i32 [ %51, %47 ], [ 0, %31 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !34
  switch i8 %38, label %46 [
    i8 0, label %52
    i8 92, label %47
    i8 47, label %47
    i8 35, label %39
  ]

39:                                               ; preds = %32, %39
  %40 = phi i32 [ %41, %39 ], [ %35, %32 ]
  %41 = add i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = icmp eq i8 %44, 35
  br i1 %45, label %39, label %47, !llvm.loop !66

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %39, %46, %32, %32
  %48 = phi i32 [ %33, %32 ], [ %33, %32 ], [ %33, %46 ], [ %35, %39 ]
  %49 = phi i32 [ 0, %32 ], [ 0, %32 ], [ %34, %46 ], [ %41, %39 ]
  %50 = phi i32 [ %35, %32 ], [ %35, %32 ], [ %35, %46 ], [ %40, %39 ]
  %51 = add i32 %50, 1
  br label %32, !llvm.loop !67

52:                                               ; preds = %32
  %53 = icmp eq i32 %34, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #28
  %55 = sub nsw i32 %34, %33
  %56 = sext i32 %34 to i64
  %57 = getelementptr inbounds i8, ptr %0, i64 %56
  %58 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull @.str.7, i32 noundef %33, ptr noundef %0, i32 noundef %55, i32 noundef %1, ptr noundef nonnull %57) #28
  %59 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 1024) #28
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #28
  br label %60

60:                                               ; preds = %52, %54
  %61 = phi i8 [ 1, %54 ], [ 0, %52 ]
  ret i8 %61
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_path_frame_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [1024 x i8], align 16
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #26
  %9 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #26
  %10 = icmp eq ptr %8, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %9, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = icmp slt ptr %8, %9
  %15 = select i1 %14, ptr %9, ptr %8
  br label %16

16:                                               ; preds = %13, %11, %7
  %17 = phi ptr [ %9, %7 ], [ %8, %11 ], [ %15, %13 ]
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr %0, ptr %17
  %20 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %19, i32 noundef 35) #26
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #26
  %24 = trunc i64 %23 to i32
  %25 = shl i64 %23, 32
  %26 = ashr exact i64 %25, 32
  %27 = getelementptr i8, ptr %19, i64 %26
  %28 = zext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %27, i8 35, i64 %28, i1 false), !tbaa !34
  %29 = add i32 %24, %3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %19, i64 %30
  store i8 0, ptr %31, align 1, !tbaa !34
  br label %32

32:                                               ; preds = %22, %16, %4
  br label %33

33:                                               ; preds = %32, %48
  %34 = phi i32 [ %49, %48 ], [ 0, %32 ]
  %35 = phi i32 [ %50, %48 ], [ 0, %32 ]
  %36 = phi i32 [ %52, %48 ], [ 0, %32 ]
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !34
  switch i8 %39, label %47 [
    i8 0, label %53
    i8 92, label %48
    i8 47, label %48
    i8 35, label %40
  ]

40:                                               ; preds = %33, %40
  %41 = phi i32 [ %42, %40 ], [ %36, %33 ]
  %42 = add i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !34
  %46 = icmp eq i8 %45, 35
  br i1 %46, label %40, label %48, !llvm.loop !66

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %40, %47, %33, %33
  %49 = phi i32 [ %34, %33 ], [ %34, %33 ], [ %34, %47 ], [ %36, %40 ]
  %50 = phi i32 [ 0, %33 ], [ 0, %33 ], [ %35, %47 ], [ %42, %40 ]
  %51 = phi i32 [ %36, %33 ], [ %36, %33 ], [ %36, %47 ], [ %41, %40 ]
  %52 = add i32 %51, 1
  br label %33, !llvm.loop !67

53:                                               ; preds = %33
  %54 = icmp eq i32 %35, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  %56 = sub nsw i32 %35, %34
  %57 = sext i32 %35 to i64
  %58 = getelementptr inbounds i8, ptr %0, i64 %57
  %59 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %34, ptr noundef %0, i32 noundef %56, i32 noundef %1, i32 noundef %56, i32 noundef %2, ptr noundef nonnull %58) #28
  %60 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 1024) #28
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  br label %61

61:                                               ; preds = %53, %55
  %62 = phi i8 [ 1, %55 ], [ 0, %53 ]
  ret i8 %62
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_path_frame_check_chars(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  br label %2

2:                                                ; preds = %16, %1
  %3 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %4 = phi i32 [ 0, %1 ], [ %19, %16 ]
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !34
  switch i8 %7, label %15 [
    i8 0, label %20
    i8 92, label %16
    i8 47, label %16
    i8 35, label %8
  ]

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %10, %8 ], [ %4, %2 ]
  %10 = add i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 35
  br i1 %14, label %8, label %16, !llvm.loop !66

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %8, %15, %2, %2
  %17 = phi i32 [ 0, %2 ], [ 0, %2 ], [ %3, %15 ], [ %10, %8 ]
  %18 = phi i32 [ %4, %2 ], [ %4, %2 ], [ %4, %15 ], [ %9, %8 ]
  %19 = add i32 %18, 1
  br label %2, !llvm.loop !67

20:                                               ; preds = %2
  %21 = icmp ne i32 %3, 0
  %22 = zext i1 %21 to i8
  ret i8 %22
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BLI_path_cwd(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i8, ptr %0, align 1, !tbaa !34
  %8 = icmp eq i8 %7, 47
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ false, %1 ], [ %8, %6 ]
  %13 = phi i8 [ 1, %1 ], [ %10, %6 ]
  br i1 %12, label %16, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %2, i8 0, i64 1024, i1 false)
  %15 = call ptr @BLI_current_working_dir(ptr noundef nonnull %2, i64 noundef 1024) #28
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #28
  br label %16

16:                                               ; preds = %14, %11
  ret i8 %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

declare ptr @BLI_current_working_dir(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
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
  br label %4, !llvm.loop !68

14:                                               ; preds = %4
  %15 = icmp eq ptr %7, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, ptr %7, i64 1
  %18 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %17, i64 noundef %2) #28
  br label %21

19:                                               ; preds = %14
  %20 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %0, i64 noundef %2) #28
  br label %21

21:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @BLI_getDefaultDocumentFolder() local_unnamed_addr #17 {
  ret ptr null
}

; Function Attrs: nounwind uwtable
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
  %4 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 272)
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @get_path_local(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 272), !range !54
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @get_path_system(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 272)
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %43, label %42

12:                                               ; preds = %2
  %13 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 272)
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %43, label %42

15:                                               ; preds = %2
  %16 = tail call fastcc zeroext i8 @get_path_local(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 272), !range !54
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @get_path_system(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 272)
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %43, label %42

21:                                               ; preds = %2
  %22 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.12, ptr noundef %1, i32 noundef 272)
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %43, label %42

24:                                               ; preds = %2
  %25 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.13, ptr noundef %1, i32 noundef 272)
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %43, label %42

27:                                               ; preds = %2
  %28 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef 272)
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %43, label %42

30:                                               ; preds = %2
  %31 = tail call fastcc zeroext i8 @get_path_local(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef 272), !range !54
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = tail call fastcc zeroext i8 @get_path_system(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef 272)
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %42

36:                                               ; preds = %2
  %37 = tail call fastcc zeroext i8 @get_path_local(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.18, ptr noundef %1, i32 noundef 272), !range !54
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i8 @get_path_system(ptr noundef nonnull @BLI_get_folder.path, ptr noundef nonnull @.str.18, ptr noundef %1, i32 noundef 272)
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %2, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6, %3
  br label %43

43:                                               ; preds = %39, %33, %27, %24, %21, %18, %12, %9, %42
  %44 = phi ptr [ @BLI_get_folder.path, %42 ], [ null, %9 ], [ null, %12 ], [ null, %18 ], [ null, %21 ], [ null, %24 ], [ null, %27 ], [ null, %33 ], [ null, %39 ]
  ret ptr %44
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @get_path_user(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #28
  %9 = call fastcc zeroext i8 @get_path_local(ptr noundef nonnull %7, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 272), !range !54
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #28
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = call fastcc zeroext i8 @get_path_local(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !54
  br label %69

13:                                               ; preds = %4
  store i8 0, ptr %8, align 16, !tbaa !34
  %14 = sdiv i32 %3, 100
  %15 = srem i32 %3, 100
  %16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @blender_version_decimal.version_str, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %14, i32 noundef %15) #28
  %17 = call ptr @GHOST_getUserDir(i32 noundef %3, ptr noundef nonnull @blender_version_decimal.version_str) #28
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %17, i64 noundef 1024) #28
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i8, ptr %8, align 16, !tbaa !34
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %21
  %25 = icmp eq ptr %2, null
  br i1 %25, label %59, label %26

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #28
  %27 = icmp eq ptr %1, null
  br i1 %27, label %53, label %28

28:                                               ; preds = %26
  %29 = call i64 @BLI_strnlen(ptr noundef nonnull %8, i64 noundef 1024) #28
  %30 = icmp eq i64 %29, 1024
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 16 %8, i64 %29, i1 false)
  %32 = getelementptr i8, ptr %6, i64 %29
  %33 = getelementptr i8, ptr %32, i64 -1
  store i8 0, ptr %33, align 1, !tbaa !34
  br label %55

34:                                               ; preds = %28
  %35 = add i64 %29, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 16 %8, i64 %35, i1 false)
  %36 = icmp ult i64 %35, 1024
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = icmp eq i64 %29, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %37
  %40 = getelementptr i8, ptr %6, i64 %29
  %41 = getelementptr i8, ptr %40, i64 -1
  %42 = load i8, ptr %41, align 1, !tbaa !34
  %43 = icmp eq i8 %42, 47
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  store i8 47, ptr %40, align 1, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %6, i64 %35
  store i8 0, ptr %45, align 1, !tbaa !34
  br label %46

46:                                               ; preds = %44, %39, %37
  %47 = phi i64 [ %35, %44 ], [ %29, %39 ], [ 0, %37 ]
  %48 = icmp ult i64 %47, 1024
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, ptr %6, i64 %47
  %51 = sub nuw nsw i64 1024, %47
  %52 = call ptr @BLI_strncpy(ptr noundef nonnull %50, ptr noundef nonnull %1, i64 noundef %51) #28
  br label %55

53:                                               ; preds = %26
  %54 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %8, i64 noundef 1024) #28
  br label %55

55:                                               ; preds = %53, %31, %34, %46, %49
  call void @BLI_make_file_string(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2)
  %56 = call zeroext i8 @BLI_is_dir(ptr noundef %0) #28
  %57 = icmp ne i8 %56, 0
  %58 = zext i1 %57 to i8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #28
  br label %69

59:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  %60 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %8, i64 noundef 1024) #28
  %61 = icmp eq ptr %1, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void @BLI_make_file_string(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1)
  br label %65

63:                                               ; preds = %59
  %64 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 1024) #28
  br label %65

65:                                               ; preds = %62, %63
  %66 = call zeroext i8 @BLI_is_dir(ptr noundef %0) #28
  %67 = icmp ne i8 %66, 0
  %68 = zext i1 %67 to i8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  br label %69

69:                                               ; preds = %21, %65, %55, %11
  %70 = phi i8 [ %12, %11 ], [ %58, %55 ], [ %68, %65 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #28
  ret i8 %70
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @get_path_local(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #28
  %7 = icmp eq ptr %1, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %8
  %11 = tail call i64 @BLI_strnlen(ptr noundef nonnull %1, i64 noundef 1024) #28
  %12 = icmp eq i64 %11, 1024
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 1 %1, i64 %11, i1 false)
  %14 = getelementptr i8, ptr %6, i64 %11
  %15 = getelementptr i8, ptr %14, i64 -1
  store i8 0, ptr %15, align 1, !tbaa !34
  br label %38

16:                                               ; preds = %10
  %17 = add i64 %11, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 1 %1, i64 %17, i1 false)
  %18 = icmp ult i64 %17, 1024
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = icmp eq i64 %11, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %6, i64 %11
  %23 = getelementptr i8, ptr %22, i64 -1
  %24 = load i8, ptr %23, align 1, !tbaa !34
  %25 = icmp eq i8 %24, 47
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  store i8 47, ptr %22, align 1, !tbaa !34
  %27 = getelementptr inbounds i8, ptr %6, i64 %17
  store i8 0, ptr %27, align 1, !tbaa !34
  br label %28

28:                                               ; preds = %26, %21, %19
  %29 = phi i64 [ %17, %26 ], [ %11, %21 ], [ 0, %19 ]
  %30 = icmp ult i64 %29, 1024
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %6, i64 %29
  %33 = sub nuw nsw i64 1024, %29
  %34 = call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef nonnull %2, i64 noundef %33) #28
  br label %38

35:                                               ; preds = %8
  %36 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %1, i64 noundef 1024) #28
  br label %38

37:                                               ; preds = %4
  store i8 0, ptr %6, align 16, !tbaa !34
  br label %38

38:                                               ; preds = %31, %28, %16, %13, %35, %37
  %39 = sdiv i32 %3, 100
  %40 = srem i32 %3, 100
  %41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @blender_version_decimal.version_str, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %39, i32 noundef %40) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  %42 = call i64 @BLI_strnlen(ptr noundef nonnull @bprogdir, i64 noundef 1024) #28
  %43 = icmp eq i64 %42, 1024
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 16 @bprogdir, i64 %42, i1 false)
  %45 = getelementptr i8, ptr %5, i64 %42
  %46 = getelementptr i8, ptr %45, i64 -1
  store i8 0, ptr %46, align 1, !tbaa !34
  br label %66

47:                                               ; preds = %38
  %48 = add i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 16 @bprogdir, i64 %48, i1 false)
  %49 = icmp ult i64 %48, 1024
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = icmp eq i64 %42, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %50
  %53 = getelementptr i8, ptr %5, i64 %42
  %54 = getelementptr i8, ptr %53, i64 -1
  %55 = load i8, ptr %54, align 1, !tbaa !34
  %56 = icmp eq i8 %55, 47
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  store i8 47, ptr %53, align 1, !tbaa !34
  %58 = getelementptr inbounds i8, ptr %5, i64 %48
  store i8 0, ptr %58, align 1, !tbaa !34
  br label %59

59:                                               ; preds = %57, %52, %50
  %60 = phi i64 [ %48, %57 ], [ %42, %52 ], [ 0, %50 ]
  %61 = icmp ult i64 %60, 1024
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %5, i64 %60
  %64 = sub nuw nsw i64 1024, %60
  %65 = call ptr @BLI_strncpy(ptr noundef nonnull %63, ptr noundef nonnull @blender_version_decimal.version_str, i64 noundef %64) #28
  br label %66

66:                                               ; preds = %44, %47, %59, %62
  call void @BLI_make_file_string(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %67 = call zeroext i8 @BLI_is_dir(ptr noundef %0) #28
  %68 = icmp ne i8 %67, 0
  %69 = zext i1 %68 to i8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #28
  ret i8 %69
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @get_path_system(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %11) #28
  %12 = icmp eq ptr %1, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %4
  %14 = icmp eq ptr %2, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %13
  %16 = tail call i64 @BLI_strnlen(ptr noundef nonnull %1, i64 noundef 1024) #28
  %17 = icmp eq i64 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %11, ptr nonnull align 1 %1, i64 %16, i1 false)
  %19 = getelementptr i8, ptr %11, i64 %16
  %20 = getelementptr i8, ptr %19, i64 -1
  store i8 0, ptr %20, align 1, !tbaa !34
  br label %43

21:                                               ; preds = %15
  %22 = add i64 %16, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %11, ptr nonnull align 1 %1, i64 %22, i1 false)
  %23 = icmp ult i64 %22, 1024
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = icmp eq i64 %16, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = getelementptr i8, ptr %11, i64 %16
  %28 = getelementptr i8, ptr %27, i64 -1
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = icmp eq i8 %29, 47
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  store i8 47, ptr %27, align 1, !tbaa !34
  %32 = getelementptr inbounds i8, ptr %11, i64 %22
  store i8 0, ptr %32, align 1, !tbaa !34
  br label %33

33:                                               ; preds = %31, %26, %24
  %34 = phi i64 [ %22, %31 ], [ %16, %26 ], [ 0, %24 ]
  %35 = icmp ult i64 %34, 1024
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = getelementptr inbounds i8, ptr %11, i64 %34
  %38 = sub nuw nsw i64 1024, %34
  %39 = call ptr @BLI_strncpy(ptr noundef nonnull %37, ptr noundef nonnull %2, i64 noundef %38) #28
  br label %43

40:                                               ; preds = %13
  %41 = call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef nonnull %1, i64 noundef 1024) #28
  br label %43

42:                                               ; preds = %4
  store i8 0, ptr %11, align 16, !tbaa !34
  br label %43

43:                                               ; preds = %36, %33, %21, %18, %40, %42
  %44 = call ptr @BLI_current_working_dir(ptr noundef nonnull %10, i64 noundef 1024) #28
  %45 = icmp eq ptr %44, null
  br i1 %45, label %74, label %46

46:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #28
  %47 = call i64 @BLI_strnlen(ptr noundef nonnull %10, i64 noundef 1024) #28
  %48 = icmp eq i64 %47, 1024
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %8, ptr nonnull align 16 %10, i64 %47, i1 false)
  %50 = getelementptr i8, ptr %8, i64 %47
  %51 = getelementptr i8, ptr %50, i64 -1
  store i8 0, ptr %51, align 1, !tbaa !34
  br label %71

52:                                               ; preds = %46
  %53 = add i64 %47, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %8, ptr nonnull align 16 %10, i64 %53, i1 false)
  %54 = icmp ult i64 %53, 1024
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = icmp eq i64 %47, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %55
  %58 = getelementptr i8, ptr %8, i64 %47
  %59 = getelementptr i8, ptr %58, i64 -1
  %60 = load i8, ptr %59, align 1, !tbaa !34
  %61 = icmp eq i8 %60, 47
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  store i8 47, ptr %58, align 1, !tbaa !34
  %63 = getelementptr inbounds i8, ptr %8, i64 %53
  store i8 0, ptr %63, align 1, !tbaa !34
  br label %64

64:                                               ; preds = %62, %57, %55
  %65 = phi i64 [ %53, %62 ], [ %47, %57 ], [ 0, %55 ]
  %66 = icmp ult i64 %65, 1024
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %8, i64 %65
  %69 = sub nuw nsw i64 1024, %65
  %70 = call ptr @BLI_strncpy(ptr noundef nonnull %68, ptr noundef nonnull @.str.23, i64 noundef %69) #28
  br label %71

71:                                               ; preds = %49, %52, %64, %67
  call void @BLI_make_file_string(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %11)
  %72 = call zeroext i8 @BLI_is_dir(ptr noundef %0) #28
  %73 = icmp eq i8 %72, 0
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #28
  br i1 %73, label %74, label %154

74:                                               ; preds = %71, %43
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #28
  %75 = call i64 @BLI_strnlen(ptr noundef nonnull @bprogdir, i64 noundef 1024) #28
  %76 = icmp eq i64 %75, 1024
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %7, ptr nonnull align 16 @bprogdir, i64 %75, i1 false)
  %78 = getelementptr i8, ptr %7, i64 %75
  %79 = getelementptr i8, ptr %78, i64 -1
  store i8 0, ptr %79, align 1, !tbaa !34
  br label %99

80:                                               ; preds = %74
  %81 = add i64 %75, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %7, ptr nonnull align 16 @bprogdir, i64 %81, i1 false)
  %82 = icmp ult i64 %81, 1024
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = icmp eq i64 %75, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %83
  %86 = getelementptr i8, ptr %7, i64 %75
  %87 = getelementptr i8, ptr %86, i64 -1
  %88 = load i8, ptr %87, align 1, !tbaa !34
  %89 = icmp eq i8 %88, 47
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  store i8 47, ptr %86, align 1, !tbaa !34
  %91 = getelementptr inbounds i8, ptr %7, i64 %81
  store i8 0, ptr %91, align 1, !tbaa !34
  br label %92

92:                                               ; preds = %90, %85, %83
  %93 = phi i64 [ %81, %90 ], [ %75, %85 ], [ 0, %83 ]
  %94 = icmp ult i64 %93, 1024
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = getelementptr inbounds i8, ptr %7, i64 %93
  %97 = sub nuw nsw i64 1024, %93
  %98 = call ptr @BLI_strncpy(ptr noundef nonnull %96, ptr noundef nonnull @.str.23, i64 noundef %97) #28
  br label %99

99:                                               ; preds = %77, %80, %92, %95
  call void @BLI_make_file_string(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %11)
  %100 = call zeroext i8 @BLI_is_dir(ptr noundef %0) #28
  %101 = icmp eq i8 %100, 0
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #28
  br i1 %101, label %102, label %154

102:                                              ; preds = %99
  store i8 0, ptr %9, align 16, !tbaa !34
  %103 = sdiv i32 %3, 100
  %104 = srem i32 %3, 100
  %105 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @blender_version_decimal.version_str, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %103, i32 noundef %104) #28
  %106 = call ptr @GHOST_getSystemDir(i32 noundef %3, ptr noundef nonnull @blender_version_decimal.version_str) #28
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %102
  %109 = call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef nonnull %106, i64 noundef 1024) #28
  br label %110

110:                                              ; preds = %108, %102
  %111 = load i8, ptr %9, align 16, !tbaa !34
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %154, label %113

113:                                              ; preds = %110
  %114 = icmp eq ptr %2, null
  br i1 %114, label %146, label %115

115:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #28
  br i1 %12, label %141, label %116

116:                                              ; preds = %115
  %117 = call i64 @BLI_strnlen(ptr noundef nonnull %9, i64 noundef 1024) #28
  %118 = icmp eq i64 %117, 1024
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 16 %9, i64 %117, i1 false)
  %120 = getelementptr i8, ptr %6, i64 %117
  %121 = getelementptr i8, ptr %120, i64 -1
  store i8 0, ptr %121, align 1, !tbaa !34
  br label %143

122:                                              ; preds = %116
  %123 = add i64 %117, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 16 %9, i64 %123, i1 false)
  %124 = icmp ult i64 %123, 1024
  br i1 %124, label %125, label %143

125:                                              ; preds = %122
  %126 = icmp eq i64 %117, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %125
  %128 = getelementptr i8, ptr %6, i64 %117
  %129 = getelementptr i8, ptr %128, i64 -1
  %130 = load i8, ptr %129, align 1, !tbaa !34
  %131 = icmp eq i8 %130, 47
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  store i8 47, ptr %128, align 1, !tbaa !34
  %133 = getelementptr inbounds i8, ptr %6, i64 %123
  store i8 0, ptr %133, align 1, !tbaa !34
  br label %134

134:                                              ; preds = %132, %127, %125
  %135 = phi i64 [ %123, %132 ], [ %117, %127 ], [ 0, %125 ]
  %136 = icmp ult i64 %135, 1024
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = getelementptr inbounds i8, ptr %6, i64 %135
  %139 = sub nuw nsw i64 1024, %135
  %140 = call ptr @BLI_strncpy(ptr noundef nonnull %138, ptr noundef nonnull %1, i64 noundef %139) #28
  br label %143

141:                                              ; preds = %115
  %142 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %9, i64 noundef 1024) #28
  br label %143

143:                                              ; preds = %141, %119, %122, %134, %137
  call void @BLI_make_file_string(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2)
  %144 = call zeroext i8 @BLI_is_dir(ptr noundef %0) #28
  %145 = icmp ne i8 %144, 0
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #28
  br label %154

146:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  %147 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %9, i64 noundef 1024) #28
  br i1 %12, label %149, label %148

148:                                              ; preds = %146
  call void @BLI_make_file_string(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1)
  br label %151

149:                                              ; preds = %146
  %150 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 1024) #28
  br label %151

151:                                              ; preds = %148, %149
  %152 = call zeroext i8 @BLI_is_dir(ptr noundef %0) #28
  %153 = icmp ne i8 %152, 0
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  br label %154

154:                                              ; preds = %110, %99, %71, %151, %143
  %155 = phi i1 [ %145, %143 ], [ %153, %151 ], [ true, %71 ], [ true, %99 ], [ false, %110 ]
  %156 = zext i1 %155 to i8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #28
  ret i8 %156
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_get_user_folder_notest(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %0, -31
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  %7 = shl i64 %6, 2
  %8 = call ptr @llvm.load.relative.i64(ptr @reltable.BLI_get_user_folder_notest, i64 %7)
  %9 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_user_folder_notest.path, ptr noundef nonnull %8, ptr noundef %1, i32 noundef 272)
  br label %10

10:                                               ; preds = %2, %5
  %11 = load i8, ptr @BLI_get_user_folder_notest.path, align 16, !tbaa !34
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr null, ptr @BLI_get_user_folder_notest.path
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_get_folder_create(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %0, -31
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call ptr @BLI_get_folder(i32 noundef %0, ptr noundef %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call ptr @BLI_get_user_folder_notest(i32 noundef %0, ptr noundef %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @BLI_dir_create_recursive(ptr noundef nonnull %9) #28
  br label %12

12:                                               ; preds = %5, %11, %8, %2
  %13 = phi ptr [ null, %2 ], [ %6, %5 ], [ %9, %11 ], [ null, %8 ]
  ret ptr %13
}

declare void @BLI_dir_create_recursive(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_get_folder_version(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  switch i32 %0, label %10 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = tail call fastcc zeroext i8 @get_path_user(ptr noundef nonnull @BLI_get_folder_version.path, ptr noundef null, ptr noundef null, i32 noundef %1)
  br label %11

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @get_path_local(ptr noundef nonnull @BLI_get_folder_version.path, ptr noundef null, ptr noundef null, i32 noundef %1), !range !54
  br label %11

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i8 @get_path_system(ptr noundef nonnull @BLI_get_folder_version.path, ptr noundef null, ptr noundef null, i32 noundef %1)
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_setenv(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #17 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_setenv_if_new(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #17 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_make_exist(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %7, %6 ]
  %4 = load i8, ptr %3, align 1, !tbaa !34
  switch i8 %4, label %6 [
    i8 0, label %8
    i8 92, label %5
  ]

5:                                                ; preds = %2
  store i8 47, ptr %3, align 1, !tbaa !34
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  br label %2, !llvm.loop !60

8:                                                ; preds = %2
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %10 = getelementptr i8, ptr %0, i64 1
  %11 = tail call zeroext i8 @BLI_is_dir(ptr noundef %0) #28
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = trunc i64 %9 to i32
  br label %15

15:                                               ; preds = %13, %34
  %16 = phi i32 [ %32, %34 ], [ %14, %13 ]
  %17 = add i32 %16, -1
  %18 = sext i32 %17 to i64
  %19 = tail call i32 @llvm.smin.i32(i32 %17, i32 1)
  %20 = add i32 %19, -1
  br label %21

21:                                               ; preds = %26, %15
  %22 = phi i64 [ %27, %26 ], [ %18, %15 ]
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !34
  %25 = icmp eq i8 %24, 47
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = add nsw i64 %22, -1
  %28 = icmp slt i64 %22, 2
  br i1 %28, label %31, label %21, !llvm.loop !69

29:                                               ; preds = %21
  %30 = trunc i64 %22 to i32
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi i32 [ %30, %29 ], [ %20, %26 ]
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = zext nneg i32 %32 to i64
  %36 = getelementptr i8, ptr %10, i64 %35
  store i8 0, ptr %36, align 1, !tbaa !34
  %37 = tail call zeroext i8 @BLI_is_dir(ptr noundef %0) #28
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %15, label %40, !llvm.loop !70

39:                                               ; preds = %31
  store i16 47, ptr %0, align 1
  br label %40

40:                                               ; preds = %34, %8, %39
  ret void
}

declare zeroext i8 @BLI_is_dir(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BLI_make_existing_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #28
  %3 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #26
  %4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #26
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = icmp eq ptr %4, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = icmp slt ptr %3, %4
  %10 = select i1 %9, ptr %4, ptr %3
  br label %11

11:                                               ; preds = %1, %6, %8
  %12 = phi ptr [ %4, %1 ], [ %3, %6 ], [ %10, %8 ]
  %13 = icmp eq ptr %12, null
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %0 to i64
  %16 = sub i64 %14, %15
  %17 = icmp eq i64 %16, -1
  %18 = or i1 %13, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %11
  %20 = add i64 %16, 2
  %21 = tail call i64 @llvm.umin.i64(i64 %20, i64 1024)
  %22 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %0, i64 noundef %21) #28
  br label %24

23:                                               ; preds = %11
  store i8 0, ptr %2, align 16, !tbaa !34
  br label %24

24:                                               ; preds = %19, %23
  call void @BLI_dir_create_recursive(ptr noundef nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_split_dir_part(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #26
  %5 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #26
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = icmp slt ptr %4, %5
  %11 = select i1 %10, ptr %5, ptr %4
  br label %12

12:                                               ; preds = %9, %7, %3
  %13 = phi ptr [ %5, %3 ], [ %4, %7 ], [ %11, %9 ]
  %14 = icmp eq ptr %13, null
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %0 to i64
  %17 = sub i64 %15, %16
  %18 = add i64 %17, 1
  %19 = select i1 %14, i64 0, i64 %18
  %20 = icmp eq ptr %1, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %12
  %22 = icmp eq i64 %19, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = add i64 %19, 1
  %25 = tail call i64 @llvm.umin.i64(i64 %24, i64 %2)
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef %0, i64 noundef %25) #28
  br label %28

27:                                               ; preds = %21
  store i8 0, ptr %1, align 1, !tbaa !34
  br label %28

28:                                               ; preds = %12, %23, %27
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_make_file_string(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #18 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %86, label %6

6:                                                ; preds = %4
  store i8 0, ptr %1, align 1, !tbaa !34
  %7 = icmp eq ptr %2, null
  %8 = icmp eq ptr %3, null
  %9 = or i1 %7, %8
  br i1 %9, label %86, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %0, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %10
  %13 = load i8, ptr %2, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 47
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %2, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = icmp eq i8 %17, 47
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #28
  %21 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #26
  %22 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 92) #26
  %23 = icmp eq ptr %21, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %22, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = icmp slt ptr %21, %22
  %28 = select i1 %27, ptr %22, ptr %21
  br label %29

29:                                               ; preds = %19, %24, %26
  %30 = phi ptr [ %22, %19 ], [ %21, %24 ], [ %28, %26 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 0, ptr %33, align 1, !tbaa !34
  br label %34

34:                                               ; preds = %32, %29
  %35 = getelementptr inbounds i8, ptr %2, i64 2
  br label %36

36:                                               ; preds = %34, %15, %12, %10
  %37 = phi ptr [ %35, %34 ], [ %2, %15 ], [ %2, %12 ], [ %2, %10 ]
  %38 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %37) #28
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %40 = trunc i64 %39 to i32
  %41 = getelementptr i8, ptr %1, i64 -1
  %42 = icmp sgt i32 %40, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = and i64 %39, 4294967295
  br label %45

45:                                               ; preds = %43, %49
  %46 = phi i64 [ %44, %43 ], [ %50, %49 ]
  %47 = getelementptr i8, ptr %41, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !34
  switch i8 %48, label %52 [
    i8 47, label %49
    i8 92, label %49
  ]

49:                                               ; preds = %45, %45
  store i8 0, ptr %47, align 1, !tbaa !34
  %50 = add nsw i64 %46, -1
  %51 = icmp sgt i64 %46, 1
  br i1 %51, label %45, label %52, !llvm.loop !71

52:                                               ; preds = %49, %45, %36
  %53 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %54 = getelementptr inbounds i8, ptr %1, i64 %53
  store i16 47, ptr %54, align 1
  br label %55

55:                                               ; preds = %58, %52
  %56 = phi ptr [ %3, %52 ], [ %59, %58 ]
  %57 = load i8, ptr %56, align 1, !tbaa !34
  switch i8 %57, label %60 [
    i8 92, label %58
    i8 47, label %58
  ]

58:                                               ; preds = %55, %55
  %59 = getelementptr inbounds i8, ptr %56, i64 1
  br label %55, !llvm.loop !72

60:                                               ; preds = %55
  %61 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %56) #28
  %62 = load i8, ptr %1, align 1, !tbaa !34
  %63 = icmp eq i8 %62, 92
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %1, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !34
  %67 = icmp eq i8 %66, 92
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %1, i64 2
  %70 = load i8, ptr %69, align 1, !tbaa !34
  %71 = icmp eq i8 %70, 63
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %1, i64 3
  %74 = load i8, ptr %73, align 1, !tbaa !34
  %75 = icmp eq i8 %74, 92
  br i1 %75, label %77, label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %72, %64, %60
  %78 = phi i64 [ 2, %76 ], [ 4, %72 ], [ 0, %64 ], [ 0, %60 ]
  %79 = getelementptr inbounds i8, ptr %1, i64 %78
  br label %80

80:                                               ; preds = %84, %77
  %81 = phi ptr [ %79, %77 ], [ %85, %84 ]
  %82 = load i8, ptr %81, align 1, !tbaa !34
  switch i8 %82, label %84 [
    i8 0, label %86
    i8 92, label %83
  ]

83:                                               ; preds = %80
  store i8 47, ptr %81, align 1, !tbaa !34
  br label %84

84:                                               ; preds = %83, %80
  %85 = getelementptr inbounds i8, ptr %81, i64 1
  br label %80, !llvm.loop !60

86:                                               ; preds = %80, %4, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_path_native_slash(ptr nocapture noundef %0) local_unnamed_addr #14 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = icmp eq i8 %2, 92
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = icmp eq i8 %6, 92
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  %10 = load i8, ptr %9, align 1, !tbaa !34
  %11 = icmp eq i8 %10, 63
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %0, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = icmp eq i8 %14, 92
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %8
  br label %17

17:                                               ; preds = %1, %4, %12, %16
  %18 = phi i64 [ 2, %16 ], [ 4, %12 ], [ 0, %4 ], [ 0, %1 ]
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  br label %20

20:                                               ; preds = %24, %17
  %21 = phi ptr [ %19, %17 ], [ %25, %24 ]
  %22 = load i8, ptr %21, align 1, !tbaa !34
  switch i8 %22, label %24 [
    i8 0, label %26
    i8 92, label %23
  ]

23:                                               ; preds = %20
  store i8 47, ptr %21, align 1, !tbaa !34
  br label %24

24:                                               ; preds = %20, %23
  %25 = getelementptr inbounds i8, ptr %21, i64 1
  br label %20, !llvm.loop !60

26:                                               ; preds = %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_testextensie_n(ptr noundef %0, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @llvm.va_start(ptr nonnull %2)
  %4 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %6 = getelementptr inbounds i8, ptr %0, i64 %3
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i32, ptr %2, align 16
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 16
  %12 = zext nneg i32 %8 to i64
  %13 = getelementptr i8, ptr %11, i64 %12
  %14 = add nuw nsw i32 %8, 8
  store i32 %14, ptr %2, align 16
  br label %18

15:                                               ; preds = %7
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr i8, ptr %16, i64 8
  store ptr %17, ptr %4, align 8
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %13, %10 ], [ %16, %15 ]
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %18
  %23 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #26
  %24 = icmp ne i64 %23, 0
  %25 = icmp ult i64 %23, %3
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = sub i64 0, %23
  %29 = getelementptr inbounds i8, ptr %6, i64 %28
  %30 = call i32 @BLI_strcasecmp(ptr noundef nonnull %20, ptr noundef nonnull %29) #28
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i8
  br label %33

33:                                               ; preds = %22, %27
  %34 = phi i8 [ 0, %22 ], [ %32, %27 ]
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %7, label %36, !llvm.loop !73

36:                                               ; preds = %33, %18
  %37 = phi i8 [ 0, %18 ], [ 1, %33 ]
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  ret i8 %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %4 = load ptr, ptr %1, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 %3
  br label %13

8:                                                ; preds = %26
  %9 = add nuw i64 %14, 1
  %10 = getelementptr inbounds ptr, ptr %1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13, !llvm.loop !74

13:                                               ; preds = %6, %8
  %14 = phi i64 [ 0, %6 ], [ %9, %8 ]
  %15 = phi ptr [ %4, %6 ], [ %11, %8 ]
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #26
  %17 = icmp ne i64 %16, 0
  %18 = icmp ult i64 %16, %3
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = sub i64 0, %16
  %22 = getelementptr inbounds i8, ptr %7, i64 %21
  %23 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %15, ptr noundef nonnull %22) #28
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %13, %20
  %27 = phi i8 [ 0, %13 ], [ %25, %20 ]
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %8, label %29

29:                                               ; preds = %26, %8, %2
  %30 = phi i8 [ 0, %2 ], [ 1, %26 ], [ 0, %8 ]
  ret i8 %30
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_testextensie_glob(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %1, %2 ], [ %22, %8 ]
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 59) #26
  %10 = icmp eq ptr %9, null
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %5 to i64
  %13 = sub i64 %11, %12
  %14 = shl i64 %13, 32
  %15 = add i64 %14, 4294967296
  %16 = ashr exact i64 %15, 32
  %17 = select i1 %10, i64 16, i64 %16
  %18 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %5, i64 noundef %17) #28
  %19 = call i32 @fnmatch(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 16) #28
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i64 0, i64 %17
  %22 = getelementptr inbounds i8, ptr %5, i64 %21
  br i1 %20, label %23, label %4, !llvm.loop !75

23:                                               ; preds = %4, %8
  %24 = phi i8 [ 1, %8 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  ret i8 %24
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @fnmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BLI_replace_extension(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %6 = add i64 %4, -1
  %7 = tail call i64 @llvm.smin.i64(i64 %6, i64 -1)
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi i64 [ %4, %3 ], [ %10, %12 ]
  %10 = add i64 %9, -1
  %11 = icmp sgt i64 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !34
  switch i8 %14, label %8 [
    i8 46, label %15
    i8 47, label %15
    i8 92, label %15
  ], !llvm.loop !76

15:                                               ; preds = %12, %12, %12, %8
  %16 = phi i64 [ %10, %12 ], [ %10, %12 ], [ %10, %12 ], [ %7, %8 ]
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds i8, ptr %0, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = icmp eq i8 %20, 46
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %15
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i64 [ %4, %22 ], [ %16, %18 ]
  %25 = add i64 %24, %5
  %26 = icmp ult i64 %25, %1
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %0, i64 %24
  %29 = add i64 %5, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %2, i64 %29, i1 false)
  br label %30

30:                                               ; preds = %23, %27
  %31 = phi i8 [ 1, %27 ], [ 0, %23 ]
  ret i8 %31
}

; Function Attrs: nofree nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BLI_ensure_extension(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %6 = icmp ugt i64 %5, %4
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = sub i64 %4, %5
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %2) #26
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
  br i1 %23, label %24, label %28, !llvm.loop !77

24:                                               ; preds = %15, %19
  %25 = phi ptr [ %21, %19 ], [ %16, %15 ]
  %26 = phi i64 [ %20, %19 ], [ %13, %15 ]
  store i8 0, ptr %25, align 1, !tbaa !34
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %19, label %28, !llvm.loop !77

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

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BLI_ensure_filename(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #20 {
  %4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #26
  %5 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #26
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = icmp slt ptr %4, %5
  %11 = select i1 %10, ptr %5, ptr %4
  br label %12

12:                                               ; preds = %3, %7, %9
  %13 = phi ptr [ %5, %3 ], [ %4, %7 ], [ %11, %9 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %20 = xor i64 %19, -1
  %21 = add i64 %20, %1
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15, %12
  %24 = getelementptr inbounds i8, ptr %13, i64 1
  %25 = select i1 %14, ptr %0, ptr %24
  %26 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %2) #28
  br label %27

27:                                               ; preds = %15, %23
  %28 = phi i8 [ 1, %23 ], [ 0, %15 ]
  ret i8 %28
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_split_dirfile(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #26
  %7 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #26
  %8 = icmp eq ptr %6, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %7, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = icmp slt ptr %6, %7
  %13 = select i1 %12, ptr %7, ptr %6
  br label %14

14:                                               ; preds = %5, %9, %11
  %15 = phi ptr [ %7, %5 ], [ %6, %9 ], [ %13, %11 ]
  %16 = icmp eq ptr %15, null
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %0 to i64
  %19 = sub i64 %17, %18
  %20 = add i64 %19, 1
  %21 = select i1 %16, i64 0, i64 %20
  %22 = icmp eq ptr %1, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = icmp eq i64 %21, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = add i64 %21, 1
  %27 = tail call i64 @llvm.umin.i64(i64 %26, i64 %3)
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef %0, i64 noundef %27) #28
  br label %30

29:                                               ; preds = %23
  store i8 0, ptr %1, align 1, !tbaa !34
  br label %30

30:                                               ; preds = %25, %29, %14
  %31 = icmp eq ptr %2, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, ptr %0, i64 %21
  %34 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %33, i64 noundef %4) #28
  br label %35

35:                                               ; preds = %32, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_split_file_part(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #26
  %5 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #26
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = icmp slt ptr %4, %5
  %11 = select i1 %10, ptr %5, ptr %4
  br label %12

12:                                               ; preds = %3, %7, %9
  %13 = phi ptr [ %5, %3 ], [ %4, %7 ], [ %11, %9 ]
  %14 = icmp eq ptr %1, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %13, null
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %0 to i64
  %19 = sub i64 %17, %18
  %20 = add i64 %19, 1
  %21 = select i1 %16, i64 0, i64 %20
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef %22, i64 noundef %2) #28
  br label %24

24:                                               ; preds = %12, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_path_append(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @BLI_strnlen(ptr noundef %0, i64 noundef %1) #28
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
  %20 = tail call ptr @BLI_strncpy(ptr noundef %18, ptr noundef %2, i64 noundef %19) #28
  br label %21

21:                                               ; preds = %14, %17
  ret void
}

declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_path_basename(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #26
  %3 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #26
  %4 = icmp eq ptr %2, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %3, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = icmp slt ptr %2, %3
  %9 = select i1 %8, ptr %3, ptr %2
  br label %10

10:                                               ; preds = %1, %5, %7
  %11 = phi ptr [ %3, %1 ], [ %2, %5 ], [ %9, %7 ]
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = select i1 %12, ptr %0, ptr %13
  ret ptr %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_first_slash(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #26
  %3 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #26
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BLI_init_program_path(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_strncpy(ptr noundef nonnull @bprogname, ptr noundef %0, i64 noundef 1024) #28
  %3 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) @bprogname, i32 noundef 47) #26
  %4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) @bprogname, i32 noundef 92) #26
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = icmp eq ptr %4, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = icmp slt ptr %3, %4
  %10 = select i1 %9, ptr %4, ptr %3
  br label %11

11:                                               ; preds = %1, %6, %8
  %12 = phi ptr [ %4, %1 ], [ %3, %6 ], [ %10, %8 ]
  %13 = icmp eq ptr %12, null
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %14, ptrtoint (ptr @bprogname to i64)
  %16 = icmp eq i64 %15, -1
  %17 = or i1 %13, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = add i64 %15, 2
  %20 = tail call i64 @llvm.umin.i64(i64 %19, i64 1024)
  %21 = tail call ptr @BLI_strncpy(ptr noundef nonnull @bprogdir, ptr noundef nonnull @bprogname, i64 noundef %20) #28
  br label %23

22:                                               ; preds = %11
  store i8 0, ptr @bprogdir, align 16, !tbaa !34
  br label %23

23:                                               ; preds = %18, %22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BLI_program_path() local_unnamed_addr #17 {
  ret ptr @bprogname
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BLI_program_dir() local_unnamed_addr #17 {
  ret ptr @bprogdir
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_temp_dir_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @btempdir_session, align 16, !tbaa !34
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @BLI_is_dir(ptr noundef nonnull @btempdir_session) #28
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @BLI_delete(ptr noundef nonnull @btempdir_session, i8 noundef zeroext 1, i8 noundef zeroext 1) #28
  br label %9

9:                                                ; preds = %7, %4, %1
  store i8 0, ptr @btempdir_session, align 16, !tbaa !34
  store i8 0, ptr @btempdir_base, align 16, !tbaa !34
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull @btempdir_session, ptr noundef nonnull @.str.24, i64 noundef 1024) #28
  %11 = tail call ptr @BLI_strdupcat(ptr noundef nonnull @btempdir_session, ptr noundef nonnull @.str.25) #28
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #26
  %13 = add i64 %12, 1
  %14 = icmp ult i64 %13, 1025
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call ptr @mkdtemp(ptr noundef %11) #28
  br label %17

17:                                               ; preds = %15, %9
  %18 = tail call zeroext i8 @BLI_is_dir(ptr noundef %11) #28
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @BLI_strncpy(ptr noundef nonnull @btempdir_base, ptr noundef nonnull @btempdir_session, i64 noundef 1024) #28
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull @btempdir_session, ptr noundef %11, i64 noundef 1024) #28
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @btempdir_session) #26
  %24 = and i64 %23, 4294967295
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = shl i64 %23, 32
  %28 = add i64 %27, -4294967296
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds i8, ptr @btempdir_session, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = icmp eq i8 %31, 47
  br i1 %32, label %42, label %33

33:                                               ; preds = %26, %20
  %34 = shl i64 %23, 32
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds i8, ptr @btempdir_session, i64 %35
  store i8 47, ptr %36, align 1, !tbaa !34
  %37 = add i64 %34, 4294967296
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds i8, ptr @btempdir_session, i64 %38
  store i8 0, ptr %39, align 1, !tbaa !34
  br label %42

40:                                               ; preds = %17
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef %11, ptr noundef nonnull @btempdir_session)
  br label %42

42:                                               ; preds = %26, %33, %40
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %43(ptr noundef %11) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @BLI_temp_dir_session() local_unnamed_addr #21 {
  %1 = load i8, ptr @btempdir_session, align 16, !tbaa !34
  %2 = icmp eq i8 %1, 0
  %3 = select i1 %2, ptr @btempdir_base, ptr @btempdir_session
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BLI_temp_dir_base() local_unnamed_addr #17 {
  ret ptr @btempdir_base
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_system_temporary_dir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @btempdir_session, align 16, !tbaa !34
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @BLI_is_dir(ptr noundef nonnull @btempdir_session) #28
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @BLI_delete(ptr noundef nonnull @btempdir_session, i8 noundef zeroext 1, i8 noundef zeroext 1) #28
  br label %9

9:                                                ; preds = %1, %4, %7
  store i8 0, ptr %0, align 1, !tbaa !34
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i64 noundef 1024) #28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_temp_dir_session_purge() local_unnamed_addr #0 {
  %1 = load i8, ptr @btempdir_session, align 16, !tbaa !34
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @BLI_is_dir(ptr noundef nonnull @btempdir_session) #28
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @BLI_delete(ptr noundef nonnull @btempdir_session, i8 noundef zeroext 1, i8 noundef zeroext 1) #28
  br label %8

8:                                                ; preds = %6, %3, %0
  ret void
}

declare i32 @BLI_delete(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #22

declare ptr @GHOST_getUserDir(i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @GHOST_getSystemDir(i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @BLI_strdupcat(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @mkdtemp(ptr noundef) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #25

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { nounwind }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !35, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !35, i64 0}
!44 = distinct !{!44, !38, !39}
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !35, i64 0}
!47 = distinct !{!47, !38, !39}
!48 = distinct !{!48, !38, !39}
!49 = distinct !{!49, !38, !39}
!50 = !{!51, !41, i64 0}
!51 = !{!"", !41, i64 0, !41, i64 8, !46, i64 16}
!52 = !{!51, !41, i64 8}
!53 = !{!51, !46, i64 16}
!54 = !{i8 0, i8 2}
!55 = distinct !{!55, !38, !39}
!56 = distinct !{!56, !38, !39}
!57 = distinct !{!57, !38, !39}
!58 = distinct !{!58, !38, !39}
!59 = distinct !{!59, !38, !39}
!60 = distinct !{!60, !38, !39}
!61 = distinct !{!61, !38, !39}
!62 = distinct !{!62, !38, !39}
!63 = distinct !{!63, !38, !39}
!64 = distinct !{!64, !38, !39}
!65 = distinct !{!65, !38, !39}
!66 = distinct !{!66, !38, !39}
!67 = distinct !{!67, !38, !39}
!68 = distinct !{!68, !38, !39}
!69 = distinct !{!69, !38, !39}
!70 = distinct !{!70, !38, !39}
!71 = distinct !{!71, !38, !39}
!72 = distinct !{!72, !38, !39}
!73 = distinct !{!73, !38, !39}
!74 = distinct !{!74, !38, !39}
!75 = distinct !{!75, !38, !39}
!76 = distinct !{!76, !38, !39}
!77 = distinct !{!77, !38, !39}
