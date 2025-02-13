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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @filelist_filter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %71, label %4

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
  %21 = tail call zeroext i8 %18(ptr noundef %17, ptr noundef nonnull %10, i32 noundef %19, i16 noundef signext %20) #21
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
  %31 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %35(ptr noundef nonnull %32) #21
  store ptr null, ptr %31, align 8, !tbaa !47
  br label %36

36:                                               ; preds = %34, %29
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %38 = sext i32 %30 to i64
  %39 = shl nsw i64 %38, 2
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str) #21
  store ptr %40, ptr %31, align 8, !tbaa !47
  %41 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  store i32 %30, ptr %41, align 4, !tbaa !49
  %42 = load i32, ptr %5, align 8, !tbaa !41
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 14
  %46 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %47 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 8
  %48 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 7
  br label %49

49:                                               ; preds = %44, %65
  %50 = phi i64 [ 0, %44 ], [ %67, %65 ]
  %51 = phi i32 [ 0, %44 ], [ %66, %65 ]
  %52 = load ptr, ptr %0, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.direntry, ptr %52, i64 %50
  %54 = load ptr, ptr %45, align 8, !tbaa !42
  %55 = load i32, ptr %47, align 8, !tbaa !43
  %56 = load i16, ptr %48, align 4, !tbaa !44
  %57 = tail call zeroext i8 %54(ptr noundef %53, ptr noundef nonnull %46, i32 noundef %55, i16 noundef signext %56) #21
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %49
  %60 = load ptr, ptr %31, align 8, !tbaa !47
  %61 = add nsw i32 %51, 1
  %62 = sext i32 %51 to i64
  %63 = getelementptr inbounds i32, ptr %60, i64 %62
  %64 = trunc i64 %50 to i32
  store i32 %64, ptr %63, align 4, !tbaa !50
  br label %65

65:                                               ; preds = %59, %49
  %66 = phi i32 [ %61, %59 ], [ %51, %49 ]
  %67 = add nuw nsw i64 %50, 1
  %68 = load i32, ptr %5, align 8, !tbaa !41
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %49, label %71, !llvm.loop !51

71:                                               ; preds = %65, %36, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @filelist_init_icons() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @filelist_free_icons() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %5, %1 ]
  %3 = getelementptr inbounds [12 x ptr], ptr @gSpecialFileImages, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  tail call void @IMB_freeImBuf(ptr noundef %4) #21
  store ptr null, ptr %3, align 8, !tbaa !48
  %5 = add nuw nsw i64 %2, 1
  %6 = icmp eq i64 %5, 12
  br i1 %6, label %7, label %1, !llvm.loop !52

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @folderlist_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %2 = tail call ptr %1(i64 noundef 16, ptr noundef nonnull @.str.1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @folderlist_popdir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.FolderList, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  tail call void %7(ptr noundef %9) #21
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %4) #21
  %10 = load ptr, ptr %3, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.FolderList, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %14, i64 noundef 768) #21
  br label %16

16:                                               ; preds = %6, %12, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @folderlist_pushdir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FolderList, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10, %6, %2
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %15 = tail call ptr %14(i64 noundef 24, ptr noundef nonnull @.str.2) #21
  %16 = tail call ptr @BLI_strdup(ptr noundef %1) #21
  %17 = getelementptr inbounds %struct.FolderList, ptr %15, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !55
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %15) #21
  br label %18

