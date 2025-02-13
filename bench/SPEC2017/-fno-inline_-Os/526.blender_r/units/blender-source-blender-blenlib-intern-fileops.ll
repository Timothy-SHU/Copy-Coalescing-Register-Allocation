; ModuleID = 'blender/source/blender/blenlib/intern/fileops.c'
source_filename = "blender/source/blender/blenlib/intern/fileops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"BLI_ungzip_to_mem\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.BLI_file_ungzip_to_mem = private unnamed_addr constant [23 x i8] c"BLI_file_ungzip_to_mem\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"scandir\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"join_dirfile_alloc path\00", align 1
@__func__.join_dirfile_alloc = private unnamed_addr constant [19 x i8] c"join_dirfile_alloc\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"check_destination path\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"%s: '%s' is the same as '%s'\0A\00", align 1
@__func__.copy_callback_pre = private unnamed_addr constant [18 x i8] c"copy_callback_pre\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@__func__.copy_single_file = private unnamed_addr constant [17 x i8] c"copy_single_file\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"copy_single_file link_buffer\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"readlink\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"Copying of this kind of files isn't supported yet\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_file_ungzip_to_mem(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_gzopen(ptr noundef %0, ptr noundef nonnull @.str) #11
  br label %4

4:                                                ; preds = %18, %2
  %5 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %6 = phi ptr [ null, %2 ], [ %20, %18 ]
  %7 = phi i32 [ 0, %2 ], [ %25, %18 ]
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 524288, ptr noundef nonnull @.str.1) #12
  br label %18

12:                                               ; preds = %4
  %13 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %14 = add nsw i32 %7, 524288
  %15 = sext i32 %14 to i64
  %16 = tail call ptr %13(ptr noundef nonnull %6, i64 noundef %15, ptr noundef nonnull @__func__.BLI_file_ungzip_to_mem) #12
  %17 = add nsw i32 %5, 524288
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i32 [ 524288, %9 ], [ %17, %12 ]
  %20 = phi ptr [ %11, %9 ], [ %16, %12 ]
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = tail call i32 @gzread(ptr noundef %3, ptr noundef %22, i32 noundef 524288) #12
  %24 = icmp sgt i32 %23, 0
  %25 = add nuw nsw i32 %23, %7
  br i1 %24, label %4, label %26

26:                                               ; preds = %18
  %27 = tail call i32 @gzclose(ptr noundef %3) #12
  %28 = icmp eq i32 %7, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %30(ptr noundef %20) #12
  br label %36

31:                                               ; preds = %26
  %32 = icmp eq i32 %19, %7
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %35 = tail call ptr %34(ptr noundef %20, i64 noundef %21, ptr noundef nonnull @__func__.BLI_file_ungzip_to_mem) #12
  br label %36

36:                                               ; preds = %31, %33, %29
  %37 = phi ptr [ null, %29 ], [ %35, %33 ], [ %20, %31 ]
  store i32 %7, ptr %1, align 4, !tbaa !38
  ret ptr %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_gzopen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gzopen(ptr noundef %0, ptr noundef %1) #12
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @gzread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gzclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_file_is_writable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = tail call i32 @BLI_access(ptr noundef %0, i32 noundef 2) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__errno_location() #13
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #14
  call void @BLI_split_dirfile(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, i64 noundef 1024, i64 noundef 0) #12
  %10 = call i32 @BLI_access(ptr noundef nonnull %2, i32 noundef 3) #11
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #14
  br label %13

