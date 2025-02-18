; ModuleID = 'blender/source/blender/blenlib/intern/storage.c'
source_filename = "blender/source/blender/blenlib/intern/storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @BLI_current_working_dir(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_dir_contents(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = tail call ptr @opendir(ptr noundef %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @readdir(ptr noundef nonnull %6) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8, %21
  %12 = phi ptr [ %23, %21 ], [ %9, %8 ]
  %13 = phi i32 [ %22, %21 ], [ 0, %8 ]
  %14 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dirent, ptr %12, i64 0, i32 4
  %18 = call ptr @BLI_strdup(ptr noundef nonnull %17) #14
  %19 = getelementptr inbounds %struct.dirlink, ptr %14, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !34
  call void @BLI_addhead(ptr noundef nonnull %4, ptr noundef nonnull %14) #14
  %20 = add nsw i32 %13, 1
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i32 [ %20, %16 ], [ %13, %11 ]
  %23 = call ptr @readdir(ptr noundef nonnull %6) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11, !llvm.loop !39

25:                                               ; preds = %21, %8
  %26 = phi i32 [ 0, %8 ], [ %22, %21 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %60, label %28

28:                                               ; preds = %25
  %29 = sext i32 %26 to i64
  %30 = mul nsw i64 %29, 288
  %31 = call noalias ptr @malloc(i64 noundef %30) #15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %58, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %4, align 8, !tbaa !42
  %35 = icmp eq ptr %34, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %52, %36 ], [ %31, %33 ]
  %38 = phi ptr [ %53, %36 ], [ %34, %33 ]
  %39 = phi i32 [ %51, %36 ], [ 0, %33 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %37, i8 0, i64 288, i1 false)
  %40 = getelementptr inbounds %struct.dirlink, ptr %38, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct.direntry, ptr %37, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !44
  %43 = call ptr @BLI_strdupcat(ptr noundef %0, ptr noundef %41) #14
  %44 = getelementptr inbounds %struct.direntry, ptr %37, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !50
  %45 = load ptr, ptr %40, align 8, !tbaa !34
  call void @BLI_join_dirfile(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef %0, ptr noundef %45) #14
  %46 = getelementptr inbounds %struct.direntry, ptr %37, i64 0, i32 3
  %47 = call i32 @stat(ptr noundef nonnull %5, ptr noundef nonnull %46) #14
  %48 = getelementptr inbounds %struct.direntry, ptr %37, i64 0, i32 3, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !51
  store i32 %49, ptr %37, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.direntry, ptr %37, i64 0, i32 4
  store i32 0, ptr %50, align 8, !tbaa !53
  %51 = add nuw nsw i32 %39, 1
  %52 = getelementptr inbounds %struct.direntry, ptr %37, i64 1
  %53 = load ptr, ptr %38, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %36, !llvm.loop !55

55:                                               ; preds = %36, %33
  %56 = phi i32 [ 0, %33 ], [ %51, %36 ]
  call void @BLI_freelist(ptr noundef nonnull %4) #14
  %57 = zext nneg i32 %56 to i64
  call void @qsort(ptr noundef nonnull %31, i64 noundef %57, i64 noundef 288, ptr noundef nonnull @bli_compare) #14
  br label %62

58:                                               ; preds = %28
  %59 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @exit(i32 noundef 1) #16
  unreachable

60:                                               ; preds = %25
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %0)
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi i32 [ 0, %60 ], [ %56, %55 ]
  %64 = phi ptr [ null, %60 ], [ %31, %55 ]
  %65 = call i32 @closedir(ptr noundef nonnull %6)
  br label %68

66:                                               ; preds = %2
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %0)
  br label %68

