; ModuleID = 'blender/source/blender/blenkernel/intern/packedFile.c'
source_filename = "blender/source/blender/blenkernel/intern/packedFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.PackedFile = type { i32, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.VFont = type { %struct.ID, [1024 x i8], ptr, ptr, ptr }
%struct.bSound = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, float, float, float, float, float, float, i32, i32, ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"PackedFile\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Unable to pack file, source path '%s' not found\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"packFile\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Image '%s' skipped, movies and image sequences not supported\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"No new files have been packed\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Packed %d files\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"%s.%03d_\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Error creating file '%s'\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Error writing file '%s'\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Saved packed file to: %s\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Error restoring temp file (check files '%s' '%s')\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Error deleting '%s' (ignored)\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Use existing file (instead of packed): %s\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"unpackFile: unknown return_value %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"//fonts/%s\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"//sounds/%s\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"//textures/%s\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Unpacked .blend library: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Cannot pack absolute file: '%s'\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Cannot unpack individual Library file, '%s'\00", align 1
@str = private unnamed_addr constant [46 x i8] c"freePackedFile: Trying to free a NULL pointer\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @seekPackedFile(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.PackedFile, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !34
  switch i32 %2, label %16 [
    i32 1, label %8
    i32 2, label %10
    i32 0, label %13
  ]

8:                                                ; preds = %5
  %9 = add nsw i32 %7, %1
  br label %13

10:                                               ; preds = %5
  %11 = load i32, ptr %0, align 8, !tbaa !40
  %12 = add nsw i32 %11, %1
  br label %13

13:                                               ; preds = %5, %10, %8
  %14 = phi i32 [ %12, %10 ], [ %9, %8 ], [ %1, %5 ]
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %5, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %5 ]
  %18 = phi i32 [ %7, %13 ], [ -1, %5 ]
  %19 = load i32, ptr %0, align 8, !tbaa !40
  %20 = tail call i32 @llvm.smin.i32(i32 %17, i32 %19)
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %7, %13 ], [ %18, %16 ]
  %23 = phi i32 [ 0, %13 ], [ %20, %16 ]
  store i32 %23, ptr %6, align 4, !tbaa !34
  br label %24