18:                                               ; preds = %10, %13
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @folderlist_peeklastdir(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FolderList, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @folderlist_clear_next(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.FolderList, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.FileSelectParams, ptr %15, i64 0, i32 1
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %16) #22
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %11, %5, %1
  %21 = phi i32 [ 0, %1 ], [ 0, %5 ], [ %19, %11 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @folderlist_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.FolderList, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  tail call void %8(ptr noundef %10) #21
  %11 = load ptr, ptr %7, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !61

13:                                               ; preds = %6, %3
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #21
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @folderlist_duplicate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %5 = tail call ptr %4(i64 noundef 16, ptr noundef nonnull @.str.3) #21
  tail call void @BLI_duplicatelist(ptr noundef %5, ptr noundef nonnull %0) #21
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %14, %8 ], [ %6, %3 ]
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.FolderList, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = tail call ptr %10(ptr noundef %12) #21
  store ptr %13, ptr %11, align 8, !tbaa !55
  %14 = load ptr, ptr %9, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !62

16:                                               ; preds = %8, %3, %1
  %17 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %8 ]
  ret ptr %17
}

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @filelist_new(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %3 = tail call ptr %2(i64 noundef 1160, ptr noundef nonnull @.str.4) #21
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
  store ptr %7, ptr %10, align 8, !tbaa !63
  store ptr %8, ptr %9, align 8, !tbaa !42
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @filelist_read_main(ptr noundef %0) #0 !PGOFuncName !64 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @filelist_from_main(ptr noundef nonnull %0) #23
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @is_filtered_main(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2, i16 noundef signext %3) #7 !PGOFuncName !65 {
  %5 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = tail call fastcc zeroext i8 @is_hidden_file(ptr noundef %6, i16 noundef signext %3) #23, !range !71
  %8 = xor i8 %7, 1
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @filelist_read_library(ptr noundef %0) #0 !PGOFuncName !72 {
  %2 = alloca [1024 x i8], align 16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @G, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  tail call void @BLI_cleanup_dir(ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  tail call void @filelist_from_library(ptr noundef nonnull %0) #23
  %8 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %4
  tail call void @BLI_make_exist(ptr noundef nonnull %7) #21
  tail call void @filelist_read_dir(ptr noundef nonnull %0) #23
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
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = call zeroext i8 @BLO_has_bfile_extension(ptr noundef %21) #21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #24
  %25 = load ptr, ptr %20, align 8, !tbaa !66
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef nonnull %7, ptr noundef %25) #21
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #24
  br label %26

26:                                               ; preds = %17, %24
  %27 = add nuw nsw i32 %19, 1
  %28 = getelementptr inbounds %struct.direntry, ptr %18, i64 1
  %29 = load i32, ptr %12, align 8, !tbaa !41
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %17, label %31, !llvm.loop !76

31:                                               ; preds = %26, %11, %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @is_filtered_lib(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3) #0 !PGOFuncName !77 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #24
  %7 = call zeroext i8 @BLO_is_a_library(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = call fastcc zeroext i8 @is_hidden_file(ptr noundef %11, i16 noundef signext %3) #23, !range !71
  %13 = xor i8 %12, 1
  br label %16

14:                                               ; preds = %4
  %15 = call zeroext i8 @is_filtered_file(ptr noundef %0, ptr poison, i32 noundef %2, i16 noundef signext %3) #23, !range !71
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i8 [ %13, %9 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #24
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @filelist_read_dir(ptr noundef %0) #0 !PGOFuncName !78 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr @G, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  tail call void @BLI_cleanup_dir(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %7 = tail call i32 @BLI_dir_contents(ptr noundef nonnull %6, ptr noundef nonnull %0) #21
  %8 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !41
  tail call fastcc void @filelist_setfiletypes(ptr noundef nonnull %0) #23
  tail call void @filelist_filter(ptr noundef nonnull %0) #23
  br label %9

9:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @is_filtered_file(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2, i16 noundef signext %3) #7 !PGOFuncName !79 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !80
  %9 = and i32 %8, %2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load i32, ptr %0, align 8, !tbaa !81
  %13 = and i32 %12, 61440
  %14 = icmp ne i32 %13, 16384
  %15 = and i32 %2, 2048
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %16, %14
  br i1 %17, label %23, label %18

18:                                               ; preds = %11, %4, %6
  %19 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = tail call fastcc zeroext i8 @is_hidden_file(ptr noundef %20, i16 noundef signext %3) #23, !range !71
  %22 = xor i8 %21, 1
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i8 [ %22, %18 ], [ 0, %11 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @filelist_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %10(ptr noundef nonnull %7) #21
  store ptr null, ptr %6, align 8, !tbaa !47
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !41
  tail call void @BLI_free_filelist(ptr noundef %12, i32 noundef %14) #21
  store i32 0, ptr %13, align 8, !tbaa !41
  store ptr null, ptr %0, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 8
  store i32 0, ptr %15, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 9
  store i8 0, ptr %16, align 4, !tbaa !82
  %17 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  store i32 0, ptr %17, align 4, !tbaa !49
  %18 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 7
  store i16 0, ptr %18, align 4, !tbaa !44
  br label %19

19:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BLI_free_filelist(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @filelist_freelib(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BLO_blendhandle_close(ptr noundef nonnull %3) #21
  br label %6

6:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !75
  ret void
}

; Function Attrs: optsize
declare void @BLO_blendhandle_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @filelist_lib(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @filelist_numfiles(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !49
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @filelist_dir(ptr noundef readnone %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @filelist_setdir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %4 = tail call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 1024) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @filelist_imgsize(ptr nocapture noundef writeonly %0, i16 noundef signext %1, i16 noundef signext %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 5
  store i16 %1, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 6
  store i16 %2, ptr %5, align 2, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local signext i16 @filelist_changed(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 4, !tbaa !85
  ret i16 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @filelist_getimage(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !49
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.direntry, ptr %14, i64 %15, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  br label %18

18:                                               ; preds = %2, %4, %8
  %19 = phi ptr [ %17, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @filelist_geticon(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %73, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !49
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %73

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.direntry, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 8, !tbaa !81
  %18 = and i32 %17, 61440
  %19 = icmp eq i32 %18, 16384
  br i1 %19, label %20, label %29

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.direntry, ptr %14, i64 %15, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(3) @.str.6) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(2) @.str.7) #22
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 2), ptr @gSpecialFileImages
  br label %29

29:                                               ; preds = %8, %25, %20
  %30 = phi ptr [ getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 1), %20 ], [ %28, %25 ], [ getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 9), %8 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.direntry, ptr %14, i64 %15, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !80
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 3), align 8, !tbaa !48
  br label %73

38:                                               ; preds = %29
  %39 = and i32 %33, 1056
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 5), align 8, !tbaa !48
  br label %73

43:                                               ; preds = %38
  %44 = and i32 %33, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 4), align 16, !tbaa !48
  br label %73

48:                                               ; preds = %43
  %49 = and i32 %33, 64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 6), align 16, !tbaa !48
  br label %73

53:                                               ; preds = %48
  %54 = and i32 %33, 128
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 8), align 16, !tbaa !48
  br label %73

58:                                               ; preds = %53
  %59 = and i32 %33, 512
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 7), align 8, !tbaa !48
  br label %73

63:                                               ; preds = %58
  %64 = and i32 %33, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @gSpecialFileImages, i64 0, i64 10), align 16, !tbaa !48
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @filelist_file(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !49
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.direntry, ptr %14, i64 %15
  br label %17

17:                                               ; preds = %2, %4, %8
  %18 = phi ptr [ %16, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @filelist_find(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
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
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %1) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = add nuw nsw i64 %14, 1
  %21 = icmp eq i64 %20, %12
  br i1 %21, label %24, label %13, !llvm.loop !87

22:                                               ; preds = %13
  %23 = trunc i64 %14 to i32
  br label %24

24:                                               ; preds = %19, %22, %6
  %25 = phi i32 [ -1, %6 ], [ %23, %22 ], [ -1, %19 ]
  %26 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !49
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = zext nneg i32 %27 to i64
  br label %31

31:                                               ; preds = %29, %36
  %32 = phi i64 [ 0, %29 ], [ %37, %36 ]
  %33 = getelementptr inbounds i32, ptr %4, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = icmp eq i32 %34, %25
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = add nuw nsw i64 %32, 1
  %38 = icmp eq i64 %37, %30
  br i1 %38, label %41, label %31, !llvm.loop !88

39:                                               ; preds = %31
  %40 = trunc i64 %32 to i32
  br label %41

41:                                               ; preds = %36, %39, %24, %2
  %42 = phi i32 [ -1, %2 ], [ -1, %24 ], [ %40, %39 ], [ -1, %36 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @filelist_hidedot(ptr nocapture noundef writeonly %0, i16 noundef signext %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 7
  store i16 %1, ptr %3, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @filelist_setfilter(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 8
  store i32 %1, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @filelist_setfilter_types(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 9
  %4 = tail call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 64) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_file_extension_icon(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @path_extension_type(ptr noundef %0) #23, !range !89
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @path_extension_type(ptr noundef %0) unnamed_addr #0 !PGOFuncName !90 {
  %2 = tail call zeroext i8 @BLO_has_bfile_extension(ptr noundef %0) #21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @file_is_blend_backup(ptr noundef %0) #23, !range !71
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.40) #21
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.41) #21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %10
  %14 = tail call zeroext i8 (ptr, ...) @BLI_testextensie_n(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef null) #21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = tail call zeroext i8 (ptr, ...) @BLI_testextensie_n(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef null) #21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.51) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.52) #21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_image) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 17), align 8, !tbaa !91
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_image_qt) #21
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31, %28
  %35 = tail call zeroext i8 @BLI_testextensie(ptr noundef %0, ptr noundef nonnull @.str.53) #21
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = tail call zeroext i8 @IMB_isanim(ptr noundef %0) #21
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i32 256, i32 32
  br label %48

41:                                               ; preds = %34
  %42 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_movie) #21
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = tail call zeroext i8 @BLI_testextensie_array(ptr noundef %0, ptr noundef nonnull @imb_ext_audio) #21
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i32 0, i32 256
  br label %48

48:                                               ; preds = %44, %41, %37, %25, %31, %22, %19, %16, %13, %10, %7, %4, %1
  %49 = phi i32 [ 4, %1 ], [ 8, %4 ], [ 32768, %7 ], [ 64, %10 ], [ 512, %13 ], [ 128, %16 ], [ 4096, %19 ], [ 8192, %22 ], [ 16, %31 ], [ 16, %25 ], [ %40, %37 ], [ 32, %41 ], [ %47, %44 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @filelist_readdir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  tail call void %3(ptr noundef %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @filelist_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @filelist_parent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %3 = tail call zeroext i8 @BLI_parent_dir(ptr noundef nonnull %2) #21
  tail call void @BLI_make_exist(ptr noundef nonnull %2) #21
  tail call void @filelist_readdir(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_parent_dir(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_make_exist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @filelist_select_file(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #12 {
  %6 = tail call ptr @filelist_file(ptr noundef %0, i32 noundef %1) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  switch i32 %4, label %9 [
    i32 1, label %13
    i32 3, label %17
  ]

9:                                                ; preds = %8
  %10 = load i32, ptr %6, align 8, !tbaa !81
  %11 = and i32 %10, 61440
  %12 = icmp eq i32 %11, 16384
  br i1 %12, label %31, label %17

13:                                               ; preds = %8
  %14 = load i32, ptr %6, align 8, !tbaa !81
  %15 = and i32 %14, 61440
  %16 = icmp eq i32 %15, 16384
  br i1 %16, label %17, label %31

17:                                               ; preds = %9, %8, %13
  switch i32 %2, label %31 [
    i32 0, label %18
    i32 1, label %23
    i32 2, label %27
  ]

18:                                               ; preds = %17
  %19 = xor i32 %3, -1
  %20 = getelementptr inbounds %struct.direntry, ptr %6, i64 0, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !92
  %22 = and i32 %21, %19
  store i32 %22, ptr %20, align 8, !tbaa !92
  br label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.direntry, ptr %6, i64 0, i32 16
  %25 = load i32, ptr %24, align 8, !tbaa !92
  %26 = or i32 %25, %3
  store i32 %26, ptr %24, align 8, !tbaa !92
  br label %31

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.direntry, ptr %6, i64 0, i32 16
  %29 = load i32, ptr %28, align 8, !tbaa !92
  %30 = xor i32 %29, %3
  store i32 %30, ptr %28, align 8, !tbaa !92
  br label %31

31:                                               ; preds = %9, %13, %17, %27, %23, %18, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @filelist_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 {
  %6 = load i32, ptr %1, align 4, !tbaa !93
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !49
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.FileSelection, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !95
  %15 = icmp slt i32 %14, 0
  %16 = icmp sge i32 %14, %10
  %17 = or i1 %15, %16
  %18 = icmp ugt i32 %6, %14
  %19 = or i1 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %12, %20
  %21 = phi i32 [ %22, %20 ], [ %6, %12 ]
  tail call void @filelist_select_file(ptr noundef %0, i32 noundef %21, i32 noundef %2, i32 noundef %3, i32 noundef %4) #23
  %22 = add nuw nsw i32 %21, 1
  %23 = load i32, ptr %13, align 4, !tbaa !95
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %20, label %25, !llvm.loop !96

25:                                               ; preds = %20, %12, %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @filelist_is_selected(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = tail call ptr @filelist_file(ptr noundef %0, i32 noundef %1) #23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  switch i32 %2, label %15 [
    i32 1, label %7
    i32 2, label %11
  ]

7:                                                ; preds = %6
  %8 = load i32, ptr %4, align 8, !tbaa !81
  %9 = and i32 %8, 61440
  %10 = icmp eq i32 %9, 16384
  br i1 %10, label %15, label %21

11:                                               ; preds = %6
  %12 = load i32, ptr %4, align 8, !tbaa !81
  %13 = and i32 %12, 61440
  %14 = icmp eq i32 %13, 32768
  br i1 %14, label %15, label %21

15:                                               ; preds = %6, %11, %7
  %16 = getelementptr inbounds %struct.direntry, ptr %4, i64 0, i32 16
  %17 = load i32, ptr %16, align 8, !tbaa !92
  %18 = trunc i32 %17 to i8
  %19 = lshr i8 %18, 3
  %20 = and i8 %19, 1
  br label %21

21:                                               ; preds = %15, %11, %7, %3
  %22 = phi i8 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %20, %15 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @qsort(ptr noundef %9, i64 noundef %12, i64 noundef 288, ptr noundef nonnull %8) #21
  br label %13

13:                                               ; preds = %2, %5
  tail call void @filelist_filter(ptr noundef %0) #23
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @compare_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !97 {
  %3 = tail call fastcc zeroext i8 @compare_is_directory(ptr noundef %0) #23, !range !71
  %4 = icmp eq i8 %3, 0
  %5 = tail call fastcc zeroext i8 @compare_is_directory(ptr noundef %1) #23, !range !71
  %6 = icmp eq i8 %5, 0
  br i1 %4, label %8, label %7

7:                                                ; preds = %2
  br i1 %6, label %36, label %9

8:                                                ; preds = %2
  br i1 %6, label %9, label %36

9:                                                ; preds = %8, %7
  %10 = load i32, ptr %0, align 8, !tbaa !81
  %11 = and i32 %10, 61440
  %12 = icmp eq i32 %11, 32768
  %13 = load i32, ptr %1, align 8, !tbaa !81
  %14 = and i32 %13, 61440
  %15 = icmp eq i32 %14, 32768
  br i1 %12, label %16, label %17

16:                                               ; preds = %9
  br i1 %15, label %18, label %36

17:                                               ; preds = %9
  br i1 %15, label %36, label %18

18:                                               ; preds = %17, %16
  %19 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(2) @.str.7) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(2) @.str.7) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.6) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(3) @.str.6) #22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @BLI_natstrcmp(ptr noundef %20, ptr noundef %25) #21
  br label %36

36:                                               ; preds = %31, %28, %23, %18, %17, %16, %8, %7, %34
  %37 = phi i32 [ %35, %34 ], [ -1, %7 ], [ 1, %8 ], [ -1, %16 ], [ 1, %17 ], [ -1, %18 ], [ 1, %23 ], [ -1, %28 ], [ 1, %31 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @compare_date(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !98 {
  %3 = tail call fastcc zeroext i8 @compare_is_directory(ptr noundef %0) #23, !range !71
  %4 = icmp eq i8 %3, 0
  %5 = tail call fastcc zeroext i8 @compare_is_directory(ptr noundef %1) #23, !range !71
  %6 = icmp eq i8 %5, 0
  br i1 %4, label %8, label %7

7:                                                ; preds = %2
  br i1 %6, label %44, label %9

8:                                                ; preds = %2
  br i1 %6, label %9, label %44

9:                                                ; preds = %8, %7
  %10 = load i32, ptr %0, align 8, !tbaa !81
  %11 = and i32 %10, 61440
  %12 = icmp eq i32 %11, 32768
  %13 = load i32, ptr %1, align 8, !tbaa !81
  %14 = and i32 %13, 61440
  %15 = icmp eq i32 %14, 32768
  br i1 %12, label %16, label %17

16:                                               ; preds = %9
  br i1 %15, label %18, label %44

17:                                               ; preds = %9
  br i1 %15, label %44, label %18

18:                                               ; preds = %17, %16
  %19 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(2) @.str.7) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(2) @.str.7) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.6) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(3) @.str.6) #22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 3, i32 12
  %36 = load i64, ptr %35, align 8, !tbaa !99
  %37 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 3, i32 12
  %38 = load i64, ptr %37, align 8, !tbaa !99
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = icmp sgt i64 %36, %38
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = tail call i32 @BLI_natstrcmp(ptr noundef %20, ptr noundef %25) #21
  br label %44

44:                                               ; preds = %40, %34, %31, %28, %23, %18, %17, %16, %8, %7, %42
  %45 = phi i32 [ %43, %42 ], [ -1, %7 ], [ 1, %8 ], [ -1, %16 ], [ 1, %17 ], [ -1, %18 ], [ 1, %23 ], [ -1, %28 ], [ 1, %31 ], [ 1, %34 ], [ -1, %40 ]
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @compare_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !100 {
  %3 = tail call fastcc zeroext i8 @compare_is_directory(ptr noundef %0) #23, !range !71
  %4 = icmp eq i8 %3, 0
  %5 = tail call fastcc zeroext i8 @compare_is_directory(ptr noundef %1) #23, !range !71
  %6 = icmp eq i8 %5, 0
  br i1 %4, label %8, label %7

7:                                                ; preds = %2
  br i1 %6, label %44, label %9

8:                                                ; preds = %2
  br i1 %6, label %9, label %44

9:                                                ; preds = %8, %7
  %10 = load i32, ptr %0, align 8, !tbaa !81
  %11 = and i32 %10, 61440
  %12 = icmp eq i32 %11, 32768
  %13 = load i32, ptr %1, align 8, !tbaa !81
  %14 = and i32 %13, 61440
  %15 = icmp eq i32 %14, 32768
  br i1 %12, label %16, label %17

16:                                               ; preds = %9
  br i1 %15, label %18, label %44

17:                                               ; preds = %9
  br i1 %15, label %44, label %18

18:                                               ; preds = %17, %16
  %19 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(2) @.str.7) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(2) @.str.7) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.6) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(3) @.str.6) #22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 3, i32 8
  %36 = load i64, ptr %35, align 8, !tbaa !101
  %37 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 3, i32 8
  %38 = load i64, ptr %37, align 8, !tbaa !101
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = icmp sgt i64 %36, %38
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = tail call i32 @BLI_natstrcmp(ptr noundef %20, ptr noundef %25) #21
  br label %44

44:                                               ; preds = %40, %34, %31, %28, %23, %18, %17, %16, %8, %7, %42
  %45 = phi i32 [ %43, %42 ], [ -1, %7 ], [ 1, %8 ], [ -1, %16 ], [ 1, %17 ], [ -1, %18 ], [ 1, %23 ], [ -1, %28 ], [ 1, %31 ], [ 1, %34 ], [ -1, %40 ]
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @compare_extension(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !102 {
  %3 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.56) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 46) #22
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %5, %2 ], [ %8, %7 ]
  %11 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.56) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 46) #22
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %13, %9 ], [ %16, %15 ]
  %19 = icmp eq ptr %10, null
  %20 = select i1 %19, ptr @.str.55, ptr %10
  %21 = icmp eq ptr %18, null
  %22 = select i1 %21, ptr @.str.55, ptr %18
  %23 = tail call fastcc zeroext i8 @compare_is_directory(ptr noundef nonnull %0) #23, !range !71
  %24 = icmp eq i8 %23, 0
  %25 = tail call fastcc zeroext i8 @compare_is_directory(ptr noundef nonnull %1) #23, !range !71
  %26 = icmp eq i8 %25, 0
  br i1 %24, label %28, label %27

