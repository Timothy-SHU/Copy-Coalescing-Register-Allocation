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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @free_gpencil_strokes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 2
  %3 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %2) #12, !range !34
  %4 = load ptr, ptr %2, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1, %14
  %7 = phi ptr [ %8, %14 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.bGPDstroke, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %13(ptr noundef nonnull %10) #13
  br label %14

14:                                               ; preds = %12, %6
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef nonnull %7) #13
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %6, !llvm.loop !48

16:                                               ; preds = %14, %1
  %17 = xor i8 %3, 1
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #1 !PGOFuncName !50 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_gpencil_frames(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = tail call zeroext i8 @free_gpencil_strokes(ptr noundef nonnull %8) #12, !range !34
  tail call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %8) #13
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %7, !llvm.loop !55

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !56
  br label %14

14:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_gpencil_layers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  tail call void @free_gpencil_frames(ptr noundef nonnull %7) #12
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %7) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !58

10:                                               ; preds = %6, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_gpencil_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  tail call void @free_gpencil_layers(ptr noundef nonnull %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gpencil_frame_addnew(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !59
  %6 = and i32 %5, 16777216
  %7 = icmp ne i32 %6, 0
  %8 = icmp slt i32 %1, 1
  %9 = and i1 %8, %7
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %12 = tail call ptr %11(i64 noundef 40, ptr noundef nonnull @.str) #13
  %13 = getelementptr inbounds %struct.bGPDframe, ptr %12, i64 0, i32 3
  store i32 %1, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %10, %24
  %18 = phi ptr [ %25, %24 ], [ %15, %10 ]
  %19 = getelementptr inbounds %struct.bGPDframe, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !64
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = icmp sgt i32 %20, %1
  br i1 %23, label %30, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %18, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %17, !llvm.loop !65

27:                                               ; preds = %17
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %28(ptr noundef %12) #13
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %1) #12
  br label %32

30:                                               ; preds = %22
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %14, ptr noundef nonnull %18, ptr noundef %12) #13
  br label %32

31:                                               ; preds = %24, %10
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %12) #13
  br label %32

32:                                               ; preds = %30, %27, %31, %2, %4
  %33 = phi ptr [ null, %4 ], [ null, %2 ], [ %12, %30 ], [ %12, %31 ], [ %12, %27 ]
  ret ptr %33
}

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gpencil_layer_addnew(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %7 = tail call ptr %6(i64 noundef 192, ptr noundef nonnull @.str.2) #13
  %8 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %7) #13
  %9 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 7
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %9) #12
  %10 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 5
  store i16 3, ptr %10, align 4, !tbaa !66
  %11 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 8
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef %1, i64 noundef 128) #13
  tail call void @BLI_uniquename(ptr noundef nonnull %8, ptr noundef %7, ptr noundef nonnull @.str.3, i8 noundef zeroext 46, i32 noundef 64, i32 noundef 128) #13
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call void @gpencil_layer_setactive(ptr noundef nonnull %0, ptr noundef nonnull %7) #12
  br label %15

15:                                               ; preds = %5, %14, %3
  %16 = phi ptr [ null, %3 ], [ %7, %14 ], [ %7, %5 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !67 {
  %2 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 97), align 4, !tbaa !68
  store float %2, ptr %0, align 4, !tbaa !68
  %3 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 97, i64 1), align 8, !tbaa !68
  %4 = getelementptr inbounds float, ptr %0, i64 1
  store float %3, ptr %4, align 4, !tbaa !68
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 97, i64 2), align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %0, i64 2
  store float %5, ptr %6, align 4, !tbaa !68
  %7 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 97, i64 3), align 8, !tbaa !68
  %8 = getelementptr inbounds float, ptr %0, i64 3
  store float %7, ptr %8, align 4, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @gpencil_layer_setactive(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %8, %7
  br i1 %9, label %21, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %15, %10 ], [ %6, %4 ]
  %12 = getelementptr inbounds %struct.bGPDlayer, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !72
  %14 = and i32 %13, -5
  store i32 %14, ptr %12, align 8, !tbaa !72
  %15 = load ptr, ptr %11, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !73

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.bGPDlayer, ptr %1, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !72
  %20 = or i32 %19, 4
  store i32 %20, ptr %18, align 8, !tbaa !72
  br label %21

21:                                               ; preds = %2, %4, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gpencil_data_addnew(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !74
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %2, i16 noundef signext 17479, ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 2
  store i32 22, ptr %4, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gpencil_frame_duplicate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %5 = tail call ptr %4(ptr noundef nonnull %0) #13
  %6 = getelementptr inbounds %struct.bGPDframe, ptr %5, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %6) #12
  %7 = getelementptr inbounds %struct.bGPDframe, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3, %10
  %11 = phi ptr [ %19, %10 ], [ %8, %3 ]
  %12 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %13 = tail call ptr %12(ptr noundef nonnull %11) #13
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.bGPDstroke, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = tail call ptr %14(ptr noundef %16) #13
  %18 = getelementptr inbounds %struct.bGPDstroke, ptr %13, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !46
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %13) #13
  %19 = load ptr, ptr %11, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !77

