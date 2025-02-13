; ModuleID = 'blender/source/blender/blenlib/intern/storage.c'
source_filename = "blender/source/blender/blenlib/intern/storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BuildDirCtx = type { ptr, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.dirlink = type { ptr, ptr, ptr }
%struct.direntry = type { i32, ptr, ptr, %struct.stat, i32, [16 x i8], [4 x i8], [4 x i8], [4 x i8], [16 x i8], [8 x i8], [16 x i8], [16 x i8], ptr, i32, ptr, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"file_as_lines\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s empty directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s non-existant directory\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"--x\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"-w-\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"-wx\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"r--\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"r-x\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"rw-\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"rwx\00", align 1
@__const.bli_adddirstrings.types = private unnamed_addr constant [8 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], align 16
@.str.15 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%d-%b-%y\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"%.2f GiB\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"%.1f MiB\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"%d KiB\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%d B\00", align 1
@str = private unnamed_addr constant [28 x i8] c"Couldn't get memory for dir\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @BLI_current_working_dir(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_dir_contents(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = alloca %struct.BuildDirCtx, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.BuildDirCtx, ptr %3, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !34
  store ptr null, ptr %3, align 8, !tbaa !40
  call fastcc void @bli_builddir(ptr noundef nonnull %3, ptr noundef %0) #16
  call fastcc void @bli_adddirstrings(ptr noundef nonnull %3) #16
  %5 = load ptr, ptr %3, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #17
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi ptr [ %8, %7 ], [ %5, %2 ]
  store ptr %10, ptr %1, align 8, !tbaa !41
  %11 = load i32, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bli_builddir(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !42 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = tail call ptr @opendir(ptr noundef %1) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %85, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @readdir(ptr noundef nonnull %5) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %81, label %10

10:                                               ; preds = %7, %20
  %11 = phi ptr [ %22, %20 ], [ %8, %7 ]
  %12 = phi i32 [ %21, %20 ], [ 0, %7 ]
  %13 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.dirent, ptr %11, i64 0, i32 4
  %17 = call ptr @BLI_strdup(ptr noundef nonnull %16) #18
  %18 = getelementptr inbounds %struct.dirlink, ptr %13, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !43
  call void @BLI_addhead(ptr noundef nonnull %3, ptr noundef nonnull %13) #18
  %19 = add nsw i32 %12, 1
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i32 [ %19, %15 ], [ %12, %10 ]
  %22 = call ptr @readdir(ptr noundef nonnull %5) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %10, !llvm.loop !45

24:                                               ; preds = %20
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %81, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %0, align 8, !tbaa !40
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.BuildDirCtx, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !34
  %32 = add nsw i32 %31, %21
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %33, 288
  %35 = call ptr @realloc(ptr noundef nonnull %27, i64 noundef %34) #19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load ptr, ptr %0, align 8, !tbaa !40
  call void @free(ptr noundef %38) #18
  br label %40

39:                                               ; preds = %29
  store ptr %35, ptr %0, align 8, !tbaa !40
  br label %45

40:                                               ; preds = %26, %37
  %41 = sext i32 %21 to i64
  %42 = mul nsw i64 %41, 288
  %43 = call noalias ptr @malloc(i64 noundef %42) #17
  store ptr %43, ptr %0, align 8, !tbaa !40
  %44 = icmp eq ptr %43, null
  br i1 %44, label %76, label %45

45:                                               ; preds = %39, %40
  %46 = phi ptr [ %35, %39 ], [ %43, %40 ]
  %47 = load ptr, ptr %3, align 8, !tbaa !47
  %48 = getelementptr inbounds %struct.BuildDirCtx, ptr %0, i64 0, i32 1
  %49 = icmp eq ptr %47, null
  br i1 %49, label %73, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr %48, align 8, !tbaa !34
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.direntry, ptr %46, i64 %52
  br label %54

54:                                               ; preds = %50, %54
  %55 = phi ptr [ %70, %54 ], [ %53, %50 ]
  %56 = phi ptr [ %71, %54 ], [ %47, %50 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %55, i8 0, i64 288, i1 false)
  %57 = getelementptr inbounds %struct.dirlink, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  %59 = getelementptr inbounds %struct.direntry, ptr %55, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !49
  %60 = call ptr @BLI_strdupcat(ptr noundef %1, ptr noundef %58) #18
  %61 = getelementptr inbounds %struct.direntry, ptr %55, i64 0, i32 2
  store ptr %60, ptr %61, align 8, !tbaa !54
  %62 = load ptr, ptr %57, align 8, !tbaa !43
  call void @BLI_join_dirfile(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef %1, ptr noundef %62) #18
  %63 = getelementptr inbounds %struct.direntry, ptr %55, i64 0, i32 3
  %64 = call i32 @BLI_stat(ptr noundef nonnull %4, ptr noundef nonnull %63) #16
  %65 = getelementptr inbounds %struct.direntry, ptr %55, i64 0, i32 3, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !55
  store i32 %66, ptr %55, align 8, !tbaa !56
  %67 = getelementptr inbounds %struct.direntry, ptr %55, i64 0, i32 4
  store i32 0, ptr %67, align 8, !tbaa !57
  %68 = load i32, ptr %48, align 8, !tbaa !34
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %48, align 8, !tbaa !34
  %70 = getelementptr inbounds %struct.direntry, ptr %55, i64 1
  %71 = load ptr, ptr %56, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #15
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %54, !llvm.loop !59

73:                                               ; preds = %54, %45
  call void @BLI_freelist(ptr noundef nonnull %3) #18
  %74 = load ptr, ptr %0, align 8, !tbaa !40
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %78

76:                                               ; preds = %40
  %77 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @exit(i32 noundef 1) #20
  unreachable

78:                                               ; preds = %73
  %79 = load i32, ptr %48, align 8, !tbaa !34
  %80 = sext i32 %79 to i64
  call void @qsort(ptr noundef nonnull %74, i64 noundef %80, i64 noundef 288, ptr noundef nonnull @bli_compare) #18
  br label %83

81:                                               ; preds = %7, %24
  %82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %1) #16
  br label %83

83:                                               ; preds = %73, %78, %81
  %84 = call i32 @closedir(ptr noundef nonnull %5) #16
  br label %87

85:                                               ; preds = %2
  %86 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %1) #16
  br label %87

