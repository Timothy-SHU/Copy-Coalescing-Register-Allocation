; ModuleID = 'blender/source/blender/blenloader/intern/readblenentry.c'
source_filename = "blender/source/blender/blenloader/intern/readblenentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FileData = type { %struct.ListBase, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, [1024 x i8], i8, i32, %struct.z_stream_s, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.SDNA = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, i32 }
%struct.BHead = type { i32, i32, ptr, i32, i32 }
%struct.PreviewImage = type { [2 x i32], [2 x i32], [2 x i16], [2 x i16], [2 x ptr], [2 x ptr] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.BlendFileData = type { ptr, ptr, i32, i32, i32, i32, [1024 x i8], ptr, ptr, i32 }

@.str = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"['%.4s', '%s', %d, %ld ],\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"newpreview\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"PreviewImage\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"prvrect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"linkable_groups gh\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLO_blendhandle_from_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @blo_openblenderfile(ptr noundef %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @blo_openblenderfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLO_blendhandle_from_memory(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @blo_openblendermemory(ptr noundef %0, i32 noundef %1, ptr noundef null) #9
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @blo_openblendermemory(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLO_blendhandle_print_sizes(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %1)
  %5 = tail call ptr @blo_firstbhead(ptr noundef %0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %9 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %10 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  br label %11

11:                                               ; preds = %7, %15
  %12 = phi ptr [ %5, %7 ], [ %53, %15 ]
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 1111772741
  br i1 %14, label %55, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %8, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.SDNA, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.BHead, ptr %12, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !47
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.SDNA, ptr %16, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  %26 = load i16, ptr %23, align 2, !tbaa !50
  %27 = sext i16 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %30 = lshr i32 %13, 24
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %3, align 4, !tbaa !52
  %32 = load i32, ptr %12, align 8, !tbaa !34
  %33 = lshr i32 %32, 16
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %9, align 1, !tbaa !52
  %35 = load i32, ptr %12, align 8, !tbaa !34
  %36 = lshr i32 %35, 8
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %10, align 2, !tbaa !52
  %38 = load i32, ptr %12, align 8, !tbaa !34
  %39 = trunc i32 %38 to i8
  %40 = insertelement <4 x i8> poison, i8 %31, i64 0
  %41 = insertelement <4 x i8> %40, i8 %34, i64 1
  %42 = insertelement <4 x i8> %41, i8 %37, i64 2
  %43 = insertelement <4 x i8> %42, i8 %39, i64 3
  %44 = icmp eq <4 x i8> %43, zeroinitializer
  %45 = select <4 x i1> %44, <4 x i8> <i8 32, i8 32, i8 32, i8 32>, <4 x i8> %43
  store <4 x i8> %45, ptr %3, align 4, !tbaa !52
  %46 = getelementptr inbounds %struct.BHead, ptr %12, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !53
  %48 = getelementptr inbounds %struct.BHead, ptr %12, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !54
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, 24
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, ptr noundef %29, i32 noundef %47, i64 noundef %51) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %53 = call ptr @blo_nextbhead(ptr noundef %0, ptr noundef nonnull %12) #9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %11, !llvm.loop !55

55:                                               ; preds = %15, %11, %2
  %56 = call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %1)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @blo_firstbhead(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @blo_nextbhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLO_blendhandle_get_datablock_names(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store ptr null, ptr %4, align 8, !tbaa !48
  %5 = tail call ptr @blo_firstbhead(ptr noundef %0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3, %19
  %8 = phi ptr [ %21, %19 ], [ %5, %3 ]
  %9 = phi i32 [ %20, %19 ], [ 0, %3 ]
  %10 = load i32, ptr %8, align 8, !tbaa !34
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = call ptr @bhead_id_name(ptr noundef %0, ptr noundef nonnull %8) #9
  %14 = getelementptr inbounds i8, ptr %13, i64 2
  %15 = call noalias ptr @strdup(ptr noundef nonnull %14) #9
  call void @BLI_linklist_prepend(ptr noundef nonnull %4, ptr noundef %15) #9
  %16 = add nsw i32 %9, 1
  br label %19

17:                                               ; preds = %7
  %18 = icmp eq i32 %10, 1111772741
  br i1 %18, label %23, label %19

19:                                               ; preds = %12, %17
  %20 = phi i32 [ %16, %12 ], [ %9, %17 ]
  %21 = call ptr @blo_nextbhead(ptr noundef %0, ptr noundef nonnull %8) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %7, !llvm.loop !57

23:                                               ; preds = %17, %19
  %24 = phi i32 [ %20, %19 ], [ %9, %17 ]
  %25 = load ptr, ptr %4, align 8, !tbaa !48
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi ptr [ null, %3 ], [ %25, %23 ]
  %28 = phi i32 [ 0, %3 ], [ %24, %23 ]
  store i32 %28, ptr %2, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @bhead_id_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLO_blendhandle_get_previews(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store ptr null, ptr %4, align 8, !tbaa !48
  %5 = tail call ptr @blo_firstbhead(ptr noundef %0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %94, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  br label %9

9:                                                ; preds = %7, %84
  %10 = phi ptr [ %5, %7 ], [ %89, %84 ]
  %11 = phi i32 [ 0, %7 ], [ %87, %84 ]
  %12 = phi i32 [ 0, %7 ], [ %86, %84 ]
  %13 = phi ptr [ null, %7 ], [ %85, %84 ]
  %14 = load i32, ptr %10, align 8, !tbaa !34
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = call ptr @bhead_id_name(ptr noundef %0, ptr noundef nonnull %10) #9
  %18 = load i16, ptr %17, align 2, !tbaa !50
  switch i16 %18, label %84 [
    i16 16717, label %19
    i16 17748, label %19
    i16 19785, label %19
    i16 20311, label %19
    i16 16716, label %19
  ]

19:                                               ; preds = %16, %16, %16, %16, %16
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %21 = call ptr %20(i64 noundef 56, ptr noundef nonnull @.str.3) #9
  call void @BLI_linklist_prepend(ptr noundef nonnull %4, ptr noundef %21) #9
  %22 = add nsw i32 %12, 1
  br label %84

23:                                               ; preds = %9
  switch i32 %14, label %84 [
    i32 1096040772, label %24
    i32 1111772741, label %91
  ]

24:                                               ; preds = %23
  %25 = icmp eq i32 %11, 0
  br i1 %25, label %84, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.BHead, ptr %10, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !47
  %29 = load ptr, ptr %8, align 8, !tbaa !40
  %30 = call i32 @DNA_struct_find_nr(ptr noundef %29, ptr noundef nonnull @.str.4) #9
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %84

32:                                               ; preds = %26
  %33 = call ptr @BLO_library_read_struct(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull @.str.4) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %84, label %35

35:                                               ; preds = %32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %33, i64 56, i1 false)
  %36 = getelementptr inbounds %struct.PreviewImage, ptr %33, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !48
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %41 = load i32, ptr %13, align 8, !tbaa !58
  %42 = getelementptr inbounds %struct.PreviewImage, ptr %13, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !58
  %44 = mul i32 %43, %41
  %45 = zext i32 %44 to i64
  %46 = shl nuw nsw i64 %45, 2
  %47 = call ptr %40(i64 noundef %46, ptr noundef nonnull @.str.5) #9
  %48 = getelementptr inbounds %struct.PreviewImage, ptr %13, i64 0, i32 4
  store ptr %47, ptr %48, align 8, !tbaa !48
  %49 = call ptr @blo_nextbhead(ptr noundef nonnull %0, ptr noundef nonnull %10) #9
  %50 = getelementptr inbounds %struct.BHead, ptr %49, i64 1
  %51 = load ptr, ptr %48, align 8, !tbaa !48
  %52 = getelementptr inbounds %struct.BHead, ptr %49, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !54
  %54 = sext i32 %53 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %51, ptr nonnull align 4 %50, i64 %54, i1 false)
  br label %57

55:                                               ; preds = %35
  %56 = getelementptr inbounds %struct.PreviewImage, ptr %13, i64 0, i32 4
  store ptr null, ptr %56, align 8, !tbaa !48
  br label %57

57:                                               ; preds = %55, %39
  %58 = phi ptr [ %49, %39 ], [ %10, %55 ]
  %59 = getelementptr inbounds %struct.PreviewImage, ptr %33, i64 0, i32 4, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  %61 = icmp eq ptr %60, null
  br i1 %61, label %79, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %64 = getelementptr inbounds [2 x i32], ptr %13, i64 0, i64 1
  %65 = load i32, ptr %64, align 4, !tbaa !58
  %66 = getelementptr inbounds %struct.PreviewImage, ptr %13, i64 0, i32 1, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !58
  %68 = mul i32 %67, %65
  %69 = zext i32 %68 to i64
  %70 = shl nuw nsw i64 %69, 2
  %71 = call ptr %63(i64 noundef %70, ptr noundef nonnull @.str.5) #9
  %72 = getelementptr inbounds %struct.PreviewImage, ptr %13, i64 0, i32 4, i64 1
  store ptr %71, ptr %72, align 8, !tbaa !48
  %73 = call ptr @blo_nextbhead(ptr noundef nonnull %0, ptr noundef nonnull %58) #9
  %74 = getelementptr inbounds %struct.BHead, ptr %73, i64 1
  %75 = load ptr, ptr %72, align 8, !tbaa !48
  %76 = getelementptr inbounds %struct.BHead, ptr %73, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !54
  %78 = sext i32 %77 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %75, ptr nonnull align 4 %74, i64 %78, i1 false)
  br label %81

79:                                               ; preds = %57
  %80 = getelementptr inbounds %struct.PreviewImage, ptr %13, i64 0, i32 4, i64 1
  store ptr null, ptr %80, align 8, !tbaa !48
  br label %81

81:                                               ; preds = %79, %62
  %82 = phi ptr [ %73, %62 ], [ %58, %79 ]
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %83(ptr noundef nonnull %33) #9
  br label %84

84:                                               ; preds = %23, %19, %16, %24, %32, %81, %26
  %85 = phi ptr [ %13, %81 ], [ %13, %32 ], [ %13, %26 ], [ %13, %24 ], [ %13, %16 ], [ %21, %19 ], [ null, %23 ]
  %86 = phi i32 [ %12, %81 ], [ %12, %32 ], [ %12, %26 ], [ %12, %24 ], [ %12, %16 ], [ %22, %19 ], [ %12, %23 ]
  %87 = phi i32 [ 1, %81 ], [ 1, %32 ], [ 1, %26 ], [ 0, %24 ], [ %11, %16 ], [ 1, %19 ], [ 0, %23 ]
  %88 = phi ptr [ %82, %81 ], [ %10, %32 ], [ %10, %26 ], [ %10, %24 ], [ %10, %16 ], [ %10, %19 ], [ %10, %23 ]
  %89 = call ptr @blo_nextbhead(ptr noundef %0, ptr noundef nonnull %88) #9
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %9, !llvm.loop !59

91:                                               ; preds = %23, %84
  %92 = phi i32 [ %86, %84 ], [ %12, %23 ]
  %93 = load ptr, ptr %4, align 8, !tbaa !48
  br label %94

94:                                               ; preds = %91, %3
  %95 = phi ptr [ null, %3 ], [ %93, %91 ]
  %96 = phi i32 [ 0, %3 ], [ %92, %91 ]
  store i32 %96, ptr %2, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret ptr %95
}

; Function Attrs: optsize
declare i32 @DNA_struct_find_nr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLO_library_read_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLO_blendhandle_get_linkable_groups(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @.str.6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store ptr null, ptr %2, align 8, !tbaa !48
  %4 = tail call ptr @blo_firstbhead(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %1, %24
  %7 = phi ptr [ %25, %24 ], [ %4, %1 ]
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 1111772741
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = call zeroext i8 @BKE_idcode_is_valid(i32 noundef %8) #9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %7, align 8, !tbaa !34
  %15 = call zeroext i8 @BKE_idcode_is_linkable(i32 noundef %14) #9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %7, align 8, !tbaa !34
  %19 = call ptr @BKE_idcode_to_name(i32 noundef %18) #9
  %20 = call zeroext i8 @BLI_gset_haskey(ptr noundef %3, ptr noundef %19) #9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call noalias ptr @strdup(ptr noundef %19) #9
  call void @BLI_linklist_prepend(ptr noundef nonnull %2, ptr noundef %23) #9
  call void @BLI_gset_insert(ptr noundef %3, ptr noundef %19) #9
  br label %24

24:                                               ; preds = %17, %22, %13, %10
  %25 = call ptr @blo_nextbhead(ptr noundef %0, ptr noundef nonnull %7) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %6, !llvm.loop !60

27:                                               ; preds = %24, %6, %1
  call void @BLI_gset_free(ptr noundef %3, ptr noundef null) #9
  %28 = load ptr, ptr %2, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret ptr %28
}

; Function Attrs: optsize
declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_idcode_is_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_idcode_is_linkable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_idcode_to_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLO_blendhandle_close(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @blo_freefiledata(ptr noundef %0) #9
  ret void
}

; Function Attrs: optsize
declare void @blo_freefiledata(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLO_read_from_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @blo_openblenderfile(ptr noundef %0, ptr noundef %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.FileData, ptr %3, i64 0, i32 31
  store ptr %1, ptr %6, align 8, !tbaa !61
  %7 = tail call ptr @blo_read_file_internal(ptr noundef nonnull %3, ptr noundef %0) #9
  tail call void @blo_freefiledata(ptr noundef nonnull %3) #9
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @blo_read_file_internal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLO_read_from_memory(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @blo_openblendermemory(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FileData, ptr %4, i64 0, i32 31
  store ptr %2, ptr %7, align 8, !tbaa !61
  %8 = tail call ptr @blo_read_file_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str.7) #9
  tail call void @blo_freefiledata(ptr noundef nonnull %4) #9
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLO_read_from_memfile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %6 = tail call ptr @blo_openblendermemfile(ptr noundef %2, ptr noundef %3) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.FileData, ptr %6, i64 0, i32 31
  store ptr %3, ptr %9, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.FileData, ptr %6, i64 0, i32 10
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %1, i64 noundef 1024) #9
  tail call void @blo_clear_proxy_pointers_from_lib(ptr noundef %0) #9
  call void @blo_split_main(ptr noundef nonnull %5, ptr noundef %0) #9
  call void @blo_add_library_pointer_map(ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  call void @blo_make_image_pointer_map(ptr noundef nonnull %6, ptr noundef %0) #9
  call void @blo_make_movieclip_pointer_map(ptr noundef nonnull %6, ptr noundef %0) #9
  %12 = call ptr @blo_read_file_internal(ptr noundef nonnull %6, ptr noundef %1) #9
  call void @blo_end_image_pointer_map(ptr noundef nonnull %6, ptr noundef %0) #9
  call void @blo_end_movieclip_pointer_map(ptr noundef nonnull %6, ptr noundef %0) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %5, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %12, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.Main, ptr %20, i64 0, i32 12
  %22 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !66
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %22) #11
  call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef %0) #9
  %23 = load ptr, ptr %12, align 8, !tbaa !64
  call void @BLI_addhead(ptr noundef nonnull %5, ptr noundef %23) #9
  br label %24

24:                                               ; preds = %19, %14, %8
  call void @blo_join_main(ptr noundef nonnull %5) #9
  call void @blo_freefiledata(ptr noundef nonnull %6) #9
  br label %25

25:                                               ; preds = %24, %4
  %26 = phi ptr [ %12, %24 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @blo_openblendermemfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @blo_clear_proxy_pointers_from_lib(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @blo_split_main(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @blo_add_library_pointer_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @blo_make_image_pointer_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @blo_make_movieclip_pointer_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @blo_end_image_pointer_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @blo_end_movieclip_pointer_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !67 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @blo_join_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLO_blendfiledata_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @BKE_main_free(ptr noundef nonnull %2) #9
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.BlendFileData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %10(ptr noundef nonnull %7) #9
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %12(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare void @BKE_main_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

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
!35 = !{!"BHead", !36, i64 0, !36, i64 4, !39, i64 8, !36, i64 16, !36, i64 20}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!41, !39, i64 1216}
!41 = !{!"FileData", !42, i64 0, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !39, i64 32, !39, i64 40, !39, i64 48, !36, i64 56, !39, i64 64, !37, i64 72, !37, i64 1096, !36, i64 1100, !43, i64 1104, !39, i64 1216, !39, i64 1224, !39, i64 1232, !36, i64 1240, !36, i64 1244, !36, i64 1248, !36, i64 1252, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !36, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = !{!"z_stream_s", !39, i64 0, !36, i64 8, !44, i64 16, !39, i64 24, !36, i64 32, !44, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !44, i64 96, !44, i64 104}
!44 = !{!"long", !37, i64 0}
!45 = !{!46, !39, i64 56}
!46 = !{!"SDNA", !39, i64 0, !36, i64 8, !36, i64 12, !39, i64 16, !36, i64 24, !36, i64 28, !39, i64 32, !39, i64 40, !36, i64 48, !39, i64 56, !39, i64 64, !36, i64 72}
!47 = !{!35, !36, i64 16}
!48 = !{!39, !39, i64 0}
!49 = !{!46, !39, i64 32}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !37, i64 0}
!52 = !{!37, !37, i64 0}
!53 = !{!35, !36, i64 20}
!54 = !{!35, !36, i64 4}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = distinct !{!57, !56}
!58 = !{!36, !36, i64 0}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !56}
!61 = !{!41, !39, i64 1336}
!62 = !{!42, !39, i64 0}
!63 = !{!42, !39, i64 8}
!64 = !{!65, !39, i64 0}
!65 = !{!"BlendFileData", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !37, i64 32, !39, i64 1056, !39, i64 1064, !36, i64 1072}
!66 = !{i64 0, i64 8, !48, i64 8, i64 8, !48}
!67 = !{!"readblenentry.c:BLI_listbase_clear"}
!68 = !{!65, !39, i64 8}
