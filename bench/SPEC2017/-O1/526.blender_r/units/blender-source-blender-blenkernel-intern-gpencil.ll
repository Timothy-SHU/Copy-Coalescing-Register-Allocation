; ModuleID = 'blender/source/blender/blenkernel/intern/gpencil.c'
source_filename = "blender/source/blender/blenkernel/intern/gpencil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"bGPDframe\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Error: frame (%d) existed already for this layer\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"bGPDlayer\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"GP_Layer\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [40 x i8] c"Error: cannot find appropriate gp-frame\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @free_gpencil_strokes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %13
  %6 = phi ptr [ %7, %13 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.bGPDstroke, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %12(ptr noundef nonnull %9) #9
  br label %13

13:                                               ; preds = %11, %5
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef nonnull %6) #9
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %5, !llvm.loop !46

15:                                               ; preds = %13, %1
  %16 = icmp ne ptr %3, null
  %17 = zext i1 %16 to i8
  ret i8 %17
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @free_gpencil_frames(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3, %23
  %8 = phi ptr [ %9, %23 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.bGPDframe, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %7, %21
  %14 = phi ptr [ %15, %21 ], [ %11, %7 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.bGPDstroke, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %20(ptr noundef nonnull %17) #9
  br label %21

21:                                               ; preds = %19, %13
  tail call void @BLI_freelinkN(ptr noundef nonnull %10, ptr noundef nonnull %14) #9
  %22 = icmp eq ptr %15, null
  br i1 %22, label %23, label %13, !llvm.loop !46

23:                                               ; preds = %21, %7
  tail call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %8) #9
  %24 = icmp eq ptr %9, null
  br i1 %24, label %25, label %7, !llvm.loop !53

25:                                               ; preds = %23, %3
  %26 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !54
  br label %27

27:                                               ; preds = %1, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_gpencil_layers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %3, %30
  %7 = phi ptr [ %8, %30 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %6, %28
  %13 = phi ptr [ %14, %28 ], [ %10, %6 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.bGPDframe, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %12, %26
  %19 = phi ptr [ %20, %26 ], [ %16, %12 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.bGPDstroke, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %25(ptr noundef nonnull %22) #9
  br label %26

26:                                               ; preds = %24, %18
  tail call void @BLI_freelinkN(ptr noundef nonnull %15, ptr noundef nonnull %19) #9
  %27 = icmp eq ptr %20, null
  br i1 %27, label %28, label %18, !llvm.loop !46

28:                                               ; preds = %26, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %9, ptr noundef nonnull %13) #9
  %29 = icmp eq ptr %14, null
  br i1 %29, label %30, label %12, !llvm.loop !53

30:                                               ; preds = %28, %6
  %31 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 3
  store ptr null, ptr %31, align 8, !tbaa !54
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %7) #9
  %32 = icmp eq ptr %8, null
  br i1 %32, label %33, label %6, !llvm.loop !56

33:                                               ; preds = %30, %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_gpencil_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1, %29
  %6 = phi ptr [ %7, %29 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.bGPDlayer, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %5, %27
  %12 = phi ptr [ %13, %27 ], [ %9, %5 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.bGPDframe, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %11, %25
  %18 = phi ptr [ %19, %25 ], [ %15, %11 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = getelementptr inbounds %struct.bGPDstroke, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %24(ptr noundef nonnull %21) #9
  br label %25

25:                                               ; preds = %23, %17
  tail call void @BLI_freelinkN(ptr noundef nonnull %14, ptr noundef nonnull %18) #9
  %26 = icmp eq ptr %19, null
  br i1 %26, label %27, label %17, !llvm.loop !46

27:                                               ; preds = %25, %11
  tail call void @BLI_freelinkN(ptr noundef nonnull %8, ptr noundef nonnull %12) #9
  %28 = icmp eq ptr %13, null
  br i1 %28, label %29, label %11, !llvm.loop !53

29:                                               ; preds = %27, %5
  %30 = getelementptr inbounds %struct.bGPDlayer, ptr %6, i64 0, i32 3
  store ptr null, ptr %30, align 8, !tbaa !54
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef nonnull %6) #9
  %31 = icmp eq ptr %7, null
  br i1 %31, label %32, label %5, !llvm.loop !56

32:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gpencil_frame_addnew(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !57
  %6 = and i32 %5, 16777216
  %7 = icmp ne i32 %6, 0
  %8 = icmp slt i32 %1, 1
  %9 = and i1 %8, %7
  br i1 %9, label %38, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %12 = tail call ptr %11(i64 noundef 40, ptr noundef nonnull @.str) #9
  %13 = getelementptr inbounds %struct.bGPDframe, ptr %12, i64 0, i32 3
  store i32 %1, ptr %13, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %10, %25
  %18 = phi ptr [ %26, %25 ], [ %15, %10 ]
  %19 = getelementptr inbounds %struct.bGPDframe, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !62
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = icmp sgt i32 %20, %1
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %14, ptr noundef nonnull %18, ptr noundef %12) #9
  br label %30

25:                                               ; preds = %22
  %26 = load ptr, ptr %18, align 8, !tbaa !51
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !63

28:                                               ; preds = %25, %17
  %29 = xor i1 %21, true
  br label %30

30:                                               ; preds = %28, %24, %10
  %31 = phi i1 [ false, %24 ], [ false, %10 ], [ %21, %28 ]
  %32 = phi i1 [ false, %24 ], [ true, %10 ], [ %29, %28 ]
  br i1 %31, label %33, label %36

33:                                               ; preds = %30
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %34(ptr noundef %12) #9
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %1)
  br label %38

36:                                               ; preds = %30
  br i1 %32, label %37, label %38

37:                                               ; preds = %36
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %12) #9
  br label %38

38:                                               ; preds = %33, %37, %36, %2, %4
  %39 = phi ptr [ null, %4 ], [ null, %2 ], [ %12, %36 ], [ %12, %37 ], [ %12, %33 ]
  ret ptr %39
}

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gpencil_layer_addnew(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %7 = tail call ptr %6(i64 noundef 192, ptr noundef nonnull @.str.2) #9
  %8 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %7) #9
  %9 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 7
  %10 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 97), align 4, !tbaa !64
  store float %10, ptr %9, align 4, !tbaa !64
  %11 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 97, i64 1), align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 7, i64 1
  store float %11, ptr %12, align 4, !tbaa !64
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 97, i64 2), align 4, !tbaa !64
  %14 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 7, i64 2
  store float %13, ptr %14, align 4, !tbaa !64
  %15 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 97, i64 3), align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 7, i64 3
  store float %15, ptr %16, align 4, !tbaa !64
  %17 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 5
  store i16 3, ptr %17, align 4, !tbaa !65
  %18 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 8
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef %1, i64 noundef 128) #9
  tail call void @BLI_uniquename(ptr noundef nonnull %8, ptr noundef %7, ptr noundef nonnull @.str.3, i8 noundef zeroext 46, i32 noundef 64, i32 noundef 128) #9
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %5
  %22 = load ptr, ptr %8, align 8, !tbaa !66
  %23 = icmp eq ptr %22, null
  %24 = icmp eq ptr %7, null
  %25 = or i1 %24, %23
  br i1 %25, label %37, label %26

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %31, %26 ], [ %22, %21 ]
  %28 = getelementptr inbounds %struct.bGPDlayer, ptr %27, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !69
  %30 = and i32 %29, -5
  store i32 %30, ptr %28, align 8, !tbaa !69
  %31 = load ptr, ptr %27, align 8, !tbaa !55
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %26, !llvm.loop !70

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !69
  %36 = or i32 %35, 4
  store i32 %36, ptr %34, align 8, !tbaa !69
  br label %37

