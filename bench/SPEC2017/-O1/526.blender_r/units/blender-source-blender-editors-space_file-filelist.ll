; ModuleID = 'blender/source/blender/editors/space_file/filelist.c'
source_filename = "blender/source/blender/editors/space_file/filelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.FileList = type { ptr, ptr, i32, i32, [1024 x i8], i16, i16, i16, i32, [64 x i8], i16, ptr, i16, ptr, ptr }
%struct.direntry = type { i32, ptr, ptr, %struct.stat, i32, [16 x i8], [4 x i8], [4 x i8], [4 x i8], [16 x i8], [8 x i8], [16 x i8], [16 x i8], ptr, i32, ptr, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.FolderList = type { ptr, ptr, ptr }
%struct.SpaceFile = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.FileSelectParams = type { [96 x i8], [1056 x i8], [256 x i8], [256 x i8], [256 x i8], [64 x i8], i32, i32, i32, i16, i16, i16, i16, i16, i16, [8 x i8] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.FileSelection = type { i32, i32 }
%struct.LinkNode = type { ptr, ptr }
%struct.PreviewImage = type { [2 x i32], [2 x i32], [2 x i16], [2 x i16], [2 x ptr], [2 x ptr] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.ThumbnailJob = type { %struct.ListBase, ptr, ptr, ptr, %struct.ReportList }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.FileImage = type { ptr, ptr, [1024 x i8], i32, i32, i16, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"filteridx\00", align 1
@gSpecialFileImages = internal unnamed_addr global [12 x ptr] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"folderlist\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"FolderList\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"copy folderlist\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"filelist\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.8 = private unnamed_addr constant [59 x i8] c"filelist_from_library: error, found %d items, %d previews\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Metaball\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"Ika\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Wave\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"Ipo\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"VFont\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"NodeTree\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"filename for lib\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"%s | %s\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"LF %d\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"L    %d\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"F    %d\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"      %d\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"thumbnails\0A\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"loadimage\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"Thumbnails\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c".app\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c".py\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c".glsl\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c".osl\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c".ttf\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c".ttc\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c".pfb\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c".otf\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c".otc\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c".btx\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c".dae\00", align 1
@imb_ext_image = external global [0 x ptr], align 8
@imb_ext_image_qt = external global [0 x ptr], align 8
@.str.53 = private unnamed_addr constant [5 x i8] c".ogg\00", align 1
@imb_ext_movie = external global [0 x ptr], align 8
@imb_ext_audio = external global [0 x ptr], align 8
@.str.54 = private unnamed_addr constant [7 x i8] c".blend\00", align 1
@.str.55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.56 = private unnamed_addr constant [10 x i8] c".blend.gz\00", align 1
@str = private unnamed_addr constant [37 x i8] c"Attempting to delete empty filelist.\00", align 1
@switch.table.filelist_sort = private unnamed_addr constant [4 x ptr] [ptr @compare_name, ptr @compare_extension, ptr @compare_date, ptr @compare_size], align 8

; Function Attrs: nounwind uwtable
define dso_local void @filelist_filter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %72, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 14
  %10 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 8
  %12 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 7
  br label %13

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %25, %13 ]
  %15 = phi i32 [ 0, %8 ], [ %24, %13 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.direntry, ptr %16, i64 %14
  %18 = load ptr, ptr %9, align 8, !tbaa !42
  %19 = load i32, ptr %11, align 8, !tbaa !43
  %20 = load i16, ptr %12, align 4, !tbaa !44
  %21 = tail call zeroext i8 %18(ptr noundef %17, ptr noundef nonnull %10, i32 noundef %19, i16 noundef signext %20) #19
  %22 = icmp ne i8 %21, 0
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %15, %23
  %25 = add nuw nsw i64 %14, 1
  %26 = load i32, ptr %5, align 8, !tbaa !41
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %13, label %29, !llvm.loop !45

29:                                               ; preds = %13, %4
  %30 = phi i32 [ 0, %4 ], [ %24, %13 ]
  %31 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  %32 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %36(ptr noundef nonnull %33) #19
  store ptr null, ptr %32, align 8, !tbaa !48
  br label %37

37:                                               ; preds = %35, %29
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %39 = zext nneg i32 %30 to i64
  %40 = shl nuw nsw i64 %39, 2
  %41 = tail call ptr %38(i64 noundef %40, ptr noundef nonnull @.str) #19
  store ptr %41, ptr %32, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  store i32 %30, ptr %42, align 4, !tbaa !50
  %43 = load i32, ptr %31, align 8, !tbaa !41
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 14
  %47 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %48 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 8
  %49 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 7
  br label %50

50:                                               ; preds = %45, %66
  %51 = phi i64 [ 0, %45 ], [ %68, %66 ]
  %52 = phi i32 [ 0, %45 ], [ %67, %66 ]
  %53 = load ptr, ptr %0, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.direntry, ptr %53, i64 %51
  %55 = load ptr, ptr %46, align 8, !tbaa !42
  %56 = load i32, ptr %48, align 8, !tbaa !43
  %57 = load i16, ptr %49, align 4, !tbaa !44
  %58 = tail call zeroext i8 %55(ptr noundef %54, ptr noundef nonnull %47, i32 noundef %56, i16 noundef signext %57) #19
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %50
  %61 = load ptr, ptr %32, align 8, !tbaa !48
  %62 = add nsw i32 %52, 1
  %63 = sext i32 %52 to i64
  %64 = getelementptr inbounds i32, ptr %61, i64 %63
  %65 = trunc i64 %51 to i32
  store i32 %65, ptr %64, align 4, !tbaa !51
  br label %66

66:                                               ; preds = %60, %50
  %67 = phi i32 [ %62, %60 ], [ %52, %50 ]
  %68 = add nuw nsw i64 %51, 1
  %69 = load i32, ptr %31, align 8, !tbaa !41
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %50, label %72, !llvm.loop !52

72:                                               ; preds = %66, %37, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @filelist_init_icons() local_unnamed_addr #2 {
  ret void
}

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @filelist_free_icons() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %5, %1 ]
  %3 = getelementptr inbounds [12 x ptr], ptr @gSpecialFileImages, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  tail call void @IMB_freeImBuf(ptr noundef %4) #19
  store ptr null, ptr %3, align 8, !tbaa !49
  %5 = add nuw nsw i64 %2, 1
  %6 = icmp eq i64 %5, 12
  br i1 %6, label %7, label %1, !llvm.loop !53

7:                                                ; preds = %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @folderlist_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %2 = tail call ptr %1(i64 noundef 16, ptr noundef nonnull @.str.1) #19
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @folderlist_popdir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.FolderList, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  tail call void %7(ptr noundef %9) #19
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef nonnull %4) #19
  %10 = load ptr, ptr %3, align 8, !tbaa !54
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.FolderList, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %14, i64 noundef 768) #19
  br label %16

16:                                               ; preds = %6, %12, %2
  ret void
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @folderlist_pushdir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FolderList, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10, %6, %2
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %15 = tail call ptr %14(i64 noundef 24, ptr noundef nonnull @.str.2) #19
  %16 = tail call ptr @BLI_strdup(ptr noundef %1) #19
  %17 = getelementptr inbounds %struct.FolderList, ptr %15, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !56
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %15) #19
  br label %18

18:                                               ; preds = %10, %13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @folderlist_peeklastdir(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FolderList, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @folderlist_clear_next(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.FolderList, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = getelementptr inbounds %struct.FileSelectParams, ptr %15, i64 0, i32 1
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %16) #20
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %11, %5, %1
  %21 = phi i32 [ 0, %1 ], [ 0, %5 ], [ %19, %11 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @folderlist_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.FolderList, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  tail call void %8(ptr noundef %10) #19
  %11 = load ptr, ptr %7, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !62

13:                                               ; preds = %6, %3
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #19
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @folderlist_duplicate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %5 = tail call ptr %4(i64 noundef 16, ptr noundef nonnull @.str.3) #19
  tail call void @BLI_duplicatelist(ptr noundef %5, ptr noundef nonnull %0) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %14, %8 ], [ %6, %3 ]
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.FolderList, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = tail call ptr %10(ptr noundef %12) #19
  store ptr %13, ptr %11, align 8, !tbaa !56
  %14 = load ptr, ptr %9, align 8, !tbaa !49
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !63

16:                                               ; preds = %8, %3, %1
  %17 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %8 ]
  ret ptr %17
}

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @filelist_new(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %3 = tail call ptr %2(i64 noundef 1160, ptr noundef nonnull @.str.4) #19
  switch i16 %0, label %5 [
    i16 2, label %6
    i16 1, label %4
  ]

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %1, %5, %4
  %7 = phi ptr [ @filelist_read_dir, %5 ], [ @filelist_read_library, %4 ], [ @filelist_read_main, %1 ]
  %8 = phi ptr [ @is_filtered_file, %5 ], [ @is_filtered_lib, %4 ], [ @is_filtered_main, %1 ]
  %9 = getelementptr inbounds %struct.FileList, ptr %3, i64 0, i32 14
  %10 = getelementptr inbounds %struct.FileList, ptr %3, i64 0, i32 13
  store ptr %7, ptr %10, align 8, !tbaa !64
  store ptr %8, ptr %9, align 8, !tbaa !42
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal void @filelist_read_main(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @filelist_from_main(ptr noundef nonnull %0)
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @is_filtered_main(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2, i16 noundef signext %3) #7 {
  %5 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq i16 %3, 0
  %8 = load i8, ptr %6, align 1, !tbaa !70
  %9 = icmp eq i8 %8, 46
  br i1 %7, label %22, label %10

10:                                               ; preds = %4
  br i1 %9, label %11, label %15

11:                                               ; preds = %10
  %12 = getelementptr inbounds i8, ptr %6, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !70
  %14 = icmp eq i8 %13, 46
  br i1 %14, label %15, label %30

15:                                               ; preds = %11, %10
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #20
  %17 = trunc i64 %16 to i32
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = add i64 %16, 4294967295
  %21 = and i64 %20, 4294967295
  br label %23

22:                                               ; preds = %4
  br i1 %9, label %23, label %30

23:                                               ; preds = %22, %19
  %24 = phi i64 [ %21, %19 ], [ 1, %22 ]
  %25 = phi i8 [ 126, %19 ], [ 0, %22 ]
  %26 = getelementptr inbounds i8, ptr %6, i64 %24
  %27 = load i8, ptr %26, align 1, !tbaa !70
  %28 = icmp ne i8 %27, %25
  %29 = zext i1 %28 to i8
  br label %30

30:                                               ; preds = %23, %11, %15, %22
  %31 = phi i8 [ 1, %22 ], [ 1, %15 ], [ 0, %11 ], [ %29, %23 ]
  ret i8 %31
}

; Function Attrs: nounwind uwtable
define internal void @filelist_read_library(ptr noundef %0) #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @G, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  tail call void @BLI_cleanup_dir(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  tail call void @filelist_from_library(ptr noundef nonnull %0)
  %8 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %4
  tail call void @BLI_make_exist(ptr noundef nonnull %7) #19
  tail call void @filelist_read_dir(ptr noundef nonnull %0)
  %12 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !41
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %15, %26
  %18 = phi ptr [ %28, %26 ], [ %16, %15 ]
  %19 = phi i32 [ %27, %26 ], [ 0, %15 ]
  %20 = getelementptr inbounds %struct.direntry, ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = call zeroext i8 @BLO_has_bfile_extension(ptr noundef %21) #19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #19
  %25 = load ptr, ptr %20, align 8, !tbaa !65
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef nonnull %7, ptr noundef %25) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #19
  br label %26

