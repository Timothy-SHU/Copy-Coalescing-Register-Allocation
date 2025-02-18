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

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_file_ungzip_to_mem(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gzopen(ptr noundef %0, ptr noundef nonnull @.str) #12
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
  br i1 %24, label %4, label %26, !llvm.loop !38

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
  store i32 %7, ptr %1, align 4, !tbaa !40
  ret ptr %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_gzopen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gzopen(ptr noundef %0, ptr noundef %1) #12
  ret ptr %3
}

declare i32 @gzread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gzclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_file_is_writable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = tail call i32 @access(ptr noundef %0, i32 noundef 2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__errno_location() #13
  %7 = load i32, ptr %6, align 4, !tbaa !40
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #12
  call void @BLI_split_dirfile(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, i64 noundef 1024, i64 noundef 0) #12
  %10 = call i32 @access(ptr noundef nonnull %2, i32 noundef 3) #12
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #12
  br label %13

13:                                               ; preds = %5, %1, %9
  %14 = phi i8 [ %12, %9 ], [ 1, %1 ], [ 0, %5 ]
  ret i8 %14
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @BLI_access(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @access(ptr noundef %0, i32 noundef %1) #12
  ret i32 %3
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef zeroext i8 @BLI_file_touch(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.2)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @getc(ptr noundef nonnull %2)
  tail call void @rewind(ptr noundef nonnull %2)
  %6 = tail call i32 @putc(i32 noundef %5, ptr noundef nonnull %2)
  br label %9

7:                                                ; preds = %1
  %8 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.3)
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %2, %4 ], [ %8, %7 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @fclose(ptr noundef nonnull %10)
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi i8 [ 1, %12 ], [ 0, %9 ]
  ret i8 %15
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @BLI_fopen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

declare ptr @gzopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @BLI_open(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %2) #12
  ret i32 %4
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_delete(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @recursive_operation(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull @delete_single_file, ptr noundef nonnull @delete_callback_post)
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

; Function Attrs: nounwind uwtable
define internal fastcc i32 @recursive_operation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.stat, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store ptr null, ptr %7, align 8, !tbaa !34
  %8 = tail call ptr @BLI_strdup(ptr noundef %0) #12
  tail call void @BLI_del_slash(ptr noundef %8) #12
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @BLI_strdup(ptr noundef nonnull %1) #12
  tail call void @BLI_del_slash(ptr noundef %11) #12
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ null, %5 ]
  %14 = call i32 @lstat(ptr noundef %8, ptr noundef nonnull %6) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %140, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !42
  %19 = and i32 %18, 61440
  %20 = icmp eq i32 %19, 16384
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = icmp eq ptr %3, null
  br i1 %22, label %140, label %23

23:                                               ; preds = %21
  %24 = tail call i32 %3(ptr noundef %8, ptr noundef %13) #12, !callees !46
  %25 = icmp ne i32 %24, 0
  %26 = sext i1 %25 to i32
  br label %140

27:                                               ; preds = %16
  %28 = call i32 @scandir(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull @alphasort) #12
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @perror(ptr noundef nonnull @.str.4) #14
  br label %140

31:                                               ; preds = %27
  %32 = icmp eq ptr %2, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = call i32 %2(ptr noundef %8, ptr noundef %13) #12, !callees !47
  switch i32 %34, label %35 [
    i32 0, label %36
    i32 1, label %140
  ]

35:                                               ; preds = %33
  br label %140

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %34, %33 ], [ %14, %31 ]
  %38 = icmp eq i32 %28, 0
  br i1 %38, label %129, label %39

39:                                               ; preds = %36
  %40 = icmp eq ptr %13, null
  %41 = icmp eq ptr %3, null
  %42 = call i32 @llvm.smax.i32(i32 %28, i32 1)
  %43 = zext nneg i32 %42 to i64
  br label %44

44:                                               ; preds = %118, %39
  %45 = phi i64 [ 0, %39 ], [ %126, %118 ]
  %46 = phi i32 [ %37, %39 ], [ %123, %118 ]
  %47 = phi i64 [ -1, %39 ], [ %122, %118 ]
  %48 = phi i64 [ -1, %39 ], [ %121, %118 ]
  %49 = phi ptr [ null, %39 ], [ %120, %118 ]
  %50 = phi ptr [ null, %39 ], [ %119, %118 ]
  %51 = load ptr, ptr %7, align 8, !tbaa !34
  %52 = getelementptr inbounds ptr, ptr %51, i64 %45
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.dirent, ptr %53, i64 0, i32 4
  %55 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(2) @.str.5) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %118, label %57