27:                                               ; preds = %17
  br i1 %26, label %52, label %29

28:                                               ; preds = %17
  br i1 %26, label %29, label %52

29:                                               ; preds = %28, %27
  %30 = load i32, ptr %0, align 8, !tbaa !81
  %31 = and i32 %30, 61440
  %32 = icmp eq i32 %31, 32768
  %33 = load i32, ptr %1, align 8, !tbaa !81
  %34 = and i32 %33, 61440
  %35 = icmp eq i32 %34, 32768
  br i1 %32, label %36, label %37

36:                                               ; preds = %29
  br i1 %35, label %38, label %52

37:                                               ; preds = %29
  br i1 %35, label %52, label %38

38:                                               ; preds = %37, %36
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(2) @.str.7) #22
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(2) @.str.7) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(3) @.str.6) #22
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(3) @.str.6) #22
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %20, ptr noundef nonnull %22) #21
  br label %52

52:                                               ; preds = %47, %44, %41, %38, %37, %36, %28, %27, %50
  %53 = phi i32 [ %51, %50 ], [ -1, %27 ], [ 1, %28 ], [ -1, %36 ], [ 1, %37 ], [ -1, %38 ], [ 1, %41 ], [ -1, %44 ], [ 1, %47 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @filelist_islibrary(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %5 = tail call zeroext i8 @BLO_is_a_library(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #21
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @BLO_is_a_library(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @filelist_from_library(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #24
  %7 = call zeroext i8 @filelist_islibrary(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  call void @BLO_blendhandle_close(ptr noundef nonnull %11) #21
  br label %14

14:                                               ; preds = %13, %9
  store ptr null, ptr %10, align 8, !tbaa !75
  br label %128

15:                                               ; preds = %1
  %16 = load ptr, ptr @G, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.Main, ptr %16, i64 0, i32 2
  %18 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %17, i64 noundef 1024) #21
  %19 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = call ptr @BLO_blendhandle_from_file(ptr noundef nonnull %5, ptr noundef null) #21
  store ptr %23, ptr %19, align 8, !tbaa !75
  %24 = icmp eq ptr %23, null
  br i1 %24, label %128, label %25

25:                                               ; preds = %22, %15
  %26 = call fastcc i32 @groupname_to_code(ptr noundef nonnull %6) #23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %19, align 8, !tbaa !75
  %30 = call ptr @BLO_blendhandle_get_previews(ptr noundef %29, i32 noundef %26, ptr noundef nonnull %2) #21
  %31 = load ptr, ptr %19, align 8, !tbaa !75
  %32 = call ptr @BLO_blendhandle_get_datablock_names(ptr noundef %31, i32 noundef %26, ptr noundef nonnull %3) #21
  %33 = load ptr, ptr %19, align 8, !tbaa !75
  call void @BLO_blendhandle_close(ptr noundef %33) #21
  %34 = call ptr @BLO_blendhandle_from_file(ptr noundef nonnull %5, ptr noundef null) #21
  store ptr %34, ptr %19, align 8, !tbaa !75
  %35 = load i32, ptr %3, align 4, !tbaa !50
  br label %40

36:                                               ; preds = %25
  store i32 0, ptr %2, align 4, !tbaa !50
  %37 = load ptr, ptr %19, align 8, !tbaa !75
  %38 = call ptr @BLO_blendhandle_get_linkable_groups(ptr noundef %37) #21
  %39 = call i32 @BLI_linklist_length(ptr noundef %38) #21
  store i32 %39, ptr %3, align 4, !tbaa !50
  br label %40

40:                                               ; preds = %36, %28
  %41 = phi i32 [ %35, %28 ], [ %39, %36 ]
  %42 = phi ptr [ %30, %28 ], [ null, %36 ]
  %43 = phi ptr [ %32, %28 ], [ %38, %36 ]
  %44 = add nsw i32 %41, 1
  %45 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  store i32 %44, ptr %45, align 8, !tbaa !41
  %46 = sext i32 %44 to i64
  %47 = mul nsw i64 %46, 288
  %48 = call ptr @calloc(i64 1, i64 %47)
  store ptr %48, ptr %0, align 8, !tbaa !34
  %49 = call ptr @BLI_strdup(ptr noundef nonnull @.str.6) #21
  %50 = load ptr, ptr %0, align 8, !tbaa !34
  %51 = getelementptr inbounds %struct.direntry, ptr %50, i64 0, i32 1
  store ptr %49, ptr %51, align 8, !tbaa !66
  %52 = load i32, ptr %50, align 8, !tbaa !81
  %53 = or i32 %52, 16384
  store i32 %53, ptr %50, align 8, !tbaa !81
  %54 = load i32, ptr %3, align 4, !tbaa !50
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %40
  %57 = select i1 %27, i32 16384, i32 32768
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i64 [ %65, %58 ], [ 0, %56 ]
  %60 = phi ptr [ %70, %58 ], [ %43, %56 ]
  %61 = getelementptr inbounds %struct.LinkNode, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !103
  %63 = call ptr @BLI_strdup(ptr noundef %62) #21
  %64 = load ptr, ptr %0, align 8, !tbaa !34
  %65 = add nuw nsw i64 %59, 1
  %66 = getelementptr inbounds %struct.direntry, ptr %64, i64 %65, i32 1
  store ptr %63, ptr %66, align 8, !tbaa !66
  %67 = getelementptr inbounds %struct.direntry, ptr %64, i64 %65
  %68 = load i32, ptr %67, align 8, !tbaa !81
  %69 = or i32 %68, %57
  store i32 %69, ptr %67, align 8, !tbaa !81
  %70 = load ptr, ptr %60, align 8, !tbaa !105
  %71 = load i32, ptr %3, align 4, !tbaa !50
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %65, %72
  br i1 %73, label %58, label %74, !llvm.loop !106

74:                                               ; preds = %58, %40
  %75 = phi i32 [ %54, %40 ], [ %71, %58 ]
  %76 = icmp eq ptr %42, null
  br i1 %76, label %122, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %2, align 4, !tbaa !50
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = icmp sgt i32 %75, 0
  br i1 %81, label %84, label %121

82:                                               ; preds = %77
  %83 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %75, i32 noundef %78) #23
  br label %121

84:                                               ; preds = %80, %115
  %85 = phi i32 [ %116, %115 ], [ %75, %80 ]
  %86 = phi i64 [ %117, %115 ], [ 0, %80 ]
  %87 = phi ptr [ %118, %115 ], [ %42, %80 ]
  %88 = getelementptr inbounds %struct.LinkNode, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !103
  %90 = icmp eq ptr %89, null
  br i1 %90, label %115, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds [2 x i32], ptr %89, i64 0, i64 1
  %93 = load i32, ptr %92, align 4, !tbaa !50
  %94 = getelementptr inbounds %struct.PreviewImage, ptr %89, i64 0, i32 1, i64 1
  %95 = load i32, ptr %94, align 4, !tbaa !50
  %96 = getelementptr inbounds %struct.PreviewImage, ptr %89, i64 0, i32 4, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !48
  %98 = icmp ne i32 %93, 0
  %99 = icmp ne i32 %95, 0
  %100 = select i1 %98, i1 %99, i1 false
  %101 = icmp ne ptr %97, null
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %103, label %115

103:                                              ; preds = %91
  %104 = call ptr @IMB_allocImBuf(i32 noundef %93, i32 noundef %95, i8 noundef zeroext 32, i32 noundef 1) #21
  %105 = getelementptr inbounds %struct.ImBuf, ptr %104, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !107
  %107 = mul i32 %95, %93
  %108 = zext i32 %107 to i64
  %109 = shl nuw nsw i64 %108, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %106, ptr nonnull align 4 %97, i64 %109, i1 false)
  %110 = load ptr, ptr %0, align 8, !tbaa !34
  %111 = add nuw nsw i64 %86, 1
  %112 = getelementptr inbounds %struct.direntry, ptr %110, i64 %111, i32 15
  store ptr %104, ptr %112, align 8, !tbaa !86
  %113 = getelementptr inbounds %struct.direntry, ptr %110, i64 %111, i32 4
  store i32 16, ptr %113, align 8, !tbaa !80
  %114 = load i32, ptr %3, align 4, !tbaa !50
  br label %115

115:                                              ; preds = %91, %103, %84
  %116 = phi i32 [ %85, %91 ], [ %114, %103 ], [ %85, %84 ]
  %117 = add nuw nsw i64 %86, 1
  %118 = load ptr, ptr %87, align 8, !tbaa !105
  %119 = sext i32 %116 to i64
  %120 = icmp slt i64 %117, %119
  br i1 %120, label %84, label %121, !llvm.loop !112

121:                                              ; preds = %115, %80, %82
  call void @BLI_linklist_free(ptr noundef %43, ptr noundef nonnull @free) #21
  call void @BLI_linklist_free(ptr noundef nonnull %42, ptr noundef nonnull @BKE_previewimg_freefunc) #21
  br label %123

122:                                              ; preds = %74
  call void @BLI_linklist_free(ptr noundef %43, ptr noundef nonnull @free) #21
  br label %123

123:                                              ; preds = %122, %121
  call void @filelist_sort(ptr noundef nonnull %0, i16 noundef signext 1) #23
  %124 = load ptr, ptr @G, align 8, !tbaa !73
  %125 = getelementptr inbounds %struct.Main, ptr %124, i64 0, i32 2
  %126 = call ptr @BLI_strncpy(ptr noundef nonnull %125, ptr noundef nonnull %4, i64 noundef 1024) #21
  %127 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 8
  store i32 0, ptr %127, align 8, !tbaa !43
  call void @filelist_filter(ptr noundef nonnull %0) #23
  br label %128

128:                                              ; preds = %22, %123, %14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: optsize
declare ptr @BLO_blendhandle_from_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @groupname_to_code(ptr noundef %0) unnamed_addr #0 !PGOFuncName !113 {
  %2 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #24
  %3 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %0, i64 noundef 32) #21
  %4 = call ptr @BLI_last_slash(ptr noundef nonnull %2) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8 0, ptr %4, align 1, !tbaa !82
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i8, ptr %2, align 16, !tbaa !82
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = call i32 @BKE_idcode_from_name(ptr noundef nonnull %2) #21
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i32 [ %11, %10 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #24
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @BLO_blendhandle_get_previews(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLO_blendhandle_get_datablock_names(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLO_blendhandle_get_linkable_groups(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_linklist_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: optsize
declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #17

; Function Attrs: optsize
declare void @BKE_previewimg_freefunc(ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @filelist_hideparent(ptr nocapture noundef writeonly %0, i16 noundef signext %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 12
  store i16 %1, ptr %3, align 8, !tbaa !114
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @filelist_from_main(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !82
  switch i8 %3, label %4 [
    i8 47, label %10
    i8 0, label %11
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @groupname_to_code(ptr noundef nonnull %2) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr %2, align 8, !tbaa !82
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %96

10:                                               ; preds = %4, %1
  store i8 0, ptr %2, align 8, !tbaa !82
  br label %11

11:                                               ; preds = %10, %1, %7
  %12 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  store i32 24, ptr %12, align 8, !tbaa !41
  %13 = tail call noalias dereferenceable_or_null(6912) ptr @malloc(i64 noundef 6912) #25
  store ptr %13, ptr %0, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %13, %11 ], [ %18, %14 ]
  %16 = phi i64 [ 0, %11 ], [ %22, %14 ]
  %17 = getelementptr inbounds %struct.direntry, ptr %15, i64 %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %17, i8 0, i64 288, i1 false)
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.direntry, ptr %18, i64 %16
  %20 = load i32, ptr %19, align 8, !tbaa !81
  %21 = or i32 %20, 16384
  store i32 %21, ptr %19, align 8, !tbaa !81
  %22 = add nuw nsw i64 %16, 1
  %23 = load i32, ptr %12, align 8, !tbaa !41
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %14, label %26, !llvm.loop !115

26:                                               ; preds = %14
  %27 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.6) #21
  %28 = load ptr, ptr %0, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.direntry, ptr %28, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !66
  %30 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.9) #21
  %31 = load ptr, ptr %0, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.direntry, ptr %31, i64 2, i32 1
  store ptr %30, ptr %32, align 8, !tbaa !66
  %33 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.10) #21
  %34 = load ptr, ptr %0, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.direntry, ptr %34, i64 3, i32 1
  store ptr %33, ptr %35, align 8, !tbaa !66
  %36 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.11) #21
  %37 = load ptr, ptr %0, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.direntry, ptr %37, i64 4, i32 1
  store ptr %36, ptr %38, align 8, !tbaa !66
  %39 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.12) #21
  %40 = load ptr, ptr %0, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct.direntry, ptr %40, i64 5, i32 1
  store ptr %39, ptr %41, align 8, !tbaa !66
  %42 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.13) #21
  %43 = load ptr, ptr %0, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.direntry, ptr %43, i64 6, i32 1
  store ptr %42, ptr %44, align 8, !tbaa !66
  %45 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.14) #21
  %46 = load ptr, ptr %0, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.direntry, ptr %46, i64 7, i32 1
  store ptr %45, ptr %47, align 8, !tbaa !66
  %48 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.15) #21
  %49 = load ptr, ptr %0, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.direntry, ptr %49, i64 8, i32 1
  store ptr %48, ptr %50, align 8, !tbaa !66
  %51 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.16) #21
  %52 = load ptr, ptr %0, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.direntry, ptr %52, i64 9, i32 1
  store ptr %51, ptr %53, align 8, !tbaa !66
  %54 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.17) #21
  %55 = load ptr, ptr %0, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.direntry, ptr %55, i64 10, i32 1
  store ptr %54, ptr %56, align 8, !tbaa !66
  %57 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.18) #21
  %58 = load ptr, ptr %0, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct.direntry, ptr %58, i64 11, i32 1
  store ptr %57, ptr %59, align 8, !tbaa !66
  %60 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.19) #21
  %61 = load ptr, ptr %0, align 8, !tbaa !34
  %62 = getelementptr inbounds %struct.direntry, ptr %61, i64 12, i32 1
  store ptr %60, ptr %62, align 8, !tbaa !66
  %63 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.20) #21
  %64 = load ptr, ptr %0, align 8, !tbaa !34
  %65 = getelementptr inbounds %struct.direntry, ptr %64, i64 13, i32 1
  store ptr %63, ptr %65, align 8, !tbaa !66
  %66 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.21) #21
  %67 = load ptr, ptr %0, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.direntry, ptr %67, i64 14, i32 1
  store ptr %66, ptr %68, align 8, !tbaa !66
  %69 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.22) #21
  %70 = load ptr, ptr %0, align 8, !tbaa !34
  %71 = getelementptr inbounds %struct.direntry, ptr %70, i64 15, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !66
  %72 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.23) #21
  %73 = load ptr, ptr %0, align 8, !tbaa !34
  %74 = getelementptr inbounds %struct.direntry, ptr %73, i64 16, i32 1
  store ptr %72, ptr %74, align 8, !tbaa !66
  %75 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.24) #21
  %76 = load ptr, ptr %0, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.direntry, ptr %76, i64 17, i32 1
  store ptr %75, ptr %77, align 8, !tbaa !66
  %78 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.25) #21
  %79 = load ptr, ptr %0, align 8, !tbaa !34
  %80 = getelementptr inbounds %struct.direntry, ptr %79, i64 18, i32 1
  store ptr %78, ptr %80, align 8, !tbaa !66
  %81 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.26) #21
  %82 = load ptr, ptr %0, align 8, !tbaa !34
  %83 = getelementptr inbounds %struct.direntry, ptr %82, i64 19, i32 1
  store ptr %81, ptr %83, align 8, !tbaa !66
  %84 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.27) #21
  %85 = load ptr, ptr %0, align 8, !tbaa !34
  %86 = getelementptr inbounds %struct.direntry, ptr %85, i64 20, i32 1
  store ptr %84, ptr %86, align 8, !tbaa !66
  %87 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.28) #21
  %88 = load ptr, ptr %0, align 8, !tbaa !34
  %89 = getelementptr inbounds %struct.direntry, ptr %88, i64 21, i32 1
  store ptr %87, ptr %89, align 8, !tbaa !66
  %90 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.29) #21
  %91 = load ptr, ptr %0, align 8, !tbaa !34
  %92 = getelementptr inbounds %struct.direntry, ptr %91, i64 22, i32 1
  store ptr %90, ptr %92, align 8, !tbaa !66
  %93 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.30) #21
  %94 = load ptr, ptr %0, align 8, !tbaa !34
  %95 = getelementptr inbounds %struct.direntry, ptr %94, i64 23, i32 1
  store ptr %93, ptr %95, align 8, !tbaa !66
  tail call void @filelist_sort(ptr noundef nonnull %0, i16 noundef signext 1) #23
  br label %224