37:                                               ; preds = %33, %21, %5, %3
  %38 = phi ptr [ null, %3 ], [ %7, %5 ], [ %7, %21 ], [ %7, %33 ]
  ret ptr %38
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @gpencil_layer_setactive(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %8, %7
  br i1 %9, label %21, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %15, %10 ], [ %6, %4 ]
  %12 = getelementptr inbounds %struct.bGPDlayer, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !69
  %14 = and i32 %13, -5
  store i32 %14, ptr %12, align 8, !tbaa !69
  %15 = load ptr, ptr %11, align 8, !tbaa !55
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !70

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.bGPDlayer, ptr %1, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !69
  %20 = or i32 %19, 4
  store i32 %20, ptr %18, align 8, !tbaa !69
  br label %21

21:                                               ; preds = %2, %4, %17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gpencil_data_addnew(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !71
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %2, i16 noundef signext 17479, ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 2
  store i32 22, ptr %4, align 8, !tbaa !73
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gpencil_frame_duplicate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %5 = tail call ptr %4(ptr noundef nonnull %0) #9
  %6 = getelementptr inbounds %struct.bGPDframe, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3, %10
  %11 = phi ptr [ %19, %10 ], [ %8, %3 ]
  %12 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %13 = tail call ptr %12(ptr noundef nonnull %11) #9
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.bGPDstroke, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = tail call ptr %14(ptr noundef %16) #9
  %18 = getelementptr inbounds %struct.bGPDstroke, ptr %13, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !44
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %13) #9
  %19 = load ptr, ptr %11, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !74