68:                                               ; preds = %62, %66
  %69 = phi i32 [ 0, %66 ], [ %63, %62 ]
  %70 = phi ptr [ null, %66 ], [ %64, %62 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 0, ptr %3, align 8, !tbaa !56
  %71 = icmp sgt i32 %69, 0
  br i1 %71, label %72, label %169

72:                                               ; preds = %68, %165
  %73 = phi i32 [ %166, %165 ], [ 0, %68 ]
  %74 = phi ptr [ %167, %165 ], [ %70, %68 ]
  %75 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 3, i32 3
  %76 = load i32, ptr %75, align 8, !tbaa !51
  %77 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 6
  %78 = lshr i32 %76, 6
  %79 = and i32 %78, 7
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds [8 x ptr], ptr @__const.bli_adddirstrings.types, i64 0, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !57
  %83 = call ptr @BLI_strncpy(ptr noundef nonnull %77, ptr noundef %82, i64 noundef 4) #14
  %84 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 7
  %85 = lshr i32 %76, 3
  %86 = and i32 %85, 7
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds [8 x ptr], ptr @__const.bli_adddirstrings.types, i64 0, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !57
  %90 = call ptr @BLI_strncpy(ptr noundef nonnull %84, ptr noundef %89, i64 noundef 4) #14
  %91 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 8
  %92 = and i32 %76, 7
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds [8 x ptr], ptr @__const.bli_adddirstrings.types, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !57
  %96 = call ptr @BLI_strncpy(ptr noundef nonnull %91, ptr noundef %95, i64 noundef 4) #14
  %97 = and i32 %76, 1024
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %72
  %100 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 7, i64 2
  %101 = load i8, ptr %100, align 2, !tbaa !58
  %102 = icmp eq i8 %101, 45
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i8 108, ptr %100, align 2, !tbaa !58
  br label %104

104:                                              ; preds = %103, %99, %72
  %105 = and i32 %76, 3072
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 6, i64 2
  %109 = load i8, ptr %108, align 2, !tbaa !58
  %110 = icmp eq i8 %109, 120
  %111 = select i1 %110, i8 115, i8 83
  store i8 %111, ptr %108, align 2, !tbaa !58
  %112 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 7, i64 2
  %113 = load i8, ptr %112, align 2, !tbaa !58
  %114 = icmp eq i8 %113, 120
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i8 115, ptr %112, align 2, !tbaa !58
  br label %116

116:                                              ; preds = %115, %107, %104
  %117 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 3, i32 4
  %118 = load i32, ptr %117, align 4, !tbaa !59
  %119 = call ptr @getpwuid(i32 noundef %118) #14
  %120 = icmp eq ptr %119, null
  %121 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 9
  br i1 %120, label %125, label %122

122:                                              ; preds = %116
  %123 = load ptr, ptr %119, align 8, !tbaa !60
  %124 = call ptr @BLI_strncpy(ptr noundef nonnull %121, ptr noundef %123, i64 noundef 16) #14
  br label %128

125:                                              ; preds = %116
  %126 = load i32, ptr %117, align 4, !tbaa !59
  %127 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %121, i64 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %126) #14
  br label %128

128:                                              ; preds = %125, %122
  %129 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 3, i32 12
  %130 = call ptr @localtime(ptr noundef nonnull %129) #14
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call ptr @localtime(ptr noundef nonnull %3) #14
  br label %134

134:                                              ; preds = %132, %128
  %135 = phi ptr [ %133, %132 ], [ %130, %128 ]
  %136 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 10
  %137 = call i64 @strftime(ptr noundef nonnull %136, i64 noundef 8, ptr noundef nonnull @.str.16, ptr noundef %135) #14
  %138 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 11
  %139 = call i64 @strftime(ptr noundef nonnull %138, i64 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %135) #14
  %140 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 3, i32 8
  %141 = load i64, ptr %140, align 8, !tbaa !62
  %142 = icmp sgt i64 %141, 1073741824
  br i1 %142, label %143, label %148

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 5
  %145 = sitofp i64 %141 to double
  %146 = fmul double %145, 0x3E10000000000000
  %147 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %144, i64 noundef 16, ptr noundef nonnull @.str.18, double noundef %146) #14
  br label %165

148:                                              ; preds = %134
  %149 = icmp sgt i64 %141, 1048576
  br i1 %149, label %150, label %155

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 5
  %152 = sitofp i64 %141 to double
  %153 = fmul double %152, 0x3EB0000000000000
  %154 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %151, i64 noundef 16, ptr noundef nonnull @.str.19, double noundef %153) #14
  br label %165

155:                                              ; preds = %148
  %156 = icmp sgt i64 %141, 1024
  %157 = getelementptr inbounds %struct.direntry, ptr %74, i64 0, i32 5
  br i1 %156, label %158, label %162

158:                                              ; preds = %155
  %159 = lshr i64 %141, 10
  %160 = trunc i64 %159 to i32
  %161 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %157, i64 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %160) #14
  br label %165

162:                                              ; preds = %155
  %163 = trunc i64 %141 to i32
  %164 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %157, i64 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %163) #14
  br label %165