57:                                               ; preds = %44
  %58 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(3) @.str.6) #15
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %118, label %60

60:                                               ; preds = %57
  %61 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #15
  %62 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %54) #15
  %63 = add i64 %62, %61
  %64 = add i64 %63, 1
  %65 = icmp eq ptr %50, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %68 = add i64 %63, 2
  %69 = call ptr %67(i64 noundef %68, ptr noundef nonnull @.str.7) #12
  br label %76

70:                                               ; preds = %60
  %71 = icmp ult i64 %48, %64
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %74 = add i64 %63, 2
  %75 = call ptr %73(ptr noundef nonnull %50, i64 noundef %74, ptr noundef nonnull @__func__.join_dirfile_alloc) #12
  br label %76

76:                                               ; preds = %66, %70, %72
  %77 = phi ptr [ %69, %66 ], [ %75, %72 ], [ %50, %70 ]
  %78 = add i64 %63, 2
  call void @BLI_join_dirfile(ptr noundef %77, i64 noundef %78, ptr noundef %8, ptr noundef nonnull %54) #12
  br i1 %40, label %98, label %79

79:                                               ; preds = %76
  %80 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #15
  %81 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %54) #15
  %82 = add i64 %81, %80
  %83 = add i64 %82, 1
  %84 = icmp eq ptr %49, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %87 = add i64 %82, 2
  %88 = call ptr %86(i64 noundef %87, ptr noundef nonnull @.str.7) #12
  br label %95

89:                                               ; preds = %79
  %90 = icmp ult i64 %47, %83
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  %92 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %93 = add i64 %82, 2
  %94 = call ptr %92(ptr noundef nonnull %49, i64 noundef %93, ptr noundef nonnull @__func__.join_dirfile_alloc) #12
  br label %95

95:                                               ; preds = %85, %89, %91
  %96 = phi ptr [ %88, %85 ], [ %94, %91 ], [ %49, %89 ]
  %97 = add i64 %82, 2
  call void @BLI_join_dirfile(ptr noundef %96, i64 noundef %97, ptr noundef nonnull %13, ptr noundef nonnull %54) #12
  br label %98