21:                                               ; preds = %10, %3, %1
  %22 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %10 ]
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gpencil_layer_duplicate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %5 = tail call ptr %4(ptr noundef nonnull %0) #9
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bGPDlayer, ptr %5, i64 0, i32 3
  br label %12

12:                                               ; preds = %10, %35
  %13 = phi ptr [ %8, %10 ], [ %36, %35 ]
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %15 = tail call ptr %14(ptr noundef nonnull %13) #9
  %16 = getelementptr inbounds %struct.bGPDframe, ptr %15, i64 0, i32 2
  %17 = getelementptr inbounds %struct.bGPDframe, ptr %13, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %12, %20
  %21 = phi ptr [ %29, %20 ], [ %18, %12 ]
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %23 = tail call ptr %22(ptr noundef nonnull %21) #9
  %24 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.bGPDstroke, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = tail call ptr %24(ptr noundef %26) #9
  %28 = getelementptr inbounds %struct.bGPDstroke, ptr %23, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !44
  tail call void @BLI_addtail(ptr noundef nonnull %16, ptr noundef %23) #9
  %29 = load ptr, ptr %21, align 8, !tbaa !45
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %20, !llvm.loop !74

31:                                               ; preds = %20, %12
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %15) #9
  %32 = load ptr, ptr %11, align 8, !tbaa !54
  %33 = icmp eq ptr %13, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store ptr %15, ptr %11, align 8, !tbaa !54
  br label %35

35:                                               ; preds = %31, %34
  %36 = load ptr, ptr %13, align 8, !tbaa !45
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %12, !llvm.loop !75

38:                                               ; preds = %35, %3, %1
  %39 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %35 ]
  ret ptr %39
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gpencil_data_duplicate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %5 = tail call ptr %4(ptr noundef nonnull %0) #9
  %6 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %3, %46
  %11 = phi ptr [ %47, %46 ], [ %8, %3 ]
  %12 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %13 = tail call ptr %12(ptr noundef nonnull %11) #9
  %14 = getelementptr inbounds %struct.bGPDlayer, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.bGPDlayer, ptr %11, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.bGPDlayer, ptr %13, i64 0, i32 3
  br label %20

20:                                               ; preds = %43, %18
  %21 = phi ptr [ %16, %18 ], [ %44, %43 ]
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %23 = tail call ptr %22(ptr noundef nonnull %21) #9
  %24 = getelementptr inbounds %struct.bGPDframe, ptr %23, i64 0, i32 2
  %25 = getelementptr inbounds %struct.bGPDframe, ptr %21, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false)
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %20, %28
  %29 = phi ptr [ %37, %28 ], [ %26, %20 ]
  %30 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %31 = tail call ptr %30(ptr noundef nonnull %29) #9
  %32 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.bGPDstroke, ptr %29, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = tail call ptr %32(ptr noundef %34) #9
  %36 = getelementptr inbounds %struct.bGPDstroke, ptr %31, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !44
  tail call void @BLI_addtail(ptr noundef nonnull %24, ptr noundef %31) #9
  %37 = load ptr, ptr %29, align 8, !tbaa !45
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %28, !llvm.loop !74