87:                                               ; preds = %85, %83
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bli_adddirstrings(ptr nocapture noundef readonly %0) unnamed_addr #1 !PGOFuncName !60 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 0, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.BuildDirCtx, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %106

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !40
  br label %8

8:                                                ; preds = %6, %101
  %9 = phi i32 [ %102, %101 ], [ 0, %6 ]
  %10 = phi ptr [ %103, %101 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 3, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 6
  %14 = lshr i32 %12, 6
  %15 = and i32 %14, 7
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [8 x ptr], ptr @__const.bli_adddirstrings.types, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef %18, i64 noundef 4) #18
  %20 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 7
  %21 = lshr i32 %12, 3
  %22 = and i32 %21, 7
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [8 x ptr], ptr @__const.bli_adddirstrings.types, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %20, ptr noundef %25, i64 noundef 4) #18
  %27 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 8
  %28 = and i32 %12, 7
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [8 x ptr], ptr @__const.bli_adddirstrings.types, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !41
  %32 = call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef %31, i64 noundef 4) #18
  %33 = and i32 %12, 1024
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %8
  %36 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 7, i64 2
  %37 = load i8, ptr %36, align 2, !tbaa !62
  %38 = icmp eq i8 %37, 45
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i8 108, ptr %36, align 2, !tbaa !62
  br label %40

40:                                               ; preds = %39, %35, %8
  %41 = and i32 %12, 3072
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 6, i64 2
  %45 = load i8, ptr %44, align 2, !tbaa !62
  %46 = icmp eq i8 %45, 120
  %47 = select i1 %46, i8 115, i8 83
  store i8 %47, ptr %44, align 2, !tbaa !62
  %48 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 7, i64 2
  %49 = load i8, ptr %48, align 2, !tbaa !62
  %50 = icmp eq i8 %49, 120
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i8 115, ptr %48, align 2, !tbaa !62
  br label %52

52:                                               ; preds = %43, %51, %40
  %53 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 3, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !63
  %55 = call ptr @getpwuid(i32 noundef %54) #18
  %56 = icmp eq ptr %55, null
  %57 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 9
  br i1 %56, label %61, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %55, align 8, !tbaa !64
  %60 = call ptr @BLI_strncpy(ptr noundef nonnull %57, ptr noundef %59, i64 noundef 16) #18
  br label %64

61:                                               ; preds = %52
  %62 = load i32, ptr %53, align 4, !tbaa !63
  %63 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %57, i64 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %62) #18
  br label %64

64:                                               ; preds = %61, %58
  %65 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 3, i32 12
  %66 = call ptr @localtime(ptr noundef nonnull %65) #18
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call ptr @localtime(ptr noundef nonnull %2) #18
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi ptr [ %69, %68 ], [ %66, %64 ]
  %72 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 10
  %73 = call i64 @strftime(ptr noundef nonnull %72, i64 noundef 8, ptr noundef nonnull @.str.16, ptr noundef %71) #18
  %74 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 11
  %75 = call i64 @strftime(ptr noundef nonnull %74, i64 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %71) #18
  %76 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 3, i32 8
  %77 = load i64, ptr %76, align 8, !tbaa !66
  %78 = icmp sgt i64 %77, 1073741824
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 5
  %81 = sitofp i64 %77 to double
  %82 = fmul double %81, 0x3E10000000000000
  %83 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %80, i64 noundef 16, ptr noundef nonnull @.str.18, double noundef %82) #18
  br label %101