26:                                               ; preds = %17, %24
  %27 = add nuw nsw i32 %19, 1
  %28 = getelementptr inbounds %struct.direntry, ptr %18, i64 1
  %29 = load i32, ptr %12, align 8, !tbaa !41
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %17, label %31, !llvm.loop !74

31:                                               ; preds = %26, %11, %1, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @is_filtered_lib(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3) #0 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  %7 = call zeroext i8 @BLO_is_a_library(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq i16 %3, 0
  %13 = load i8, ptr %11, align 1, !tbaa !70
  %14 = icmp eq i8 %13, 46
  br i1 %12, label %27, label %15

15:                                               ; preds = %9
  br i1 %14, label %16, label %20

16:                                               ; preds = %15
  %17 = getelementptr inbounds i8, ptr %11, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !70
  %19 = icmp eq i8 %18, 46
  br i1 %19, label %20, label %73

20:                                               ; preds = %16, %15
  %21 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #20
  %22 = trunc i64 %21 to i32
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = add i64 %21, 4294967295
  %26 = and i64 %25, 4294967295
  br label %28

27:                                               ; preds = %9
  br i1 %14, label %28, label %73

28:                                               ; preds = %27, %24
  %29 = phi i64 [ %26, %24 ], [ 1, %27 ]
  %30 = phi i8 [ 126, %24 ], [ 0, %27 ]
  %31 = getelementptr inbounds i8, ptr %11, i64 %29
  %32 = load i8, ptr %31, align 1, !tbaa !70
  %33 = icmp ne i8 %32, %30
  br label %73

34:                                               ; preds = %4
  %35 = icmp eq i32 %2, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !75
  %39 = and i32 %38, %2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, ptr %0, align 8, !tbaa !76
  %43 = and i32 %42, 61440
  %44 = icmp ne i32 %43, 16384
  %45 = and i32 %2, 2048
  %46 = icmp eq i32 %45, 0
  %47 = or i1 %46, %44
  br i1 %47, label %73, label %48

48:                                               ; preds = %41, %36, %34
  %49 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !65
  %51 = icmp eq i16 %3, 0
  %52 = load i8, ptr %50, align 1, !tbaa !70
  %53 = icmp eq i8 %52, 46
  br i1 %51, label %66, label %54

54:                                               ; preds = %48
  br i1 %53, label %55, label %59

55:                                               ; preds = %54
  %56 = getelementptr inbounds i8, ptr %50, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !70
  %58 = icmp eq i8 %57, 46
  br i1 %58, label %59, label %73

59:                                               ; preds = %55, %54
  %60 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #20
  %61 = trunc i64 %60 to i32
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = add i64 %60, 4294967295
  %65 = and i64 %64, 4294967295
  br label %67

66:                                               ; preds = %48
  br i1 %53, label %67, label %73

67:                                               ; preds = %66, %63
  %68 = phi i64 [ %65, %63 ], [ 1, %66 ]
  %69 = phi i8 [ 126, %63 ], [ 0, %66 ]
  %70 = getelementptr inbounds i8, ptr %50, i64 %68
  %71 = load i8, ptr %70, align 1, !tbaa !70
  %72 = icmp ne i8 %71, %69
  br label %73

73:                                               ; preds = %66, %59, %55, %67, %27, %20, %16, %28, %41
  %74 = phi i1 [ false, %41 ], [ true, %27 ], [ true, %20 ], [ false, %16 ], [ %33, %28 ], [ true, %66 ], [ true, %59 ], [ false, %55 ], [ %72, %67 ]
  %75 = zext i1 %74 to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #19
  ret i8 %75
}

; Function Attrs: nounwind uwtable
define internal void @filelist_read_dir(ptr noundef %0) #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr @G, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  tail call void @BLI_cleanup_dir(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %8 = tail call i32 @BLI_dir_contents(ptr noundef nonnull %7, ptr noundef nonnull %0) #19
  %9 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  store i32 %8, ptr %9, align 8, !tbaa !41
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 9
  br label %14

14:                                               ; preds = %11, %33
  %15 = phi i32 [ 0, %11 ], [ %34, %33 ]
  %16 = phi ptr [ %12, %11 ], [ %35, %33 ]
  %17 = getelementptr inbounds %struct.direntry, ptr %16, i64 0, i32 3, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !77
  store i32 %18, ptr %16, align 8, !tbaa !76
  %19 = and i32 %18, 61440
  %20 = icmp eq i32 %19, 16384
  br i1 %20, label %33, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.direntry, ptr %16, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #19
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef nonnull %7, ptr noundef %23) #19
  %24 = call fastcc i32 @path_extension_type(ptr noundef nonnull %2), !range !78
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #19
  %25 = getelementptr inbounds %struct.direntry, ptr %16, i64 0, i32 4
  store i32 %24, ptr %25, align 8, !tbaa !75
  %26 = load i8, ptr %13, align 4, !tbaa !70
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr %22, align 8, !tbaa !65
  %30 = call zeroext i8 @BLI_testextensie_glob(ptr noundef %29, ptr noundef nonnull %13) #19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 16384, ptr %25, align 8, !tbaa !75
  br label %33

33:                                               ; preds = %32, %28, %21, %14
  %34 = add nuw nsw i32 %15, 1
  %35 = getelementptr inbounds %struct.direntry, ptr %16, i64 1
  %36 = load i32, ptr %9, align 8, !tbaa !41
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %14, label %38, !llvm.loop !79

38:                                               ; preds = %33, %4
  call void @filelist_filter(ptr noundef nonnull %0)
  br label %39

39:                                               ; preds = %1, %38
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @is_filtered_file(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2, i16 noundef signext %3) #7 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !75
  %9 = and i32 %8, %2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load i32, ptr %0, align 8, !tbaa !76
  %13 = and i32 %12, 61440
  %14 = icmp ne i32 %13, 16384
  %15 = and i32 %2, 2048
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %16, %14
  br i1 %17, label %44, label %18

18:                                               ; preds = %11, %4, %6
  %19 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = icmp eq i16 %3, 0
  %22 = load i8, ptr %20, align 1, !tbaa !70
  %23 = icmp eq i8 %22, 46
  br i1 %21, label %36, label %24

24:                                               ; preds = %18
  br i1 %23, label %25, label %29

25:                                               ; preds = %24
  %26 = getelementptr inbounds i8, ptr %20, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !70
  %28 = icmp eq i8 %27, 46
  br i1 %28, label %29, label %44

29:                                               ; preds = %25, %24
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #20
  %31 = trunc i64 %30 to i32
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = add i64 %30, 4294967295
  %35 = and i64 %34, 4294967295
  br label %37

36:                                               ; preds = %18
  br i1 %23, label %37, label %44

37:                                               ; preds = %36, %33
  %38 = phi i64 [ %35, %33 ], [ 1, %36 ]
  %39 = phi i8 [ 126, %33 ], [ 0, %36 ]
  %40 = getelementptr inbounds i8, ptr %20, i64 %38
  %41 = load i8, ptr %40, align 1, !tbaa !70
  %42 = icmp ne i8 %41, %39
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %36, %29, %25, %37, %11
  %45 = phi i8 [ 0, %11 ], [ 1, %36 ], [ 1, %29 ], [ 0, %25 ], [ %43, %37 ]
  ret i8 %45
}

; Function Attrs: nounwind uwtable
define dso_local void @filelist_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %10(ptr noundef nonnull %7) #19
  store ptr null, ptr %6, align 8, !tbaa !48
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !41
  tail call void @BLI_free_filelist(ptr noundef %12, i32 noundef %14) #19
  store i32 0, ptr %13, align 8, !tbaa !41
  store ptr null, ptr %0, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 8
  store i32 0, ptr %15, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 9
  store i8 0, ptr %16, align 4, !tbaa !70
  %17 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  store i32 0, ptr %17, align 4, !tbaa !50
  %18 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 7
  store i16 0, ptr %18, align 4, !tbaa !44
  br label %19

19:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

