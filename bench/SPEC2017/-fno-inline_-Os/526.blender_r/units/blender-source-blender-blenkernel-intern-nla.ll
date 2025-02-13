; ModuleID = 'blender/source/blender/blenkernel/intern/nla.c'
source_filename = "blender/source/blender/blenkernel/intern/nla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"NlaTrack\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"NlaStrip\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"NlaSoundStrip\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"BKE_nlastrips_has_space() error... start and end arguments swapped\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Meta-NlaStrip\00", align 1
@RNA_NlaStrip = external global %struct.StructRNA, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"BKE_nlatrack_has_space() error... start and end arguments swapped\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"NlaStrip FCurve\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"strip_time\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"<No Action>\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Transition\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Meta\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"NLA Strip\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"nlastrip_validate_name gh\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.18 = private unnamed_addr constant [37 x i8] c"\09activeTrack = %p, activeStrip = %p\0A\00", align 1
@str = private unnamed_addr constant [46 x i8] c"BKE_nla_action_pushdown(): action has no data\00", align 1
@str.19 = private unnamed_addr constant [55 x i8] c"NLA tweakmode enter - neither active requirement found\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_nlastrip(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  tail call void @free_nlastrip(ptr noundef nonnull %5, ptr noundef nonnull %9) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !44

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @id_us_min(ptr noundef nonnull %14) #18
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 5
  tail call void @free_fcurves(ptr noundef nonnull %18) #18
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 6
  tail call void @free_fmodifiers(ptr noundef nonnull %19) #18
  %20 = icmp eq ptr %0, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  br label %24

22:                                               ; preds = %17
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %23(ptr noundef nonnull %1) #18
  br label %24

24:                                               ; preds = %21, %22, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_fcurves(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_fmodifiers(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_nlatrack(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.NlaTrack, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  tail call void @free_nlastrip(ptr noundef nonnull %5, ptr noundef nonnull %9) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !50

12:                                               ; preds = %8, %4
  %13 = icmp eq ptr %0, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  br label %17

15:                                               ; preds = %12
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %16(ptr noundef nonnull %1) #18
  br label %17

17:                                               ; preds = %14, %15, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_nladata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  tail call void @free_nlatrack(ptr noundef nonnull %0, ptr noundef nonnull %7) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !53

10:                                               ; preds = %6
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #17
  br label %11

11:                                               ; preds = %1, %3, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !54 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_nlastrip(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %6 = tail call ptr %5(ptr noundef nonnull %0) #18
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @id_us_plus(ptr noundef nonnull %8) #18
  br label %15

13:                                               ; preds = %10
  %14 = tail call ptr @BKE_action_copy(ptr noundef nonnull %8) #18
  store ptr %14, ptr %7, align 8, !tbaa !46
  br label %15

15:                                               ; preds = %12, %13, %4
  %16 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 5
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 5
  tail call void @copy_fcurves(ptr noundef nonnull %16, ptr noundef nonnull %17) #18
  %18 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 6
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 6
  tail call void @copy_fmodifiers(ptr noundef nonnull %18, ptr noundef nonnull %19) #18
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 2
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %20) #17
  %21 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %15, %24
  %25 = phi ptr [ %27, %24 ], [ %22, %15 ]
  %26 = tail call ptr @copy_nlastrip(ptr noundef nonnull %25, i8 noundef zeroext %1) #17
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %26) #18
  %27 = load ptr, ptr %25, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %24, !llvm.loop !55

29:                                               ; preds = %24, %15, %2
  %30 = phi ptr [ null, %2 ], [ %6, %15 ], [ %6, %24 ]
  ret ptr %30
}

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_action_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_fcurves(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_fmodifiers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_nlatrack(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %6 = tail call ptr %5(ptr noundef nonnull %0) #18
  %7 = getelementptr inbounds %struct.NlaTrack, ptr %6, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %7) #17
  %8 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %4 ]
  %13 = tail call ptr @copy_nlastrip(ptr noundef nonnull %12, i8 noundef zeroext %1) #17
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %13) #18
  %14 = load ptr, ptr %12, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !56

16:                                               ; preds = %11, %4, %2
  %17 = phi ptr [ null, %2 ], [ %6, %4 ], [ %6, %11 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_nladata(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #17
  %7 = load ptr, ptr %1, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %6 ]
  %11 = tail call ptr @copy_nlatrack(ptr noundef nonnull %10, i8 noundef zeroext 1) #17
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %11) #18
  %12 = load ptr, ptr %10, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !57

14:                                               ; preds = %9, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_nlatrack(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %6 = tail call ptr %5(i64 noundef 104, ptr noundef nonnull @.str) #18
  %7 = getelementptr inbounds %struct.NlaTrack, ptr %6, i64 0, i32 3
  store i32 2, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %9 = tail call i32 @BLI_countlist(ptr noundef nonnull %8) #18
  %10 = getelementptr inbounds %struct.NlaTrack, ptr %6, i64 0, i32 4
  store i32 %9, ptr %10, align 4, !tbaa !59
  %11 = icmp eq ptr %1, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %8, ptr noundef nonnull %1, ptr noundef nonnull %6) #18
  br label %14

13:                                               ; preds = %4
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef nonnull %6) #18
  br label %14

14:                                               ; preds = %13, %12
  tail call void @BKE_nlatrack_set_active(ptr noundef nonnull %8, ptr noundef nonnull %6) #17
  %15 = getelementptr inbounds %struct.NlaTrack, ptr %6, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %15, ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false) #18
  tail call void @BLI_uniquename(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #18
  br label %16

16:                                               ; preds = %2, %14
  %17 = phi ptr [ %6, %14 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nlatrack_set_active(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.NlaTrack, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !58
  %11 = and i32 %10, -2
  store i32 %11, ptr %9, align 8, !tbaa !58
  %12 = load ptr, ptr %8, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !60

14:                                               ; preds = %7
  %15 = icmp eq ptr %1, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.NlaTrack, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !58
  %19 = or i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !58
  br label %20

20:                                               ; preds = %14, %16, %2, %4
  ret void
}

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_nlastrip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %5 = tail call ptr %4(i64 noundef 208, ptr noundef nonnull @.str.1) #18
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 23
  store i32 1026, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 3
  store ptr %0, ptr %7, align 8, !tbaa !46
  tail call void @id_us_plus(ptr noundef nonnull %0) #18
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 12
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 13
  tail call void @calc_action_range(ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i16 noundef signext 0) #18
  %11 = load float, ptr %9, align 8, !tbaa !62
  %12 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 10
  store float %11, ptr %12, align 8, !tbaa !63
  %13 = load float, ptr %10, align 4, !tbaa !64
  %14 = fsub float %11, %13
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fcmp ult float %15, 0x3E80000000000000
  %17 = fadd float %11, 1.000000e+00
  %18 = select i1 %16, float %17, float %13
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 11
  store float %18, ptr %19, align 4, !tbaa !65
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 14
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %20, align 8, !tbaa !66
  br label %21

21:                                               ; preds = %1, %3
  %22 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %22
}

; Function Attrs: optsize
declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_nlastrip_to_stack(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @add_nlastrip(ptr noundef nonnull %1) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = tail call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %11, ptr noundef nonnull %7) #17, !range !69
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = tail call ptr @add_nlatrack(ptr noundef nonnull %0, ptr noundef null) #17
  %16 = tail call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %15, ptr noundef nonnull %7) #17, !range !69
  br label %17

17:                                               ; preds = %14, %9
  tail call void @BKE_nlastrip_validate_name(ptr noundef nonnull %0, ptr noundef nonnull %7) #17
  br label %18