98:                                               ; preds = %95, %76
  %99 = phi ptr [ %49, %76 ], [ %96, %95 ]
  %100 = phi i64 [ %47, %76 ], [ %83, %95 ]
  %101 = call i32 @lstat(ptr noundef %8, ptr noundef nonnull %6) #12
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %98
  %104 = load i32, ptr %17, align 8, !tbaa !42
  %105 = and i32 %104, 61440
  %106 = icmp eq i32 %105, 16384
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call fastcc i32 @recursive_operation(ptr noundef %77, ptr noundef %99, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %114

109:                                              ; preds = %103
  br i1 %41, label %114, label %110

110:                                              ; preds = %109
  %111 = call i32 %3(ptr noundef %77, ptr noundef %99) #12, !callees !46
  %112 = icmp ne i32 %111, 0
  %113 = sext i1 %112 to i32
  br label %114

114:                                              ; preds = %109, %110, %107
  %115 = phi i32 [ %108, %107 ], [ %113, %110 ], [ %101, %109 ]
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 0, i32 4
  br label %118

118:                                              ; preds = %114, %98, %44, %57
  %119 = phi ptr [ %50, %44 ], [ %50, %57 ], [ %77, %98 ], [ %77, %114 ]
  %120 = phi ptr [ %49, %44 ], [ %49, %57 ], [ %99, %98 ], [ %99, %114 ]
  %121 = phi i64 [ %48, %44 ], [ %48, %57 ], [ %64, %98 ], [ %64, %114 ]
  %122 = phi i64 [ %47, %44 ], [ %47, %57 ], [ %100, %98 ], [ %100, %114 ]
  %123 = phi i32 [ %46, %44 ], [ %46, %57 ], [ %101, %98 ], [ %115, %114 ]
  %124 = phi i32 [ 6, %44 ], [ 6, %57 ], [ 4, %98 ], [ %117, %114 ]
  %125 = icmp eq i32 %124, 4
  %126 = add nuw nsw i64 %45, 1
  %127 = icmp eq i64 %126, %43
  %128 = select i1 %125, i1 true, i1 %127
  br i1 %128, label %129, label %44, !llvm.loop !48

129:                                              ; preds = %118, %36
  %130 = phi ptr [ null, %36 ], [ %119, %118 ]
  %131 = phi ptr [ null, %36 ], [ %120, %118 ]
  %132 = phi i32 [ %37, %36 ], [ %123, %118 ]
  %133 = icmp eq i32 %132, 0
  %134 = icmp ne ptr %4, null
  %135 = and i1 %134, %133
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = call i32 %4(ptr noundef %8, ptr noundef %13) #12, !callees !50
  %138 = icmp ne i32 %137, 0
  %139 = sext i1 %138 to i32
  br label %140

140:                                              ; preds = %33, %136, %129, %35, %21, %23, %12, %30
  %141 = phi ptr [ null, %12 ], [ null, %30 ], [ %130, %136 ], [ %130, %129 ], [ null, %35 ], [ null, %33 ], [ null, %21 ], [ null, %23 ]
  %142 = phi ptr [ null, %12 ], [ null, %30 ], [ %131, %136 ], [ %131, %129 ], [ null, %35 ], [ null, %33 ], [ null, %21 ], [ null, %23 ]
  %143 = phi i32 [ undef, %12 ], [ %28, %30 ], [ %28, %136 ], [ %28, %129 ], [ %28, %35 ], [ %28, %33 ], [ undef, %21 ], [ undef, %23 ]
  %144 = phi i32 [ %14, %12 ], [ -1, %30 ], [ %139, %136 ], [ %132, %129 ], [ -1, %35 ], [ 0, %33 ], [ %14, %21 ], [ %26, %23 ]
  %145 = load ptr, ptr %7, align 8, !tbaa !34
  %146 = icmp eq ptr %145, null
  br i1 %146, label %160, label %147

147:                                              ; preds = %140
  %148 = icmp sgt i32 %143, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %147
  %150 = zext nneg i32 %143 to i64
  br label %151

151:                                              ; preds = %149, %151
  %152 = phi i64 [ 0, %149 ], [ %156, %151 ]
  %153 = load ptr, ptr %7, align 8, !tbaa !34
  %154 = getelementptr inbounds ptr, ptr %153, i64 %152
  %155 = load ptr, ptr %154, align 8, !tbaa !34
  call void @free(ptr noundef %155) #12
  %156 = add nuw nsw i64 %152, 1
  %157 = icmp eq i64 %156, %150
  br i1 %157, label %158, label %151, !llvm.loop !51

158:                                              ; preds = %151, %147
  %159 = load ptr, ptr %7, align 8, !tbaa !34
  call void @free(ptr noundef %159) #12
  br label %160

160:                                              ; preds = %158, %140
  %161 = icmp eq ptr %141, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %160
  %163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %163(ptr noundef nonnull %141) #12
  br label %164

164:                                              ; preds = %162, %160
  %165 = icmp eq ptr %142, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %164
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %167(ptr noundef nonnull %142) #12
  br label %168

168:                                              ; preds = %166, %164
  %169 = icmp eq ptr %8, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %168
  %171 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %171(ptr noundef nonnull %8) #12
  br label %172

172:                                              ; preds = %170, %168
  %173 = icmp eq ptr %13, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %172
  %175 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %175(ptr noundef nonnull %13) #12
  br label %176

176:                                              ; preds = %174, %172
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #12
  ret i32 %144
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @delete_single_file(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = tail call i32 @unlink(ptr noundef %0) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @perror(ptr noundef nonnull @.str.8) #14
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 2, %5 ], [ 0, %2 ]
  ret i32 %7
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @delete_callback_post(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = tail call i32 @rmdir(ptr noundef %0) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @perror(ptr noundef nonnull @.str.9) #14
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 2, %5 ], [ 0, %2 ]
  ret i32 %7
}