96:                                               ; preds = %7
  %97 = tail call fastcc i32 @groupname_to_code(ptr noundef nonnull %2) #23
  %98 = load ptr, ptr @G, align 8, !tbaa !73
  %99 = trunc i32 %97 to i16
  %100 = tail call ptr @which_libbase(ptr noundef %98, i16 noundef signext %99) #21
  %101 = icmp eq ptr %100, null
  br i1 %101, label %226, label %102

102:                                              ; preds = %96
  %103 = load ptr, ptr %100, align 8, !tbaa !116
  %104 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  store i32 0, ptr %104, align 8, !tbaa !41
  %105 = icmp eq ptr %103, null
  br i1 %105, label %123, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 7
  %108 = load i16, ptr %107, align 4, !tbaa !44
  %109 = icmp eq i16 %108, 0
  br label %110

110:                                              ; preds = %106, %119
  %111 = phi i32 [ 0, %106 ], [ %120, %119 ]
  %112 = phi ptr [ %103, %106 ], [ %121, %119 ]
  br i1 %109, label %117, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.ID, ptr %112, i64 0, i32 4, i64 2
  %115 = load i8, ptr %114, align 2, !tbaa !82
  %116 = icmp eq i8 %115, 46
  br i1 %116, label %119, label %117

117:                                              ; preds = %113, %110
  %118 = add nsw i32 %111, 1
  store i32 %118, ptr %104, align 8, !tbaa !41
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi i32 [ %118, %117 ], [ %111, %113 ]
  %121 = load ptr, ptr %112, align 8, !tbaa !117
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %110, !llvm.loop !119