24:                                               ; preds = %21, %3
  %25 = phi i32 [ %22, %21 ], [ -1, %3 ]
  ret i32 %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @rewindPackedFile(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @seekPackedFile(ptr noundef %0, i32 noundef 0, i32 noundef 0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @readPackedFile(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp ne ptr %0, null
  %5 = icmp sgt i32 %2, -1
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PackedFile, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = add nsw i32 %11, %2
  %13 = load i32, ptr %0, align 8, !tbaa !40
  %14 = icmp sgt i32 %12, %13
  %15 = sub nsw i32 %13, %11
  %16 = select i1 %14, i32 %15, i32 %2
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.PackedFile, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = sext i32 %11 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = zext nneg i32 %16 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %22, i64 %23, i1 false)
  %24 = load i32, ptr %10, align 4, !tbaa !34
  br label %25

25:                                               ; preds = %9, %18
  %26 = phi i32 [ %24, %18 ], [ %11, %9 ]
  %27 = phi i32 [ %16, %18 ], [ 0, %9 ]
  %28 = add nsw i32 %26, %27
  store i32 %28, ptr %10, align 4, !tbaa !34
  br label %29

29:                                               ; preds = %3, %25
  %30 = phi i32 [ %27, %25 ], [ -1, %3 ]
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @countPackedFiles(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i32
  %12 = add nuw nsw i32 %7, %11
  %13 = load ptr, ptr %6, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !49

15:                                               ; preds = %5, %1
  %16 = phi i32 [ 0, %1 ], [ %12, %5 ]
  %17 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 28
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %15, %20
  %21 = phi ptr [ %28, %20 ], [ %18, %15 ]
  %22 = phi i32 [ %27, %20 ], [ %16, %15 ]
  %23 = getelementptr inbounds %struct.VFont, ptr %21, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = icmp ne ptr %24, null
  %26 = zext i1 %25 to i32
  %27 = add nuw nsw i32 %22, %26
  %28 = load ptr, ptr %21, align 8, !tbaa !42
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !53

30:                                               ; preds = %20, %15
  %31 = phi i32 [ %16, %15 ], [ %27, %20 ]
  %32 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 31
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %30, %35
  %36 = phi ptr [ %43, %35 ], [ %33, %30 ]
  %37 = phi i32 [ %42, %35 ], [ %31, %30 ]
  %38 = getelementptr inbounds %struct.bSound, ptr %36, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = icmp ne ptr %39, null
  %41 = zext i1 %40 to i32
  %42 = add nuw nsw i32 %37, %41
  %43 = load ptr, ptr %36, align 8, !tbaa !42
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %35, !llvm.loop !56

45:                                               ; preds = %35, %30
  %46 = phi i32 [ %31, %30 ], [ %42, %35 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @freePackedFile(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.PackedFile, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  tail call void %4(ptr noundef %6) #14
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %7(ptr noundef nonnull %0) #14
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %10

10:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @dupPackedFile(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %3 = tail call ptr %2(ptr noundef %0) #14
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.PackedFile, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = tail call ptr %4(ptr noundef %6) #14
  %8 = getelementptr inbounds %struct.PackedFile, ptr %3, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !41
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @newPackedFileMemory(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %4 = tail call ptr %3(i64 noundef 16, ptr noundef nonnull @.str.1) #14
  %5 = getelementptr inbounds %struct.PackedFile, ptr %4, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !41
  store i32 %1, ptr %4, align 8, !tbaa !40
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @newPackedFile(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #15
  %5 = load i8, ptr %1, align 1, !tbaa !57
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef 1024) #14
  %9 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef %2) #14
  %10 = call i32 @BLI_open(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0) #14
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #14
  br label %38

13:                                               ; preds = %7
  %14 = call i64 @BLI_file_descriptor_size(i32 noundef %10) #14
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  br i1 %16, label %18, label %22

18:                                               ; preds = %13
  %19 = call ptr %17(i64 noundef 1, ptr noundef nonnull @.str.3) #14
  %20 = shl i64 %14, 32
  %21 = ashr exact i64 %20, 32
  br label %26

22:                                               ; preds = %13
  %23 = shl i64 %14, 32
  %24 = ashr exact i64 %23, 32
  %25 = call ptr %17(i64 noundef %24, ptr noundef nonnull @.str.3) #14
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i64 [ %24, %22 ], [ %21, %18 ]
  %28 = phi ptr [ %25, %22 ], [ %19, %18 ]
  %29 = call i64 @read(i32 noundef %10, ptr noundef %28, i64 noundef %27) #14
  %30 = icmp eq i64 %29, %27
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call ptr @newPackedFileMemory(ptr noundef %28, i32 noundef %15) #13
  br label %35

33:                                               ; preds = %26
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %34(ptr noundef %28) #14
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi ptr [ %32, %31 ], [ null, %33 ]
  %37 = call i32 @close(i32 noundef %10) #14
  br label %38

38:                                               ; preds = %12, %35, %3
  %39 = phi ptr [ null, %3 ], [ null, %12 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #15
  ret ptr %39
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @BLI_file_descriptor_size(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @packAll(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %31
  %9 = phi ptr [ %4, %6 ], [ %33, %31 ]
  %10 = phi i32 [ 0, %6 ], [ %32, %31 ]
  %11 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 11
  %20 = load i16, ptr %19, align 8, !tbaa !59
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Image, ptr %9, i64 0, i32 1
  %24 = tail call ptr @newPackedFile(ptr noundef %1, ptr noundef nonnull %23, ptr noundef nonnull %7) #13
  store ptr %24, ptr %11, align 8, !tbaa !43
  %25 = add nsw i32 %10, 1
  br label %31

26:                                               ; preds = %18
  %27 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %9) #14
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.4, ptr noundef nonnull %30) #14
  br label %31

31:                                               ; preds = %8, %14, %26, %29, %22
  %32 = phi i32 [ %25, %22 ], [ %10, %29 ], [ %10, %26 ], [ %10, %14 ], [ %10, %8 ]
  %33 = load ptr, ptr %9, align 8, !tbaa !42
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %8, !llvm.loop !60

35:                                               ; preds = %31, %2
  %36 = phi i32 [ 0, %2 ], [ %32, %31 ]
  %37 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 28
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  %39 = icmp eq ptr %38, null
  br i1 %39, label %63, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  br label %42

42:                                               ; preds = %40, %59
  %43 = phi ptr [ %38, %40 ], [ %61, %59 ]
  %44 = phi i32 [ %36, %40 ], [ %60, %59 ]
  %45 = getelementptr inbounds %struct.VFont, ptr %43, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !61
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = tail call zeroext i8 @BKE_vfont_is_builtin(ptr noundef nonnull %43) #14
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.VFont, ptr %43, i64 0, i32 1
  %57 = tail call ptr @newPackedFile(ptr noundef %1, ptr noundef nonnull %56, ptr noundef nonnull %41) #13
  store ptr %57, ptr %45, align 8, !tbaa !51
  %58 = add nsw i32 %44, 1
  br label %59

59:                                               ; preds = %42, %48, %52, %55
  %60 = phi i32 [ %58, %55 ], [ %44, %52 ], [ %44, %48 ], [ %44, %42 ]
  %61 = load ptr, ptr %43, align 8, !tbaa !42
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %42, !llvm.loop !62

63:                                               ; preds = %59, %35
  %64 = phi i32 [ %36, %35 ], [ %60, %59 ]
  %65 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 31
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  %67 = icmp eq ptr %66, null
  br i1 %67, label %88, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  br label %70

70:                                               ; preds = %68, %84
  %71 = phi ptr [ %66, %68 ], [ %86, %84 ]
  %72 = phi i32 [ %64, %68 ], [ %85, %84 ]
  %73 = getelementptr inbounds %struct.bSound, ptr %71, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !54
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.ID, ptr %71, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !63
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.bSound, ptr %71, i64 0, i32 1
  %82 = tail call ptr @newPackedFile(ptr noundef %1, ptr noundef nonnull %81, ptr noundef nonnull %69) #13
  store ptr %82, ptr %73, align 8, !tbaa !54
  %83 = add nsw i32 %72, 1
  br label %84

84:                                               ; preds = %70, %76, %80
  %85 = phi i32 [ %83, %80 ], [ %72, %76 ], [ %72, %70 ]
  %86 = load ptr, ptr %71, align 8, !tbaa !42
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %70, !llvm.loop !64

88:                                               ; preds = %84, %63
  %89 = phi i32 [ %64, %63 ], [ %85, %84 ]
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  tail call void @BKE_report(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.5) #14
  br label %93

92:                                               ; preds = %88
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %89) #14
  br label %93

93:                                               ; preds = %92, %91
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @BKE_vfont_is_builtin(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @writePackedFile(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 %3) local_unnamed_addr #5 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #15
  %7 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 1024) #14
  %8 = load ptr, ptr @G, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 2
  %10 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %9) #14
  %11 = call i32 @BLI_exists(ptr noundef nonnull %5) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i32 %17, 1
  %15 = icmp eq i32 %14, 1000
  br i1 %15, label %24, label %16, !llvm.loop !68

16:                                               ; preds = %4, %13
  %17 = phi i32 [ %14, %13 ], [ 1, %4 ]
  %18 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 1024, ptr noundef nonnull @.str.7, ptr noundef nonnull %5, i32 noundef %17) #14
  %19 = call i32 @BLI_exists(ptr noundef nonnull %6) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %13

21:                                               ; preds = %16
  %22 = call i32 @BLI_copy(ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %13, %21, %4
  %25 = phi i1 [ true, %4 ], [ %23, %21 ], [ true, %13 ]
  call void @BLI_make_existing_file(ptr noundef nonnull %5) #14
  %26 = call i32 @BLI_open(ptr noundef nonnull %5, i32 noundef 577, i32 noundef 438) #14
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.PackedFile, ptr %2, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  %31 = load i32, ptr %2, align 8, !tbaa !40
  %32 = sext i32 %31 to i64
  %33 = call i64 @write(i32 noundef %26, ptr noundef %30, i64 noundef %32) #14
  %34 = load i32, ptr %2, align 8, !tbaa !40
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull %5) #14
  %38 = call i32 @close(i32 noundef %26) #14
  br i1 %25, label %50, label %46

39:                                               ; preds = %28
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #14
  %40 = call i32 @close(i32 noundef %26) #14
  br i1 %25, label %50, label %42

41:                                               ; preds = %24
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef nonnull %5) #14
  br i1 %25, label %50, label %42

42:                                               ; preds = %39, %41
  %43 = call i32 @BLI_rename(ptr noundef nonnull %6, ptr noundef nonnull %5) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef nonnull %6, ptr noundef nonnull %5) #14
  br label %50

46:                                               ; preds = %37
  %47 = call i32 @BLI_delete(ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef nonnull %6) #14
  br label %50

50:                                               ; preds = %39, %41, %45, %42, %49, %46, %37
  %51 = phi i32 [ 1, %41 ], [ 1, %45 ], [ 1, %42 ], [ 0, %49 ], [ 0, %46 ], [ 0, %37 ], [ 1, %39 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #15
  ret i32 %51
}

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @BLI_copy(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @BLI_rename(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @BLI_delete(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @checkPackedFile(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #15
  %6 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %0, i64 noundef 1024) #14
  %7 = load ptr, ptr @G, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 2
  %9 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %8) #14
  %10 = call i32 @BLI_stat(ptr noundef nonnull %5, ptr noundef nonnull %3) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !69
  %15 = load i32, ptr %1, align 8, !tbaa !40
  %16 = sext i32 %15 to i64
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = call i32 @BLI_open(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #14
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %46, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.PackedFile, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %1, align 8, !tbaa !40
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %29, label %43

25:                                               ; preds = %37
  %26 = add i32 %31, 4096
  %27 = load i32, ptr %1, align 8, !tbaa !40
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %43, !llvm.loop !73

29:                                               ; preds = %21, %25
  %30 = phi i32 [ %27, %25 ], [ %23, %21 ]
  %31 = phi i32 [ %26, %25 ], [ 0, %21 ]
  %32 = sub nsw i32 %30, %31
  %33 = call i32 @llvm.umin.i32(i32 %32, i32 4096)
  %34 = zext nneg i32 %33 to i64
  %35 = call i64 @read(i32 noundef %19, ptr noundef nonnull %4, i64 noundef %34) #14
  %36 = icmp eq i64 %35, %34
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load ptr, ptr %22, align 8, !tbaa !41
  %39 = sext i32 %31 to i64
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = call i32 @bcmp(ptr nonnull %4, ptr %40, i64 %34)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %25, label %43

43:                                               ; preds = %25, %29, %37, %21
  %44 = phi i32 [ 0, %21 ], [ 1, %37 ], [ 1, %29 ], [ 0, %25 ]
  %45 = call i32 @close(i32 noundef %19) #14
  br label %46

46:                                               ; preds = %18, %12, %2, %43
  %47 = phi i32 [ %44, %43 ], [ 2, %2 ], [ 1, %12 ], [ 2, %18 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #15
  ret i32 %47
}

; Function Attrs: optsize
declare i32 @BLI_stat(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @unpackFile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %5
  switch i32 %4, label %21 [
    i32 -1, label %28
    i32 7, label %28
    i32 8, label %23
    i32 5, label %8
    i32 4, label %11
    i32 6, label %14
    i32 3, label %18
  ]

8:                                                ; preds = %7
  %9 = tail call i32 @BLI_exists(ptr noundef %2) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8, %7
  %12 = tail call i32 @writePackedFile(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, i32 poison) #13, !range !74
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %28

14:                                               ; preds = %7
  %15 = tail call i32 @BLI_exists(ptr noundef %1) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef %1) #14
  br label %23

18:                                               ; preds = %14, %7
  %19 = tail call i32 @writePackedFile(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 poison) #13, !range !74
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %28

21:                                               ; preds = %7
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %4) #13
  br label %28

23:                                               ; preds = %18, %11, %7, %8, %17
  %24 = phi ptr [ %1, %17 ], [ %2, %8 ], [ %1, %7 ], [ %2, %11 ], [ %1, %18 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @BLI_strdup(ptr noundef nonnull %24) #14
  br label %28

28:                                               ; preds = %18, %11, %7, %7, %21, %23, %26, %5
  %29 = phi ptr [ %27, %26 ], [ null, %23 ], [ null, %5 ], [ null, %21 ], [ null, %7 ], [ null, %7 ], [ null, %11 ], [ null, %18 ]
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @unpackVFont(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #15
  %6 = icmp eq ptr %1, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 1
  call void @BLI_split_file_part(ptr noundef nonnull %8, ptr noundef nonnull %5, i64 noundef 256) #14
  %9 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull @.str.15, ptr noundef nonnull %5) #14
  %10 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = call ptr @unpackFile(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef %11, i32 noundef %2) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %10, align 8, !tbaa !51
  call void @freePackedFile(ptr noundef %15) #13
  store ptr null, ptr %10, align 8, !tbaa !51
  %16 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %12, i64 noundef 1024) #14
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %17(ptr noundef nonnull %12) #14
  br label %18

18:                                               ; preds = %7, %14, %3
  %19 = phi i32 [ 0, %14 ], [ 1, %7 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #15
  ret i32 %19
}

; Function Attrs: optsize
declare void @BLI_split_file_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @unpackSound(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = alloca [1792 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1792, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #15
  %7 = icmp eq ptr %2, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bSound, ptr %2, i64 0, i32 1
  call void @BLI_split_file_part(ptr noundef nonnull %9, ptr noundef nonnull %6, i64 noundef 1024) #14
  %10 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1792, ptr noundef nonnull @.str.16, ptr noundef nonnull %6) #14
  %11 = getelementptr inbounds %struct.bSound, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = call ptr @unpackFile(ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef %12, i32 noundef %3) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef nonnull %13, i64 noundef 1024) #14
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %17(ptr noundef nonnull %13) #14
  %18 = load ptr, ptr %11, align 8, !tbaa !54
  call void @freePackedFile(ptr noundef %18) #13
  store ptr null, ptr %11, align 8, !tbaa !54
  call void @sound_load(ptr noundef %0, ptr noundef nonnull %2) #14
  br label %19

19:                                               ; preds = %8, %15, %4
  %20 = phi i32 [ 0, %15 ], [ 1, %8 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 1792, ptr nonnull %5) #15
  ret i32 %20
}

; Function Attrs: optsize
declare void @sound_load(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @unpackImage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = alloca [1792 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1792, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #15
  %6 = icmp eq ptr %1, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 1
  %9 = load i8, ptr %8, align 8, !tbaa !57
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  call void @BLI_split_file_part(ptr noundef nonnull %8, ptr noundef nonnull %5, i64 noundef 1024) #14
  %12 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 1792, ptr noundef nonnull @.str.17, ptr noundef nonnull %5) #14
  %13 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = call ptr @unpackFile(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef %14, i32 noundef %2) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %13, align 8, !tbaa !43
  call void @freePackedFile(ptr noundef %18) #13
  store ptr null, ptr %13, align 8, !tbaa !43
  %19 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %15, i64 noundef 1024) #14
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %20(ptr noundef nonnull %15) #14
  call void @BKE_image_signal(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #14
  br label %21

21:                                               ; preds = %11, %17, %7, %3
  %22 = phi i32 [ 0, %17 ], [ 1, %11 ], [ 1, %7 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1792, ptr nonnull %4) #15
  ret i32 %22
}

; Function Attrs: optsize
declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @unpackLibraries(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2, %24
  %7 = phi ptr [ %26, %24 ], [ %4, %2 ]
  %8 = phi i32 [ %25, %24 ], [ 1, %2 ]
  %9 = getelementptr inbounds %struct.Library, ptr %7, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Library, ptr %7, i64 0, i32 3
  %14 = load i8, ptr %13, align 8, !tbaa !57
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Library, ptr %7, i64 0, i32 4
  %18 = tail call ptr @unpackFile(ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull %10, i32 noundef 3) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %18) #13
  %22 = load ptr, ptr %9, align 8, !tbaa !75
  tail call void @freePackedFile(ptr noundef %22) #13
  store ptr null, ptr %9, align 8, !tbaa !75
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %23(ptr noundef nonnull %18) #14
  br label %24

24:                                               ; preds = %6, %12, %20, %16
  %25 = phi i32 [ 0, %20 ], [ %8, %16 ], [ %8, %12 ], [ %8, %6 ]
  %26 = load ptr, ptr %7, align 8, !tbaa !42
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %6, !llvm.loop !77

28:                                               ; preds = %24, %2
  %29 = phi i32 [ 1, %2 ], [ %25, %24 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @packLibraries(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 12
  br label %4

4:                                                ; preds = %13, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %13 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load ptr, ptr %3, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  br label %18

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.Library, ptr %6, i64 0, i32 3
  %15 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef nonnull %14) #14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %4, !llvm.loop !78

17:                                               ; preds = %13
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef nonnull %14) #14
  br label %29

18:                                               ; preds = %11, %26
  %19 = phi ptr [ %9, %11 ], [ %27, %26 ]
  %20 = getelementptr inbounds %struct.Library, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.Library, ptr %19, i64 0, i32 3
  %25 = tail call ptr @newPackedFile(ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull %12) #13
  store ptr %25, ptr %20, align 8, !tbaa !75
  br label %26

26:                                               ; preds = %18, %23
  %27 = load ptr, ptr %19, align 8, !tbaa !42
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %18, !llvm.loop !79

29:                                               ; preds = %26, %8, %17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_path_is_rel(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unpackAll(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3, %14
  %8 = phi ptr [ %15, %14 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @unpackImage(ptr noundef %1, ptr noundef nonnull %8, i32 noundef %2) #13, !range !74
  br label %14

14:                                               ; preds = %7, %12
  %15 = load ptr, ptr %8, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !80

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 28
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17, %28
  %22 = phi ptr [ %29, %28 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.VFont, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @unpackVFont(ptr noundef %1, ptr noundef nonnull %22, i32 noundef %2) #13, !range !74
  br label %28

28:                                               ; preds = %21, %26
  %29 = load ptr, ptr %22, align 8, !tbaa !42
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %21, !llvm.loop !81

31:                                               ; preds = %28, %17
  %32 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 31
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %31, %42
  %36 = phi ptr [ %43, %42 ], [ %33, %31 ]
  %37 = getelementptr inbounds %struct.bSound, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @unpackSound(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %36, i32 noundef %2) #13, !range !74
  br label %42

42:                                               ; preds = %35, %40
  %43 = load ptr, ptr %36, align 8, !tbaa !42
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %35, !llvm.loop !82

45:                                               ; preds = %42, %31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_pack_check(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !83
  switch i16 %3, label %17 [
    i16 19785, label %4
    i16 18006, label %6
    i16 20307, label %8
    i16 18764, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 22
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 3
  br label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bSound, ptr %0, i64 0, i32 2
  br label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Library, ptr %0, i64 0, i32 6
  br label %12

12:                                               ; preds = %4, %6, %8, %10
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i8 [ 0, %1 ], [ %16, %12 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_unpack_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !83
  switch i16 %6, label %27 [
    i16 19785, label %7
    i16 18006, label %13
    i16 20307, label %19
    i16 18764, label %25
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @unpackImage(ptr noundef %2, ptr noundef nonnull %1, i32 noundef %3) #13, !range !74
  br label %27

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @unpackVFont(ptr noundef %2, ptr noundef nonnull %1, i32 noundef %3) #13, !range !74
  br label %27

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.bSound, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @unpackSound(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %1, i32 noundef %3) #13, !range !74
  br label %27

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.Library, ptr %1, i64 0, i32 3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef nonnull %26) #14
  br label %27

27:                                               ; preds = %19, %23, %13, %17, %7, %11, %4, %25
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }

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
!34 = !{!35, !36, i64 4}
!35 = !{!"PackedFile", !36, i64 0, !36, i64 4, !39, i64 8}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!35, !36, i64 0}
!41 = !{!35, !39, i64 8}
!42 = !{!39, !39, i64 0}
!43 = !{!44, !39, i64 1280}
!44 = !{!"Image", !45, i64 0, !37, i64 120, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !37, i64 1176, !46, i64 1240, !46, i64 1242, !46, i64 1244, !46, i64 1246, !46, i64 1248, !46, i64 1250, !36, i64 1252, !46, i64 1256, !46, i64 1258, !46, i64 1260, !46, i64 1262, !46, i64 1264, !46, i64 1266, !36, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !47, i64 1296, !36, i64 1300, !46, i64 1304, !46, i64 1306, !36, i64 1308, !36, i64 1312, !37, i64 1316, !37, i64 1317, !46, i64 1318, !37, i64 1320, !47, i64 1336, !47, i64 1340, !48, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!45 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !37, i64 32, !46, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !39, i64 112}
!46 = !{!"short", !37, i64 0}
!47 = !{!"float", !37, i64 0}
!48 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!52, !39, i64 1152}
!52 = !{!"VFont", !45, i64 0, !37, i64 120, !39, i64 1144, !39, i64 1152, !39, i64 1160}
!53 = distinct !{!53, !50}
!54 = !{!55, !39, i64 1144}
!55 = !{!"bSound", !45, i64 0, !37, i64 120, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !47, i64 1176, !47, i64 1180, !47, i64 1184, !47, i64 1188, !47, i64 1192, !47, i64 1196, !36, i64 1200, !36, i64 1204, !39, i64 1208, !39, i64 1216, !39, i64 1224}
!56 = distinct !{!56, !50}
!57 = !{!37, !37, i64 0}
!58 = !{!44, !39, i64 24}
!59 = !{!44, !46, i64 1248}
!60 = distinct !{!60, !50}
!61 = !{!52, !39, i64 24}
!62 = distinct !{!62, !50}
!63 = !{!55, !39, i64 24}
!64 = distinct !{!64, !50}
!65 = !{!66, !39, i64 0}
!66 = !{!"Global", !39, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !67, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !37, i64 2090, !46, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!67 = !{!"ListBase", !39, i64 0, !39, i64 8}
!68 = distinct !{!68, !50}
!69 = !{!70, !71, i64 48}
!70 = !{!"stat", !71, i64 0, !71, i64 8, !71, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !72, i64 72, !72, i64 88, !72, i64 104, !37, i64 120}
!71 = !{!"long", !37, i64 0}
!72 = !{!"timespec", !71, i64 0, !71, i64 8}
!73 = distinct !{!73, !50}
!74 = !{i32 0, i32 2}
!75 = !{!76, !39, i64 2192}
!76 = !{!"Library", !45, i64 0, !39, i64 120, !39, i64 128, !37, i64 136, !37, i64 1160, !39, i64 2184, !39, i64 2192}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !50}
!79 = distinct !{!79, !50}
!80 = distinct !{!80, !50}
!81 = distinct !{!81, !50}
!82 = distinct !{!82, !50}
!83 = !{!46, !46, i64 0}