declare void @BLI_free_filelist(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @filelist_freelib(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BLO_blendhandle_close(ptr noundef nonnull %3) #19
  br label %6

6:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !73
  ret void
}

declare void @BLO_blendhandle_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @filelist_lib(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @filelist_numfiles(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !50
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @filelist_dir(ptr noundef readnone %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @filelist_setdir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %4 = tail call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 1024) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @filelist_imgsize(ptr nocapture noundef writeonly %0, i16 noundef signext %1, i16 noundef signext %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 5
  store i16 %1, ptr %4, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 6
  store i16 %2, ptr %5, align 2, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext i16 @filelist_changed(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 4, !tbaa !82
  ret i16 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @filelist_getimage(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !51
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.direntry, ptr %14, i64 %15, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  br label %18

18:                                               ; preds = %2, %4, %8
  %19 = phi ptr [ %17, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @filelist_geticon(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %73, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %73

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !51
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.direntry, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 8, !tbaa !76
  %18 = and i32 %17, 61440
  %19 = icmp eq i32 %18, 16384
  br i1 %19, label %20, label %29

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.direntry, ptr %14, i64 %15, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(3) @.str.6) #20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(2) @.str.7) #20
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 2), ptr @gSpecialFileImages
  br label %29

29:                                               ; preds = %8, %25, %20
  %30 = phi ptr [ getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 1), %20 ], [ %28, %25 ], [ getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 9), %8 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = getelementptr inbounds %struct.direntry, ptr %14, i64 %15, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !75
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 3), align 8, !tbaa !49
  br label %73

38:                                               ; preds = %29
  %39 = and i32 %33, 1056
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 5), align 8, !tbaa !49
  br label %73

43:                                               ; preds = %38
  %44 = and i32 %33, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 4), align 16, !tbaa !49
  br label %73

48:                                               ; preds = %43
  %49 = and i32 %33, 64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 6), align 16, !tbaa !49
  br label %73

53:                                               ; preds = %48
  %54 = and i32 %33, 128
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 8), align 16, !tbaa !49
  br label %73

58:                                               ; preds = %53
  %59 = and i32 %33, 512
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 7), align 8, !tbaa !49
  br label %73

63:                                               ; preds = %58
  %64 = and i32 %33, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 10), align 16, !tbaa !49
  br label %73

68:                                               ; preds = %63
  %69 = and i32 %33, 8
  %70 = icmp eq i32 %69, 0
  %71 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 11), align 8
  %72 = select i1 %70, ptr %31, ptr %71
  br label %73

73:                                               ; preds = %68, %36, %46, %56, %66, %61, %51, %41, %2, %4
  %74 = phi ptr [ null, %4 ], [ null, %2 ], [ %37, %36 ], [ %42, %41 ], [ %47, %46 ], [ %52, %51 ], [ %57, %56 ], [ %62, %61 ], [ %67, %66 ], [ %72, %68 ]
  ret ptr %74
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @filelist_file(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !51
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.direntry, ptr %14, i64 %15
  br label %17

17:                                               ; preds = %2, %4, %8
  %18 = phi ptr [ %16, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @filelist_find(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = zext nneg i32 %8 to i64
  br label %13

13:                                               ; preds = %10, %19
  %14 = phi i64 [ 0, %10 ], [ %20, %19 ]
  %15 = getelementptr inbounds %struct.direntry, ptr %11, i64 %14, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %1) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = add nuw nsw i64 %14, 1
  %21 = icmp eq i64 %20, %12
  br i1 %21, label %24, label %13, !llvm.loop !84

22:                                               ; preds = %13
  %23 = trunc i64 %14 to i32
  br label %24

24:                                               ; preds = %22, %19, %6
  %25 = phi i32 [ -1, %6 ], [ %23, %22 ], [ -1, %19 ]
  %26 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = zext nneg i32 %27 to i64
  br label %31

31:                                               ; preds = %29, %36
  %32 = phi i64 [ 0, %29 ], [ %37, %36 ]
  %33 = getelementptr inbounds i32, ptr %4, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !51
  %35 = icmp eq i32 %34, %25
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = add nuw nsw i64 %32, 1
  %38 = icmp eq i64 %37, %30
  br i1 %38, label %41, label %31, !llvm.loop !85

39:                                               ; preds = %31
  %40 = trunc i64 %32 to i32
  br label %41

41:                                               ; preds = %39, %36, %24, %2
  %42 = phi i32 [ -1, %2 ], [ -1, %24 ], [ %40, %39 ], [ -1, %36 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @filelist_hidedot(ptr nocapture noundef writeonly %0, i16 noundef signext %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 7
  store i16 %1, ptr %3, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @filelist_setfilter(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 8
  store i32 %1, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @filelist_setfilter_types(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 9
  %4 = tail call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 64) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_file_extension_icon(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @path_extension_type(ptr noundef %0), !range !78
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %13 [
    i16 4, label %14
    i16 8, label %4
    i16 16, label %5
    i16 32, label %6
    i16 64, label %7
    i16 256, label %8
    i16 128, label %9
    i16 4096, label %10
    i16 8192, label %11
    i16 512, label %12
  ]

4:                                                ; preds = %1
  br label %14

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  br label %14

7:                                                ; preds = %1
  br label %14

8:                                                ; preds = %1
  br label %14

9:                                                ; preds = %1
  br label %14

10:                                               ; preds = %1
  br label %14

11:                                               ; preds = %1
  br label %14

12:                                               ; preds = %1
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %1, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4
  %15 = phi i32 [ 726, %4 ], [ 696, %5 ], [ 697, %6 ], [ 698, %7 ], [ 699, %8 ], [ 700, %9 ], [ 694, %10 ], [ 694, %11 ], [ 701, %12 ], [ 694, %13 ], [ 695, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @path_extension_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i8 @BLO_has_bfile_extension(ptr noundef %0) #19
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %55

4:                                                ; preds = %1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %6 = icmp ult i64 %5, 8
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = icmp eq i64 %5, 8
  %9 = select i1 %8, i64 -7, i64 -8
  %10 = getelementptr inbounds i8, ptr %0, i64 %5
  %11 = getelementptr inbounds i8, ptr %10, i64 %9
  %12 = tail call ptr @BLI_strcasestr(ptr noundef nonnull %11, ptr noundef nonnull @.str.54) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %4, %7
  %15 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.40) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.41) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = tail call zeroext i8 (ptr, ...) @BLI_testextensie_n(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef null) #19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  %24 = tail call zeroext i8 (ptr, ...) @BLI_testextensie_n(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef null) #19
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %23
  %27 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.51) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.52) #19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_image) #19
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 17), align 8, !tbaa !86
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_image_qt) #19
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38, %35
  %42 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.53) #19
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = tail call zeroext i8 @IMB_isanim(ptr noundef %0) #19
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i32 256, i32 32
  br label %55

48:                                               ; preds = %41
  %49 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_movie) #19
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_audio) #19
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i32 0, i32 256
  br label %55

55:                                               ; preds = %51, %48, %44, %32, %38, %29, %26, %23, %20, %17, %14, %7, %1
  %56 = phi i32 [ 4, %1 ], [ 8, %7 ], [ 32768, %14 ], [ 64, %17 ], [ 512, %20 ], [ 128, %23 ], [ 4096, %26 ], [ 8192, %29 ], [ 16, %38 ], [ 16, %32 ], [ %47, %44 ], [ 32, %48 ], [ %54, %51 ]
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local void @filelist_readdir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  tail call void %3(ptr noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @filelist_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @filelist_parent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %3 = tail call zeroext i8 @BLI_parent_dir(ptr noundef nonnull %2) #19
  tail call void @BLI_make_exist(ptr noundef nonnull %2) #19
  %4 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  tail call void %5(ptr noundef %0) #19
  ret void
}

declare zeroext i8 @BLI_parent_dir(ptr noundef) local_unnamed_addr #3