123:                                              ; preds = %119, %102
  %124 = phi i32 [ 0, %102 ], [ %120, %119 ]
  %125 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 12
  %126 = load i16, ptr %125, align 8, !tbaa !114
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = add nsw i32 %124, 1
  store i32 %129, ptr %104, align 8, !tbaa !41
  br label %130

130:                                              ; preds = %123, %128
  %131 = phi i32 [ %129, %128 ], [ %124, %123 ]
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = zext nneg i32 %131 to i64
  %135 = mul nuw nsw i64 %134, 288
  %136 = tail call noalias ptr @malloc(i64 noundef %135) #25
  br label %137

137:                                              ; preds = %130, %133
  %138 = phi ptr [ %136, %133 ], [ null, %130 ]
  store ptr %138, ptr %0, align 8, !tbaa !34
  br i1 %127, label %139, label %146

139:                                              ; preds = %137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %138, i8 0, i64 288, i1 false)
  %140 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.6) #21
  %141 = load ptr, ptr %0, align 8, !tbaa !34
  %142 = getelementptr inbounds %struct.direntry, ptr %141, i64 0, i32 1
  store ptr %140, ptr %142, align 8, !tbaa !66
  %143 = load i32, ptr %141, align 8, !tbaa !81
  %144 = or i32 %143, 16384
  store i32 %144, ptr %141, align 8, !tbaa !81
  %145 = getelementptr inbounds %struct.direntry, ptr %138, i64 1
  br label %146