13:                                               ; preds = %5, %1, %9
  %14 = phi i8 [ %12, %9 ], [ 1, %1 ], [ 0, %5 ]
  ret i8 %14
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @BLI_access(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @access(ptr noundef %0, i32 noundef %1) #12
  ret i32 %3
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_file_touch(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.2) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @getc(ptr noundef nonnull %2) #11
  tail call void @rewind(ptr noundef nonnull %2) #11
  %6 = tail call i32 @putc(i32 noundef %5, ptr noundef nonnull %2) #11
  br label %10

7:                                                ; preds = %1
  %8 = tail call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.3) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4, %7
  %11 = phi ptr [ %2, %4 ], [ %8, %7 ]
  %12 = tail call i32 @fclose(ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %7, %10
  %14 = phi i8 [ 1, %10 ], [ 0, %7 ]
  ret i8 %14
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @BLI_fopen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1) #11
  ret ptr %3
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @gzopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @BLI_open(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %2) #12
  ret i32 %4
}

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_delete(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @recursive_operation(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull @delete_single_file, ptr noundef nonnull @delete_callback_post) #11
  br label %13

7:                                                ; preds = %3
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @rmdir(ptr noundef %0) #12
  br label %13

11:                                               ; preds = %7
  %12 = tail call i32 @remove(ptr noundef %0) #12
  br label %13

13:                                               ; preds = %11, %9, %5
  %14 = phi i32 [ %6, %5 ], [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recursive_operation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !40 {
  %6 = alloca %struct.stat, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store ptr null, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  store ptr null, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  store ptr null, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  store i64 -1, ptr %10, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  store i64 -1, ptr %11, align 8, !tbaa !41
  %12 = tail call fastcc ptr @strip_last_slash(ptr noundef %0) #11
  %13 = icmp eq ptr %1, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc ptr @strip_last_slash(ptr noundef nonnull %1) #11
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ null, %5 ]
  %18 = call i32 @lstat(ptr noundef %12, ptr noundef nonnull %6) #12
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %95, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !43
  %23 = and i32 %22, 61440
  %24 = icmp eq i32 %23, 16384
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = icmp eq ptr %3, null
  br i1 %26, label %95, label %27

27:                                               ; preds = %25
  %28 = tail call i32 %3(ptr noundef %12, ptr noundef %17) #12, !callees !46
  %29 = icmp ne i32 %28, 0
  %30 = sext i1 %29 to i32
  br label %95

31:                                               ; preds = %20
  %32 = call i32 @scandir(ptr noundef %0, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull @alphasort) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @perror(ptr noundef nonnull @.str.4) #15
  br label %95

35:                                               ; preds = %31
  %36 = icmp eq ptr %2, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = call i32 %2(ptr noundef %12, ptr noundef %17) #12, !callees !47
  switch i32 %38, label %39 [
    i32 0, label %40
    i32 1, label %95
  ]

39:                                               ; preds = %37
  br label %95

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %38, %37 ], [ %18, %35 ]
  %42 = icmp eq i32 %32, 0
  br i1 %42, label %86, label %43

43:                                               ; preds = %40
  %44 = icmp eq ptr %17, null
  %45 = icmp eq ptr %3, null
  %46 = zext nneg i32 %32 to i64
  br label %47

47:                                               ; preds = %43, %82
  %48 = phi i64 [ 0, %43 ], [ %84, %82 ]
  %49 = phi i32 [ %41, %43 ], [ %83, %82 ]
  %50 = load ptr, ptr %9, align 8, !tbaa !34
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.dirent, ptr %52, i64 0, i32 4
  %54 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(2) @.str.5) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %47
  %57 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(3) @.str.6) #16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %56
  call fastcc void @join_dirfile_alloc(ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef %12, ptr noundef nonnull %53) #11
  br i1 %44, label %61, label %60

60:                                               ; preds = %59
  call fastcc void @join_dirfile_alloc(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %17, ptr noundef nonnull %53) #11
  br label %61