declare void @BLI_make_exist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @filelist_select_file(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #12 {
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !50
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = zext nneg i32 %1 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !51
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.direntry, ptr %17, i64 %18
  br label %20

20:                                               ; preds = %5, %7, %11
  %21 = phi ptr [ %19, %11 ], [ null, %7 ], [ null, %5 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  switch i32 %4, label %28 [
    i32 1, label %24
    i32 3, label %34
  ]

24:                                               ; preds = %23
  %25 = load i32, ptr %21, align 8, !tbaa !76
  %26 = and i32 %25, 61440
  %27 = icmp eq i32 %26, 16384
  br label %32

28:                                               ; preds = %23
  %29 = load i32, ptr %21, align 8, !tbaa !76
  %30 = and i32 %29, 61440
  %31 = icmp ne i32 %30, 16384
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ %31, %28 ], [ %27, %24 ]
  br i1 %33, label %34, label %48

34:                                               ; preds = %23, %32
  switch i32 %2, label %48 [
    i32 0, label %35
    i32 1, label %40
    i32 2, label %44
  ]

35:                                               ; preds = %34
  %36 = xor i32 %3, -1
  %37 = getelementptr inbounds %struct.direntry, ptr %21, i64 0, i32 16
  %38 = load i32, ptr %37, align 8, !tbaa !87
  %39 = and i32 %38, %36
  store i32 %39, ptr %37, align 8, !tbaa !87
  br label %48

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.direntry, ptr %21, i64 0, i32 16
  %42 = load i32, ptr %41, align 8, !tbaa !87
  %43 = or i32 %42, %3
  store i32 %43, ptr %41, align 8, !tbaa !87
  br label %48

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.direntry, ptr %21, i64 0, i32 16
  %46 = load i32, ptr %45, align 8, !tbaa !87
  %47 = xor i32 %46, %3
  store i32 %47, ptr %45, align 8, !tbaa !87
  br label %48

48:                                               ; preds = %32, %34, %44, %40, %35, %20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @filelist_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 {
  %6 = load i32, ptr %1, align 4, !tbaa !88
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %66

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.FileSelection, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !90
  %15 = icmp slt i32 %14, 0
  %16 = icmp sge i32 %14, %10
  %17 = or i1 %15, %16
  %18 = icmp sgt i32 %6, %14
  %19 = or i1 %17, %18
  br i1 %19, label %66, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %22 = xor i32 %3, -1
  %23 = zext nneg i32 %6 to i64
  br label %24

24:                                               ; preds = %20, %62
  %25 = phi i64 [ %23, %20 ], [ %63, %62 ]
  %26 = trunc i64 %25 to i32
  %27 = icmp sgt i32 %10, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load ptr, ptr %21, align 8, !tbaa !48
  %30 = getelementptr inbounds i32, ptr %29, i64 %25
  %31 = load i32, ptr %30, align 4, !tbaa !51
  %32 = load ptr, ptr %0, align 8, !tbaa !34
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.direntry, ptr %32, i64 %33
  br label %35

35:                                               ; preds = %28, %24
  %36 = phi ptr [ %34, %28 ], [ null, %24 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %62, label %38

38:                                               ; preds = %35
  switch i32 %4, label %43 [
    i32 1, label %39
    i32 3, label %49
  ]

39:                                               ; preds = %38
  %40 = load i32, ptr %36, align 8, !tbaa !76
  %41 = and i32 %40, 61440
  %42 = icmp eq i32 %41, 16384
  br label %47

43:                                               ; preds = %38
  %44 = load i32, ptr %36, align 8, !tbaa !76
  %45 = and i32 %44, 61440
  %46 = icmp ne i32 %45, 16384
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ %46, %43 ], [ %42, %39 ]
  br i1 %48, label %49, label %62

49:                                               ; preds = %47, %38
  switch i32 %2, label %62 [
    i32 0, label %50
    i32 1, label %54
    i32 2, label %58
  ]

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.direntry, ptr %36, i64 0, i32 16
  %52 = load i32, ptr %51, align 8, !tbaa !87
  %53 = and i32 %52, %22
  store i32 %53, ptr %51, align 8, !tbaa !87
  br label %62

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.direntry, ptr %36, i64 0, i32 16
  %56 = load i32, ptr %55, align 8, !tbaa !87
  %57 = or i32 %56, %3
  store i32 %57, ptr %55, align 8, !tbaa !87
  br label %62

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.direntry, ptr %36, i64 0, i32 16
  %60 = load i32, ptr %59, align 8, !tbaa !87
  %61 = xor i32 %60, %3
  store i32 %61, ptr %59, align 8, !tbaa !87
  br label %62

62:                                               ; preds = %35, %47, %49, %50, %54, %58
  %63 = add nuw nsw i64 %25, 1
  %64 = trunc i64 %25 to i32
  %65 = icmp sgt i32 %14, %64
  br i1 %65, label %24, label %66, !llvm.loop !91

66:                                               ; preds = %62, %12, %8, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @filelist_is_selected(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds i32, ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds %struct.direntry, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %3, %5, %9
  %19 = phi ptr [ %17, %9 ], [ null, %5 ], [ null, %3 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  switch i32 %2, label %30 [
    i32 1, label %22
    i32 2, label %26
  ]

22:                                               ; preds = %21
  %23 = load i32, ptr %19, align 8, !tbaa !76
  %24 = and i32 %23, 61440
  %25 = icmp eq i32 %24, 16384
  br i1 %25, label %30, label %36

26:                                               ; preds = %21
  %27 = load i32, ptr %19, align 8, !tbaa !76
  %28 = and i32 %27, 61440
  %29 = icmp eq i32 %28, 32768
  br i1 %29, label %30, label %36

30:                                               ; preds = %21, %26, %22
  %31 = getelementptr inbounds %struct.direntry, ptr %19, i64 0, i32 16
  %32 = load i32, ptr %31, align 8, !tbaa !87
  %33 = trunc i32 %32 to i8
  %34 = lshr i8 %33, 3
  %35 = and i8 %34, 1
  br label %36

36:                                               ; preds = %30, %26, %22, %18
  %37 = phi i8 [ 0, %18 ], [ 0, %22 ], [ 0, %26 ], [ %35, %30 ]
  ret i8 %37
}

; Function Attrs: nounwind uwtable
define dso_local void @filelist_sort(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = add i16 %1, -1
  %4 = icmp ult i16 %3, 4
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = zext nneg i16 %3 to i64
  %7 = getelementptr inbounds [4 x ptr], ptr @switch.table.filelist_sort, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !41
  %12 = sext i32 %11 to i64
  tail call void @qsort(ptr noundef %9, i64 noundef %12, i64 noundef 288, ptr noundef nonnull %8) #19
  br label %13

13:                                               ; preds = %2, %5
  tail call void @filelist_filter(ptr noundef %0)
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal i32 @compare_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !76
  %4 = and i32 %3, 61440
  %5 = icmp eq i32 %4, 16384
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !75
  %9 = and i32 %8, 12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load i32, ptr %1, align 8, !tbaa !76
  %13 = and i32 %12, 61440
  %14 = icmp eq i32 %13, 16384
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !75
  %18 = and i32 %17, 12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %54

20:                                               ; preds = %2, %6
  %21 = load i32, ptr %1, align 8, !tbaa !76
  %22 = and i32 %21, 61440
  %23 = icmp eq i32 %22, 16384
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !75
  %27 = and i32 %26, 12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %20, %24, %15
  %30 = icmp eq i32 %4, 32768
  %31 = load i32, ptr %1, align 8, !tbaa !76
  %32 = and i32 %31, 61440
  %33 = icmp eq i32 %32, 32768
  br i1 %30, label %34, label %35

34:                                               ; preds = %29
  br i1 %33, label %36, label %54

35:                                               ; preds = %29
  br i1 %33, label %54, label %36

36:                                               ; preds = %35, %34
  %37 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !65
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(2) @.str.7) #20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !65
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(2) @.str.7) #20
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(3) @.str.6) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(3) @.str.6) #20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @BLI_natstrcmp(ptr noundef %38, ptr noundef %43) #19
  br label %54

54:                                               ; preds = %11, %49, %46, %41, %36, %35, %34, %24, %15, %52
  %55 = phi i32 [ %53, %52 ], [ -1, %15 ], [ 1, %24 ], [ -1, %34 ], [ 1, %35 ], [ -1, %36 ], [ 1, %41 ], [ -1, %46 ], [ 1, %49 ], [ -1, %11 ]
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_date(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !76
  %4 = and i32 %3, 61440
  %5 = icmp eq i32 %4, 16384
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !75
  %9 = and i32 %8, 12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load i32, ptr %1, align 8, !tbaa !76
  %13 = and i32 %12, 61440
  %14 = icmp eq i32 %13, 16384
  br i1 %14, label %15, label %62

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !75
  %18 = and i32 %17, 12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %62

20:                                               ; preds = %2, %6
  %21 = load i32, ptr %1, align 8, !tbaa !76
  %22 = and i32 %21, 61440
  %23 = icmp eq i32 %22, 16384
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !75
  %27 = and i32 %26, 12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %20, %24, %15
  %30 = icmp eq i32 %4, 32768
  %31 = load i32, ptr %1, align 8, !tbaa !76
  %32 = and i32 %31, 61440
  %33 = icmp eq i32 %32, 32768
  br i1 %30, label %34, label %35

34:                                               ; preds = %29
  br i1 %33, label %36, label %62

35:                                               ; preds = %29
  br i1 %33, label %62, label %36

36:                                               ; preds = %35, %34
  %37 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !65
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(2) @.str.7) #20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !65
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(2) @.str.7) #20
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(3) @.str.6) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(3) @.str.6) #20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 3, i32 12
  %54 = load i64, ptr %53, align 8, !tbaa !92
  %55 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 3, i32 12
  %56 = load i64, ptr %55, align 8, !tbaa !92
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = icmp sgt i64 %54, %56
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = tail call i32 @BLI_natstrcmp(ptr noundef %38, ptr noundef %43) #19
  br label %62

62:                                               ; preds = %11, %58, %52, %49, %46, %41, %36, %35, %34, %24, %15, %60
  %63 = phi i32 [ %61, %60 ], [ -1, %15 ], [ 1, %24 ], [ -1, %34 ], [ 1, %35 ], [ -1, %36 ], [ 1, %41 ], [ -1, %46 ], [ 1, %49 ], [ 1, %52 ], [ -1, %58 ], [ -1, %11 ]
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !76
  %4 = and i32 %3, 61440
  %5 = icmp eq i32 %4, 16384
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !75
  %9 = and i32 %8, 12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load i32, ptr %1, align 8, !tbaa !76
  %13 = and i32 %12, 61440
  %14 = icmp eq i32 %13, 16384
  br i1 %14, label %15, label %62

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !75
  %18 = and i32 %17, 12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %62

20:                                               ; preds = %2, %6
  %21 = load i32, ptr %1, align 8, !tbaa !76
  %22 = and i32 %21, 61440
  %23 = icmp eq i32 %22, 16384
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !75
  %27 = and i32 %26, 12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %20, %24, %15
  %30 = icmp eq i32 %4, 32768
  %31 = load i32, ptr %1, align 8, !tbaa !76
  %32 = and i32 %31, 61440
  %33 = icmp eq i32 %32, 32768
  br i1 %30, label %34, label %35

34:                                               ; preds = %29
  br i1 %33, label %36, label %62

35:                                               ; preds = %29
  br i1 %33, label %62, label %36

36:                                               ; preds = %35, %34
  %37 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !65
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(2) @.str.7) #20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !65
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(2) @.str.7) #20
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(3) @.str.6) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(3) @.str.6) #20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 3, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !93
  %55 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 3, i32 8
  %56 = load i64, ptr %55, align 8, !tbaa !93
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = icmp sgt i64 %54, %56
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = tail call i32 @BLI_natstrcmp(ptr noundef %38, ptr noundef %43) #19
  br label %62

62:                                               ; preds = %11, %58, %52, %49, %46, %41, %36, %35, %34, %24, %15, %60
  %63 = phi i32 [ %61, %60 ], [ -1, %15 ], [ 1, %24 ], [ -1, %34 ], [ 1, %35 ], [ -1, %36 ], [ 1, %41 ], [ -1, %46 ], [ 1, %49 ], [ 1, %52 ], [ -1, %58 ], [ -1, %11 ]
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_extension(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.56) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 46) #20
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %5, %2 ], [ %8, %7 ]
  %11 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.56) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 46) #20
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %13, %9 ], [ %16, %15 ]
  %19 = icmp eq ptr %10, null
  %20 = select i1 %19, ptr @.str.55, ptr %10
  %21 = icmp eq ptr %18, null
  %22 = select i1 %21, ptr @.str.55, ptr %18
  %23 = load i32, ptr %0, align 8, !tbaa !76
  %24 = and i32 %23, 61440
  %25 = icmp eq i32 %24, 16384
  br i1 %25, label %26, label %40

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !75
  %29 = and i32 %28, 12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, ptr %1, align 8, !tbaa !76
  %33 = and i32 %32, 61440
  %34 = icmp eq i32 %33, 16384
  br i1 %34, label %35, label %70

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !75
  %38 = and i32 %37, 12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %70