146:                                              ; preds = %139, %137
  %147 = phi ptr [ %138, %137 ], [ %145, %139 ]
  %148 = load ptr, ptr %100, align 8, !tbaa !48
  %149 = icmp eq ptr %148, null
  br i1 %149, label %224, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 7
  br label %152

152:                                              ; preds = %150, %213
  %153 = phi ptr [ %148, %150 ], [ %218, %213 ]
  %154 = phi i32 [ 0, %150 ], [ %214, %213 ]
  %155 = phi i32 [ 0, %150 ], [ %217, %213 ]
  %156 = phi ptr [ %147, %150 ], [ %216, %213 ]
  %157 = phi ptr [ null, %150 ], [ %215, %213 ]
  %158 = load i16, ptr %151, align 4, !tbaa !44
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.ID, ptr %153, i64 0, i32 4, i64 2
  %162 = load i8, ptr %161, align 2, !tbaa !82
  %163 = icmp eq i8 %162, 46
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = add nuw nsw i32 %154, 1
  br label %213

166:                                              ; preds = %160, %152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %156, i8 0, i64 288, i1 false)
  %167 = getelementptr inbounds %struct.ID, ptr %153, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !120
  %169 = icmp eq ptr %168, null
  %170 = getelementptr inbounds %struct.direntry, ptr %156, i64 0, i32 1
  br i1 %169, label %171, label %174

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.ID, ptr %153, i64 0, i32 4, i64 2
  %173 = tail call ptr @BLI_strdup(ptr noundef nonnull %172) #21
  store ptr %173, ptr %170, align 8, !tbaa !66
  br label %181

174:                                              ; preds = %166
  %175 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %176 = tail call ptr %175(i64 noundef 1088, ptr noundef nonnull @.str.31) #21
  store ptr %176, ptr %170, align 8, !tbaa !66
  %177 = load ptr, ptr %167, align 8, !tbaa !120
  %178 = getelementptr inbounds %struct.Library, ptr %177, i64 0, i32 3
  %179 = getelementptr inbounds %struct.ID, ptr %153, i64 0, i32 4, i64 2
  %180 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %176, i64 noundef 1091, ptr noundef nonnull @.str.32, ptr noundef nonnull %178, ptr noundef nonnull %179) #21
  br label %181

181:                                              ; preds = %174, %171
  %182 = load i32, ptr %156, align 8, !tbaa !81
  %183 = or i32 %182, 32768
  store i32 %183, ptr %156, align 8, !tbaa !81
  %184 = add nuw nsw i32 %154, 1
  %185 = getelementptr inbounds %struct.direntry, ptr %156, i64 0, i32 14
  store i32 %184, ptr %185, align 8, !tbaa !121
  %186 = getelementptr inbounds %struct.direntry, ptr %156, i64 0, i32 13
  store ptr %153, ptr %186, align 8, !tbaa !122
  %187 = getelementptr inbounds %struct.ID, ptr %153, i64 0, i32 5
  %188 = load i16, ptr %187, align 2, !tbaa !123
  %189 = and i16 %188, 512
  switch i32 %97, label %194 [
    i32 20311, label %190
    i32 19785, label %190
    i32 17748, label %190
    i32 16717, label %190
    i32 16716, label %190
  ]

190:                                              ; preds = %181, %181, %181, %181, %181
  %191 = getelementptr inbounds %struct.direntry, ptr %156, i64 0, i32 4
  %192 = load i32, ptr %191, align 8, !tbaa !80
  %193 = or i32 %192, 16
  store i32 %193, ptr %191, align 8, !tbaa !80
  br label %194

194:                                              ; preds = %181, %190
  %195 = load ptr, ptr %167, align 8, !tbaa !120
  %196 = icmp eq ptr %195, null
  %197 = icmp eq i16 %189, 0
  %198 = getelementptr inbounds %struct.direntry, ptr %156, i64 0, i32 12
  %199 = getelementptr inbounds %struct.ID, ptr %153, i64 0, i32 6
  %200 = load i32, ptr %199, align 4, !tbaa !124
  %201 = select i1 %197, ptr @.str.36, ptr @.str.35
  %202 = select i1 %197, ptr @.str.34, ptr @.str.33
  %203 = select i1 %196, ptr %201, ptr %202
  %204 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %198, i64 noundef 16, ptr noundef nonnull %203, i32 noundef %200) #21
  %205 = load ptr, ptr %167, align 8, !tbaa !120
  %206 = icmp ne ptr %205, null
  %207 = icmp eq i32 %155, 0
  %208 = select i1 %206, i1 %207, i1 false
  %209 = select i1 %208, ptr %156, ptr %157
  %210 = zext i1 %206 to i32
  %211 = add nsw i32 %155, %210
  %212 = getelementptr inbounds %struct.direntry, ptr %156, i64 1
  br label %213

213:                                              ; preds = %164, %194
  %214 = phi i32 [ %165, %164 ], [ %184, %194 ]
  %215 = phi ptr [ %157, %164 ], [ %209, %194 ]
  %216 = phi ptr [ %156, %164 ], [ %212, %194 ]
  %217 = phi i32 [ %155, %164 ], [ %211, %194 ]
  %218 = load ptr, ptr %153, align 8, !tbaa !48
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %152, !llvm.loop !125

220:                                              ; preds = %213
  %221 = icmp sgt i32 %217, 1
  br i1 %221, label %222, label %224

222:                                              ; preds = %220
  %223 = zext nneg i32 %217 to i64
  tail call void @qsort(ptr noundef %215, i64 noundef %223, i64 noundef 288, ptr noundef nonnull @compare_name) #21
  br label %224

224:                                              ; preds = %146, %220, %222, %26
  %225 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 8
  store i32 0, ptr %225, align 8, !tbaa !43
  tail call void @filelist_filter(ptr noundef nonnull %0) #23
  br label %226

226:                                              ; preds = %96, %224
  ret void
}