; Function Attrs: nofree nounwind
declare noundef i32 @rmdir(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #12
  %4 = call i32 @stat(ptr noundef %1, ptr noundef nonnull %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !42
  %9 = and i32 %8, 61440
  %10 = icmp eq i32 %9, 16384
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = tail call ptr @BLI_strdup(ptr noundef %0) #12
  tail call void @BLI_del_slash(ptr noundef %12) #12
  %13 = tail call ptr @BLI_last_slash(ptr noundef %12) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %13, i64 1
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #15
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
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #12
  %28 = tail call fastcc i32 @recursive_operation(ptr noundef %0, ptr noundef %27, ptr noundef nonnull @copy_callback_pre, ptr noundef nonnull @copy_single_file, ptr noundef null)
  %29 = icmp eq ptr %27, %1
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %31(ptr noundef %27) #12
  br label %32

32:                                               ; preds = %30, %26
  ret i32 %28
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @copy_callback_pre(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #12
  %6 = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %3) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = call i32 @lstat(ptr noundef %1, ptr noundef nonnull %4) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i64, ptr %3, align 8, !tbaa !52
  %13 = load i64, ptr %4, align 8, !tbaa !52
  %14 = icmp ne i64 %12, %13
  %15 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = icmp ne i64 %16, %18
  %20 = select i1 %14, i1 true, i1 %19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #12
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = load ptr, ptr @stderr, align 8, !tbaa !34
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.copy_callback_pre, ptr noundef %0, ptr noundef %1) #14
  br label %43

24:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #12
  br label %25

25:                                               ; preds = %24, %11
  %26 = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %5) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @perror(ptr noundef nonnull @.str.12) #14
  br label %43

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !42
  %32 = tail call i32 @mkdir(ptr noundef %1, i32 noundef %31) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void @perror(ptr noundef nonnull @.str.13) #14
  br label %43

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !53
  %38 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !54
  %40 = tail call i32 @chown(ptr noundef %1, i32 noundef %37, i32 noundef %39) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  tail call void @perror(ptr noundef nonnull @.str.14) #14
  br label %43

43:                                               ; preds = %35, %42, %34, %28, %21
  %44 = phi i32 [ 2, %21 ], [ 2, %28 ], [ 2, %34 ], [ 2, %42 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #12
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @copy_single_file(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #12
  %7 = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %3) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = call i32 @lstat(ptr noundef %1, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i64, ptr %3, align 8, !tbaa !52
  %14 = load i64, ptr %4, align 8, !tbaa !52
  %15 = icmp ne i64 %13, %14
  %16 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = icmp ne i64 %17, %19
  %21 = select i1 %15, i1 true, i1 %20
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #12
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = load ptr, ptr @stderr, align 8, !tbaa !34
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.copy_single_file, ptr noundef %0, ptr noundef %1) #14
  br label %95

25:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #12
  br label %26

26:                                               ; preds = %25, %12
  %27 = call i32 @lstat(ptr noundef %0, ptr noundef nonnull %5) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @perror(ptr noundef nonnull @.str.15) #14
  br label %95

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !42
  %33 = trunc i32 %32 to i16
  %34 = and i16 %33, -4096
  switch i16 %34, label %61 [
    i16 -24576, label %35
    i16 -32768, label %64
  ]

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !55
  %38 = icmp ult i64 %37, 4096
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %41 = add nsw i64 %37, 2
  %42 = tail call ptr %40(i64 noundef %41, ptr noundef nonnull @.str.16) #12
  br label %43

43:                                               ; preds = %35, %39
  %44 = phi ptr [ %42, %39 ], [ %6, %35 ]
  %45 = add nsw i64 %37, 1
  %46 = call i64 @readlink(ptr noundef %0, ptr noundef %44, i64 noundef %45) #12
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  tail call void @perror(ptr noundef nonnull @.str.17) #14
  br i1 %38, label %95, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %50(ptr noundef %44) #12
  br label %95

51:                                               ; preds = %43
  %52 = getelementptr inbounds i8, ptr %44, i64 %46
  store i8 0, ptr %52, align 1, !tbaa !56
  %53 = call i32 @symlink(ptr noundef %44, ptr noundef %1) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  call void @perror(ptr noundef nonnull @.str.18) #14
  br i1 %38, label %95, label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %57(ptr noundef %44) #12
  br label %95

58:                                               ; preds = %51
  br i1 %38, label %95, label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %60(ptr noundef %44) #12
  br label %95

61:                                               ; preds = %30
  %62 = load ptr, ptr @stderr, align 8, !tbaa !34
  %63 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 50, i64 1, ptr %62) #14
  br label %95