21:                                               ; preds = %10, %3, %1
  %22 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %10 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !78 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gpencil_layer_duplicate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %5 = tail call ptr %4(ptr noundef nonnull %0) #13
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %5, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %6) #12
  %7 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bGPDlayer, ptr %5, i64 0, i32 3
  br label %12

12:                                               ; preds = %10, %18
  %13 = phi ptr [ %8, %10 ], [ %19, %18 ]
  %14 = tail call ptr @gpencil_frame_duplicate(ptr noundef nonnull %13) #12
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %14) #13
  %15 = load ptr, ptr %11, align 8, !tbaa !56
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store ptr %14, ptr %11, align 8, !tbaa !56
  br label %18

18:                                               ; preds = %12, %17
  %19 = load ptr, ptr %13, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %12, !llvm.loop !79

21:                                               ; preds = %18, %3, %1
  %22 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %18 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gpencil_data_duplicate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %5 = tail call ptr %4(ptr noundef nonnull %0) #13
  %6 = getelementptr inbounds %struct.bGPdata, ptr %5, i64 0, i32 1
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %6) #12
  %7 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3, %10
  %11 = phi ptr [ %13, %10 ], [ %8, %3 ]
  %12 = tail call ptr @gpencil_layer_duplicate(ptr noundef nonnull %11) #12
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %12) #13
  %13 = load ptr, ptr %11, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !80