; Function Attrs: optsize
declare ptr @which_libbase(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @thumbnails_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %4 = tail call ptr %3(i64 noundef 80, ptr noundef nonnull @.str.37) #21
  %5 = getelementptr inbounds %struct.ThumbnailJob, ptr %4, i64 0, i32 3
  store ptr %0, ptr %5, align 8, !tbaa !126
  %6 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !41
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2, %36
  %10 = phi i32 [ %37, %36 ], [ %7, %2 ]
  %11 = phi i64 [ %38, %36 ], [ 0, %2 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.direntry, ptr %12, i64 %11, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.direntry, ptr %12, i64 %11, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !80
  %19 = and i32 %18, 60
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %23 = tail call ptr %22(i64 noundef 1064, ptr noundef nonnull @.str.38) #21
  %24 = getelementptr inbounds %struct.FileImage, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.direntry, ptr %25, i64 %11, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !129
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %27, i64 noundef 1024) #21
  %29 = getelementptr inbounds %struct.FileImage, ptr %23, i64 0, i32 4
  %30 = trunc i64 %11 to i32
  store i32 %30, ptr %29, align 4, !tbaa !130
  %31 = load ptr, ptr %0, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.direntry, ptr %31, i64 %11, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !80
  %34 = getelementptr inbounds %struct.FileImage, ptr %23, i64 0, i32 3
  store i32 %33, ptr %34, align 8, !tbaa !132
  tail call void @BLI_addtail(ptr noundef %4, ptr noundef %23) #21
  %35 = load i32, ptr %6, align 8, !tbaa !41
  br label %36

36:                                               ; preds = %9, %21, %16
  %37 = phi i32 [ %10, %9 ], [ %35, %21 ], [ %10, %16 ]
  %38 = add nuw nsw i64 %11, 1
  %39 = sext i32 %37 to i64
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %9, label %41, !llvm.loop !133

41:                                               ; preds = %36, %2
  %42 = getelementptr inbounds %struct.ThumbnailJob, ptr %4, i64 0, i32 4
  tail call void @BKE_reports_init(ptr noundef nonnull %42, i32 noundef 1) #21
  %43 = tail call ptr @CTX_wm_manager(ptr noundef %1) #21
  %44 = tail call ptr @CTX_wm_window(ptr noundef %1) #21
  %45 = tail call ptr @WM_jobs_get(ptr noundef %43, ptr noundef %44, ptr noundef nonnull %0, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef 9) #21
  tail call void @WM_jobs_customdata_set(ptr noundef %45, ptr noundef %4, ptr noundef nonnull @thumbnails_free) #21
  tail call void @WM_jobs_timer(ptr noundef %45, double noundef 5.000000e-01, i32 noundef 33554432, i32 noundef 33554432) #21
  tail call void @WM_jobs_callbacks(ptr noundef %45, ptr noundef nonnull @thumbnails_startjob, ptr noundef null, ptr noundef nonnull @thumbnails_update, ptr noundef null) #21
  %46 = tail call ptr @CTX_wm_manager(ptr noundef %1) #21
  tail call void @WM_jobs_start(ptr noundef %46, ptr noundef %45) #21
  ret void
}