40:                                               ; preds = %17, %26
  %41 = load i32, ptr %1, align 8, !tbaa !76
  %42 = and i32 %41, 61440
  %43 = icmp eq i32 %42, 16384
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !75
  %47 = and i32 %46, 12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %40, %44, %35
  %50 = icmp eq i32 %24, 32768
  %51 = load i32, ptr %1, align 8, !tbaa !76
  %52 = and i32 %51, 61440
  %53 = icmp eq i32 %52, 32768
  br i1 %50, label %54, label %55

54:                                               ; preds = %49
  br i1 %53, label %56, label %70

55:                                               ; preds = %49
  br i1 %53, label %70, label %56

56:                                               ; preds = %55, %54
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(2) @.str.7) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(2) @.str.7) #20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(3) @.str.6) #20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(3) @.str.6) #20
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %20, ptr noundef nonnull %22) #19
  br label %70

70:                                               ; preds = %31, %65, %62, %59, %56, %55, %54, %44, %35, %68
  %71 = phi i32 [ %69, %68 ], [ -1, %35 ], [ 1, %44 ], [ -1, %54 ], [ 1, %55 ], [ -1, %56 ], [ 1, %59 ], [ -1, %62 ], [ 1, %65 ], [ -1, %31 ]
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @filelist_islibrary(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %5 = tail call zeroext i8 @BLO_is_a_library(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #19
  ret i8 %5
}

declare zeroext i8 @BLO_is_a_library(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @filelist_from_library(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  %8 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %9 = call zeroext i8 @BLO_is_a_library(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  call void @BLO_blendhandle_close(ptr noundef nonnull %13) #19
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr %12, align 8, !tbaa !73
  br label %141

17:                                               ; preds = %1
  %18 = load ptr, ptr @G, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.Main, ptr %18, i64 0, i32 2
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %19, i64 noundef 1024) #19
  %21 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call ptr @BLO_blendhandle_from_file(ptr noundef nonnull %6, ptr noundef null) #19
  store ptr %25, ptr %21, align 8, !tbaa !73
  %26 = icmp eq ptr %25, null
  br i1 %26, label %141, label %27

27:                                               ; preds = %24, %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %7, i64 noundef 32) #19
  %29 = call ptr @BLI_last_slash(ptr noundef nonnull %2) #19
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i8 0, ptr %29, align 1, !tbaa !70
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i8, ptr %2, align 16, !tbaa !70
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 @BKE_idcode_from_name(ptr noundef nonnull %2) #19
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi i32 [ %36, %35 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %21, align 8, !tbaa !73
  %42 = call ptr @BLO_blendhandle_get_previews(ptr noundef %41, i32 noundef %38, ptr noundef nonnull %3) #19
  %43 = load ptr, ptr %21, align 8, !tbaa !73
  %44 = call ptr @BLO_blendhandle_get_datablock_names(ptr noundef %43, i32 noundef %38, ptr noundef nonnull %4) #19
  %45 = load ptr, ptr %21, align 8, !tbaa !73
  call void @BLO_blendhandle_close(ptr noundef %45) #19
  %46 = call ptr @BLO_blendhandle_from_file(ptr noundef nonnull %6, ptr noundef null) #19
  store ptr %46, ptr %21, align 8, !tbaa !73
  br label %51

47:                                               ; preds = %37
  store i32 0, ptr %3, align 4, !tbaa !51
  %48 = load ptr, ptr %21, align 8, !tbaa !73
  %49 = call ptr @BLO_blendhandle_get_linkable_groups(ptr noundef %48) #19
  %50 = call i32 @BLI_linklist_length(ptr noundef %49) #19
  store i32 %50, ptr %4, align 4, !tbaa !51
  br label %51

51:                                               ; preds = %47, %40
  %52 = phi ptr [ %42, %40 ], [ null, %47 ]
  %53 = phi ptr [ %44, %40 ], [ %49, %47 ]
  %54 = load i32, ptr %4, align 4, !tbaa !51
  %55 = add nsw i32 %54, 1
  %56 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  store i32 %55, ptr %56, align 8, !tbaa !41
  %57 = sext i32 %55 to i64
  %58 = mul nsw i64 %57, 288
  %59 = call noalias ptr @malloc(i64 noundef %58) #21
  store ptr %59, ptr %0, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr align 8 %59, i8 0, i64 %58, i1 false)
  %60 = call ptr @BLI_strdup(ptr noundef nonnull @.str.6) #19
  %61 = load ptr, ptr %0, align 8, !tbaa !34
  %62 = getelementptr inbounds %struct.direntry, ptr %61, i64 0, i32 1
  store ptr %60, ptr %62, align 8, !tbaa !65
  %63 = load i32, ptr %61, align 8, !tbaa !76
  %64 = or i32 %63, 16384
  store i32 %64, ptr %61, align 8, !tbaa !76
  %65 = load i32, ptr %4, align 4, !tbaa !51
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %51
  %68 = select i1 %39, i32 16384, i32 32768
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ %76, %69 ], [ 0, %67 ]
  %71 = phi ptr [ %81, %69 ], [ %53, %67 ]
  %72 = getelementptr inbounds %struct.LinkNode, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !94
  %74 = call ptr @BLI_strdup(ptr noundef %73) #19
  %75 = load ptr, ptr %0, align 8, !tbaa !34
  %76 = add nuw nsw i64 %70, 1
  %77 = getelementptr inbounds %struct.direntry, ptr %75, i64 %76, i32 1
  store ptr %74, ptr %77, align 8, !tbaa !65
  %78 = getelementptr inbounds %struct.direntry, ptr %75, i64 %76
  %79 = load i32, ptr %78, align 8, !tbaa !76
  %80 = or i32 %79, %68
  store i32 %80, ptr %78, align 8, !tbaa !76
  %81 = load ptr, ptr %71, align 8, !tbaa !96
  %82 = load i32, ptr %4, align 4, !tbaa !51
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %76, %83
  br i1 %84, label %69, label %85, !llvm.loop !97

85:                                               ; preds = %69, %51
  %86 = phi i32 [ %65, %51 ], [ %82, %69 ]
  %87 = icmp eq ptr %52, null
  br i1 %87, label %132, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %3, align 4, !tbaa !51
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, ptr %4, align 4, !tbaa !51
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %96, label %131

94:                                               ; preds = %88
  %95 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %86, i32 noundef %89)
  br label %131

96:                                               ; preds = %91, %125
  %97 = phi i64 [ %126, %125 ], [ 0, %91 ]
  %98 = phi ptr [ %127, %125 ], [ %52, %91 ]
  %99 = getelementptr inbounds %struct.LinkNode, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !94
  %101 = icmp eq ptr %100, null
  br i1 %101, label %125, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds [2 x i32], ptr %100, i64 0, i64 1
  %104 = load i32, ptr %103, align 4, !tbaa !51
  %105 = getelementptr inbounds %struct.PreviewImage, ptr %100, i64 0, i32 1, i64 1
  %106 = load i32, ptr %105, align 4, !tbaa !51
  %107 = getelementptr inbounds %struct.PreviewImage, ptr %100, i64 0, i32 4, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !49
  %109 = icmp ne i32 %104, 0
  %110 = icmp ne i32 %106, 0
  %111 = select i1 %109, i1 %110, i1 false
  %112 = icmp ne ptr %108, null
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %114, label %125

114:                                              ; preds = %102
  %115 = call ptr @IMB_allocImBuf(i32 noundef %104, i32 noundef %106, i8 noundef zeroext 32, i32 noundef 1) #19
  %116 = getelementptr inbounds %struct.ImBuf, ptr %115, i64 0, i32 8
  %117 = load ptr, ptr %116, align 8, !tbaa !98
  %118 = mul i32 %106, %104
  %119 = zext i32 %118 to i64
  %120 = shl nuw nsw i64 %119, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %117, ptr nonnull align 4 %108, i64 %120, i1 false)
  %121 = load ptr, ptr %0, align 8, !tbaa !34
  %122 = add nuw nsw i64 %97, 1
  %123 = getelementptr inbounds %struct.direntry, ptr %121, i64 %122, i32 15
  store ptr %115, ptr %123, align 8, !tbaa !83
  %124 = getelementptr inbounds %struct.direntry, ptr %121, i64 %122, i32 4
  store i32 16, ptr %124, align 8, !tbaa !75
  br label %125

125:                                              ; preds = %102, %114, %96
  %126 = add nuw nsw i64 %97, 1
  %127 = load ptr, ptr %98, align 8, !tbaa !96
  %128 = load i32, ptr %4, align 4, !tbaa !51
  %129 = sext i32 %128 to i64
  %130 = icmp slt i64 %126, %129
  br i1 %130, label %96, label %131, !llvm.loop !103

131:                                              ; preds = %125, %91, %94
  call void @BLI_linklist_free(ptr noundef %53, ptr noundef nonnull @free) #19
  call void @BLI_linklist_free(ptr noundef nonnull %52, ptr noundef nonnull @BKE_previewimg_freefunc) #19
  br label %133

132:                                              ; preds = %85
  call void @BLI_linklist_free(ptr noundef %53, ptr noundef nonnull @free) #19
  br label %133

133:                                              ; preds = %132, %131
  %134 = load ptr, ptr %0, align 8, !tbaa !34
  %135 = load i32, ptr %56, align 8, !tbaa !41
  %136 = sext i32 %135 to i64
  call void @qsort(ptr noundef %134, i64 noundef %136, i64 noundef 288, ptr noundef nonnull @compare_name) #19
  call void @filelist_filter(ptr noundef nonnull %0)
  %137 = load ptr, ptr @G, align 8, !tbaa !71
  %138 = getelementptr inbounds %struct.Main, ptr %137, i64 0, i32 2
  %139 = call ptr @BLI_strncpy(ptr noundef nonnull %138, ptr noundef nonnull %5, i64 noundef 1024) #19
  %140 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 8
  store i32 0, ptr %140, align 8, !tbaa !43
  call void @filelist_filter(ptr noundef nonnull %0)
  br label %141