15:                                               ; preds = %10, %3, %1
  %16 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %10 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gpencil_frame_delete_laststroke(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !64
  %9 = icmp eq ptr %6, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.bGPDstroke, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  tail call void %11(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 2
  tail call void @BLI_freelinkN(ptr noundef nonnull %14, ptr noundef nonnull %6) #13
  %15 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %14) #12, !range !34
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = tail call zeroext i8 @gpencil_layer_delframe(ptr noundef %0, ptr noundef nonnull %1) #12, !range !34
  %19 = tail call ptr @gpencil_layer_getframe(ptr noundef %0, i32 noundef %8, i16 noundef signext 0) #12
  br label %20

20:                                               ; preds = %2, %10, %17, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gpencil_layer_delframe(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @free_gpencil_strokes(ptr noundef nonnull %1) #12, !range !34
  %8 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  tail call void @BLI_freelinkN(ptr noundef nonnull %8, ptr noundef nonnull %1) #13
  %9 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !56
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i8 [ %7, %6 ], [ 0, %2 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gpencil_layer_getframe(ptr noundef %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %130, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !59
  %7 = and i32 %6, 16777216
  %8 = icmp eq i32 %7, 0
  %9 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %10 = select i1 %8, i32 %1, i32 %9
  %11 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %76, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !72
  %17 = and i32 %16, 66
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %130

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bGPDframe, ptr %12, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !82
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %130

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.bGPDframe, ptr %12, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !64
  %27 = icmp slt i32 %26, %10
  br i1 %27, label %28, label %54

28:                                               ; preds = %24, %35
  %29 = phi i32 [ %37, %35 ], [ %26, %24 ]
  %30 = phi ptr [ %33, %35 ], [ %12, %24 ]
  %31 = icmp eq i32 %29, %10
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 8, !tbaa !54
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.bGPDframe, ptr %33, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !64
  %38 = icmp sgt i32 %37, %10
  br i1 %38, label %39, label %28

39:                                               ; preds = %35, %28
  %40 = icmp eq i16 %2, 0
  br i1 %40, label %50, label %43

41:                                               ; preds = %32
  %42 = icmp eq i16 %2, 0
  br i1 %42, label %51, label %48

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.bGPDframe, ptr %30, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !64
  %46 = icmp eq i32 %45, %10
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store ptr %30, ptr %11, align 8, !tbaa !56
  br label %130

48:                                               ; preds = %41, %43
  %49 = tail call ptr @gpencil_frame_addnew(ptr noundef nonnull %0, i32 noundef %10) #12
  store ptr %49, ptr %11, align 8, !tbaa !56
  br label %130

50:                                               ; preds = %39
  store ptr %30, ptr %11, align 8, !tbaa !56
  br label %130

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !83
  store ptr %53, ptr %11, align 8, !tbaa !56
  br label %130

54:                                               ; preds = %24, %59
  %55 = phi ptr [ %61, %59 ], [ %12, %24 ]
  %56 = getelementptr inbounds %struct.bGPDframe, ptr %55, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !64
  %58 = icmp sgt i32 %57, %10
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.bGPDframe, ptr %55, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !84
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %54, !llvm.loop !85

63:                                               ; preds = %59
  %64 = icmp eq i16 %2, 0
  br i1 %64, label %73, label %70

65:                                               ; preds = %54
  %66 = icmp eq i16 %2, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %65
  %68 = icmp eq i32 %57, %10
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  store ptr %55, ptr %11, align 8, !tbaa !56
  br label %130

70:                                               ; preds = %63, %67
  %71 = tail call ptr @gpencil_frame_addnew(ptr noundef nonnull %0, i32 noundef %10) #12
  store ptr %71, ptr %11, align 8, !tbaa !56
  br label %130

72:                                               ; preds = %65
  store ptr %55, ptr %11, align 8, !tbaa !56
  br label %130

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !52
  store ptr %75, ptr %11, align 8, !tbaa !56
  br label %130

76:                                               ; preds = %5
  %77 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  %79 = icmp eq ptr %78, null
  br i1 %79, label %126, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.bGPDframe, ptr %78, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !64
  %83 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !83
  %85 = getelementptr inbounds %struct.bGPDframe, ptr %84, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !64
  %87 = sub nsw i32 %10, %82
  %88 = tail call i32 @llvm.abs.i32(i32 %87, i1 true)
  %89 = sub nsw i32 %10, %86
  %90 = tail call i32 @llvm.abs.i32(i32 %89, i1 true)
  %91 = icmp ugt i32 %88, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %80, %97
  %93 = phi ptr [ %99, %97 ], [ %84, %80 ]
  %94 = getelementptr inbounds %struct.bGPDframe, ptr %93, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !64
  %96 = icmp sgt i32 %95, %10
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.bGPDframe, ptr %93, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !84
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %92, !llvm.loop !86

101:                                              ; preds = %80, %106
  %102 = phi ptr [ %107, %106 ], [ %78, %80 ]
  %103 = getelementptr inbounds %struct.bGPDframe, ptr %102, i64 0, i32 3
  %104 = load i32, ptr %103, align 8, !tbaa !64
  %105 = icmp sgt i32 %104, %10
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load ptr, ptr %102, align 8, !tbaa !54
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %101, !llvm.loop !87

109:                                              ; preds = %101, %106, %97, %92
  %110 = phi ptr [ null, %97 ], [ %93, %92 ], [ %102, %101 ], [ null, %106 ]
  %111 = phi i1 [ %96, %92 ], [ %96, %97 ], [ %105, %106 ], [ %105, %101 ]
  %112 = icmp eq i16 %2, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  br i1 %111, label %119, label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.bGPDframe, ptr %110, i64 0, i32 3
  %116 = load i32, ptr %115, align 8, !tbaa !64
  %117 = icmp eq i32 %116, %10
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store ptr %110, ptr %11, align 8, !tbaa !56
  br label %130

119:                                              ; preds = %114, %113
  %120 = tail call ptr @gpencil_frame_addnew(ptr noundef nonnull %0, i32 noundef %10) #12
  store ptr %120, ptr %11, align 8, !tbaa !56
  br label %130

121:                                              ; preds = %109
  br i1 %111, label %123, label %122

122:                                              ; preds = %121
  store ptr %110, ptr %11, align 8, !tbaa !56
  br label %130

123:                                              ; preds = %121
  %124 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %125 = load ptr, ptr %11, align 8, !tbaa !56
  br label %130

126:                                              ; preds = %76
  %127 = icmp eq i16 %2, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %126
  %129 = tail call ptr @gpencil_frame_addnew(ptr noundef nonnull %0, i32 noundef %10) #12
  store ptr %129, ptr %11, align 8, !tbaa !56
  br label %130

130:                                              ; preds = %70, %69, %73, %72, %48, %47, %51, %50, %128, %126, %122, %123, %118, %119, %19, %14, %3
  %131 = phi ptr [ null, %3 ], [ %12, %14 ], [ %12, %19 ], [ %120, %119 ], [ %110, %118 ], [ %125, %123 ], [ %110, %122 ], [ null, %126 ], [ %129, %128 ], [ %30, %50 ], [ %53, %51 ], [ %30, %47 ], [ %49, %48 ], [ %55, %72 ], [ %75, %73 ], [ %55, %69 ], [ %71, %70 ]
  ret ptr %131
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_gpencil_layer_find_frame(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %11
  %7 = phi ptr [ %13, %11 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bGPDframe, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !64
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bGPDframe, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !88

15:                                               ; preds = %6, %11, %2
  %16 = phi ptr [ null, %2 ], [ null, %11 ], [ %7, %6 ]
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gpencil_layer_getactive(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bGPDlayer, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !72
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr %8, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !89

16:                                               ; preds = %13, %7, %1, %3
  %17 = phi ptr [ null, %3 ], [ null, %1 ], [ null, %13 ], [ %8, %7 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gpencil_layer_delete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  tail call void @free_gpencil_frames(ptr noundef nonnull %1) #12
  %7 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  tail call void @BLI_freelinkN(ptr noundef nonnull %7, ptr noundef nonnull %1) #13
  br label %8

8:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }

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
!34 = !{i8 0, i8 2}
!35 = !{!36, !37, i64 16}
!36 = !{!"bGPDframe", !37, i64 0, !37, i64 8, !40, i64 16, !41, i64 32, !41, i64 36}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"ListBase", !37, i64 0, !37, i64 8}
!41 = !{!"int", !38, i64 0}
!42 = !{!43, !37, i64 0}
!43 = !{!"bGPDstroke", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !44, i64 36, !44, i64 38, !45, i64 40}
!44 = !{!"short", !38, i64 0}
!45 = !{!"double", !38, i64 0}
!46 = !{!43, !37, i64 16}
!47 = !{!37, !37, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"gpencil.c:BLI_listbase_is_empty"}
!51 = !{!40, !37, i64 0}
!52 = !{!53, !37, i64 16}
!53 = !{!"bGPDlayer", !37, i64 0, !37, i64 8, !40, i64 16, !37, i64 32, !41, i64 40, !44, i64 44, !44, i64 46, !38, i64 48, !38, i64 64}
!54 = !{!36, !37, i64 0}
!55 = distinct !{!55, !49}
!56 = !{!53, !37, i64 32}
!57 = !{!53, !37, i64 0}
!58 = distinct !{!58, !49}
!59 = !{!60, !41, i64 8}
!60 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !44, i64 8472, !44, i64 8474, !44, i64 8476, !44, i64 8478, !44, i64 8480, !44, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !44, i64 8496, !44, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !44, i64 8528, !44, i64 8530, !44, i64 8532, !44, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !38, i64 8648, !44, i64 8712, !44, i64 8714, !44, i64 8716, !44, i64 8718, !44, i64 8720, !44, i64 8722, !44, i64 8724, !44, i64 8726, !38, i64 8728, !44, i64 8896, !44, i64 8898, !44, i64 8900, !44, i64 8902, !44, i64 8904, !44, i64 8906, !44, i64 8908, !44, i64 8910, !41, i64 8912, !41, i64 8916, !44, i64 8920, !44, i64 8922, !44, i64 8924, !44, i64 8926, !44, i64 8928, !44, i64 8930, !44, i64 8932, !44, i64 8934, !44, i64 8936, !44, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !44, i64 8944, !44, i64 8946, !44, i64 8948, !44, i64 8950, !44, i64 8952, !44, i64 8954, !61, i64 8956, !61, i64 8960, !41, i64 8964, !44, i64 8968, !44, i64 8970, !61, i64 8972, !44, i64 8976, !44, i64 8978, !44, i64 8980, !44, i64 8982, !62, i64 8984, !38, i64 9760, !38, i64 9772, !44, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !61, i64 10904, !61, i64 10908, !41, i64 10912, !44, i64 10916, !44, i64 10918, !44, i64 10920, !44, i64 10922, !44, i64 10924, !44, i64 10926, !63, i64 10928}
!61 = !{!"float", !38, i64 0}
!62 = !{!"ColorBand", !44, i64 0, !44, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!63 = !{!"WalkNavigation", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !44, i64 24, !38, i64 26}
!64 = !{!36, !41, i64 32}
!65 = distinct !{!65, !49}
!66 = !{!53, !44, i64 44}
!67 = !{!"gpencil.c:copy_v4_v4"}
!68 = !{!61, !61, i64 0}
!69 = !{!70, !37, i64 120}
!70 = !{!"bGPdata", !71, i64 0, !40, i64 120, !41, i64 136, !44, i64 140, !44, i64 142, !37, i64 144}
!71 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !44, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!72 = !{!53, !41, i64 40}
!73 = distinct !{!73, !49}
!74 = !{!75, !37, i64 0}
!75 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !40, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !44, i64 2084, !44, i64 2086, !44, i64 2088, !38, i64 2090, !44, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!76 = !{!70, !41, i64 136}
!77 = distinct !{!77, !49}
!78 = !{!"gpencil.c:BLI_listbase_clear"}
!79 = distinct !{!79, !49}
!80 = distinct !{!80, !49}
!81 = !{!36, !37, i64 24}
!82 = !{!36, !41, i64 36}
!83 = !{!53, !37, i64 24}
!84 = !{!36, !37, i64 8}
!85 = distinct !{!85, !49}
!86 = distinct !{!86, !49}
!87 = distinct !{!87, !49}
!88 = distinct !{!88, !49}
!89 = distinct !{!89, !49}