; Function Attrs: optsize
declare void @BKE_reports_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @thumbnails_free(ptr noundef %0) #0 !PGOFuncName !134 {
  tail call fastcc void @thumbnail_joblist_free(ptr noundef %0) #23
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %2(ptr noundef %0) #21
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @thumbnails_startjob(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 !PGOFuncName !135 {
  %5 = load ptr, ptr %0, align 8, !tbaa !136
  %6 = getelementptr inbounds %struct.ThumbnailJob, ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !137
  %7 = getelementptr inbounds %struct.ThumbnailJob, ptr %0, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !138
  %8 = load i16, ptr %1, align 2, !tbaa !139
  %9 = icmp eq i16 %8, 0
  %10 = icmp ne ptr %5, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %47

12:                                               ; preds = %4, %41
  %13 = phi ptr [ %42, %41 ], [ %5, %4 ]
  %14 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !132
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 2
  %20 = tail call ptr @IMB_thumb_manage(ptr noundef nonnull %19, i32 noundef 0, i32 noundef 0) #21
  %21 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 6
  store ptr %20, ptr %21, align 8, !tbaa !140
  br label %41

22:                                               ; preds = %12
  %23 = and i32 %15, 12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 2
  %27 = tail call ptr @IMB_thumb_manage(ptr noundef nonnull %26, i32 noundef 0, i32 noundef 2) #21
  %28 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 6
  store ptr %27, ptr %28, align 8, !tbaa !140
  br label %41

29:                                               ; preds = %22
  %30 = and i32 %15, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 2
  %34 = tail call ptr @IMB_thumb_manage(ptr noundef nonnull %33, i32 noundef 0, i32 noundef 1) #21
  %35 = getelementptr inbounds %struct.FileImage, ptr %13, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !140
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, ptr %14, align 8, !tbaa !132
  %39 = and i32 %38, -1057
  %40 = or disjoint i32 %39, 1024
  store i32 %40, ptr %14, align 8, !tbaa !132
  br label %41

41:                                               ; preds = %25, %32, %37, %29, %18
  store i16 1, ptr %2, align 2, !tbaa !139
  tail call void @PIL_sleep_ms(i32 noundef 10) #21
  %42 = load ptr, ptr %13, align 8, !tbaa !141
  %43 = load i16, ptr %1, align 2, !tbaa !139
  %44 = icmp eq i16 %43, 0
  %45 = icmp ne ptr %42, null
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %12, label %47, !llvm.loop !142

47:                                               ; preds = %41, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @thumbnails_update(ptr nocapture noundef readonly %0) #13 !PGOFuncName !143 {
  %2 = getelementptr inbounds %struct.ThumbnailJob, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %8, %35
  %12 = phi ptr [ %36, %35 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.FileImage, ptr %12, i64 0, i32 5
  %14 = load i16, ptr %13, align 8, !tbaa !144
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.FileImage, ptr %12, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !140
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.FileImage, ptr %12, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !130
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.direntry, ptr %6, i64 %23, i32 15
  store ptr %18, ptr %24, align 8, !tbaa !86
  %25 = getelementptr inbounds %struct.FileImage, ptr %12, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !132
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.direntry, ptr %6, i64 %23, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !80
  %32 = and i32 %31, -1057
  %33 = or disjoint i32 %32, 1024
  store i32 %33, ptr %30, align 8, !tbaa !80
  br label %34

34:                                               ; preds = %29, %20
  store i16 1, ptr %13, align 8, !tbaa !144
  br label %35

35:                                               ; preds = %34, %16, %11
  %36 = load ptr, ptr %12, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %11, !llvm.loop !145

38:                                               ; preds = %35, %8, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @thumbnails_stop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @WM_jobs_kill(ptr noundef %0, ptr noundef %1, ptr noundef null) #21
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_kill(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @thumbnails_running(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @WM_jobs_test(ptr noundef %0, ptr noundef %1, i32 noundef 9) #21
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_hidden_file(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #18 !PGOFuncName !146 {
  %3 = icmp eq i16 %1, 0
  %4 = load i8, ptr %0, align 1, !tbaa !82
  %5 = icmp eq i8 %4, 46
  br i1 %3, label %18, label %6

6:                                                ; preds = %2
  br i1 %5, label %7, label %11

7:                                                ; preds = %6
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !82
  %10 = icmp eq i8 %9, 46
  br i1 %10, label %11, label %26

11:                                               ; preds = %7, %6
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = add i64 %12, 4294967295
  %17 = and i64 %16, 4294967295
  br label %19

18:                                               ; preds = %2
  br i1 %5, label %19, label %26

19:                                               ; preds = %18, %15
  %20 = phi i64 [ %17, %15 ], [ 1, %18 ]
  %21 = phi i8 [ 126, %15 ], [ 0, %18 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !82
  %24 = icmp eq i8 %23, %21
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %7, %19, %11, %18
  %27 = phi i8 [ 0, %18 ], [ 0, %11 ], [ 1, %7 ], [ %25, %19 ]
  ret i8 %27
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BLO_has_bfile_extension(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @file_is_blend_backup(ptr noundef %0) unnamed_addr #0 !PGOFuncName !147 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = icmp eq i64 %2, 8
  %6 = select i1 %5, i64 -7, i64 -8
  %7 = getelementptr inbounds i8, ptr %0, i64 %2
  %8 = getelementptr inbounds i8, ptr %7, i64 %6
  %9 = tail call ptr @BLI_strcasestr(ptr noundef nonnull %8, ptr noundef nonnull @.str.54) #21
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %1, %4
  %13 = phi i8 [ %11, %4 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: optsize
declare zeroext i8 @BLI_testextensie(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_testextensie_n(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_testextensie_array(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @IMB_isanim(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_cleanup_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_dir_contents(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @filelist_setfiletypes(ptr noundef %0) unnamed_addr #0 !PGOFuncName !148 {
  %2 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.FileList, ptr %0, i64 0, i32 9
  br label %9

9:                                                ; preds = %5, %28
  %10 = phi i32 [ 0, %5 ], [ %29, %28 ]
  %11 = phi ptr [ %6, %5 ], [ %30, %28 ]
  %12 = getelementptr inbounds %struct.direntry, ptr %11, i64 0, i32 3, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !149
  store i32 %13, ptr %11, align 8, !tbaa !81
  %14 = and i32 %13, 61440
  %15 = icmp eq i32 %14, 16384
  br i1 %15, label %28, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.direntry, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = tail call fastcc i32 @file_extension_type(ptr noundef nonnull %7, ptr noundef %18) #23, !range !89
  %20 = getelementptr inbounds %struct.direntry, ptr %11, i64 0, i32 4
  store i32 %19, ptr %20, align 8, !tbaa !80
  %21 = load i8, ptr %8, align 4, !tbaa !82
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %17, align 8, !tbaa !66
  %25 = tail call zeroext i8 @BLI_testextensie_glob(ptr noundef %24, ptr noundef nonnull %8) #21
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 16384, ptr %20, align 8, !tbaa !80
  br label %28

28:                                               ; preds = %16, %23, %27, %9
  %29 = add nuw nsw i32 %10, 1
  %30 = getelementptr inbounds %struct.direntry, ptr %11, i64 1
  %31 = load i32, ptr %2, align 8, !tbaa !41
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %9, label %33, !llvm.loop !150

33:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @file_extension_type(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !151 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #24
  call void @BLI_join_dirfile(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef %0, ptr noundef %1) #21
  %4 = call fastcc i32 @path_extension_type(ptr noundef nonnull %3) #23, !range !89
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #24
  ret i32 %4
}

; Function Attrs: optsize
declare zeroext i8 @BLI_testextensie_glob(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @compare_is_directory(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !152 {
  %2 = load i32, ptr %0, align 8, !tbaa !81
  %3 = and i32 %2, 61440
  %4 = icmp eq i32 %3, 16384
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !80
  %8 = and i32 %7, 12
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi i8 [ %10, %5 ], [ 0, %1 ]
  ret i8 %12
}

; Function Attrs: optsize
declare i32 @BLI_natstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_last_slash(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_idcode_from_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @thumbnail_joblist_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !153 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1, %14
  %5 = phi ptr [ %15, %14 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.FileImage, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.FileImage, ptr %5, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !144
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @IMB_freeImBuf(ptr noundef nonnull %7) #21
  br label %14

14:                                               ; preds = %4, %9, %13
  %15 = load ptr, ptr %5, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !llvm.loop !154

17:                                               ; preds = %14, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_thumb_manage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind optsize willreturn memory(read) }
attributes #23 = { optsize }
attributes #24 = { nounwind }
attributes #25 = { nounwind optsize allocsize(0) }

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
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!35, !36, i64 8}
!48 = !{!36, !36, i64 0}
!49 = !{!35, !39, i64 20}
!50 = !{!39, !39, i64 0}
!51 = distinct !{!51, !46}
!52 = distinct !{!52, !46}
!53 = !{!54, !36, i64 8}
!54 = !{!"ListBase", !36, i64 0, !36, i64 8}
!55 = !{!56, !36, i64 16}
!56 = !{!"FolderList", !36, i64 0, !36, i64 8, !36, i64 16}
!57 = !{!58, !36, i64 64}
!58 = !{!"SpaceFile", !36, i64 0, !36, i64 8, !54, i64 16, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102}
!59 = !{!58, !36, i64 56}
!60 = !{!58, !36, i64 40}
!61 = distinct !{!61, !46}
!62 = distinct !{!62, !46}
!63 = !{!35, !36, i64 1144}
!64 = !{!"filelist.c:filelist_read_main"}
!65 = !{!"filelist.c:is_filtered_main"}
!66 = !{!67, !36, i64 8}
!67 = !{!"direntry", !39, i64 0, !36, i64 8, !36, i64 16, !68, i64 24, !39, i64 168, !37, i64 172, !37, i64 188, !37, i64 192, !37, i64 196, !37, i64 200, !37, i64 216, !37, i64 224, !37, i64 240, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!68 = !{!"stat", !69, i64 0, !69, i64 8, !69, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !70, i64 72, !70, i64 88, !70, i64 104, !37, i64 120}
!69 = !{!"long", !37, i64 0}
!70 = !{!"timespec", !69, i64 0, !69, i64 8}
!71 = !{i8 0, i8 2}
!72 = !{!"filelist.c:filelist_read_library"}
!73 = !{!74, !36, i64 0}
!74 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !54, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!75 = !{!35, !36, i64 1128}
!76 = distinct !{!76, !46}
!77 = !{!"filelist.c:is_filtered_lib"}
!78 = !{!"filelist.c:filelist_read_dir"}
!79 = !{!"filelist.c:is_filtered_file"}
!80 = !{!67, !39, i64 168}
!81 = !{!67, !39, i64 0}
!82 = !{!37, !37, i64 0}
!83 = !{!35, !40, i64 1048}
!84 = !{!35, !40, i64 1050}
!85 = !{!35, !40, i64 1124}
!86 = !{!67, !36, i64 272}
!87 = distinct !{!87, !46}
!88 = distinct !{!88, !46}
!89 = !{i32 0, i32 32769}
!90 = !{!"filelist.c:path_extension_type"}
!91 = !{!74, !37, i64 2104}
!92 = !{!67, !39, i64 280}
!93 = !{!94, !39, i64 0}
!94 = !{!"FileSelection", !39, i64 0, !39, i64 4}
!95 = !{!94, !39, i64 4}
!96 = distinct !{!96, !46}
!97 = !{!"filelist.c:compare_name"}
!98 = !{!"filelist.c:compare_date"}
!99 = !{!67, !69, i64 112}
!100 = !{!"filelist.c:compare_size"}
!101 = !{!67, !69, i64 72}
!102 = !{!"filelist.c:compare_extension"}
!103 = !{!104, !36, i64 8}
!104 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!105 = !{!104, !36, i64 0}
!106 = distinct !{!106, !46}
!107 = !{!108, !36, i64 40}
!108 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !109, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !110, i64 2436, !111, i64 2456}
!109 = !{!"float", !37, i64 0}
!110 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!111 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!112 = distinct !{!112, !46}
!113 = !{!"filelist.c:groupname_to_code"}
!114 = !{!35, !40, i64 1136}
!115 = distinct !{!115, !46}
!116 = !{!54, !36, i64 0}
!117 = !{!118, !36, i64 0}
!118 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!119 = distinct !{!119, !46}
!120 = !{!118, !36, i64 24}
!121 = !{!67, !39, i64 264}
!122 = !{!67, !36, i64 256}
!123 = !{!118, !40, i64 98}
!124 = !{!118, !39, i64 100}
!125 = distinct !{!125, !46}
!126 = !{!127, !36, i64 32}
!127 = !{!"ThumbnailJob", !54, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !128, i64 40}
!128 = !{!"ReportList", !54, i64 0, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32}
!129 = !{!67, !36, i64 16}
!130 = !{!131, !39, i64 1044}
!131 = !{!"FileImage", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1044, !40, i64 1048, !36, i64 1056}
!132 = !{!131, !39, i64 1040}
!133 = distinct !{!133, !46}
!134 = !{!"filelist.c:thumbnails_free"}
!135 = !{!"filelist.c:thumbnails_startjob"}
!136 = !{!127, !36, i64 0}
!137 = !{!127, !36, i64 16}
!138 = !{!127, !36, i64 24}
!139 = !{!40, !40, i64 0}
!140 = !{!131, !36, i64 1056}
!141 = !{!131, !36, i64 0}
!142 = distinct !{!142, !46}
!143 = !{!"filelist.c:thumbnails_update"}
!144 = !{!131, !40, i64 1048}
!145 = distinct !{!145, !46}
!146 = !{!"filelist.c:is_hidden_file"}
!147 = !{!"filelist.c:file_is_blend_backup"}
!148 = !{!"filelist.c:filelist_setfiletypes"}
!149 = !{!67, !39, i64 48}
!150 = distinct !{!150, !46}
!151 = !{!"filelist.c:file_extension_type"}
!152 = !{!"filelist.c:compare_is_directory"}
!153 = !{!"filelist.c:thumbnail_joblist_free"}
!154 = distinct !{!154, !46}