141:                                              ; preds = %24, %133, %16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret void
}

declare ptr @BLO_blendhandle_from_file(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLO_blendhandle_get_previews(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLO_blendhandle_get_datablock_names(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLO_blendhandle_get_linkable_groups(ptr noundef) local_unnamed_addr #3

declare i32 @BLI_linklist_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #17

declare void @BKE_previewimg_freefunc(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @filelist_hideparent(ptr nocapture noundef writeonly %0, i16 noundef signext %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 12
  store i16 %1, ptr %3, align 8, !tbaa !104
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @filelist_from_main(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 16
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %5 = load i8, ptr %4, align 8, !tbaa !70
  %6 = icmp eq i8 %5, 47
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8 0, ptr %4, align 8, !tbaa !70
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i8, ptr %4, align 8, !tbaa !70
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %12 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef 32) #19
  %13 = call ptr @BLI_last_slash(ptr noundef nonnull %3) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i8 0, ptr %13, align 1, !tbaa !70
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i8, ptr %3, align 16, !tbaa !70
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = call i32 @BKE_idcode_from_name(ptr noundef nonnull %3) #19
  %21 = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br i1 %21, label %23, label %24

22:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %23

23:                                               ; preds = %22, %19
  store i8 0, ptr %4, align 8, !tbaa !70
  br label %24

24:                                               ; preds = %19, %23, %8
  %25 = load i8, ptr %4, align 8, !tbaa !70
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %114

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  store i32 24, ptr %28, align 8, !tbaa !41
  %29 = call noalias dereferenceable_or_null(6912) ptr @malloc(i64 noundef 6912) #21
  store ptr %29, ptr %0, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %27, %30
  %31 = phi i64 [ 0, %27 ], [ %38, %30 ]
  %32 = load ptr, ptr %0, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.direntry, ptr %32, i64 %31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %33, i8 0, i64 288, i1 false)
  %34 = load ptr, ptr %0, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.direntry, ptr %34, i64 %31
  %36 = load i32, ptr %35, align 8, !tbaa !76
  %37 = or i32 %36, 16384
  store i32 %37, ptr %35, align 8, !tbaa !76
  %38 = add nuw nsw i64 %31, 1
  %39 = load i32, ptr %28, align 8, !tbaa !41
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %30, label %42, !llvm.loop !105

42:                                               ; preds = %30
  %43 = call ptr @BLI_strdup(ptr noundef nonnull @.str.6) #19
  %44 = load ptr, ptr %0, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.direntry, ptr %44, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !65
  %46 = call ptr @BLI_strdup(ptr noundef nonnull @.str.9) #19
  %47 = load ptr, ptr %0, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.direntry, ptr %47, i64 2, i32 1
  store ptr %46, ptr %48, align 8, !tbaa !65
  %49 = call ptr @BLI_strdup(ptr noundef nonnull @.str.10) #19
  %50 = load ptr, ptr %0, align 8, !tbaa !34
  %51 = getelementptr inbounds %struct.direntry, ptr %50, i64 3, i32 1
  store ptr %49, ptr %51, align 8, !tbaa !65
  %52 = call ptr @BLI_strdup(ptr noundef nonnull @.str.11) #19
  %53 = load ptr, ptr %0, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.direntry, ptr %53, i64 4, i32 1
  store ptr %52, ptr %54, align 8, !tbaa !65
  %55 = call ptr @BLI_strdup(ptr noundef nonnull @.str.12) #19
  %56 = load ptr, ptr %0, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.direntry, ptr %56, i64 5, i32 1
  store ptr %55, ptr %57, align 8, !tbaa !65
  %58 = call ptr @BLI_strdup(ptr noundef nonnull @.str.13) #19
  %59 = load ptr, ptr %0, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.direntry, ptr %59, i64 6, i32 1
  store ptr %58, ptr %60, align 8, !tbaa !65
  %61 = call ptr @BLI_strdup(ptr noundef nonnull @.str.14) #19
  %62 = load ptr, ptr %0, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.direntry, ptr %62, i64 7, i32 1
  store ptr %61, ptr %63, align 8, !tbaa !65
  %64 = call ptr @BLI_strdup(ptr noundef nonnull @.str.15) #19
  %65 = load ptr, ptr %0, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.direntry, ptr %65, i64 8, i32 1
  store ptr %64, ptr %66, align 8, !tbaa !65
  %67 = call ptr @BLI_strdup(ptr noundef nonnull @.str.16) #19
  %68 = load ptr, ptr %0, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.direntry, ptr %68, i64 9, i32 1
  store ptr %67, ptr %69, align 8, !tbaa !65
  %70 = call ptr @BLI_strdup(ptr noundef nonnull @.str.17) #19
  %71 = load ptr, ptr %0, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.direntry, ptr %71, i64 10, i32 1
  store ptr %70, ptr %72, align 8, !tbaa !65
  %73 = call ptr @BLI_strdup(ptr noundef nonnull @.str.18) #19
  %74 = load ptr, ptr %0, align 8, !tbaa !34
  %75 = getelementptr inbounds %struct.direntry, ptr %74, i64 11, i32 1
  store ptr %73, ptr %75, align 8, !tbaa !65
  %76 = call ptr @BLI_strdup(ptr noundef nonnull @.str.19) #19
  %77 = load ptr, ptr %0, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.direntry, ptr %77, i64 12, i32 1
  store ptr %76, ptr %78, align 8, !tbaa !65
  %79 = call ptr @BLI_strdup(ptr noundef nonnull @.str.20) #19
  %80 = load ptr, ptr %0, align 8, !tbaa !34
  %81 = getelementptr inbounds %struct.direntry, ptr %80, i64 13, i32 1
  store ptr %79, ptr %81, align 8, !tbaa !65
  %82 = call ptr @BLI_strdup(ptr noundef nonnull @.str.21) #19
  %83 = load ptr, ptr %0, align 8, !tbaa !34
  %84 = getelementptr inbounds %struct.direntry, ptr %83, i64 14, i32 1
  store ptr %82, ptr %84, align 8, !tbaa !65
  %85 = call ptr @BLI_strdup(ptr noundef nonnull @.str.22) #19
  %86 = load ptr, ptr %0, align 8, !tbaa !34
  %87 = getelementptr inbounds %struct.direntry, ptr %86, i64 15, i32 1
  store ptr %85, ptr %87, align 8, !tbaa !65
  %88 = call ptr @BLI_strdup(ptr noundef nonnull @.str.23) #19
  %89 = load ptr, ptr %0, align 8, !tbaa !34
  %90 = getelementptr inbounds %struct.direntry, ptr %89, i64 16, i32 1
  store ptr %88, ptr %90, align 8, !tbaa !65
  %91 = call ptr @BLI_strdup(ptr noundef nonnull @.str.24) #19
  %92 = load ptr, ptr %0, align 8, !tbaa !34
  %93 = getelementptr inbounds %struct.direntry, ptr %92, i64 17, i32 1
  store ptr %91, ptr %93, align 8, !tbaa !65
  %94 = call ptr @BLI_strdup(ptr noundef nonnull @.str.25) #19
  %95 = load ptr, ptr %0, align 8, !tbaa !34
  %96 = getelementptr inbounds %struct.direntry, ptr %95, i64 18, i32 1
  store ptr %94, ptr %96, align 8, !tbaa !65
  %97 = call ptr @BLI_strdup(ptr noundef nonnull @.str.26) #19
  %98 = load ptr, ptr %0, align 8, !tbaa !34
  %99 = getelementptr inbounds %struct.direntry, ptr %98, i64 19, i32 1
  store ptr %97, ptr %99, align 8, !tbaa !65
  %100 = call ptr @BLI_strdup(ptr noundef nonnull @.str.27) #19
  %101 = load ptr, ptr %0, align 8, !tbaa !34
  %102 = getelementptr inbounds %struct.direntry, ptr %101, i64 20, i32 1
  store ptr %100, ptr %102, align 8, !tbaa !65
  %103 = call ptr @BLI_strdup(ptr noundef nonnull @.str.28) #19
  %104 = load ptr, ptr %0, align 8, !tbaa !34
  %105 = getelementptr inbounds %struct.direntry, ptr %104, i64 21, i32 1
  store ptr %103, ptr %105, align 8, !tbaa !65
  %106 = call ptr @BLI_strdup(ptr noundef nonnull @.str.29) #19
  %107 = load ptr, ptr %0, align 8, !tbaa !34
  %108 = getelementptr inbounds %struct.direntry, ptr %107, i64 22, i32 1
  store ptr %106, ptr %108, align 8, !tbaa !65
  %109 = call ptr @BLI_strdup(ptr noundef nonnull @.str.30) #19
  %110 = load ptr, ptr %0, align 8, !tbaa !34
  %111 = getelementptr inbounds %struct.direntry, ptr %110, i64 23, i32 1
  store ptr %109, ptr %111, align 8, !tbaa !65
  %112 = load i32, ptr %28, align 8, !tbaa !41
  %113 = sext i32 %112 to i64
  call void @qsort(ptr noundef %110, i64 noundef %113, i64 noundef 288, ptr noundef nonnull @compare_name) #19
  call void @filelist_filter(ptr noundef nonnull %0)
  br label %251

114:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  %115 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %4, i64 noundef 32) #19
  %116 = call ptr @BLI_last_slash(ptr noundef nonnull %2) #19
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  store i8 0, ptr %116, align 1, !tbaa !70
  br label %119

119:                                              ; preds = %118, %114
  %120 = load i8, ptr %2, align 16, !tbaa !70
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = call i32 @BKE_idcode_from_name(ptr noundef nonnull %2) #19
  br label %124

124:                                              ; preds = %119, %122
  %125 = phi i32 [ %123, %122 ], [ 0, %119 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  %126 = load ptr, ptr @G, align 8, !tbaa !71
  %127 = trunc i32 %125 to i16
  %128 = call ptr @which_libbase(ptr noundef %126, i16 noundef signext %127) #19
  %129 = icmp eq ptr %128, null
  br i1 %129, label %253, label %130

130:                                              ; preds = %124
  %131 = load ptr, ptr %128, align 8, !tbaa !106
  %132 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  store i32 0, ptr %132, align 8, !tbaa !41
  %133 = icmp eq ptr %131, null
  br i1 %133, label %150, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 7
  %136 = load i16, ptr %135, align 4, !tbaa !44
  %137 = icmp eq i16 %136, 0
  br label %138

138:                                              ; preds = %134, %147
  %139 = phi ptr [ %131, %134 ], [ %148, %147 ]
  br i1 %137, label %144, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.ID, ptr %139, i64 0, i32 4, i64 2
  %142 = load i8, ptr %141, align 2, !tbaa !70
  %143 = icmp eq i8 %142, 46
  br i1 %143, label %147, label %144

144:                                              ; preds = %140, %138
  %145 = load i32, ptr %132, align 8, !tbaa !41
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %132, align 8, !tbaa !41
  br label %147

147:                                              ; preds = %144, %140
  %148 = load ptr, ptr %139, align 8, !tbaa !107
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %138, !llvm.loop !109

150:                                              ; preds = %147, %130
  %151 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 12
  %152 = load i16, ptr %151, align 8, !tbaa !104
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, ptr %132, align 8, !tbaa !41
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr %132, align 8, !tbaa !41
  br label %157

157:                                              ; preds = %154, %150
  %158 = load i32, ptr %132, align 8, !tbaa !41
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = zext nneg i32 %158 to i64
  %162 = mul nuw nsw i64 %161, 288
  %163 = call noalias ptr @malloc(i64 noundef %162) #21
  br label %164

164:                                              ; preds = %157, %160
  %165 = phi ptr [ %163, %160 ], [ null, %157 ]
  store ptr %165, ptr %0, align 8, !tbaa !34
  br i1 %153, label %166, label %173

166:                                              ; preds = %164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %165, i8 0, i64 288, i1 false)
  %167 = call ptr @BLI_strdup(ptr noundef nonnull @.str.6) #19
  %168 = load ptr, ptr %0, align 8, !tbaa !34
  %169 = getelementptr inbounds %struct.direntry, ptr %168, i64 0, i32 1
  store ptr %167, ptr %169, align 8, !tbaa !65
  %170 = load i32, ptr %168, align 8, !tbaa !76
  %171 = or i32 %170, 16384
  store i32 %171, ptr %168, align 8, !tbaa !76
  %172 = getelementptr inbounds %struct.direntry, ptr %165, i64 1
  br label %173

173:                                              ; preds = %166, %164
  %174 = phi ptr [ %165, %164 ], [ %172, %166 ]
  %175 = load ptr, ptr %128, align 8, !tbaa !49
  %176 = icmp eq ptr %175, null
  br i1 %176, label %245, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 7
  br label %179

179:                                              ; preds = %177, %238
  %180 = phi ptr [ %175, %177 ], [ %243, %238 ]
  %181 = phi i32 [ 0, %177 ], [ %242, %238 ]
  %182 = phi i32 [ 0, %177 ], [ %241, %238 ]
  %183 = phi ptr [ %174, %177 ], [ %240, %238 ]
  %184 = phi ptr [ null, %177 ], [ %239, %238 ]
  %185 = load i16, ptr %178, align 4, !tbaa !44
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 4, i64 2
  %189 = load i8, ptr %188, align 2, !tbaa !70
  %190 = icmp eq i8 %189, 46
  br i1 %190, label %238, label %191

191:                                              ; preds = %187, %179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %183, i8 0, i64 288, i1 false)
  %192 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !110
  %194 = icmp eq ptr %193, null
  %195 = getelementptr inbounds %struct.direntry, ptr %183, i64 0, i32 1
  br i1 %194, label %196, label %199

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 4, i64 2
  %198 = call ptr @BLI_strdup(ptr noundef nonnull %197) #19
  store ptr %198, ptr %195, align 8, !tbaa !65
  br label %206

199:                                              ; preds = %191
  %200 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %201 = call ptr %200(i64 noundef 1088, ptr noundef nonnull @.str.31) #19
  store ptr %201, ptr %195, align 8, !tbaa !65
  %202 = load ptr, ptr %192, align 8, !tbaa !110
  %203 = getelementptr inbounds %struct.Library, ptr %202, i64 0, i32 3
  %204 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 4, i64 2
  %205 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %201, i64 noundef 1091, ptr noundef nonnull @.str.32, ptr noundef nonnull %203, ptr noundef nonnull %204) #19
  br label %206

206:                                              ; preds = %199, %196
  %207 = load i32, ptr %183, align 8, !tbaa !76
  %208 = or i32 %207, 32768
  store i32 %208, ptr %183, align 8, !tbaa !76
  %209 = add nuw nsw i32 %181, 1
  %210 = getelementptr inbounds %struct.direntry, ptr %183, i64 0, i32 14
  store i32 %209, ptr %210, align 8, !tbaa !111
  %211 = getelementptr inbounds %struct.direntry, ptr %183, i64 0, i32 13
  store ptr %180, ptr %211, align 8, !tbaa !112
  %212 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 5
  %213 = load i16, ptr %212, align 2, !tbaa !113
  %214 = and i16 %213, 512
  switch i32 %125, label %219 [
    i32 20311, label %215
    i32 19785, label %215
    i32 17748, label %215
    i32 16717, label %215
    i32 16716, label %215
  ]

215:                                              ; preds = %206, %206, %206, %206, %206
  %216 = getelementptr inbounds %struct.direntry, ptr %183, i64 0, i32 4
  %217 = load i32, ptr %216, align 8, !tbaa !75
  %218 = or i32 %217, 16
  store i32 %218, ptr %216, align 8, !tbaa !75
  br label %219

219:                                              ; preds = %206, %215
  %220 = load ptr, ptr %192, align 8, !tbaa !110
  %221 = icmp eq ptr %220, null
  %222 = icmp eq i16 %214, 0
  %223 = getelementptr inbounds %struct.direntry, ptr %183, i64 0, i32 12
  %224 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 6
  %225 = load i32, ptr %224, align 4, !tbaa !114
  %226 = select i1 %222, ptr @.str.36, ptr @.str.35
  %227 = select i1 %222, ptr @.str.34, ptr @.str.33
  %228 = select i1 %221, ptr %226, ptr %227
  %229 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %223, i64 noundef 16, ptr noundef nonnull %228, i32 noundef %225) #19
  %230 = load ptr, ptr %192, align 8, !tbaa !110
  %231 = icmp ne ptr %230, null
  %232 = icmp eq i32 %182, 0
  %233 = select i1 %231, i1 %232, i1 false
  %234 = select i1 %233, ptr %183, ptr %184
  %235 = zext i1 %231 to i32
  %236 = add nsw i32 %182, %235
  %237 = getelementptr inbounds %struct.direntry, ptr %183, i64 1
  br label %238