18:                                               ; preds = %6, %2, %17
  %19 = phi ptr [ %7, %17 ], [ null, %2 ], [ null, %6 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %8 = tail call zeroext i8 @BKE_nlastrips_add_strip(ptr noundef nonnull %7, ptr noundef nonnull %1) #17, !range !69
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nlastrip_validate_name(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 7
  %8 = load i8, ptr %7, align 8, !tbaa !70
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 21
  %12 = load i16, ptr %11, align 2, !tbaa !71
  switch i16 %12, label %20 [
    i16 0, label %13
    i16 1, label %21
    i16 2, label %19
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 4, i64 2
  %18 = select i1 %16, ptr @.str.11, ptr %17
  br label %21

19:                                               ; preds = %10
  br label %21

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %10, %20, %19, %13
  %22 = phi ptr [ %18, %13 ], [ @.str.13, %19 ], [ @.str.14, %20 ], [ @.str.12, %10 ]
  %23 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %22, i64 noundef 64) #18
  br label %24

24:                                               ; preds = %21, %6
  %25 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.15) #18
  %26 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %32

29:                                               ; preds = %42, %32
  %30 = load ptr, ptr %33, align 8, !tbaa !47
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32, !llvm.loop !72

32:                                               ; preds = %24, %29
  %33 = phi ptr [ %30, %29 ], [ %27, %24 ]
  %34 = getelementptr inbounds %struct.NlaTrack, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %29, label %37

37:                                               ; preds = %32, %42
  %38 = phi ptr [ %43, %42 ], [ %35, %32 ]
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.NlaStrip, ptr %38, i64 0, i32 7
  tail call void @BLI_ghash_insert(ptr noundef %25, ptr noundef nonnull %41, ptr noundef nonnull %38) #18
  br label %42

42:                                               ; preds = %37, %40
  %43 = load ptr, ptr %38, align 8, !tbaa !47
  %44 = icmp eq ptr %43, null
  br i1 %44, label %29, label %37, !llvm.loop !73

45:                                               ; preds = %29, %24
  %46 = tail call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @nla_editbone_name_check, ptr noundef %25, ptr noundef nonnull @.str.1, i8 noundef zeroext 46, ptr noundef nonnull %7, i32 noundef 64) #18
  tail call void @BLI_ghash_free(ptr noundef %25, ptr noundef null, ptr noundef null) #18
  br label %47

47:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_nla_soundstrip(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %4 = tail call ptr %3(i64 noundef 208, ptr noundef nonnull @.str.2) #18
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  store float 1.000000e+01, ptr %5, align 4, !tbaa !65
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 21
  store i16 3, ptr %6, align 2, !tbaa !71
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  store i32 2, ptr %7, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 19
  store i16 2, ptr %8, align 2, !tbaa !74
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 14
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %9, align 8, !tbaa !66
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @nlastrip_get_frame(ptr nocapture noundef %0, float noundef %1, i16 noundef signext %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 21
  %5 = load i16, ptr %4, align 2, !tbaa !71
  %6 = add i16 %5, -1
  %7 = icmp ult i16 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call fastcc float @nlastrip_get_frame_transition(ptr noundef nonnull %0, float noundef %1, i16 noundef signext %2) #17
  br label %12

10:                                               ; preds = %3
  %11 = tail call fastcc float @nlastrip_get_frame_actionclip(ptr noundef nonnull %0, float noundef %1, i16 noundef signext %2) #17
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi float [ %11, %10 ], [ %9, %8 ]
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @nlastrip_get_frame_transition(ptr nocapture noundef readonly %0, float noundef %1, i16 noundef signext %2) unnamed_addr #7 !PGOFuncName !75 {
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !65
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %7 = load float, ptr %6, align 8, !tbaa !63
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 23
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i16 %2, 2
  br i1 %12, label %21, label %14

14:                                               ; preds = %3
  br i1 %13, label %15, label %18

15:                                               ; preds = %14
  %16 = fneg float %8
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %1, float %5)
  br label %27

18:                                               ; preds = %14
  %19 = fsub float %5, %1
  %20 = fdiv float %19, %8
  br label %27

21:                                               ; preds = %3
  br i1 %13, label %22, label %24

22:                                               ; preds = %21
  %23 = tail call float @llvm.fmuladd.f32(float %8, float %1, float %7)
  br label %27

24:                                               ; preds = %21
  %25 = fsub float %1, %7
  %26 = fdiv float %25, %8
  br label %27

27:                                               ; preds = %24, %22, %18, %15
  %28 = phi float [ %17, %15 ], [ %20, %18 ], [ %23, %22 ], [ %26, %24 ]
  ret float %28
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @nlastrip_get_frame_actionclip(ptr nocapture noundef %0, float noundef %1, i16 noundef signext %2) unnamed_addr #6 !PGOFuncName !76 {
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 14
  %5 = load float, ptr %4, align 8, !tbaa !77
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fcmp ult float %6, 0x3E80000000000000
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store float 1.000000e+00, ptr %4, align 8, !tbaa !77
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi float [ 1.000000e+00, %8 ], [ %5, %3 ]
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 15
  %12 = load float, ptr %11, align 4, !tbaa !78
  %13 = tail call float @llvm.fabs.f32(float %12)
  %14 = fcmp ult float %13, 0x3E80000000000000
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store float 1.000000e+00, ptr %11, align 4, !tbaa !78
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi float [ 1.000000e+00, %15 ], [ %12, %9 ]
  %18 = tail call float @llvm.fabs.f32(float %17)
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 13
  %20 = load float, ptr %19, align 4, !tbaa !64
  %21 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 12
  %22 = load float, ptr %21, align 8, !tbaa !62
  %23 = fsub float %20, %22
  %24 = tail call float @llvm.fabs.f32(float %23)
  %25 = fcmp ult float %24, 0x3E80000000000000
  %26 = select i1 %25, float 1.000000e+00, float %23
  %27 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 23
  %28 = load i32, ptr %27, align 8, !tbaa !61
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %60, label %31

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %33 = load float, ptr %32, align 4, !tbaa !65
  switch i16 %2, label %43 [
    i16 2, label %34
    i16 1, label %38
  ]

34:                                               ; preds = %31
  %35 = fsub float %1, %22
  %36 = fneg float %18
  %37 = tail call float @llvm.fmuladd.f32(float %36, float %35, float %33)
  br label %91

38:                                               ; preds = %31
  %39 = fneg float %1
  %40 = tail call float @llvm.fmuladd.f32(float %22, float %18, float %39)
  %41 = fadd float %40, %33
  %42 = fdiv float %41, %18
  br label %91

43:                                               ; preds = %31
  %44 = fsub float %1, %33
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = fcmp ult float %45, 0x3E80000000000000
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = tail call float @llvm.floor.f32(float %10)
  %49 = fsub float %10, %48
  %50 = tail call float @llvm.fabs.f32(float %49)
  %51 = fcmp ult float %50, 0x3E80000000000000
  br i1 %51, label %91, label %52

52:                                               ; preds = %47, %43
  %53 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %54 = load float, ptr %53, align 8, !tbaa !63
  %55 = fsub float %1, %54
  %56 = fmul float %18, %26
  %57 = tail call float @fmodf(float noundef %55, float noundef %56) #18
  %58 = fdiv float %57, %18
  %59 = fsub float %20, %58
  br label %91

60:                                               ; preds = %16
  switch i16 %2, label %72 [
    i16 2, label %61
    i16 1, label %66
  ]

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %63 = load float, ptr %62, align 8, !tbaa !63
  %64 = fsub float %1, %22
  %65 = tail call float @llvm.fmuladd.f32(float %18, float %64, float %63)
  br label %91

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %68 = load float, ptr %67, align 8, !tbaa !63
  %69 = fsub float %1, %68
  %70 = fdiv float %69, %18
  %71 = fadd float %22, %70
  br label %91

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %74 = load float, ptr %73, align 4, !tbaa !65
  %75 = fsub float %1, %74
  %76 = tail call float @llvm.fabs.f32(float %75)
  %77 = fcmp ult float %76, 0x3E80000000000000
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = tail call float @llvm.floor.f32(float %10)
  %80 = fsub float %10, %79
  %81 = tail call float @llvm.fabs.f32(float %80)
  %82 = fcmp ult float %81, 0x3E80000000000000
  br i1 %82, label %91, label %83

83:                                               ; preds = %78, %72
  %84 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %85 = load float, ptr %84, align 8, !tbaa !63
  %86 = fsub float %1, %85
  %87 = fmul float %18, %26
  %88 = tail call float @fmodf(float noundef %86, float noundef %87) #18
  %89 = fdiv float %88, %18
  %90 = fadd float %22, %89
  br label %91

91:                                               ; preds = %78, %47, %83, %66, %61, %52, %38, %34
  %92 = phi float [ %37, %34 ], [ %42, %38 ], [ %59, %52 ], [ %65, %61 ], [ %71, %66 ], [ %90, %83 ], [ %22, %47 ], [ %20, %78 ]
  ret float %92
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @BKE_nla_tweakedit_remap(ptr noundef %0, float noundef %1, i16 noundef signext %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !79
  %8 = and i32 %7, 12
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %16 = tail call ptr @BKE_nlatrack_find_active(ptr noundef nonnull %15) #17
  %17 = tail call ptr @BKE_nlastrip_find_active(ptr noundef %16) #17
  store ptr %17, ptr %11, align 8, !tbaa !80
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %10, %14
  %20 = phi ptr [ %17, %14 ], [ %12, %10 ]
  %21 = getelementptr inbounds %struct.NlaStrip, ptr %20, i64 0, i32 23
  %22 = load i32, ptr %21, align 8, !tbaa !61
  %23 = and i32 %22, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call float @nlastrip_get_frame(ptr noundef nonnull %20, float noundef %1, i16 noundef signext %2) #17
  br label %27

27:                                               ; preds = %14, %19, %3, %5, %25
  %28 = phi float [ %26, %25 ], [ %1, %5 ], [ %1, %3 ], [ %1, %19 ], [ %1, %14 ]
  ret float %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_nlatrack_find_active(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3, %12
  %7 = phi ptr [ %13, %12 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.NlaTrack, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !58
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !81

15:                                               ; preds = %12, %6, %1, %3
  %16 = phi ptr [ null, %3 ], [ null, %1 ], [ null, %12 ], [ %7, %6 ]
  ret ptr %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_nlastrip_find_active(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 23
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr %8, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !82

16:                                               ; preds = %13, %7, %1, %3
  %17 = phi ptr [ null, %3 ], [ null, %1 ], [ null, %13 ], [ %8, %7 ]
  ret ptr %17
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_nlastrips_has_space(ptr noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #10 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = fsub float %1, %2
  %7 = tail call float @llvm.fabs.f32(float %6)
  %8 = fcmp ult float %7, 0x3E80000000000000
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = fcmp ogt float %1, %2
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.3) #17
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi float [ %2, %11 ], [ %1, %9 ]
  %15 = phi float [ %1, %11 ], [ %2, %9 ]
  br label %16

16:                                               ; preds = %24, %13
  %17 = phi ptr [ %0, %13 ], [ %18, %24 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.NlaStrip, ptr %18, i64 0, i32 10
  %22 = load float, ptr %21, align 8, !tbaa !63
  %23 = fcmp ult float %22, %15
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %18, i64 0, i32 11
  %26 = load float, ptr %25, align 4, !tbaa !65
  %27 = fcmp ogt float %26, %14
  %28 = fcmp ogt float %26, %15
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %16, !llvm.loop !83

30:                                               ; preds = %16, %24, %20, %3, %5
  %31 = phi i8 [ 0, %5 ], [ 0, %3 ], [ 1, %16 ], [ 0, %24 ], [ 1, %20 ]
  ret i8 %31
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nlastrips_sort_strips(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %28
  %10 = phi ptr [ %5, %7 ], [ %11, %28 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %10) #18
  %12 = load ptr, ptr %8, align 8, !tbaa !84
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.NlaStrip, ptr %10, i64 0, i32 10
  %16 = load float, ptr %15, align 8, !tbaa !63
  br label %17

17:                                               ; preds = %14, %23
  %18 = phi ptr [ %12, %14 ], [ %25, %23 ]
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %18, i64 0, i32 11
  %20 = load float, ptr %19, align 4, !tbaa !65
  %21 = fcmp ugt float %20, %16
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void @BLI_insertlinkafter(ptr noundef nonnull %2, ptr noundef nonnull %18, ptr noundef nonnull %10) #18
  br label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %18, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !85
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %17, !llvm.loop !86

27:                                               ; preds = %23, %9
  call void @BLI_addhead(ptr noundef nonnull %2, ptr noundef nonnull %10) #18
  br label %28

28:                                               ; preds = %22, %27
  %29 = icmp eq ptr %11, null
  br i1 %29, label %30, label %9, !llvm.loop !87

30:                                               ; preds = %28
  %31 = load <2 x ptr>, ptr %2, align 16, !tbaa !47
  store <2 x ptr> %31, ptr %0, align 8, !tbaa !47
  br label %32

32:                                               ; preds = %1, %4, %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_nlastrips_add_strip(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 10
  %8 = load float, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 11
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = tail call zeroext i8 @BKE_nlastrips_has_space(ptr noundef nonnull %0, float noundef %8, float noundef %10) #17, !range !69
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %6, %17
  %14 = phi ptr [ %15, %17 ], [ %0, %6 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.NlaStrip, ptr %15, i64 0, i32 10
  %19 = load float, ptr %18, align 8, !tbaa !63
  %20 = load float, ptr %9, align 4, !tbaa !65
  %21 = fcmp ult float %19, %20
  br i1 %21, label %13, label %22, !llvm.loop !88

22:                                               ; preds = %17
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %1) #18
  br label %24

23:                                               ; preds = %13
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %24

24:                                               ; preds = %22, %23, %6, %2
  %25 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 1, %23 ], [ 1, %22 ]
  ret i8 %25
}

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nlastrips_make_metas(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = icmp eq i8 %1, 0
  %9 = select i1 %8, i32 2, i32 1073741826
  br label %10

10:                                               ; preds = %7, %35
  %11 = phi ptr [ null, %7 ], [ %36, %35 ]
  %12 = phi ptr [ %5, %7 ], [ %13, %35 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 23
  %15 = load i32, ptr %14, align 8, !tbaa !61
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = icmp eq ptr %11, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %22 = tail call ptr %21(i64 noundef 208, ptr noundef nonnull @.str.4) #18
  %23 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 21
  store i16 2, ptr %23, align 2, !tbaa !71
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef %22) #18
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 23
  store i32 %9, ptr %24, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 14
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %25, align 8, !tbaa !66
  %26 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 10
  %27 = load float, ptr %26, align 8, !tbaa !63
  %28 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 10
  store float %27, ptr %28, align 8, !tbaa !63
  br label %29

29:                                               ; preds = %20, %18
  %30 = phi ptr [ %22, %20 ], [ %11, %18 ]
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %12) #18
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %31, ptr noundef nonnull %12) #18
  %32 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 11
  %33 = load float, ptr %32, align 4, !tbaa !65
  %34 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 11
  store float %33, ptr %34, align 4, !tbaa !65
  br label %35

35:                                               ; preds = %10, %29
  %36 = phi ptr [ %30, %29 ], [ null, %10 ]
  %37 = icmp eq ptr %13, null
  br i1 %37, label %38, label %10, !llvm.loop !89

38:                                               ; preds = %35, %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nlastrips_clear_metastrip(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %11) #18
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !90

14:                                               ; preds = %10, %6
  tail call void @free_nlastrip(ptr noundef %0, ptr noundef %1) #17
  br label %15

15:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nlastrips_clear_metas(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %5
  %9 = icmp eq i8 %1, 0
  %10 = icmp eq i8 %2, 0
  br label %11

11:                                               ; preds = %8, %30
  %12 = phi ptr [ %6, %8 ], [ %13, %30 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 21
  %15 = load i16, ptr %14, align 2, !tbaa !71
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  br i1 %9, label %23, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 23
  %20 = load i32, ptr %19, align 8, !tbaa !61
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18, %17
  br i1 %10, label %29, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 23
  %26 = load i32, ptr %25, align 8, !tbaa !61
  %27 = and i32 %26, 1073741824
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %23
  tail call void @BKE_nlastrips_clear_metastrip(ptr noundef nonnull %0, ptr noundef nonnull %12) #17
  br label %30

30:                                               ; preds = %11, %24, %29, %18
  %31 = icmp eq ptr %13, null
  br i1 %31, label %32, label %11, !llvm.loop !91

32:                                               ; preds = %30, %3, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_nlameta_add_strip(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 10
  %9 = load float, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 11
  %11 = load float, ptr %10, align 4, !tbaa !65
  %12 = tail call zeroext i8 @BKE_nlastrips_has_space(ptr noundef nonnull %7, float noundef %9, float noundef %11) #17, !range !69
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %6
  %15 = load float, ptr %8, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %17 = load float, ptr %16, align 8, !tbaa !63
  %18 = fcmp olt float %15, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %21, i64 0, i32 11
  %25 = load float, ptr %24, align 4, !tbaa !65
  %26 = fcmp ugt float %25, %15
  br i1 %26, label %45, label %27

27:                                               ; preds = %23, %19
  tail call void @BLI_addhead(ptr noundef nonnull %7, ptr noundef nonnull %1) #18
  %28 = load float, ptr %8, align 8, !tbaa !63
  store float %28, ptr %16, align 8, !tbaa !63
  br label %45

29:                                               ; preds = %14
  %30 = load float, ptr %10, align 4, !tbaa !65
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %32 = load float, ptr %31, align 4, !tbaa !65
  %33 = fcmp ogt float %30, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load ptr, ptr %0, align 8, !tbaa !43
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.NlaStrip, ptr %35, i64 0, i32 10
  %39 = load float, ptr %38, align 8, !tbaa !63
  %40 = fcmp ult float %39, %30
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %34
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef nonnull %1) #18
  %42 = load float, ptr %10, align 4, !tbaa !65
  store float %42, ptr %31, align 4, !tbaa !65
  br label %45

43:                                               ; preds = %29
  %44 = tail call zeroext i8 @BKE_nlastrips_add_strip(ptr noundef nonnull %7, ptr noundef nonnull %1) #17, !range !69
  br label %45

45:                                               ; preds = %37, %23, %6, %2, %43, %41, %27
  %46 = phi i8 [ 1, %27 ], [ 1, %41 ], [ %44, %43 ], [ 0, %2 ], [ 0, %6 ], [ 0, %23 ], [ 0, %37 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nlameta_flush_transforms(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %70, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %70, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 21
  %10 = load i16, ptr %9, align 2, !tbaa !71
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %12, label %70

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 10
  %14 = load float, ptr %13, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %16, i64 0, i32 11
  %18 = load float, ptr %17, align 4, !tbaa !65
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %20 = load float, ptr %19, align 8, !tbaa !63
  %21 = fsub float %20, %14
  %22 = fsub float %14, %20
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fcmp ult float %23, 0x3E80000000000000
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %26 = load float, ptr %25, align 4, !tbaa !65
  br i1 %24, label %27, label %31

27:                                               ; preds = %12
  %28 = fsub float %18, %26
  %29 = tail call float @llvm.fabs.f32(float %28)
  %30 = fcmp ult float %29, 0x3E80000000000000
  br i1 %30, label %70, label %31

31:                                               ; preds = %12, %27
  %32 = fsub float %18, %14
  %33 = fsub float %26, %20
  %34 = fsub float %33, %32
  %35 = tail call float @llvm.fabs.f32(float %34)
  %36 = fcmp ult float %35, 0x3E80000000000000
  br label %37

37:                                               ; preds = %31, %56
  %38 = phi ptr [ %58, %56 ], [ %6, %31 ]
  %39 = getelementptr inbounds %struct.NlaStrip, ptr %38, i64 0, i32 10
  %40 = load float, ptr %39, align 8, !tbaa !63
  %41 = getelementptr inbounds %struct.NlaStrip, ptr %38, i64 0, i32 11
  br i1 %36, label %52, label %42

42:                                               ; preds = %37
  %43 = fsub float %40, %14
  %44 = fdiv float %43, %32
  %45 = load float, ptr %41, align 4, !tbaa !65
  %46 = fsub float %45, %14
  %47 = fdiv float %46, %32
  %48 = load float, ptr %19, align 8, !tbaa !63
  %49 = tail call float @llvm.fmuladd.f32(float %44, float %33, float %48)
  store float %49, ptr %39, align 8, !tbaa !63
  %50 = load float, ptr %19, align 8, !tbaa !63
  %51 = tail call float @llvm.fmuladd.f32(float %47, float %33, float %50)
  br label %56

52:                                               ; preds = %37
  %53 = fadd float %21, %40
  store float %53, ptr %39, align 8, !tbaa !63
  %54 = load float, ptr %41, align 4, !tbaa !65
  %55 = fadd float %21, %54
  br label %56

56:                                               ; preds = %42, %52
  %57 = phi float [ %51, %42 ], [ %55, %52 ]
  store float %57, ptr %41, align 4, !tbaa !65
  %58 = load ptr, ptr %38, align 8, !tbaa !47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %37, !llvm.loop !93

60:                                               ; preds = %56, %67
  %61 = phi ptr [ %68, %67 ], [ %6, %56 ]
  br i1 %36, label %67, label %62

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_NlaStrip, ptr noundef nonnull %61, ptr noundef nonnull %2) #18
  %63 = getelementptr inbounds %struct.NlaStrip, ptr %61, i64 0, i32 10
  %64 = load float, ptr %63, align 8, !tbaa !63
  call void @RNA_float_set(ptr noundef nonnull %2, ptr noundef nonnull @.str.5, float noundef %64) #18
  %65 = getelementptr inbounds %struct.NlaStrip, ptr %61, i64 0, i32 11
  %66 = load float, ptr %65, align 4, !tbaa !65
  call void @RNA_float_set(ptr noundef nonnull %2, ptr noundef nonnull @.str.6, float noundef %66) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %67

67:                                               ; preds = %62, %60
  call void @BKE_nlameta_flush_transforms(ptr noundef nonnull %61) #17
  %68 = load ptr, ptr %61, align 8, !tbaa !47
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %60, !llvm.loop !94

70:                                               ; preds = %67, %27, %8, %1, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nlatrack_solo_toggle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %4, %15
  %9 = phi ptr [ %16, %15 ], [ %6, %4 ]
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.NlaTrack, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !58
  %14 = and i32 %13, -9
  store i32 %14, ptr %12, align 8, !tbaa !58
  br label %15

15:                                               ; preds = %8, %11
  %16 = load ptr, ptr %9, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !96

18:                                               ; preds = %15
  %19 = icmp eq ptr %1, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.NlaTrack, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !58
  %23 = xor i32 %22, 8
  store i32 %23, ptr %21, align 8, !tbaa !58
  %24 = and i32 %22, 8
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !79
  br i1 %25, label %28, label %30

28:                                               ; preds = %20
  %29 = or i32 %27, 1
  store i32 %29, ptr %26, align 8, !tbaa !79
  br label %36

30:                                               ; preds = %20
  %31 = and i32 %27, -2
  store i32 %31, ptr %26, align 8, !tbaa !79
  br label %36

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !79
  %35 = and i32 %34, -2
  store i32 %35, ptr %33, align 8, !tbaa !79
  br label %36

36:                                               ; preds = %32, %30, %28, %2, %4
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_nlatrack_has_space(ptr noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #10 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = fsub float %1, %2
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fcmp ult float %12, 0x3E80000000000000
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = fcmp ogt float %1, %2
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.7) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi float [ %2, %16 ], [ %1, %14 ]
  %20 = phi float [ %1, %16 ], [ %2, %14 ]
  %21 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %22 = tail call zeroext i8 @BKE_nlastrips_has_space(ptr noundef nonnull %21, float noundef %19, float noundef %20) #17, !range !69
  br label %23

23:                                               ; preds = %3, %5, %10, %18
  %24 = phi i8 [ %22, %18 ], [ 0, %10 ], [ 0, %5 ], [ 0, %3 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nlatrack_sort_strips(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_nlastrips_sort_strips(ptr noundef nonnull %4) #17
  br label %8

8:                                                ; preds = %1, %3, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_nlatrack_get_bounds(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #13 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds float, ptr %1, i64 1
  store <2 x float> zeroinitializer, ptr %1, align 4, !tbaa !66
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.NlaStrip, ptr %9, i64 0, i32 10
  %13 = load float, ptr %12, align 8, !tbaa !63
  store float %13, ptr %1, align 4, !tbaa !66
  %14 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = getelementptr inbounds %struct.NlaStrip, ptr %15, i64 0, i32 11
  %17 = load float, ptr %16, align 4, !tbaa !65
  store float %17, ptr %5, align 4, !tbaa !66
  br label %18

18:                                               ; preds = %4, %7, %2, %11
  %19 = phi i8 [ 1, %11 ], [ 0, %2 ], [ 0, %7 ], [ 0, %4 ]
  ret i8 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nlastrip_set_active(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 23
  br label %13

10:                                               ; preds = %28, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13, !llvm.loop !98

13:                                               ; preds = %8, %10
  %14 = phi ptr [ %11, %10 ], [ %6, %8 ]
  %15 = getelementptr inbounds %struct.NlaTrack, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %18

18:                                               ; preds = %13, %28
  %19 = phi ptr [ %29, %28 ], [ %16, %13 ]
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 23
  %23 = load i32, ptr %22, align 8, !tbaa !61
  %24 = and i32 %23, -2
  store i32 %24, ptr %22, align 8, !tbaa !61
  br label %28

25:                                               ; preds = %18
  %26 = load i32, ptr %9, align 8, !tbaa !61
  %27 = or i32 %26, 1
  store i32 %27, ptr %9, align 8, !tbaa !61
  br label %28

28:                                               ; preds = %21, %25
  %29 = load ptr, ptr %19, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %10, label %18, !llvm.loop !99

31:                                               ; preds = %10, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %7 = load float, ptr %6, align 4, !tbaa !65
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %9 = load float, ptr %8, align 8, !tbaa !63
  %10 = fsub float %7, %9
  br label %11

11:                                               ; preds = %3, %5
  %12 = phi float [ %10, %5 ], [ 0.000000e+00, %3 ]
  %13 = fsub float %2, %1
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = tail call float @llvm.fabs.f32(float %12)
  %16 = fcmp ult float %15, 0x3E80000000000000
  %17 = select i1 %4, i1 true, i1 %16
  %18 = fcmp ult float %14, 0x3E80000000000000
  %19 = or i1 %18, %17
  br i1 %19, label %71, label %20

20:                                               ; preds = %11
  %21 = fcmp olt float %12, %14
  br i1 %21, label %22, label %46

22:                                               ; preds = %20
  %23 = fcmp olt float %1, %2
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %25 = load float, ptr %24, align 8, !tbaa !63
  br i1 %23, label %26, label %30

26:                                               ; preds = %22
  %27 = fcmp ogt float %25, %1
  %28 = fcmp olt float %25, %2
  %29 = and i1 %27, %28
  br i1 %29, label %46, label %34

30:                                               ; preds = %22
  %31 = fcmp ogt float %25, %2
  %32 = fcmp olt float %25, %1
  %33 = and i1 %31, %32
  br i1 %33, label %46, label %40

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %36 = load float, ptr %35, align 4, !tbaa !65
  %37 = fcmp ogt float %36, %1
  %38 = fcmp olt float %36, %2
  %39 = and i1 %37, %38
  br i1 %39, label %46, label %71

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %42 = load float, ptr %41, align 4, !tbaa !65
  %43 = fcmp ogt float %42, %2
  %44 = fcmp olt float %42, %1
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %40, %34, %30, %26, %20
  %47 = fcmp ogt float %12, %14
  br i1 %47, label %48, label %70

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %50 = load float, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %52 = load float, ptr %51, align 4, !tbaa !65
  %53 = fcmp olt float %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = fcmp olt float %50, %1
  %56 = fcmp ogt float %52, %1
  %57 = and i1 %55, %56
  br i1 %57, label %70, label %62

58:                                               ; preds = %48
  %59 = fcmp olt float %52, %1
  %60 = fcmp ogt float %50, %1
  %61 = and i1 %60, %59
  br i1 %61, label %70, label %66

62:                                               ; preds = %54
  %63 = fcmp olt float %50, %2
  %64 = fcmp ogt float %52, %2
  %65 = and i1 %63, %64
  br i1 %65, label %70, label %71

66:                                               ; preds = %58
  %67 = fcmp olt float %52, %2
  %68 = fcmp ogt float %50, %2
  %69 = and i1 %68, %67
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62, %58, %54, %46
  br label %71

71:                                               ; preds = %62, %66, %34, %40, %11, %70
  %72 = phi i8 [ 1, %70 ], [ 0, %11 ], [ 0, %40 ], [ 0, %34 ], [ 0, %66 ], [ 0, %62 ]
  ret i8 %72
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nlastrip_recalculate_bounds(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 21
  %5 = load i16, ptr %4, align 2, !tbaa !71
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 15
  %9 = load float, ptr %8, align 4, !tbaa !78
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 14
  %11 = load float, ptr %10, align 8, !tbaa !77
  %12 = fmul float %9, %11
  %13 = tail call float @llvm.fabs.f32(float %12)
  %14 = fcmp ult float %13, 0x3E80000000000000
  br i1 %14, label %28, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 13
  %17 = load float, ptr %16, align 4, !tbaa !64
  %18 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 12
  %19 = load float, ptr %18, align 8, !tbaa !62
  %20 = fsub float %17, %19
  %21 = tail call float @llvm.fabs.f32(float %20)
  %22 = fcmp ult float %21, 0x3E80000000000000
  %23 = select i1 %22, float 1.000000e+00, float %20
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %25 = load float, ptr %24, align 8, !tbaa !63
  %26 = tail call float @llvm.fmuladd.f32(float %23, float %12, float %25)
  %27 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  store float %26, ptr %27, align 4, !tbaa !65
  br label %28

28:                                               ; preds = %15, %7
  tail call fastcc void @nlastrip_fix_resize_overlaps(ptr noundef nonnull %0) #17
  br label %29

29:                                               ; preds = %1, %3, %28
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @nlastrip_fix_resize_overlaps(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !100 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %6 = load float, ptr %5, align 4, !tbaa !65
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %2, i64 0, i32 10
  %8 = load float, ptr %7, align 8, !tbaa !63
  %9 = fcmp ogt float %6, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = fsub float %6, %8
  %12 = tail call float @llvm.ceil.f32(float %11)
  %13 = insertelement <2 x float> poison, float %12, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  br label %15

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %2, %10 ], [ %20, %15 ]
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %16, i64 0, i32 10
  %18 = load <2 x float>, ptr %17, align 8, !tbaa !66
  %19 = fadd <2 x float> %14, %18
  store <2 x float> %19, ptr %17, align 8, !tbaa !66
  %20 = load ptr, ptr %16, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !101

22:                                               ; preds = %15, %4, %1
  %23 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !85
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %28 = load float, ptr %27, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 11
  %30 = load float, ptr %29, align 4, !tbaa !65
  %31 = fcmp olt float %28, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = fsub float %30, %28
  %34 = tail call float @llvm.ceil.f32(float %33)
  %35 = insertelement <2 x float> poison, float %34, i64 0
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  br label %37

37:                                               ; preds = %32, %37
  %38 = phi ptr [ %24, %32 ], [ %43, %37 ]
  %39 = getelementptr inbounds %struct.NlaStrip, ptr %38, i64 0, i32 10
  %40 = load <2 x float>, ptr %39, align 8, !tbaa !66
  %41 = fsub <2 x float> %40, %36
  store <2 x float> %41, ptr %39, align 8, !tbaa !66
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !85
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %37, !llvm.loop !102

45:                                               ; preds = %37, %26, %22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_nlatrack_has_animated_strips(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3, %12
  %8 = phi ptr [ %13, %12 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !104

15:                                               ; preds = %12, %7, %1, %3
  %16 = phi i8 [ 0, %3 ], [ 0, %1 ], [ 0, %12 ], [ 1, %7 ]
  ret i8 %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_nlatracks_have_animated_strips(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %10
  %7 = phi ptr [ %11, %10 ], [ %4, %3 ]
  %8 = tail call zeroext i8 @BKE_nlatrack_has_animated_strips(ptr noundef nonnull %7) #17, !range !69
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %7, align 8, !tbaa !52
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !105

13:                                               ; preds = %10, %6, %1, %3
  %14 = phi i8 [ 0, %3 ], [ 0, %1 ], [ 0, %10 ], [ 1, %6 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nlastrip_validate_fcurves(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 5
  %10 = tail call ptr @list_find_fcurve(ptr noundef nonnull %9, ptr noundef nonnull @.str.8, i32 noundef 0) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %14 = tail call ptr %13(i64 noundef 112, ptr noundef nonnull @.str.9) #18
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %14) #18
  %15 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 9
  store i16 3, ptr %15, align 8, !tbaa !106
  %16 = tail call ptr @BLI_strdupn(ptr noundef nonnull @.str.8, i64 noundef 9) #18
  %17 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 12
  store ptr %16, ptr %17, align 8, !tbaa !108
  br label %18

18:                                               ; preds = %8, %12, %3
  %19 = load i32, ptr %4, align 8, !tbaa !61
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 5
  %24 = tail call ptr @list_find_fcurve(ptr noundef nonnull %23, ptr noundef nonnull @.str.10, i32 noundef 0) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %28 = tail call ptr %27(i64 noundef 112, ptr noundef nonnull @.str.9) #18
  tail call void @BLI_addtail(ptr noundef nonnull %23, ptr noundef %28) #18
  %29 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 9
  store i16 3, ptr %29, align 8, !tbaa !106
  %30 = tail call ptr @BLI_strdupn(ptr noundef nonnull @.str.10, i64 noundef 10) #18
  %31 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 12
  store ptr %30, ptr %31, align 8, !tbaa !108
  br label %32

32:                                               ; preds = %18, %26, %22, %1
  ret void
}

; Function Attrs: optsize
declare ptr @list_find_fcurve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @nla_editbone_name_check(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !109 {
  %3 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %0, ptr noundef %1) #18
  ret i8 %3
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nla_validate_state(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %59, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %59, label %10

7:                                                ; preds = %31
  %8 = load ptr, ptr %4, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %59, label %38

10:                                               ; preds = %3, %31
  %11 = phi ptr [ %33, %31 ], [ %5, %3 ]
  %12 = phi ptr [ %32, %31 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.NlaTrack, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %10, %27
  %17 = phi ptr [ %29, %27 ], [ %14, %10 ]
  %18 = phi ptr [ %28, %27 ], [ %12, %10 ]
  tail call fastcc void @BKE_nlastrip_validate_autoblends(ptr noundef nonnull %11, ptr noundef nonnull %17) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.NlaStrip, ptr %17, i64 0, i32 10
  %22 = load float, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.NlaStrip, ptr %18, i64 0, i32 10
  %24 = load float, ptr %23, align 8, !tbaa !63
  %25 = fcmp olt float %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %16
  br label %27

27:                                               ; preds = %20, %26
  %28 = phi ptr [ %17, %26 ], [ %18, %20 ]
  %29 = load ptr, ptr %17, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %16, !llvm.loop !110

31:                                               ; preds = %27, %10
  %32 = phi ptr [ %12, %10 ], [ %28, %27 ]
  %33 = load ptr, ptr %11, align 8, !tbaa !52
  %34 = icmp eq ptr %33, null
  br i1 %34, label %7, label %10, !llvm.loop !111

35:                                               ; preds = %56, %38
  %36 = load ptr, ptr %39, align 8, !tbaa !47
  %37 = icmp eq ptr %36, null
  br i1 %37, label %59, label %38, !llvm.loop !112

38:                                               ; preds = %7, %35
  %39 = phi ptr [ %36, %35 ], [ %8, %7 ]
  %40 = getelementptr inbounds %struct.NlaTrack, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = icmp eq ptr %41, null
  br i1 %42, label %35, label %43

43:                                               ; preds = %38, %56
  %44 = phi ptr [ %57, %56 ], [ %41, %38 ]
  %45 = getelementptr inbounds %struct.NlaStrip, ptr %44, i64 0, i32 19
  %46 = load i16, ptr %45, align 2, !tbaa !74
  %47 = icmp eq i16 %46, 2
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = icmp eq ptr %44, %32
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.NlaStrip, ptr %44, i64 0, i32 18
  %52 = load i16, ptr %51, align 8, !tbaa !113
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %48
  %55 = phi i16 [ 0, %48 ], [ 1, %50 ]
  store i16 %55, ptr %45, align 2, !tbaa !74
  br label %56

56:                                               ; preds = %54, %43, %50
  %57 = load ptr, ptr %44, align 8, !tbaa !47
  %58 = icmp eq ptr %57, null
  br i1 %58, label %35, label %43, !llvm.loop !114

59:                                               ; preds = %35, %7, %1, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @BKE_nlastrip_validate_autoblends(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #4 !PGOFuncName !115 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store ptr null, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !52
  %12 = icmp eq ptr %11, null
  br i1 %12, label %88, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 23
  %15 = load i32, ptr %14, align 8, !tbaa !61
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %88, label %26

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 23
  %20 = load i32, ptr %19, align 8, !tbaa !61
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %88, label %23

23:                                               ; preds = %18
  call fastcc void @nlastrip_get_endpoint_overlaps(ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %24 = load ptr, ptr %0, align 8, !tbaa !52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %13, %23
  %27 = phi ptr [ %24, %23 ], [ %11, %13 ]
  call fastcc void @nlastrip_get_endpoint_overlaps(ptr noundef nonnull %1, ptr noundef nonnull %27, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %28 = load ptr, ptr %5, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %28, %26 ], [ null, %23 ]
  %31 = load ptr, ptr %3, align 8
  %32 = icmp ne ptr %31, null
  %33 = icmp ne ptr %30, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !85
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.NlaStrip, ptr %37, i64 0, i32 11
  %41 = load float, ptr %40, align 4, !tbaa !65
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 10
  %43 = load float, ptr %42, align 8, !tbaa !63
  %44 = fsub float %41, %43
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = fcmp ult float %45, 0x3E80000000000000
  br i1 %46, label %57, label %47

47:                                               ; preds = %39, %35
  %48 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 10
  %49 = load float, ptr %48, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 16
  br i1 %32, label %51, label %54

51:                                               ; preds = %47
  %52 = load float, ptr %31, align 4, !tbaa !66
  %53 = fsub float %52, %49
  store float %53, ptr %50, align 8, !tbaa !117
  br label %59

54:                                               ; preds = %47
  %55 = load float, ptr %30, align 4, !tbaa !66
  %56 = fsub float %55, %49
  store float %56, ptr %50, align 8, !tbaa !117
  br label %59

57:                                               ; preds = %29, %39
  %58 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 16
  store float 0.000000e+00, ptr %58, align 8, !tbaa !117
  br label %59

59:                                               ; preds = %51, %54, %57
  %60 = load ptr, ptr %4, align 8
  %61 = icmp ne ptr %60, null
  %62 = load ptr, ptr %6, align 8
  %63 = icmp ne ptr %62, null
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %59
  %66 = load ptr, ptr %1, align 8, !tbaa !43
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.NlaStrip, ptr %66, i64 0, i32 10
  %70 = load float, ptr %69, align 8, !tbaa !63
  %71 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 11
  %72 = load float, ptr %71, align 4, !tbaa !65
  %73 = fsub float %70, %72
  %74 = tail call float @llvm.fabs.f32(float %73)
  %75 = fcmp ult float %74, 0x3E80000000000000
  br i1 %75, label %86, label %76

76:                                               ; preds = %68, %65
  %77 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 11
  %78 = load float, ptr %77, align 4, !tbaa !65
  %79 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 17
  br i1 %61, label %80, label %83

80:                                               ; preds = %76
  %81 = load float, ptr %60, align 4, !tbaa !66
  %82 = fsub float %78, %81
  store float %82, ptr %79, align 4, !tbaa !118
  br label %88

83:                                               ; preds = %76
  %84 = load float, ptr %62, align 4, !tbaa !66
  %85 = fsub float %78, %84
  store float %85, ptr %79, align 4, !tbaa !118
  br label %88

86:                                               ; preds = %59, %68
  %87 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 17
  store float 0.000000e+00, ptr %87, align 4, !tbaa !118
  br label %88

88:                                               ; preds = %18, %86, %83, %80, %13, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nla_action_pushdown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !119
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @action_has_motion(ptr noundef nonnull %4) #18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %22

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8, !tbaa !119
  %13 = tail call ptr @add_nlastrip_to_stack(ptr noundef nonnull %0, ptr noundef %12) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !119
  tail call void @id_us_min(ptr noundef %16) #18
  store ptr null, ptr %0, align 8, !tbaa !119
  %17 = tail call fastcc zeroext i8 @nlastrip_is_first(ptr noundef nonnull %0, ptr noundef nonnull %13) #17, !range !69
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %13, i64 0, i32 19
  store i16 1, ptr %20, align 2, !tbaa !74
  br label %21

21:                                               ; preds = %19, %15
  tail call void @BKE_nlastrip_set_active(ptr noundef nonnull %0, ptr noundef nonnull %13) #17
  br label %22

22:                                               ; preds = %11, %21, %1, %3, %9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @action_has_motion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @nlastrip_is_first(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !120 {
  %3 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 10
  br label %12

12:                                               ; preds = %10, %22
  %13 = phi ptr [ %8, %10 ], [ %23, %22 ]
  %14 = getelementptr inbounds %struct.NlaTrack, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.NlaStrip, ptr %15, i64 0, i32 10
  %19 = load float, ptr %18, align 8, !tbaa !63
  %20 = load float, ptr %11, align 8, !tbaa !63
  %21 = fcmp olt float %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %12, %17
  %23 = load ptr, ptr %13, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %12, !llvm.loop !121

25:                                               ; preds = %17, %22, %6, %2
  %26 = phi i8 [ 0, %2 ], [ 1, %6 ], [ 0, %17 ], [ 1, %22 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_nla_tweakmode_enter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %103, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %103, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %103

12:                                               ; preds = %7, %18
  %13 = phi ptr [ %19, %18 ], [ %5, %7 ]
  %14 = getelementptr inbounds %struct.NlaTrack, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !58
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load ptr, ptr %13, align 8, !tbaa !52
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %12, !llvm.loop !122

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %60, label %25

25:                                               ; preds = %21, %31
  %26 = phi ptr [ %33, %31 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.NlaTrack, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !58
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.NlaTrack, ptr %26, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = icmp eq ptr %33, null
  br i1 %34, label %60, label %25, !llvm.loop !123

35:                                               ; preds = %12, %25
  %36 = phi ptr [ %26, %25 ], [ %13, %12 ]
  %37 = tail call ptr @BKE_nlastrip_find_active(ptr noundef nonnull %36) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.NlaTrack, ptr %36, i64 0, i32 2
  br label %41

41:                                               ; preds = %45, %39
  %42 = phi ptr [ %40, %39 ], [ %43, %45 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.NlaStrip, ptr %43, i64 0, i32 23
  %47 = load i32, ptr %46, align 8, !tbaa !61
  %48 = and i32 %47, 3
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %41, label %50, !llvm.loop !124

50:                                               ; preds = %45, %35
  %51 = phi ptr [ %37, %35 ], [ %43, %45 ]
  %52 = getelementptr inbounds %struct.NlaStrip, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.NlaTrack, ptr %36, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !116
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %69, %55
  br label %90

60:                                               ; preds = %31, %41, %21, %50
  %61 = phi ptr [ %51, %50 ], [ null, %21 ], [ null, %41 ], [ null, %31 ]
  %62 = phi ptr [ %36, %50 ], [ null, %21 ], [ %36, %41 ], [ null, %31 ]
  %63 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !125
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %103, label %66

66:                                               ; preds = %60
  %67 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  %68 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %62, ptr noundef %61) #17
  br label %103

69:                                               ; preds = %78, %73
  %70 = getelementptr inbounds %struct.NlaTrack, ptr %74, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !116
  %72 = icmp eq ptr %71, null
  br i1 %72, label %59, label %73, !llvm.loop !127

73:                                               ; preds = %55, %69
  %74 = phi ptr [ %71, %69 ], [ %57, %55 ]
  %75 = getelementptr inbounds %struct.NlaTrack, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !47
  %77 = icmp eq ptr %76, null
  br i1 %77, label %69, label %78

78:                                               ; preds = %73, %78
  %79 = phi ptr [ %88, %78 ], [ %76, %73 ]
  %80 = getelementptr inbounds %struct.NlaStrip, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = icmp eq ptr %81, %53
  %83 = getelementptr inbounds %struct.NlaStrip, ptr %79, i64 0, i32 23
  %84 = load i32, ptr %83, align 8, !tbaa !61
  %85 = and i32 %84, -17
  %86 = select i1 %82, i32 16, i32 0
  %87 = or disjoint i32 %85, %86
  store i32 %87, ptr %83, align 8, !tbaa !61
  %88 = load ptr, ptr %79, align 8, !tbaa !47
  %89 = icmp eq ptr %88, null
  br i1 %89, label %69, label %78, !llvm.loop !128

90:                                               ; preds = %59, %90
  %91 = phi ptr [ %95, %90 ], [ %36, %59 ]
  %92 = getelementptr inbounds %struct.NlaTrack, ptr %91, i64 0, i32 3
  %93 = load i32, ptr %92, align 8, !tbaa !58
  %94 = or i32 %93, 1024
  store i32 %94, ptr %92, align 8, !tbaa !58
  %95 = load ptr, ptr %91, align 8, !tbaa !52
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %90, !llvm.loop !129

97:                                               ; preds = %90
  %98 = load ptr, ptr %0, align 8, !tbaa !119
  %99 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 1
  store ptr %98, ptr %99, align 8, !tbaa !130
  store ptr %53, ptr %0, align 8, !tbaa !119
  %100 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 4
  store ptr %51, ptr %100, align 8, !tbaa !80
  tail call void @id_us_plus(ptr noundef nonnull %53) #18
  %101 = load i32, ptr %8, align 8, !tbaa !79
  %102 = or i32 %101, 4
  store i32 %102, ptr %8, align 8, !tbaa !79
  br label %103

103:                                              ; preds = %60, %66, %7, %1, %3, %97
  %104 = phi i8 [ 1, %97 ], [ 0, %3 ], [ 0, %1 ], [ 1, %7 ], [ 0, %66 ], [ 0, %60 ]
  ret i8 %104
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_nla_tweakmode_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %66, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %66, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %66, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 23
  %18 = load i32, ptr %17, align 8, !tbaa !61
  %19 = and i32 %18, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 21
  %23 = load i16, ptr %22, align 2, !tbaa !71
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 12
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 13
  tail call void @calc_action_range(ptr noundef nonnull %27, ptr noundef nonnull %30, ptr noundef nonnull %31, i16 noundef signext 0) #18
  tail call void @BKE_nlastrip_recalculate_bounds(ptr noundef nonnull %14) #17
  %32 = load ptr, ptr %4, align 8, !tbaa !47
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %12, %16, %25, %21, %29
  %35 = phi ptr [ %5, %12 ], [ %5, %16 ], [ %5, %25 ], [ %5, %21 ], [ %32, %29 ]
  br label %39

36:                                               ; preds = %47, %39
  %37 = load ptr, ptr %40, align 8, !tbaa !47
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39, !llvm.loop !131

39:                                               ; preds = %34, %36
  %40 = phi ptr [ %37, %36 ], [ %35, %34 ]
  %41 = getelementptr inbounds %struct.NlaTrack, ptr %40, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !58
  %43 = and i32 %42, -1025
  store i32 %43, ptr %41, align 8, !tbaa !58
  %44 = getelementptr inbounds %struct.NlaTrack, ptr %40, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !47
  %46 = icmp eq ptr %45, null
  br i1 %46, label %36, label %47

47:                                               ; preds = %39, %47
  %48 = phi ptr [ %52, %47 ], [ %45, %39 ]
  %49 = getelementptr inbounds %struct.NlaStrip, ptr %48, i64 0, i32 23
  %50 = load i32, ptr %49, align 8, !tbaa !61
  %51 = and i32 %50, -17
  store i32 %51, ptr %49, align 8, !tbaa !61
  %52 = load ptr, ptr %48, align 8, !tbaa !47
  %53 = icmp eq ptr %52, null
  br i1 %53, label %36, label %47, !llvm.loop !132

54:                                               ; preds = %36, %29
  %55 = load ptr, ptr %0, align 8, !tbaa !119
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ID, ptr %55, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !133
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %58, align 4, !tbaa !133
  br label %61

61:                                               ; preds = %57, %54
  %62 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !130
  store ptr %63, ptr %0, align 8, !tbaa !119
  store ptr null, ptr %62, align 8, !tbaa !130
  store ptr null, ptr %13, align 8, !tbaa !80
  %64 = load i32, ptr %8, align 8, !tbaa !79
  %65 = and i32 %64, -5
  store i32 %65, ptr %8, align 8, !tbaa !79
  br label %66

66:                                               ; preds = %7, %1, %3, %61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #5

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @nlastrip_get_endpoint_overlaps(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #15 !PGOFuncName !136 {
  %5 = getelementptr inbounds %struct.NlaTrack, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %69, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %10 = load float, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  br label %12

12:                                               ; preds = %8, %66
  %13 = phi ptr [ %6, %8 ], [ %67, %66 ]
  %14 = getelementptr inbounds %struct.NlaStrip, ptr %13, i64 0, i32 10
  %15 = load float, ptr %14, align 8, !tbaa !63
  %16 = fcmp ugt float %15, %10
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %13, i64 0, i32 11
  %18 = load float, ptr %17, align 4, !tbaa !65
  br i1 %16, label %23, label %19

19:                                               ; preds = %12
  %20 = load float, ptr %11, align 4, !tbaa !65
  %21 = fcmp ult float %18, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store ptr null, ptr %2, align 8, !tbaa !47
  store ptr null, ptr %3, align 8, !tbaa !47
  br label %69

23:                                               ; preds = %12, %19
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %13, i64 0, i32 11
  %25 = fcmp olt float %18, %10
  br i1 %25, label %66, label %26

26:                                               ; preds = %23
  %27 = load float, ptr %11, align 4, !tbaa !65
  %28 = fcmp ogt float %15, %27
  br i1 %28, label %69, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %13, align 8, !tbaa !43
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.NlaStrip, ptr %30, i64 0, i32 10
  %34 = load float, ptr %33, align 8, !tbaa !63
  %35 = fsub float %34, %18
  %36 = tail call float @llvm.fabs.f32(float %35)
  %37 = fcmp oge float %36, 0x3E80000000000000
  %38 = fcmp ogt float %18, %10
  %39 = and i1 %38, %37
  %40 = fcmp olt float %18, %27
  %41 = and i1 %40, %39
  br i1 %41, label %46, label %47

42:                                               ; preds = %29
  %43 = fcmp ogt float %18, %10
  %44 = fcmp olt float %18, %27
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %32
  store ptr %24, ptr %2, align 8, !tbaa !47
  br label %47

47:                                               ; preds = %42, %46, %32
  %48 = getelementptr inbounds %struct.NlaStrip, ptr %13, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !85
  %50 = icmp eq ptr %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.NlaStrip, ptr %49, i64 0, i32 11
  %53 = load float, ptr %52, align 4, !tbaa !65
  %54 = fsub float %53, %15
  %55 = tail call float @llvm.fabs.f32(float %54)
  %56 = fcmp oge float %55, 0x3E80000000000000
  %57 = fcmp olt float %15, %27
  %58 = and i1 %57, %56
  %59 = fcmp ogt float %15, %10
  %60 = and i1 %59, %58
  br i1 %60, label %65, label %66

61:                                               ; preds = %47
  %62 = fcmp olt float %15, %27
  %63 = fcmp ogt float %15, %10
  %64 = and i1 %63, %62
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %51
  store ptr %14, ptr %3, align 8, !tbaa !47
  br label %66

66:                                               ; preds = %51, %65, %61, %23
  %67 = load ptr, ptr %13, align 8, !tbaa !47
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %12, !llvm.loop !137

69:                                               ; preds = %26, %66, %4, %22
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }

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
!34 = !{!35, !36, i64 16}
!35 = !{!"NlaStrip", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !36, i64 40, !39, i64 48, !39, i64 64, !37, i64 80, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !41, i64 184, !41, i64 186, !41, i64 188, !41, i64 190, !36, i64 192, !42, i64 200, !42, i64 204}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"float", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"int", !37, i64 0}
!43 = !{!35, !36, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!35, !36, i64 32}
!47 = !{!36, !36, i64 0}
!48 = !{!49, !36, i64 16}
!49 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !39, i64 16, !42, i64 32, !42, i64 36, !37, i64 40}
!50 = distinct !{!50, !45}
!51 = !{!39, !36, i64 0}
!52 = !{!49, !36, i64 0}
!53 = distinct !{!53, !45}
!54 = !{!"nla.c:BLI_listbase_clear"}
!55 = distinct !{!55, !45}
!56 = distinct !{!56, !45}
!57 = distinct !{!57, !45}
!58 = !{!49, !42, i64 32}
!59 = !{!49, !42, i64 36}
!60 = distinct !{!60, !45}
!61 = !{!35, !42, i64 200}
!62 = !{!35, !40, i64 160}
!63 = !{!35, !40, i64 152}
!64 = !{!35, !40, i64 164}
!65 = !{!35, !40, i64 156}
!66 = !{!40, !40, i64 0}
!67 = !{!68, !36, i64 32}
!68 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !36, i64 40, !39, i64 48, !39, i64 64, !42, i64 80, !42, i64 84, !41, i64 88, !41, i64 90, !40, i64 92}
!69 = !{i8 0, i8 2}
!70 = !{!37, !37, i64 0}
!71 = !{!35, !41, i64 190}
!72 = distinct !{!72, !45}
!73 = distinct !{!73, !45}
!74 = !{!35, !41, i64 186}
!75 = !{!"nla.c:nlastrip_get_frame_transition"}
!76 = !{!"nla.c:nlastrip_get_frame_actionclip"}
!77 = !{!35, !40, i64 168}
!78 = !{!35, !40, i64 172}
!79 = !{!68, !42, i64 80}
!80 = !{!68, !36, i64 40}
!81 = distinct !{!81, !45}
!82 = distinct !{!82, !45}
!83 = distinct !{!83, !45}
!84 = !{!39, !36, i64 8}
!85 = !{!35, !36, i64 8}
!86 = distinct !{!86, !45}
!87 = distinct !{!87, !45}
!88 = distinct !{!88, !45}
!89 = distinct !{!89, !45}
!90 = distinct !{!90, !45}
!91 = distinct !{!91, !45}
!92 = !{!35, !36, i64 24}
!93 = distinct !{!93, !45}
!94 = distinct !{!94, !45}
!95 = !{!68, !36, i64 24}
!96 = distinct !{!96, !45}
!97 = !{!49, !36, i64 24}
!98 = distinct !{!98, !45}
!99 = distinct !{!99, !45}
!100 = !{!"nla.c:nlastrip_fix_resize_overlaps"}
!101 = distinct !{!101, !45}
!102 = distinct !{!102, !45}
!103 = !{!35, !36, i64 48}
!104 = distinct !{!104, !45}
!105 = distinct !{!105, !45}
!106 = !{!107, !41, i64 72}
!107 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !42, i64 64, !40, i64 68, !41, i64 72, !41, i64 74, !42, i64 76, !36, i64 80, !42, i64 88, !37, i64 92, !40, i64 104, !40, i64 108}
!108 = !{!107, !36, i64 80}
!109 = !{!"nla.c:nla_editbone_name_check"}
!110 = distinct !{!110, !45}
!111 = distinct !{!111, !45}
!112 = distinct !{!112, !45}
!113 = !{!35, !41, i64 184}
!114 = distinct !{!114, !45}
!115 = !{!"nla.c:BKE_nlastrip_validate_autoblends"}
!116 = !{!49, !36, i64 8}
!117 = !{!35, !40, i64 176}
!118 = !{!35, !40, i64 180}
!119 = !{!68, !36, i64 0}
!120 = !{!"nla.c:nlastrip_is_first"}
!121 = distinct !{!121, !45}
!122 = distinct !{!122, !45}
!123 = distinct !{!123, !45}
!124 = distinct !{!124, !45}
!125 = !{!126, !42, i64 2100}
!126 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !42, i64 2096, !42, i64 2100, !37, i64 2104, !42, i64 2108, !42, i64 2112, !37, i64 2116}
!127 = distinct !{!127, !45}
!128 = distinct !{!128, !45}
!129 = distinct !{!129, !45}
!130 = !{!68, !36, i64 8}
!131 = distinct !{!131, !45}
!132 = distinct !{!132, !45}
!133 = !{!134, !42, i64 100}
!134 = !{!"bAction", !135, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196}
!135 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !36, i64 112}
!136 = !{!"nla.c:nlastrip_get_endpoint_overlaps"}
!137 = distinct !{!137, !45}