84:                                               ; preds = %70
  %85 = icmp sgt i64 %77, 1048576
  br i1 %85, label %86, label %91

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 5
  %88 = sitofp i64 %77 to double
  %89 = fmul double %88, 0x3EB0000000000000
  %90 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %87, i64 noundef 16, ptr noundef nonnull @.str.19, double noundef %89) #18
  br label %101

91:                                               ; preds = %84
  %92 = icmp sgt i64 %77, 1024
  %93 = getelementptr inbounds %struct.direntry, ptr %10, i64 0, i32 5
  br i1 %92, label %94, label %98

94:                                               ; preds = %91
  %95 = lshr i64 %77, 10
  %96 = trunc i64 %95 to i32
  %97 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %93, i64 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %96) #18
  br label %101

98:                                               ; preds = %91
  %99 = trunc i64 %77 to i32
  %100 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %93, i64 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %99) #18
  br label %101

101:                                              ; preds = %79, %94, %98, %86
  %102 = add nuw nsw i32 %9, 1
  %103 = getelementptr inbounds %struct.direntry, ptr %10, i64 1
  %104 = load i32, ptr %3, align 8, !tbaa !34
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %8, label %106, !llvm.loop !67

106:                                              ; preds = %101, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_free_filelist(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %24
  %7 = phi i64 [ 0, %4 ], [ %25, %24 ]
  %8 = getelementptr inbounds %struct.direntry, ptr %0, i64 %7, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #18
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.direntry, ptr %0, i64 %7, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %17(ptr noundef nonnull %14) #18
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.direntry, ptr %0, i64 %7, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %23(ptr noundef nonnull %20) #18
  br label %24

24:                                               ; preds = %22, %18
  %25 = add nuw nsw i64 %7, 1
  %26 = icmp eq i64 %25, %5
  br i1 %26, label %27, label %6, !llvm.loop !69

27:                                               ; preds = %24, %2
  tail call void @free(ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i64 @BLI_file_descriptor_size(i32 noundef %0) local_unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #15
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #18
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !70
  br label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi i64 [ %9, %7 ], [ -1, %4 ], [ -1, %1 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #15
  ret i64 %11
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i64 @BLI_file_size(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #15
  %3 = call i32 @BLI_stat(ptr noundef %0, ptr noundef nonnull %2) #16
  %4 = icmp eq i32 %3, -1
  %5 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8
  %6 = load i64, ptr %5, align 8
  %7 = select i1 %4, i64 -1, i64 %6
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #15
  ret i64 %7
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @BLI_stat(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = tail call i32 @stat(ptr noundef %0, ptr noundef %1) #18
  ret i32 %3
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @BLI_exists(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #15
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #18
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = select i1 %4, i32 %6, i32 0
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #15
  ret i32 %7
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local zeroext i8 @BLI_is_dir(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = tail call i32 @BLI_exists(ptr noundef %0) #16
  %3 = and i32 %2, 61440
  %4 = icmp eq i32 %3, 16384
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local zeroext i8 @BLI_is_file(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = tail call i32 @BLI_exists(ptr noundef %0) #16
  %3 = icmp ne i32 %2, 0
  %4 = and i32 %2, 61440
  %5 = icmp ne i32 %4, 16384
  %6 = and i1 %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_file_read_as_lines(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr null, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef 0, i32 noundef 2) #16
  %7 = tail call i64 @ftell(ptr noundef nonnull %3) #16
  %8 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef 0, i32 noundef 0) #16
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %10 = tail call ptr %9(i64 noundef %7, ptr noundef nonnull @.str.1) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %5
  %13 = tail call i64 @fread(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %7, ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %12, %29
  %15 = phi i64 [ 0, %12 ], [ %31, %29 ]
  %16 = phi i64 [ 0, %12 ], [ %30, %29 ]
  %17 = icmp eq i64 %16, %13
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %10, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !62
  %21 = icmp eq i8 %20, 10
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = add i64 %16, 1
  br label %29

24:                                               ; preds = %18, %14
  %25 = getelementptr inbounds i8, ptr %10, i64 %15
  %26 = sub i64 %16, %15
  %27 = call ptr @BLI_strdupn(ptr noundef nonnull %25, i64 noundef %26) #18
  call void @BLI_linklist_prepend(ptr noundef nonnull %2, ptr noundef %27) #18
  %28 = add i64 %16, 1
  br label %29

29:                                               ; preds = %22, %24
  %30 = phi i64 [ %23, %22 ], [ %28, %24 ]
  %31 = phi i64 [ %15, %22 ], [ %28, %24 ]
  %32 = icmp ugt i64 %30, %13
  br i1 %32, label %33, label %14, !llvm.loop !71

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %34(ptr noundef nonnull %10) #18
  br label %35

35:                                               ; preds = %33, %5
  %36 = call i32 @fclose(ptr noundef nonnull %3) #16
  call void @BLI_linklist_reverse(ptr noundef nonnull %2) #18
  %37 = load ptr, ptr %2, align 8, !tbaa !41
  br label %38

38:                                               ; preds = %1, %35
  %39 = phi ptr [ %37, %35 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret ptr %39
}

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_linklist_reverse(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_file_free_lines(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @BLI_linklist_freeN(ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_freeN(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local zeroext i8 @BLI_file_older(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #15
  %5 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %3) #18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = call i32 @stat(ptr noundef %1, ptr noundef nonnull %4) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12
  %12 = load i64, ptr %11, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 12
  %14 = load i64, ptr %13, align 8, !tbaa !72
  %15 = icmp slt i64 %12, %14
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %7, %2, %10
  %18 = phi i8 [ %16, %10 ], [ 0, %2 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #15
  ret i8 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @readdir(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BLI_strdupcat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @BLI_freelist(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @bli_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !73 {
  %3 = load i32, ptr %0, align 8, !tbaa !56
  %4 = and i32 %3, 61440
  %5 = icmp eq i32 %4, 16384
  %6 = load i32, ptr %1, align 8, !tbaa !56
  %7 = and i32 %6, 61440
  %8 = icmp eq i32 %7, 16384
  br i1 %5, label %9, label %10

9:                                                ; preds = %2
  br i1 %8, label %16, label %34

10:                                               ; preds = %2
  br i1 %8, label %34, label %11

11:                                               ; preds = %10
  %12 = icmp eq i32 %4, 32768
  %13 = icmp eq i32 %7, 32768
  br i1 %12, label %14, label %15

14:                                               ; preds = %11
  br i1 %13, label %16, label %34

15:                                               ; preds = %11
  br i1 %13, label %34, label %16

16:                                               ; preds = %9, %15, %14
  %17 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(2) @.str.5) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(2) @.str.5) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(3) @.str.6) #21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(3) @.str.6) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @BLI_natstrcmp(ptr noundef %18, ptr noundef %23) #18
  br label %34

34:                                               ; preds = %29, %26, %21, %16, %15, %14, %10, %9, %32
  %35 = phi i32 [ %33, %32 ], [ -1, %9 ], [ 1, %10 ], [ -1, %14 ], [ 1, %15 ], [ -1, %16 ], [ 1, %21 ], [ -1, %26 ], [ 1, %29 ]
  ret i32 %35
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @BLI_natstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @getpwuid(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare ptr @localtime(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize allocsize(0) }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind optsize allocsize(1) }
attributes #20 = { noreturn nounwind optsize }
attributes #21 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !39, i64 8}
!35 = !{!"BuildDirCtx", !36, i64 0, !39, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!35, !36, i64 0}
!41 = !{!36, !36, i64 0}
!42 = !{!"storage.c:bli_builddir"}
!43 = !{!44, !36, i64 16}
!44 = !{!"dirlink", !36, i64 0, !36, i64 8, !36, i64 16}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !36, i64 0}
!48 = !{!"ListBase", !36, i64 0, !36, i64 8}
!49 = !{!50, !36, i64 8}
!50 = !{!"direntry", !39, i64 0, !36, i64 8, !36, i64 16, !51, i64 24, !39, i64 168, !37, i64 172, !37, i64 188, !37, i64 192, !37, i64 196, !37, i64 200, !37, i64 216, !37, i64 224, !37, i64 240, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!51 = !{!"stat", !52, i64 0, !52, i64 8, !52, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !53, i64 72, !53, i64 88, !53, i64 104, !37, i64 120}
!52 = !{!"long", !37, i64 0}
!53 = !{!"timespec", !52, i64 0, !52, i64 8}
!54 = !{!50, !36, i64 16}
!55 = !{!50, !39, i64 48}
!56 = !{!50, !39, i64 0}
!57 = !{!50, !39, i64 168}
!58 = !{!44, !36, i64 0}
!59 = distinct !{!59, !46}
!60 = !{!"storage.c:bli_adddirstrings"}
!61 = !{!52, !52, i64 0}
!62 = !{!37, !37, i64 0}
!63 = !{!50, !39, i64 52}
!64 = !{!65, !36, i64 0}
!65 = !{!"passwd", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 32, !36, i64 40}
!66 = !{!50, !52, i64 72}
!67 = distinct !{!67, !46}
!68 = !{!50, !36, i64 272}
!69 = distinct !{!69, !46}
!70 = !{!51, !52, i64 48}
!71 = distinct !{!71, !46}
!72 = !{!51, !52, i64 88}
!73 = !{!"storage.c:bli_compare"}