238:                                              ; preds = %187, %219
  %239 = phi ptr [ %234, %219 ], [ %184, %187 ]
  %240 = phi ptr [ %237, %219 ], [ %183, %187 ]
  %241 = phi i32 [ %236, %219 ], [ %182, %187 ]
  %242 = add nuw nsw i32 %181, 1
  %243 = load ptr, ptr %180, align 8, !tbaa !49
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %179, !llvm.loop !115

245:                                              ; preds = %238, %173
  %246 = phi ptr [ null, %173 ], [ %239, %238 ]
  %247 = phi i32 [ 0, %173 ], [ %241, %238 ]
  %248 = icmp sgt i32 %247, 1
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = zext nneg i32 %247 to i64
  call void @qsort(ptr noundef %246, i64 noundef %250, i64 noundef 288, ptr noundef nonnull @compare_name) #19
  br label %251

251:                                              ; preds = %245, %249, %42
  %252 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 8
  store i32 0, ptr %252, align 8, !tbaa !43
  call void @filelist_filter(ptr noundef %0)
  br label %253

253:                                              ; preds = %124, %251
  ret void
}

declare ptr @which_libbase(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @thumbnails_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %4 = tail call ptr %3(i64 noundef 80, ptr noundef nonnull @.str.37) #19
  %5 = getelementptr inbounds %struct.ThumbnailJob, ptr %4, i64 0, i32 3
  store ptr %0, ptr %5, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !41
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %2, %34
  %10 = phi i64 [ %35, %34 ], [ 0, %2 ]
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.direntry, ptr %11, i64 %10, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.direntry, ptr %11, i64 %10, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !75
  %18 = and i32 %17, 60
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %22 = tail call ptr %21(i64 noundef 1064, ptr noundef nonnull @.str.38) #19
  %23 = getelementptr inbounds %struct.FileImage, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.direntry, ptr %24, i64 %10, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !119
  %27 = tail call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef %26, i64 noundef 1024) #19
  %28 = getelementptr inbounds %struct.FileImage, ptr %22, i64 0, i32 4
  %29 = trunc i64 %10 to i32
  store i32 %29, ptr %28, align 4, !tbaa !120
  %30 = load ptr, ptr %0, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.direntry, ptr %30, i64 %10, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !75
  %33 = getelementptr inbounds %struct.FileImage, ptr %22, i64 0, i32 3
  store i32 %32, ptr %33, align 8, !tbaa !122
  tail call void @BLI_addtail(ptr noundef %4, ptr noundef %22) #19
  br label %34

34:                                               ; preds = %9, %20, %15
  %35 = add nuw nsw i64 %10, 1
  %36 = load i32, ptr %6, align 8, !tbaa !41
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %9, label %39, !llvm.loop !123