165:                                              ; preds = %162, %158, %150, %143
  %166 = add nuw nsw i32 %73, 1
  %167 = getelementptr inbounds %struct.direntry, ptr %74, i64 1
  %168 = icmp eq i32 %166, %69
  br i1 %168, label %169, label %72, !llvm.loop !63

169:                                              ; preds = %165, %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %170 = icmp eq ptr %70, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %169
  %172 = call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #15
  br label %173

173:                                              ; preds = %169, %171
  %174 = phi ptr [ %172, %171 ], [ %70, %169 ]
  store ptr %174, ptr %1, align 8, !tbaa !57
  ret i32 %69
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @BLI_free_filelist(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %24
  %7 = phi i64 [ 0, %4 ], [ %25, %24 ]
  %8 = getelementptr inbounds %struct.direntry, ptr %0, i64 %7, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #14
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.direntry, ptr %0, i64 %7, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %17(ptr noundef nonnull %14) #14
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.direntry, ptr %0, i64 %7, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %23(ptr noundef nonnull %20) #14
  br label %24

24:                                               ; preds = %22, %18
  %25 = add nuw nsw i64 %7, 1
  %26 = icmp eq i64 %25, %5
  br i1 %26, label %27, label %6, !llvm.loop !65

27:                                               ; preds = %24, %2
  tail call void @free(ptr noundef %0) #14
  ret void
}

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @BLI_file_descriptor_size(i32 noundef %0) local_unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #14
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #14
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !66
  br label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi i64 [ %9, %7 ], [ -1, %4 ], [ -1, %1 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #14
  ret i64 %11
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @BLI_file_size(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #14
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #14
  %4 = icmp eq i32 %3, -1
  %5 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8
  %6 = load i64, ptr %5, align 8
  %7 = select i1 %4, i64 -1, i64 %6
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #14
  ret i64 %7
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @BLI_stat(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = tail call i32 @stat(ptr noundef %0, ptr noundef %1) #14
  ret i32 %3
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @BLI_exists(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #14
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #14
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = select i1 %4, i32 %6, i32 0
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #14
  ret i32 %7
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i8 @BLI_is_dir(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #14
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #14
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 61440
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #14
  %8 = icmp eq i32 %7, 16384
  %9 = select i1 %4, i1 %8, i1 false
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i8 @BLI_is_file(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #14
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #14
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = select i1 %4, i32 %6, i32 0
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #14
  %8 = icmp ne i32 %7, 0
  %9 = and i32 %7, 61440
  %10 = icmp ne i32 %9, 16384
  %11 = and i1 %8, %10
  %12 = zext i1 %11 to i8
  ret i8 %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_file_read_as_lines(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store ptr null, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef 0, i32 noundef 2)
  %7 = tail call i64 @ftell(ptr noundef nonnull %3)
  %8 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef 0, i32 noundef 0)
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %10 = tail call ptr %9(i64 noundef %7, ptr noundef nonnull @.str.1) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %5
  %13 = tail call i64 @fread(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %7, ptr noundef nonnull %3)
  br label %14

14:                                               ; preds = %12, %27
  %15 = phi i64 [ 0, %12 ], [ %28, %27 ]
  %16 = phi i64 [ 0, %12 ], [ %29, %27 ]
  %17 = icmp eq i64 %16, %13
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %10, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !58
  %21 = icmp eq i8 %20, 10
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds i8, ptr %10, i64 %15
  %24 = sub i64 %16, %15
  %25 = call ptr @BLI_strdupn(ptr noundef nonnull %23, i64 noundef %24) #14
  call void @BLI_linklist_prepend(ptr noundef nonnull %2, ptr noundef %25) #14
  %26 = add i64 %16, 1
  br label %27

27:                                               ; preds = %18, %22
  %28 = phi i64 [ %26, %22 ], [ %15, %18 ]
  %29 = add i64 %16, 1
  %30 = icmp ugt i64 %29, %13
  br i1 %30, label %31, label %14, !llvm.loop !67

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %32(ptr noundef nonnull %10) #14
  br label %33

33:                                               ; preds = %31, %5
  %34 = call i32 @fclose(ptr noundef nonnull %3)
  call void @BLI_linklist_reverse(ptr noundef nonnull %2) #14
  %35 = load ptr, ptr %2, align 8, !tbaa !57
  br label %36

36:                                               ; preds = %1, %33
  %37 = phi ptr [ %35, %33 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret ptr %37
}

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

declare void @BLI_linklist_reverse(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BLI_file_free_lines(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @BLI_linklist_freeN(ptr noundef %0) #14
  ret void
}

declare void @BLI_linklist_freeN(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i8 @BLI_file_older(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #14
  %5 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %3) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = call i32 @stat(ptr noundef %1, ptr noundef nonnull %4) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12
  %12 = load i64, ptr %11, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 12
  %14 = load i64, ptr %13, align 8, !tbaa !68
  %15 = icmp slt i64 %12, %14
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %7, %2, %10
  %18 = phi i8 [ %16, %10 ], [ 0, %2 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #14
  ret i8 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #7

declare ptr @readdir(ptr noundef) local_unnamed_addr #4

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #4

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BLI_strdupcat(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

declare void @BLI_freelist(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal i32 @bli_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load i32, ptr %0, align 8, !tbaa !52
  %4 = and i32 %3, 61440
  %5 = icmp eq i32 %4, 16384
  %6 = load i32, ptr %1, align 8, !tbaa !52
  %7 = and i32 %6, 61440
  %8 = icmp eq i32 %7, 16384
  br i1 %5, label %9, label %10

9:                                                ; preds = %2
  br i1 %8, label %11, label %36

10:                                               ; preds = %2
  br i1 %8, label %36, label %11

11:                                               ; preds = %10, %9
  %12 = icmp eq i32 %4, 32768
  %13 = load i32, ptr %1, align 8, !tbaa !52
  %14 = and i32 %13, 61440
  %15 = icmp eq i32 %14, 32768
  br i1 %12, label %16, label %17

16:                                               ; preds = %11
  br i1 %15, label %18, label %36

17:                                               ; preds = %11
  br i1 %15, label %36, label %18

18:                                               ; preds = %17, %16
  %19 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(2) @.str.5) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(2) @.str.5) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.6) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(3) @.str.6) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @BLI_natstrcmp(ptr noundef %20, ptr noundef %25) #14
  br label %36

36:                                               ; preds = %31, %28, %23, %18, %17, %16, %10, %9, %34
  %37 = phi i32 [ %35, %34 ], [ -1, %9 ], [ 1, %10 ], [ -1, %16 ], [ 1, %17 ], [ -1, %18 ], [ 1, %23 ], [ -1, %28 ], [ 1, %31 ]
  ret i32 %37
}

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

declare i32 @BLI_natstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @getpwuid(i32 noundef) local_unnamed_addr #4

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }

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
!35 = !{!"dirlink", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!43, !36, i64 0}
!43 = !{!"ListBase", !36, i64 0, !36, i64 8}
!44 = !{!45, !36, i64 8}
!45 = !{!"direntry", !46, i64 0, !36, i64 8, !36, i64 16, !47, i64 24, !46, i64 168, !37, i64 172, !37, i64 188, !37, i64 192, !37, i64 196, !37, i64 200, !37, i64 216, !37, i64 224, !37, i64 240, !36, i64 256, !46, i64 264, !36, i64 272, !46, i64 280}
!46 = !{!"int", !37, i64 0}
!47 = !{!"stat", !48, i64 0, !48, i64 8, !48, i64 16, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !49, i64 72, !49, i64 88, !49, i64 104, !37, i64 120}
!48 = !{!"long", !37, i64 0}
!49 = !{!"timespec", !48, i64 0, !48, i64 8}
!50 = !{!45, !36, i64 16}
!51 = !{!45, !46, i64 48}
!52 = !{!45, !46, i64 0}
!53 = !{!45, !46, i64 168}
!54 = !{!35, !36, i64 0}
!55 = distinct !{!55, !40, !41}
!56 = !{!48, !48, i64 0}
!57 = !{!36, !36, i64 0}
!58 = !{!37, !37, i64 0}
!59 = !{!45, !46, i64 52}
!60 = !{!61, !36, i64 0}
!61 = !{!"passwd", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !36, i64 24, !36, i64 32, !36, i64 40}
!62 = !{!45, !48, i64 72}
!63 = distinct !{!63, !40, !41}
!64 = !{!45, !36, i64 272}
!65 = distinct !{!65, !40, !41}
!66 = !{!47, !48, i64 48}
!67 = distinct !{!67, !40, !41}
!68 = !{!47, !48, i64 88}