61:                                               ; preds = %60, %59
  %62 = call i32 @lstat(ptr noundef %12, ptr noundef nonnull %6) #12
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %95, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %21, align 8, !tbaa !43
  %66 = and i32 %65, 61440
  %67 = icmp eq i32 %66, 16384
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load ptr, ptr %7, align 8, !tbaa !34
  %70 = load ptr, ptr %8, align 8, !tbaa !34
  %71 = call fastcc i32 @recursive_operation(ptr noundef %69, ptr noundef %70, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  br label %79

72:                                               ; preds = %64
  br i1 %45, label %79, label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr %7, align 8, !tbaa !34
  %75 = load ptr, ptr %8, align 8, !tbaa !34
  %76 = call i32 %3(ptr noundef %74, ptr noundef %75) #12, !callees !46
  %77 = icmp ne i32 %76, 0
  %78 = sext i1 %77 to i32
  br label %79

79:                                               ; preds = %68, %73, %72
  %80 = phi i32 [ %71, %68 ], [ %78, %73 ], [ %62, %72 ]
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %47, %56, %79
  %83 = phi i32 [ 0, %79 ], [ %49, %56 ], [ %49, %47 ]
  %84 = add nuw nsw i64 %48, 1
  %85 = icmp eq i64 %84, %46
  br i1 %85, label %86, label %47, !llvm.loop !48

86:                                               ; preds = %82, %40
  %87 = phi i32 [ %41, %40 ], [ %83, %82 ]
  %88 = icmp eq i32 %87, 0
  %89 = icmp ne ptr %4, null
  %90 = and i1 %89, %88
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = call i32 %4(ptr noundef %12, ptr noundef %17) #12, !callees !50
  %93 = icmp ne i32 %92, 0
  %94 = sext i1 %93 to i32
  br label %95

95:                                               ; preds = %79, %61, %37, %91, %86, %39, %25, %27, %16, %34
  %96 = phi i32 [ undef, %16 ], [ %32, %34 ], [ %32, %39 ], [ %32, %91 ], [ %32, %86 ], [ undef, %27 ], [ undef, %25 ], [ %32, %37 ], [ %32, %61 ], [ %32, %79 ]
  %97 = phi i32 [ %18, %16 ], [ -1, %34 ], [ -1, %39 ], [ %94, %91 ], [ %87, %86 ], [ %30, %27 ], [ %18, %25 ], [ 0, %37 ], [ %80, %79 ], [ %62, %61 ]
  %98 = load ptr, ptr %9, align 8, !tbaa !34
  %99 = icmp eq ptr %98, null
  br i1 %99, label %115, label %100

100:                                              ; preds = %95
  %101 = icmp sgt i32 %96, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %100
  %103 = zext nneg i32 %96 to i64
  br label %104

104:                                              ; preds = %102, %104
  %105 = phi i64 [ 0, %102 ], [ %109, %104 ]
  %106 = load ptr, ptr %9, align 8, !tbaa !34
  %107 = getelementptr inbounds ptr, ptr %106, i64 %105
  %108 = load ptr, ptr %107, align 8, !tbaa !34
  call void @free(ptr noundef %108) #12
  %109 = add nuw nsw i64 %105, 1
  %110 = icmp eq i64 %109, %103
  br i1 %110, label %111, label %104, !llvm.loop !51

111:                                              ; preds = %104
  %112 = load ptr, ptr %9, align 8, !tbaa !34
  br label %113

113:                                              ; preds = %111, %100
  %114 = phi ptr [ %112, %111 ], [ %98, %100 ]
  call void @free(ptr noundef %114) #12
  br label %115

115:                                              ; preds = %113, %95
  %116 = load ptr, ptr %7, align 8, !tbaa !34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %119(ptr noundef nonnull %116) #12
  br label %120

120:                                              ; preds = %118, %115
  %121 = load ptr, ptr %8, align 8, !tbaa !34
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %124(ptr noundef nonnull %121) #12
  br label %125

125:                                              ; preds = %123, %120
  %126 = icmp eq ptr %12, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %128(ptr noundef nonnull %12) #12
  br label %129

129:                                              ; preds = %127, %125
  %130 = icmp eq ptr %17, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %132(ptr noundef nonnull %17) #12
  br label %133

133:                                              ; preds = %131, %129
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #14
  ret i32 %97
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @delete_single_file(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 !PGOFuncName !52 {
  %3 = tail call i32 @unlink(ptr noundef %0) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @perror(ptr noundef nonnull @.str.8) #15
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 2, %5 ], [ 0, %2 ]
  ret i32 %7
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @delete_callback_post(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 !PGOFuncName !53 {
  %3 = tail call i32 @rmdir(ptr noundef %0) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @perror(ptr noundef nonnull @.str.9) #15
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 2, %5 ], [ 0, %2 ]
  ret i32 %7
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @rmdir(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @check_destination(ptr noundef %0, ptr noundef %1) #11
  %4 = tail call fastcc i32 @recursive_operation(ptr noundef %0, ptr noundef %3, ptr noundef nonnull @copy_callback_pre, ptr noundef nonnull @copy_single_file, ptr noundef null) #11
  %5 = icmp eq ptr %3, %1
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %7(ptr noundef %3) #12
  br label %8

8:                                                ; preds = %6, %2
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @check_destination(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !54 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #14
  %4 = call i32 @stat(ptr noundef %1, ptr noundef nonnull %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = and i32 %8, 61440
  %10 = icmp eq i32 %9, 16384
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = tail call fastcc ptr @strip_last_slash(ptr noundef %0) #11
  %13 = tail call ptr @BLI_last_slash(ptr noundef %12) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %13, i64 1
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #16
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = add i64 %17, 2
  %21 = add i64 %20, %18
  %22 = tail call ptr %19(i64 noundef %21, ptr noundef nonnull @.str.10) #12
  tail call void @BLI_join_dirfile(ptr noundef %22, i64 noundef %21, ptr noundef %1, ptr noundef nonnull %16) #12
  br label %23

23:                                               ; preds = %11, %15
  %24 = phi ptr [ %22, %15 ], [ %1, %11 ]
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef %12) #12
  br label %26

26:                                               ; preds = %23, %2, %6
  %27 = phi ptr [ %1, %6 ], [ %1, %2 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #14
  ret ptr %27
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @copy_callback_pre(ptr noundef %0, ptr noundef %1) #3 !PGOFuncName !55 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #14
  %4 = tail call fastcc zeroext i8 @check_the_same(ptr noundef %0, ptr noundef %1) #11, !range !56
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !34
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.copy_callback_pre, ptr noundef %0, ptr noundef %1) #15
  br label %27

9:                                                ; preds = %2
  %10 = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %3) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @perror(ptr noundef nonnull @.str.12) #15
  br label %27

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !43
  %16 = tail call i32 @mkdir(ptr noundef %1, i32 noundef %15) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @perror(ptr noundef nonnull @.str.13) #15
  br label %27

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !57
  %22 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !58
  %24 = tail call i32 @chown(ptr noundef %1, i32 noundef %21, i32 noundef %23) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void @perror(ptr noundef nonnull @.str.14) #15
  br label %27

27:                                               ; preds = %19, %26, %18, %12, %6
  %28 = phi i32 [ 2, %6 ], [ 2, %12 ], [ 2, %18 ], [ 2, %26 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #14
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_single_file(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !59 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #14
  %5 = tail call fastcc zeroext i8 @check_the_same(ptr noundef %0, ptr noundef %1) #11, !range !56
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !34
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.copy_single_file, ptr noundef %0, ptr noundef %1) #15
  br label %71

10:                                               ; preds = %2
  %11 = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %3) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @perror(ptr noundef nonnull @.str.15) #15
  br label %71

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !43
  %17 = trunc i32 %16 to i16
  %18 = and i16 %17, -4096
  switch i16 %18, label %45 [
    i16 -24576, label %19
    i16 -32768, label %48
  ]

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !60
  %22 = icmp ult i64 %21, 4096
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %25 = add nsw i64 %21, 2
  %26 = tail call ptr %24(i64 noundef %25, ptr noundef nonnull @.str.16) #12
  br label %27

27:                                               ; preds = %19, %23
  %28 = phi ptr [ %26, %23 ], [ %4, %19 ]
  %29 = add nsw i64 %21, 1
  %30 = call i64 @readlink(ptr noundef %0, ptr noundef %28, i64 noundef %29) #12
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  tail call void @perror(ptr noundef nonnull @.str.17) #15
  br i1 %22, label %71, label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %34(ptr noundef %28) #12
  br label %71

35:                                               ; preds = %27
  %36 = getelementptr inbounds i8, ptr %28, i64 %30
  store i8 0, ptr %36, align 1, !tbaa !61
  %37 = call i32 @symlink(ptr noundef %28, ptr noundef %1) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  call void @perror(ptr noundef nonnull @.str.18) #15
  br i1 %22, label %71, label %40

40:                                               ; preds = %39
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %41(ptr noundef nonnull %28) #12
  br label %71

42:                                               ; preds = %35
  br i1 %22, label %71, label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %44(ptr noundef nonnull %28) #12
  br label %71

45:                                               ; preds = %14
  %46 = load ptr, ptr @stderr, align 8, !tbaa !34
  %47 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 50, i64 1, ptr %46) #17
  br label %71

48:                                               ; preds = %14
  %49 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) #11
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  tail call void @perror(ptr noundef nonnull @.str.20) #15
  br label %71

52:                                               ; preds = %48
  %53 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.3) #11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4096, ptr noundef nonnull %49) #11
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %65, label %60

58:                                               ; preds = %52
  tail call void @perror(ptr noundef nonnull @.str.20) #15
  %59 = tail call i32 @fclose(ptr noundef nonnull %49) #11
  br label %71

60:                                               ; preds = %55, %60
  %61 = phi i64 [ %63, %60 ], [ %56, %55 ]
  %62 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef %61, ptr noundef nonnull %53) #11
  %63 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4096, ptr noundef nonnull %49) #11
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %60, !llvm.loop !62