39:                                               ; preds = %34, %2
  %40 = getelementptr inbounds %struct.ThumbnailJob, ptr %4, i64 0, i32 4
  tail call void @BKE_reports_init(ptr noundef nonnull %40, i32 noundef 1) #19
  %41 = tail call ptr @CTX_wm_manager(ptr noundef %1) #19
  %42 = tail call ptr @CTX_wm_window(ptr noundef %1) #19
  %43 = tail call ptr @WM_jobs_get(ptr noundef %41, ptr noundef %42, ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef 9) #19
  tail call void @WM_jobs_customdata_set(ptr noundef %43, ptr noundef %4, ptr noundef nonnull @thumbnails_free) #19
  tail call void @WM_jobs_timer(ptr noundef %43, double noundef 5.000000e-01, i32 noundef 33554432, i32 noundef 33554432) #19
  tail call void @WM_jobs_callbacks(ptr noundef %43, ptr noundef nonnull @thumbnails_startjob, ptr noundef null, ptr noundef nonnull @thumbnails_update, ptr noundef null) #19
  %44 = tail call ptr @CTX_wm_manager(ptr noundef %1) #19
  tail call void @WM_jobs_start(ptr noundef %44, ptr noundef %43) #19
  ret void
}

declare void @BKE_reports_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #3

declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @thumbnails_free(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1, %14
  %5 = phi ptr [ %15, %14 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.FileImage, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.FileImage, ptr %5, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !125
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @IMB_freeImBuf(ptr noundef nonnull %7) #19
  br label %14

14:                                               ; preds = %13, %9, %4
  %15 = load ptr, ptr %5, align 8, !tbaa !49
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !llvm.loop !126

17:                                               ; preds = %14, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #19
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %18(ptr noundef nonnull %0) #19
  ret void
}

declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @thumbnails_startjob(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !127
  %6 = getelementptr inbounds %struct.ThumbnailJob, ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !128
  %7 = getelementptr inbounds %struct.ThumbnailJob, ptr %0, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !129
  %8 = load i16, ptr %1, align 2, !tbaa !130
  %9 = icmp eq i16 %8, 0
  %10 = icmp ne ptr %5, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %47

12:                                               ; preds = %4, %41
  %13 = phi ptr [ %42, %41 ], [ %5, %4 ]
  %14 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !122
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 2
  %20 = tail call ptr @IMB_thumb_manage(ptr noundef nonnull %19, i32 noundef 0, i32 noundef 0) #19
  %21 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 6
  store ptr %20, ptr %21, align 8, !tbaa !124
  br label %41

22:                                               ; preds = %12
  %23 = and i32 %15, 12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 2
  %27 = tail call ptr @IMB_thumb_manage(ptr noundef nonnull %26, i32 noundef 0, i32 noundef 2) #19
  %28 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 6
  store ptr %27, ptr %28, align 8, !tbaa !124
  br label %41

29:                                               ; preds = %22
  %30 = and i32 %15, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 2
  %34 = tail call ptr @IMB_thumb_manage(ptr noundef nonnull %33, i32 noundef 0, i32 noundef 1) #19
  %35 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !124
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, ptr %14, align 8, !tbaa !122
  %39 = and i32 %38, -1057
  %40 = or disjoint i32 %39, 1024
  store i32 %40, ptr %14, align 8, !tbaa !122
  br label %41

41:                                               ; preds = %25, %32, %37, %29, %18
  store i16 1, ptr %2, align 2, !tbaa !130
  tail call void @PIL_sleep_ms(i32 noundef 10) #19
  %42 = load ptr, ptr %13, align 8, !tbaa !131
  %43 = load i16, ptr %1, align 2, !tbaa !130
  %44 = icmp eq i16 %43, 0
  %45 = icmp ne ptr %42, null
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %12, label %47, !llvm.loop !132

47:                                               ; preds = %41, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @thumbnails_update(ptr nocapture noundef readonly %0) #13 {
  %2 = getelementptr inbounds %struct.ThumbnailJob, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %8, %35
  %12 = phi ptr [ %36, %35 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.FileImage, ptr %12, i64 0, i32 5
  %14 = load i16, ptr %13, align 8, !tbaa !125
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.FileImage, ptr %12, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.FileImage, ptr %12, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !120
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.direntry, ptr %6, i64 %23, i32 15
  store ptr %18, ptr %24, align 8, !tbaa !83
  %25 = getelementptr inbounds %struct.FileImage, ptr %12, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !122
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.direntry, ptr %6, i64 %23, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !75
  %32 = and i32 %31, -1057
  %33 = or disjoint i32 %32, 1024
  store i32 %33, ptr %30, align 8, !tbaa !75
  br label %34

34:                                               ; preds = %29, %20
  store i16 1, ptr %13, align 8, !tbaa !125
  br label %35

35:                                               ; preds = %34, %16, %11
  %36 = load ptr, ptr %12, align 8, !tbaa !49
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %11, !llvm.loop !133

38:                                               ; preds = %35, %8, %5, %1
  ret void
}

declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @thumbnails_stop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @WM_jobs_kill(ptr noundef %0, ptr noundef %1, ptr noundef null) #19
  ret void
}

declare void @WM_jobs_kill(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @thumbnails_running(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @WM_jobs_test(ptr noundef %0, ptr noundef %1, i32 noundef 9) #19
  %4 = zext i8 %3 to i32
  ret i32 %4
}

declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare zeroext i8 @BLO_has_bfile_extension(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_testextensie(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_testextensie_n(ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @BLI_testextensie_array(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @IMB_isanim(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_cleanup_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BLI_dir_contents(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_testextensie_glob(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BLI_natstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_last_slash(ptr noundef) local_unnamed_addr #3

declare i32 @BKE_idcode_from_name(ptr noundef) local_unnamed_addr #3

declare ptr @IMB_thumb_manage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(0) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"FileList", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !40, i64 1048, !40, i64 1050, !40, i64 1052, !39, i64 1056, !37, i64 1060, !40, i64 1124, !36, i64 1128, !40, i64 1136, !36, i64 1144, !36, i64 1152}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!35, !39, i64 16}
!42 = !{!35, !36, i64 1152}
!43 = !{!35, !39, i64 1056}
!44 = !{!35, !40, i64 1052}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!35, !36, i64 8}
!49 = !{!36, !36, i64 0}
!50 = !{!35, !39, i64 20}
!51 = !{!39, !39, i64 0}
!52 = distinct !{!52, !46, !47}
!53 = distinct !{!53, !46, !47}
!54 = !{!55, !36, i64 8}
!55 = !{!"ListBase", !36, i64 0, !36, i64 8}
!56 = !{!57, !36, i64 16}
!57 = !{!"FolderList", !36, i64 0, !36, i64 8, !36, i64 16}
!58 = !{!59, !36, i64 64}
!59 = !{!"SpaceFile", !36, i64 0, !36, i64 8, !55, i64 16, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102}
!60 = !{!59, !36, i64 56}
!61 = !{!59, !36, i64 40}
!62 = distinct !{!62, !46, !47}
!63 = distinct !{!63, !46, !47}
!64 = !{!35, !36, i64 1144}
!65 = !{!66, !36, i64 8}
!66 = !{!"direntry", !39, i64 0, !36, i64 8, !36, i64 16, !67, i64 24, !39, i64 168, !37, i64 172, !37, i64 188, !37, i64 192, !37, i64 196, !37, i64 200, !37, i64 216, !37, i64 224, !37, i64 240, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!67 = !{!"stat", !68, i64 0, !68, i64 8, !68, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !68, i64 40, !68, i64 48, !68, i64 56, !68, i64 64, !69, i64 72, !69, i64 88, !69, i64 104, !37, i64 120}
!68 = !{!"long", !37, i64 0}
!69 = !{!"timespec", !68, i64 0, !68, i64 8}
!70 = !{!37, !37, i64 0}
!71 = !{!72, !36, i64 0}
!72 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !55, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!73 = !{!35, !36, i64 1128}
!74 = distinct !{!74, !46, !47}
!75 = !{!66, !39, i64 168}
!76 = !{!66, !39, i64 0}
!77 = !{!66, !39, i64 48}
!78 = !{i32 0, i32 32769}
!79 = distinct !{!79, !46, !47}
!80 = !{!35, !40, i64 1048}
!81 = !{!35, !40, i64 1050}
!82 = !{!35, !40, i64 1124}
!83 = !{!66, !36, i64 272}
!84 = distinct !{!84, !46, !47}
!85 = distinct !{!85, !46, !47}
!86 = !{!72, !37, i64 2104}
!87 = !{!66, !39, i64 280}
!88 = !{!89, !39, i64 0}
!89 = !{!"FileSelection", !39, i64 0, !39, i64 4}
!90 = !{!89, !39, i64 4}
!91 = distinct !{!91, !46, !47}
!92 = !{!66, !68, i64 112}
!93 = !{!66, !68, i64 72}
!94 = !{!95, !36, i64 8}
!95 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!96 = !{!95, !36, i64 0}
!97 = distinct !{!97, !46, !47}
!98 = !{!99, !36, i64 40}
!99 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !100, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !101, i64 2436, !102, i64 2456}
!100 = !{!"float", !37, i64 0}
!101 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!102 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!103 = distinct !{!103, !46, !47}
!104 = !{!35, !40, i64 1136}
!105 = distinct !{!105, !46, !47}
!106 = !{!55, !36, i64 0}
!107 = !{!108, !36, i64 0}
!108 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!109 = distinct !{!109, !46, !47}
!110 = !{!108, !36, i64 24}
!111 = !{!66, !39, i64 264}
!112 = !{!66, !36, i64 256}
!113 = !{!108, !40, i64 98}
!114 = !{!108, !39, i64 100}
!115 = distinct !{!115, !46, !47}
!116 = !{!117, !36, i64 32}
!117 = !{!"ThumbnailJob", !55, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !118, i64 40}
!118 = !{!"ReportList", !55, i64 0, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32}
!119 = !{!66, !36, i64 16}
!120 = !{!121, !39, i64 1044}
!121 = !{!"FileImage", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1044, !40, i64 1048, !36, i64 1056}
!122 = !{!121, !39, i64 1040}
!123 = distinct !{!123, !46, !47}
!124 = !{!121, !36, i64 1056}
!125 = !{!121, !40, i64 1048}
!126 = distinct !{!126, !46, !47}
!127 = !{!117, !36, i64 0}
!128 = !{!117, !36, i64 16}
!129 = !{!117, !36, i64 24}
!130 = !{!40, !40, i64 0}
!131 = !{!121, !36, i64 0}
!132 = distinct !{!132, !46, !47}
!133 = distinct !{!133, !46, !47}