64:                                               ; preds = %30
  %65 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void @perror(ptr noundef nonnull @.str.20) #14
  br label %95

68:                                               ; preds = %64
  %69 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.3)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 4096, ptr noundef nonnull %65)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %81, label %76

74:                                               ; preds = %68
  tail call void @perror(ptr noundef nonnull @.str.20) #14
  %75 = tail call i32 @fclose(ptr noundef nonnull %65)
  br label %95

76:                                               ; preds = %71, %76
  %77 = phi i64 [ %79, %76 ], [ %72, %71 ]
  %78 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 1, i64 noundef %77, ptr noundef nonnull %69)
  %79 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 4096, ptr noundef nonnull %65)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %76, !llvm.loop !57

81:                                               ; preds = %76, %71
  %82 = tail call i32 @fclose(ptr noundef nonnull %69)
  %83 = tail call i32 @fclose(ptr noundef nonnull %65)
  %84 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 4
  %85 = load i32, ptr %84, align 4, !tbaa !53
  %86 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 5
  %87 = load i32, ptr %86, align 8, !tbaa !54
  %88 = tail call i32 @chown(ptr noundef %1, i32 noundef %85, i32 noundef %87) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  tail call void @perror(ptr noundef nonnull @.str.14) #14
  br label %95

91:                                               ; preds = %81
  %92 = tail call i32 @chmod(ptr noundef %1, i32 noundef %32) #12
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call void @perror(ptr noundef nonnull @.str.21) #14
  br label %95

95:                                               ; preds = %94, %91, %90, %49, %48, %56, %55, %59, %58, %74, %67, %61, %29, %22
  %96 = phi i32 [ 2, %22 ], [ 2, %29 ], [ 2, %74 ], [ 2, %67 ], [ 2, %61 ], [ 2, %49 ], [ 2, %48 ], [ 2, %56 ], [ 2, %55 ], [ 0, %59 ], [ 0, %58 ], [ 2, %90 ], [ 2, %94 ], [ 0, %91 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #12
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_create_symlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @symlink(ptr noundef %1, ptr noundef %0) #12
  ret i32 %3
}

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @BLI_dir_create_recursive(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #12
  %3 = tail call i32 @BLI_exists(ptr noundef %0) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %0, i64 noundef 4096) #12
  %7 = call ptr @BLI_last_slash(ptr noundef nonnull %2) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store i8 0, ptr %7, align 1, !tbaa !56
  call void @BLI_dir_create_recursive(ptr noundef nonnull %2)
  br label %10

10:                                               ; preds = %9, %5
  %11 = call i32 @mkdir(ptr noundef %0, i32 noundef 511) #12
  br label %12

12:                                               ; preds = %1, %10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #12
  ret void
}

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BLI_last_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BLI_rename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BLI_exists(ptr noundef %0) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @BLI_exists(ptr noundef %1) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @remove(ptr noundef %1) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %5
  %12 = tail call i32 @rename(ptr noundef %0, ptr noundef %1) #12
  br label %13

13:                                               ; preds = %8, %2, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %2 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

declare i32 @scandir(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @alphasort(ptr noundef, ptr noundef) #8

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

declare void @BLI_del_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @chown(ptr nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { cold }
attributes #15 = { nounwind willreturn memory(read) }

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
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!43, !41, i64 24}
!43 = !{!"stat", !44, i64 0, !44, i64 8, !44, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !45, i64 72, !45, i64 88, !45, i64 104, !36, i64 120}
!44 = !{!"long", !36, i64 0}
!45 = !{!"timespec", !44, i64 0, !44, i64 8}
!46 = !{ptr @copy_single_file, ptr @delete_single_file}
!47 = !{ptr @copy_callback_pre}
!48 = distinct !{!48, !49, !39}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{ptr @delete_callback_post}
!51 = distinct !{!51, !49, !39}
!52 = !{!43, !44, i64 0}
!53 = !{!43, !41, i64 28}
!54 = !{!43, !41, i64 32}
!55 = !{!43, !44, i64 48}
!56 = !{!36, !36, i64 0}
!57 = distinct !{!57, !49, !39}