65:                                               ; preds = %60, %55
  %66 = tail call i32 @fclose(ptr noundef nonnull %53) #11
  %67 = tail call i32 @fclose(ptr noundef nonnull %49) #11
  %68 = call fastcc i32 @set_permissions(ptr noundef %1, ptr noundef nonnull %3) #11, !range !63
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 0, i32 2
  br label %71

71:                                               ; preds = %65, %33, %32, %40, %39, %43, %42, %58, %51, %45, %13, %7
  %72 = phi i32 [ 2, %7 ], [ 2, %13 ], [ 2, %58 ], [ 2, %51 ], [ 2, %45 ], [ 2, %33 ], [ 2, %32 ], [ 2, %40 ], [ 2, %39 ], [ 0, %43 ], [ 0, %42 ], [ %70, %65 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #14
  ret i32 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_create_symlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @symlink(ptr noundef %1, ptr noundef %0) #12
  ret i32 %3
}

; Function Attrs: nounwind optsize
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_dir_create_recursive(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #14
  %3 = tail call i32 @BLI_exists(ptr noundef %0) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %0, i64 noundef 4096) #12
  %7 = call ptr @BLI_last_slash(ptr noundef nonnull %2) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store i8 0, ptr %7, align 1, !tbaa !61
  call void @BLI_dir_create_recursive(ptr noundef nonnull %2) #11
  br label %10