39:                                               ; preds = %28, %20
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %23) #9
  %40 = load ptr, ptr %19, align 8, !tbaa !54
  %41 = icmp eq ptr %21, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store ptr %23, ptr %19, align 8, !tbaa !54
  br label %43

43:                                               ; preds = %42, %39
  %44 = load ptr, ptr %21, align 8, !tbaa !45
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %20, !llvm.loop !75

46:                                               ; preds = %43, %10
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %13) #9
  %47 = load ptr, ptr %11, align 8, !tbaa !45
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %10, !llvm.loop !76

49:                                               ; preds = %46, %3, %1
  %50 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %46 ]
  ret ptr %50
}

; Function Attrs: nounwind uwtable
define dso_local void @gpencil_frame_delete_laststroke(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  br i1 %3, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !62
  br label %12

12:                                               ; preds = %7, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %7 ]
  %14 = icmp eq ptr %8, null
  %15 = select i1 %3, i1 true, i1 %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.bGPDstroke, ptr %8, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  tail call void %17(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 2
  tail call void @BLI_freelinkN(ptr noundef nonnull %20, ptr noundef %8) #9
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = icmp eq ptr %0, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  tail call void @BLI_freelinkN(ptr noundef nonnull %26, ptr noundef %1) #9
  %27 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 3
  store ptr null, ptr %27, align 8, !tbaa !54
  br label %28

28:                                               ; preds = %23, %25
  %29 = tail call ptr @gpencil_layer_getframe(ptr noundef %0, i32 noundef %13, i16 noundef signext 0)
  br label %30

30:                                               ; preds = %16, %28, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @gpencil_layer_delframe(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6, %18
  %11 = phi ptr [ %12, %18 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.bGPDstroke, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %17(ptr noundef nonnull %14) #9
  br label %18

18:                                               ; preds = %16, %10
  tail call void @BLI_freelinkN(ptr noundef nonnull %7, ptr noundef nonnull %11) #9
  %19 = icmp eq ptr %12, null
  br i1 %19, label %20, label %10, !llvm.loop !46

20:                                               ; preds = %18, %6
  %21 = icmp ne ptr %8, null
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  tail call void @BLI_freelinkN(ptr noundef nonnull %23, ptr noundef %1) #9
  %24 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 3
  store ptr null, ptr %24, align 8, !tbaa !54
  br label %25

25:                                               ; preds = %2, %20
  %26 = phi i8 [ %22, %20 ], [ 0, %2 ]
  ret i8 %26
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gpencil_layer_getframe(ptr noundef %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %145, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !57
  %7 = and i32 %6, 16777216
  %8 = icmp eq i32 %7, 0
  %9 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %10 = select i1 %8, i32 %1, i32 %9
  %11 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %88, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !69
  %17 = and i32 %16, 66
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %145

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bGPDframe, ptr %12, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !78
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %145

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.bGPDframe, ptr %12, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !62
  %27 = icmp slt i32 %26, %10
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = icmp sgt i32 %26, %10
  br i1 %29, label %66, label %71

30:                                               ; preds = %43
  %31 = getelementptr inbounds %struct.bGPDframe, ptr %37, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !62
  %33 = icmp eq i32 %32, %10
  br i1 %33, label %45, label %34, !llvm.loop !79

34:                                               ; preds = %24, %30
  %35 = phi ptr [ %37, %30 ], [ %12, %24 ]
  %36 = phi i1 [ %44, %30 ], [ false, %24 ]
  %37 = load ptr, ptr %35, align 8, !tbaa !51
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.bGPDframe, ptr %37, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !62
  %42 = icmp sgt i32 %41, %10
  br i1 %42, label %45, label %43

43:                                               ; preds = %39, %34
  %44 = icmp eq ptr %37, null
  br i1 %44, label %45, label %30, !llvm.loop !79

45:                                               ; preds = %43, %30, %39
  %46 = phi ptr [ %37, %43 ], [ %37, %30 ], [ %35, %39 ]
  %47 = phi i1 [ %44, %43 ], [ %44, %30 ], [ %36, %39 ]
  %48 = icmp eq i16 %2, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  br i1 %47, label %55, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.bGPDframe, ptr %46, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !62
  %53 = icmp eq i32 %52, %10
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store ptr %46, ptr %11, align 8, !tbaa !54
  br label %143

55:                                               ; preds = %50, %49
  %56 = tail call ptr @gpencil_frame_addnew(ptr noundef nonnull %0, i32 noundef %10)
  store ptr %56, ptr %11, align 8, !tbaa !54
  br label %143

57:                                               ; preds = %45
  br i1 %47, label %59, label %58

58:                                               ; preds = %57
  store ptr %46, ptr %11, align 8, !tbaa !54
  br label %143

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !80
  store ptr %61, ptr %11, align 8, !tbaa !54
  br label %143

62:                                               ; preds = %66
  %63 = getelementptr inbounds %struct.bGPDframe, ptr %69, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !62
  %65 = icmp sgt i32 %64, %10
  br i1 %65, label %66, label %71, !llvm.loop !81

66:                                               ; preds = %28, %62
  %67 = phi ptr [ %69, %62 ], [ %12, %28 ]
  %68 = getelementptr inbounds %struct.bGPDframe, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !82
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %62, !llvm.loop !81

71:                                               ; preds = %66, %62, %28
  %72 = phi ptr [ %12, %28 ], [ %69, %62 ], [ %69, %66 ]
  %73 = phi i1 [ false, %28 ], [ %70, %62 ], [ %70, %66 ]
  %74 = icmp eq i16 %2, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  br i1 %73, label %81, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.bGPDframe, ptr %72, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !62
  %79 = icmp eq i32 %78, %10
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store ptr %72, ptr %11, align 8, !tbaa !54
  br label %143

81:                                               ; preds = %76, %75
  %82 = tail call ptr @gpencil_frame_addnew(ptr noundef nonnull %0, i32 noundef %10)
  store ptr %82, ptr %11, align 8, !tbaa !54
  br label %143

83:                                               ; preds = %71
  br i1 %73, label %85, label %84

84:                                               ; preds = %83
  store ptr %72, ptr %11, align 8, !tbaa !54
  br label %143

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !49
  store ptr %87, ptr %11, align 8, !tbaa !54
  br label %143

88:                                               ; preds = %5
  %89 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !49
  %91 = icmp eq ptr %90, null
  br i1 %91, label %139, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.bGPDframe, ptr %90, i64 0, i32 3
  %94 = load i32, ptr %93, align 8, !tbaa !62
  %95 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !80
  %97 = getelementptr inbounds %struct.bGPDframe, ptr %96, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !62
  %99 = sub nsw i32 %10, %94
  %100 = tail call i32 @llvm.abs.i32(i32 %99, i1 true)
  %101 = sub nsw i32 %10, %98
  %102 = tail call i32 @llvm.abs.i32(i32 %101, i1 true)
  %103 = icmp ugt i32 %100, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %92
  %105 = icmp eq ptr %96, null
  br i1 %105, label %123, label %106

106:                                              ; preds = %104, %111
  %107 = phi ptr [ %113, %111 ], [ %96, %104 ]
  %108 = getelementptr inbounds %struct.bGPDframe, ptr %107, i64 0, i32 3
  %109 = load i32, ptr %108, align 8, !tbaa !62
  %110 = icmp sgt i32 %109, %10
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.bGPDframe, ptr %107, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !82
  %114 = icmp eq ptr %113, null
  br i1 %114, label %123, label %106, !llvm.loop !83

115:                                              ; preds = %92, %120
  %116 = phi ptr [ %121, %120 ], [ %90, %92 ]
  %117 = getelementptr inbounds %struct.bGPDframe, ptr %116, i64 0, i32 3
  %118 = load i32, ptr %117, align 8, !tbaa !62
  %119 = icmp sgt i32 %118, %10
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load ptr, ptr %116, align 8, !tbaa !51
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %115, !llvm.loop !84

123:                                              ; preds = %115, %120, %111, %106, %104
  %124 = phi ptr [ null, %104 ], [ %107, %106 ], [ null, %111 ], [ null, %120 ], [ %116, %115 ]
  %125 = phi i1 [ true, %104 ], [ %110, %106 ], [ %110, %111 ], [ %119, %120 ], [ %119, %115 ]
  %126 = icmp eq i16 %2, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  br i1 %125, label %133, label %128

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.bGPDframe, ptr %124, i64 0, i32 3
  %130 = load i32, ptr %129, align 8, !tbaa !62
  %131 = icmp eq i32 %130, %10
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store ptr %124, ptr %11, align 8, !tbaa !54
  br label %143

133:                                              ; preds = %128, %127
  %134 = tail call ptr @gpencil_frame_addnew(ptr noundef nonnull %0, i32 noundef %10)
  store ptr %134, ptr %11, align 8, !tbaa !54
  br label %143

135:                                              ; preds = %123
  br i1 %125, label %137, label %136

136:                                              ; preds = %135
  store ptr %124, ptr %11, align 8, !tbaa !54
  br label %143

137:                                              ; preds = %135
  %138 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %143

139:                                              ; preds = %88
  %140 = icmp eq i16 %2, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %139
  %142 = tail call ptr @gpencil_frame_addnew(ptr noundef nonnull %0, i32 noundef %10)
  store ptr %142, ptr %11, align 8, !tbaa !54
  br label %143

143:                                              ; preds = %133, %132, %137, %136, %139, %141, %58, %59, %54, %55, %84, %85, %80, %81
  %144 = load ptr, ptr %11, align 8, !tbaa !54
  br label %145

145:                                              ; preds = %19, %14, %3, %143
  %146 = phi ptr [ %144, %143 ], [ null, %3 ], [ %12, %14 ], [ %12, %19 ]
  ret ptr %146
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_gpencil_layer_find_frame(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %11
  %7 = phi ptr [ %13, %11 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bGPDframe, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bGPDframe, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !85

15:                                               ; preds = %6, %11, %2
  %16 = phi ptr [ null, %2 ], [ %7, %6 ], [ null, %11 ]
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gpencil_layer_getactive(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bGPDlayer, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !69
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr %8, align 8, !tbaa !55
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !86

16:                                               ; preds = %13, %7, %1, %3
  %17 = phi ptr [ null, %3 ], [ null, %1 ], [ %8, %7 ], [ null, %13 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local void @gpencil_layer_delete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bGPDlayer, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6, %26
  %11 = phi ptr [ %12, %26 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.bGPDframe, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %10, %24
  %17 = phi ptr [ %18, %24 ], [ %14, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = getelementptr inbounds %struct.bGPDstroke, ptr %17, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %23(ptr noundef nonnull %20) #9
  br label %24

24:                                               ; preds = %22, %16
  tail call void @BLI_freelinkN(ptr noundef nonnull %13, ptr noundef nonnull %17) #9
  %25 = icmp eq ptr %18, null
  br i1 %25, label %26, label %16, !llvm.loop !46

26:                                               ; preds = %24, %10
  tail call void @BLI_freelinkN(ptr noundef nonnull %7, ptr noundef nonnull %11) #9
  %27 = icmp eq ptr %12, null
  br i1 %27, label %28, label %10, !llvm.loop !53

28:                                               ; preds = %26, %6
  %29 = getelementptr inbounds %struct.bGPDlayer, ptr %1, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  tail call void @BLI_freelinkN(ptr noundef nonnull %30, ptr noundef %1) #9
  br label %31

31:                                               ; preds = %2, %28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

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
!35 = !{!"ListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 0}
!40 = !{!"bGPDstroke", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !42, i64 36, !42, i64 38, !43, i64 40}
!41 = !{!"int", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!"double", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!36, !36, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!50, !36, i64 16}
!50 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !35, i64 16, !36, i64 32, !41, i64 40, !42, i64 44, !42, i64 46, !37, i64 48, !37, i64 64}
!51 = !{!52, !36, i64 0}
!52 = !{!"bGPDframe", !36, i64 0, !36, i64 8, !35, i64 16, !41, i64 32, !41, i64 36}
!53 = distinct !{!53, !47, !48}
!54 = !{!50, !36, i64 32}
!55 = !{!50, !36, i64 0}
!56 = distinct !{!56, !47, !48}
!57 = !{!58, !41, i64 8}
!58 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !41, i64 8468, !42, i64 8472, !42, i64 8474, !42, i64 8476, !42, i64 8478, !42, i64 8480, !42, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !42, i64 8496, !42, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !42, i64 8528, !42, i64 8530, !42, i64 8532, !42, i64 8534, !35, i64 8536, !35, i64 8552, !35, i64 8568, !35, i64 8584, !35, i64 8600, !35, i64 8616, !35, i64 8632, !37, i64 8648, !42, i64 8712, !42, i64 8714, !42, i64 8716, !42, i64 8718, !42, i64 8720, !42, i64 8722, !42, i64 8724, !42, i64 8726, !37, i64 8728, !42, i64 8896, !42, i64 8898, !42, i64 8900, !42, i64 8902, !42, i64 8904, !42, i64 8906, !42, i64 8908, !42, i64 8910, !41, i64 8912, !41, i64 8916, !42, i64 8920, !42, i64 8922, !42, i64 8924, !42, i64 8926, !42, i64 8928, !42, i64 8930, !42, i64 8932, !42, i64 8934, !42, i64 8936, !42, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !42, i64 8944, !42, i64 8946, !42, i64 8948, !42, i64 8950, !42, i64 8952, !42, i64 8954, !59, i64 8956, !59, i64 8960, !41, i64 8964, !42, i64 8968, !42, i64 8970, !59, i64 8972, !42, i64 8976, !42, i64 8978, !42, i64 8980, !42, i64 8982, !60, i64 8984, !37, i64 9760, !37, i64 9772, !42, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !41, i64 10896, !41, i64 10900, !59, i64 10904, !59, i64 10908, !41, i64 10912, !42, i64 10916, !42, i64 10918, !42, i64 10920, !42, i64 10922, !42, i64 10924, !42, i64 10926, !61, i64 10928}
!59 = !{!"float", !37, i64 0}
!60 = !{!"ColorBand", !42, i64 0, !42, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!61 = !{!"WalkNavigation", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !42, i64 24, !37, i64 26}
!62 = !{!52, !41, i64 32}
!63 = distinct !{!63, !47, !48}
!64 = !{!59, !59, i64 0}
!65 = !{!50, !42, i64 44}
!66 = !{!67, !36, i64 120}
!67 = !{!"bGPdata", !68, i64 0, !35, i64 120, !41, i64 136, !42, i64 140, !42, i64 142, !36, i64 144}
!68 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!69 = !{!50, !41, i64 40}
!70 = distinct !{!70, !47, !48}
!71 = !{!72, !36, i64 0}
!72 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !35, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !37, i64 2090, !42, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!73 = !{!67, !41, i64 136}
!74 = distinct !{!74, !47, !48}
!75 = distinct !{!75, !47, !48}
!76 = distinct !{!76, !47, !48}
!77 = !{!52, !36, i64 24}
!78 = !{!52, !41, i64 36}
!79 = distinct !{!79, !47, !48}
!80 = !{!50, !36, i64 24}
!81 = distinct !{!81, !47, !48}
!82 = !{!52, !36, i64 8}
!83 = distinct !{!83, !47, !48}
!84 = distinct !{!84, !47, !48}
!85 = distinct !{!85, !47, !48}
!86 = distinct !{!86, !47, !48}