10:                                               ; preds = %9, %5
  %11 = call i32 @mkdir(ptr noundef %0, i32 noundef 511) #12
  br label %12

12:                                               ; preds = %1, %10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #14
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_last_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BLI_rename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BLI_exists(ptr noundef %0) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @BLI_exists(ptr noundef %1) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @BLI_delete(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %5
  %12 = tail call i32 @rename(ptr noundef %0, ptr noundef %1) #12
  br label %13

13:                                               ; preds = %8, %2, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %2 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @strip_last_slash(ptr noundef %0) unnamed_addr #0 !PGOFuncName !64 {
  %2 = tail call ptr @BLI_strdup(ptr noundef %0) #12
  tail call void @BLI_del_slash(ptr noundef %2) #12
  ret ptr %2
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @scandir(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @alphasort(ptr noundef, ptr noundef) #8

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @join_dirfile_alloc(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !65 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #16
  %7 = add i64 %6, %5
  %8 = add i64 %7, 1
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %13 = add i64 %7, 2
  %14 = tail call ptr %12(i64 noundef %13, ptr noundef nonnull @.str.7) #12
  store ptr %14, ptr %0, align 8, !tbaa !34
  br label %24

15:                                               ; preds = %4
  %16 = load i64, ptr %1, align 8, !tbaa !41
  %17 = icmp ult i64 %16, %8
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = add i64 %7, 2
  br label %24

20:                                               ; preds = %15
  %21 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %22 = add i64 %7, 2
  %23 = tail call ptr %21(ptr noundef nonnull %9, i64 noundef %22, ptr noundef nonnull @__func__.join_dirfile_alloc) #12
  store ptr %23, ptr %0, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %18, %20, %11
  %25 = phi i64 [ %19, %18 ], [ %22, %20 ], [ %13, %11 ]
  %26 = phi ptr [ %9, %18 ], [ %23, %20 ], [ %14, %11 ]
  store i64 %8, ptr %1, align 8, !tbaa !41
  tail call void @BLI_join_dirfile(ptr noundef %26, i64 noundef %25, ptr noundef %2, ptr noundef %3) #12
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_del_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @check_the_same(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !66 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #14
  %5 = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %3) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = call i32 @lstat(ptr noundef %1, ptr noundef nonnull %4) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load i64, ptr %3, align 8, !tbaa !67
  %12 = load i64, ptr %4, align 8, !tbaa !67
  %13 = icmp eq i64 %11, %12
  %14 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %15, %17
  %19 = select i1 %13, i1 %18, i1 false
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %7, %2, %10
  %22 = phi i8 [ %20, %10 ], [ 0, %2 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #14
  ret i8 %22
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @chown(ptr nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @set_permissions(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.stat, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = getelementptr inbounds %struct.stat, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !58
  %7 = tail call i32 @chown(ptr noundef %0, i32 noundef %4, i32 noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.stat, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !43
  %12 = tail call i32 @chmod(ptr noundef %0, i32 noundef %11) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %2
  %15 = phi ptr [ @.str.14, %2 ], [ @.str.21, %9 ]
  tail call void @perror(ptr noundef nonnull %15) #15
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ 0, %9 ], [ -1, %14 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind optsize willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { cold optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }
attributes #17 = { cold }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!"fileops.c:recursive_operation"}
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !36, i64 0}
!43 = !{!44, !39, i64 24}
!44 = !{!"stat", !42, i64 0, !42, i64 8, !42, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !45, i64 72, !45, i64 88, !45, i64 104, !36, i64 120}
!45 = !{!"timespec", !42, i64 0, !42, i64 8}
!46 = !{ptr @copy_single_file, ptr @delete_single_file}
!47 = !{ptr @copy_callback_pre}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{ptr @delete_callback_post}
!51 = distinct !{!51, !49}
!52 = !{!"fileops.c:delete_single_file"}
!53 = !{!"fileops.c:delete_callback_post"}
!54 = !{!"fileops.c:check_destination"}
!55 = !{!"fileops.c:copy_callback_pre"}
!56 = !{i8 0, i8 2}
!57 = !{!44, !39, i64 28}
!58 = !{!44, !39, i64 32}
!59 = !{!"fileops.c:copy_single_file"}
!60 = !{!44, !42, i64 48}
!61 = !{!36, !36, i64 0}
!62 = distinct !{!62, !49}
!63 = !{i32 -1, i32 1}
!64 = !{!"fileops.c:strip_last_slash"}
!65 = !{!"fileops.c:join_dirfile_alloc"}
!66 = !{!"fileops.c:check_the_same"}
!67 = !{!44, !42, i64 0}
!68 = !{!"fileops.c:set_permissions"}
