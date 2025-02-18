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

; Function Attrs: nounwind uwtable
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
  tail call void @free_nlastrip(ptr noundef nonnull %5, ptr noundef nonnull %9)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !44

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @id_us_min(ptr noundef nonnull %14) #15
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 5
  tail call void @free_fcurves(ptr noundef nonnull %18) #15
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 6
  tail call void @free_fmodifiers(ptr noundef nonnull %19) #15
  %20 = icmp eq ptr %0, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  br label %24

22:                                               ; preds = %17
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %23(ptr noundef nonnull %1) #15
  br label %24

24:                                               ; preds = %21, %22, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @id_us_min(ptr noundef) local_unnamed_addr #2

declare void @free_fcurves(ptr noundef) local_unnamed_addr #2

declare void @free_fmodifiers(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @free_nlatrack(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.NlaTrack, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  tail call void @free_nlastrip(ptr noundef nonnull %5, ptr noundef nonnull %9)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !51

12:                                               ; preds = %8, %4
  %13 = icmp eq ptr %0, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  br label %17

15:                                               ; preds = %12
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %16(ptr noundef nonnull %1) #15
  br label %17

17:                                               ; preds = %14, %15, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_nladata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3, %16
  %7 = phi ptr [ %8, %16 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.NlaTrack, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %6 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  tail call void @free_nlastrip(ptr noundef nonnull %9, ptr noundef nonnull %13)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !51

16:                                               ; preds = %12, %6
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %7) #15
  %17 = icmp eq ptr %8, null
  br i1 %17, label %18, label %6, !llvm.loop !54

18:                                               ; preds = %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %19

19:                                               ; preds = %1, %3, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @copy_nlastrip(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !48
  %6 = tail call ptr %5(ptr noundef nonnull %0) #15
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @id_us_plus(ptr noundef nonnull %8) #15
  br label %15

13:                                               ; preds = %10
  %14 = tail call ptr @BKE_action_copy(ptr noundef nonnull %8) #15
  store ptr %14, ptr %7, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %12, %13, %4
  %16 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 5
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 5
  tail call void @copy_fcurves(ptr noundef nonnull %16, ptr noundef nonnull %17) #15
  %18 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 6
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 6
  tail call void @copy_fmodifiers(ptr noundef nonnull %18, ptr noundef nonnull %19) #15
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 2
  %21 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %15, %24
  %25 = phi ptr [ %27, %24 ], [ %22, %15 ]
  %26 = tail call ptr @copy_nlastrip(ptr noundef nonnull %25, i8 noundef zeroext %1)
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %26) #15
  %27 = load ptr, ptr %25, align 8, !tbaa !48
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %24, !llvm.loop !55

29:                                               ; preds = %24, %15, %2
  %30 = phi ptr [ null, %2 ], [ %6, %15 ], [ %6, %24 ]
  ret ptr %30
}

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_action_copy(ptr noundef) local_unnamed_addr #2

declare void @copy_fcurves(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_fmodifiers(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @copy_nlatrack(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !48
  %6 = tail call ptr %5(ptr noundef nonnull %0) #15
  %7 = getelementptr inbounds %struct.NlaTrack, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %4 ]
  %13 = tail call ptr @copy_nlastrip(ptr noundef nonnull %12, i8 noundef zeroext %1)
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %13) #15
  %14 = load ptr, ptr %12, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !56

16:                                               ; preds = %11, %4, %2
  %17 = phi ptr [ null, %2 ], [ %6, %4 ], [ %6, %11 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local void @copy_nladata(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr %1, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %6, %22
  %10 = phi ptr [ %23, %22 ], [ %7, %6 ]
  %11 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !48
  %12 = tail call ptr %11(ptr noundef nonnull %10) #15
  %13 = getelementptr inbounds %struct.NlaTrack, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.NlaTrack, ptr %10, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %9, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %9 ]
  %19 = tail call ptr @copy_nlastrip(ptr noundef nonnull %18, i8 noundef zeroext 1)
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %19) #15
  %20 = load ptr, ptr %18, align 8, !tbaa !48
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !llvm.loop !56

22:                                               ; preds = %17, %9
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %12) #15
  %23 = load ptr, ptr %10, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %9, !llvm.loop !57

25:                                               ; preds = %22, %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @add_nlatrack(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %6 = tail call ptr %5(i64 noundef 104, ptr noundef nonnull @.str) #15
  %7 = getelementptr inbounds %struct.NlaTrack, ptr %6, i64 0, i32 3
  store i32 2, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %9 = tail call i32 @BLI_countlist(ptr noundef nonnull %8) #15
  %10 = getelementptr inbounds %struct.NlaTrack, ptr %6, i64 0, i32 4
  store i32 %9, ptr %10, align 4, !tbaa !59
  %11 = icmp eq ptr %1, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %8, ptr noundef nonnull %1, ptr noundef %6) #15
  br label %14

13:                                               ; preds = %4
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %6) #15
  br label %14

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %8, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %22, %17 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.NlaTrack, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !58
  %21 = and i32 %20, -2
  store i32 %21, ptr %19, align 8, !tbaa !58
  %22 = load ptr, ptr %18, align 8, !tbaa !53
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17, !llvm.loop !60

24:                                               ; preds = %17
  %25 = icmp eq ptr %6, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %7, align 8, !tbaa !58
  %28 = or i32 %27, 1
  store i32 %28, ptr %7, align 8, !tbaa !58
  br label %29

29:                                               ; preds = %14, %24, %26
  %30 = getelementptr inbounds %struct.NlaTrack, ptr %6, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %30, ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false) #15
  tail call void @BLI_uniquename(ptr noundef nonnull %8, ptr noundef %6, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #15
  br label %31

31:                                               ; preds = %2, %29
  %32 = phi ptr [ %6, %29 ], [ null, %2 ]
  ret ptr %32
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nlatrack_set_active(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.NlaTrack, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !58
  %11 = and i32 %10, -2
  store i32 %11, ptr %9, align 8, !tbaa !58
  %12 = load ptr, ptr %8, align 8, !tbaa !53
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

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @add_nlastrip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %5 = tail call ptr %4(i64 noundef 208, ptr noundef nonnull @.str.1) #15
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 23
  store i32 1026, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 3
  store ptr %0, ptr %7, align 8, !tbaa !47
  tail call void @id_us_plus(ptr noundef nonnull %0) #15
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 12
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 13
  tail call void @calc_action_range(ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i16 noundef signext 0) #15
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
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 15
  store float 1.000000e+00, ptr %20, align 4, !tbaa !66
  %21 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 14
  store float 1.000000e+00, ptr %21, align 8, !tbaa !67
  br label %22

22:                                               ; preds = %1, %3
  %23 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %23
}

declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @add_nlastrip_to_stack(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %139, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %8 = tail call ptr %7(i64 noundef 208, ptr noundef nonnull @.str.1) #15
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 23
  store i32 1026, ptr %9, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 3
  store ptr %1, ptr %10, align 8, !tbaa !47
  tail call void @id_us_plus(ptr noundef nonnull %1) #15
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 12
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 13
  tail call void @calc_action_range(ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i16 noundef signext 0) #15
  %14 = load float, ptr %12, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 10
  store float %14, ptr %15, align 8, !tbaa !63
  %16 = load float, ptr %13, align 4, !tbaa !64
  %17 = fsub float %14, %16
  %18 = tail call float @llvm.fabs.f32(float %17)
  %19 = fcmp ult float %18, 0x3E80000000000000
  %20 = fadd float %14, 1.000000e+00
  %21 = select i1 %19, float %20, float %16
  %22 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 11
  store float %21, ptr %22, align 4, !tbaa !65
  %23 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 15
  store float 1.000000e+00, ptr %23, align 4, !tbaa !66
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 14
  store float 1.000000e+00, ptr %24, align 8, !tbaa !67
  %25 = icmp eq ptr %8, null
  br i1 %25, label %139, label %26

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = icmp eq ptr %28, null
  br i1 %29, label %72, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.NlaTrack, ptr %28, i64 0, i32 2
  %32 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 10
  %33 = load float, ptr %32, align 8, !tbaa !63
  %34 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 11
  %35 = load float, ptr %34, align 4, !tbaa !65
  %36 = fsub float %33, %35
  %37 = tail call float @llvm.fabs.f32(float %36)
  %38 = fcmp ult float %37, 0x3E80000000000000
  br i1 %38, label %72, label %39

39:                                               ; preds = %30
  %40 = fcmp ogt float %33, %35
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi float [ %35, %41 ], [ %33, %39 ]
  %45 = phi float [ %33, %41 ], [ %35, %39 ]
  br label %46

46:                                               ; preds = %55, %43
  %47 = phi ptr [ %31, %43 ], [ %48, %55 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %51, %46
  br label %61

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.NlaStrip, ptr %48, i64 0, i32 10
  %53 = load float, ptr %52, align 8, !tbaa !63
  %54 = fcmp ult float %53, %45
  br i1 %54, label %55, label %50

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.NlaStrip, ptr %48, i64 0, i32 11
  %57 = load float, ptr %56, align 4, !tbaa !65
  %58 = fcmp ogt float %57, %44
  %59 = fcmp ogt float %57, %45
  %60 = or i1 %58, %59
  br i1 %60, label %72, label %46, !llvm.loop !70

61:                                               ; preds = %50, %65
  %62 = phi ptr [ %63, %65 ], [ %31, %50 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !48
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.NlaStrip, ptr %63, i64 0, i32 10
  %67 = load float, ptr %66, align 8, !tbaa !63
  %68 = load float, ptr %34, align 4, !tbaa !65
  %69 = fcmp ult float %67, %68
  br i1 %69, label %61, label %70, !llvm.loop !71

70:                                               ; preds = %65
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %31, ptr noundef nonnull %63, ptr noundef nonnull %8) #15
  br label %138

71:                                               ; preds = %61
  tail call void @BLI_addtail(ptr noundef nonnull %31, ptr noundef nonnull %8) #15
  br label %138

72:                                               ; preds = %55, %30, %26
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %74 = tail call ptr %73(i64 noundef 104, ptr noundef nonnull @.str) #15
  %75 = getelementptr inbounds %struct.NlaTrack, ptr %74, i64 0, i32 3
  store i32 2, ptr %75, align 8, !tbaa !58
  %76 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %77 = tail call i32 @BLI_countlist(ptr noundef nonnull %76) #15
  %78 = getelementptr inbounds %struct.NlaTrack, ptr %74, i64 0, i32 4
  store i32 %77, ptr %78, align 4, !tbaa !59
  tail call void @BLI_addtail(ptr noundef nonnull %76, ptr noundef %74) #15
  %79 = load ptr, ptr %76, align 8, !tbaa !52
  %80 = icmp eq ptr %79, null
  br i1 %80, label %93, label %81

81:                                               ; preds = %72, %81
  %82 = phi ptr [ %86, %81 ], [ %79, %72 ]
  %83 = getelementptr inbounds %struct.NlaTrack, ptr %82, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !58
  %85 = and i32 %84, -2
  store i32 %85, ptr %83, align 8, !tbaa !58
  %86 = load ptr, ptr %82, align 8, !tbaa !53
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %81, !llvm.loop !60

88:                                               ; preds = %81
  %89 = icmp eq ptr %74, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = load i32, ptr %75, align 8, !tbaa !58
  %92 = or i32 %91, 1
  store i32 %92, ptr %75, align 8, !tbaa !58
  br label %93

93:                                               ; preds = %90, %88, %72
  %94 = getelementptr inbounds %struct.NlaTrack, ptr %74, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %94, ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false) #15
  tail call void @BLI_uniquename(ptr noundef nonnull %76, ptr noundef %74, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #15
  %95 = icmp eq ptr %74, null
  br i1 %95, label %138, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.NlaTrack, ptr %74, i64 0, i32 2
  %98 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 10
  %99 = load float, ptr %98, align 8, !tbaa !63
  %100 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 11
  %101 = load float, ptr %100, align 4, !tbaa !65
  %102 = fsub float %99, %101
  %103 = tail call float @llvm.fabs.f32(float %102)
  %104 = fcmp ult float %103, 0x3E80000000000000
  br i1 %104, label %138, label %105

105:                                              ; preds = %96
  %106 = fcmp ogt float %99, %101
  br i1 %106, label %107, label %109

107:                                              ; preds = %105
  %108 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi float [ %101, %107 ], [ %99, %105 ]
  %111 = phi float [ %99, %107 ], [ %101, %105 ]
  br label %112

112:                                              ; preds = %121, %109
  %113 = phi ptr [ %97, %109 ], [ %114, %121 ]
  %114 = load ptr, ptr %113, align 8, !tbaa !48
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %117, %112
  br label %127

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.NlaStrip, ptr %114, i64 0, i32 10
  %119 = load float, ptr %118, align 8, !tbaa !63
  %120 = fcmp ult float %119, %111
  br i1 %120, label %121, label %116

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.NlaStrip, ptr %114, i64 0, i32 11
  %123 = load float, ptr %122, align 4, !tbaa !65
  %124 = fcmp ogt float %123, %110
  %125 = fcmp ogt float %123, %111
  %126 = or i1 %124, %125
  br i1 %126, label %138, label %112, !llvm.loop !70

127:                                              ; preds = %116, %131
  %128 = phi ptr [ %129, %131 ], [ %97, %116 ]
  %129 = load ptr, ptr %128, align 8, !tbaa !48
  %130 = icmp eq ptr %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.NlaStrip, ptr %129, i64 0, i32 10
  %133 = load float, ptr %132, align 8, !tbaa !63
  %134 = load float, ptr %100, align 4, !tbaa !65
  %135 = fcmp ult float %133, %134
  br i1 %135, label %127, label %136, !llvm.loop !71

136:                                              ; preds = %131
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %97, ptr noundef nonnull %129, ptr noundef nonnull %8) #15
  br label %138

137:                                              ; preds = %127
  tail call void @BLI_addtail(ptr noundef nonnull %97, ptr noundef nonnull %8) #15
  br label %138

138:                                              ; preds = %121, %71, %70, %137, %136, %96, %93
  tail call void @BKE_nlastrip_validate_name(ptr noundef %0, ptr noundef nonnull %8)
  br label %139

139:                                              ; preds = %6, %2, %138
  %140 = phi ptr [ %8, %138 ], [ null, %2 ], [ null, %6 ]
  ret ptr %140
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %48, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 10
  %9 = load float, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 11
  %11 = load float, ptr %10, align 4, !tbaa !65
  %12 = fsub float %9, %11
  %13 = tail call float @llvm.fabs.f32(float %12)
  %14 = fcmp ult float %13, 0x3E80000000000000
  br i1 %14, label %48, label %15

15:                                               ; preds = %6
  %16 = fcmp ogt float %9, %11
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi float [ %11, %17 ], [ %9, %15 ]
  %21 = phi float [ %9, %17 ], [ %11, %15 ]
  br label %22

22:                                               ; preds = %31, %19
  %23 = phi ptr [ %7, %19 ], [ %24, %31 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %27, %22
  br label %37

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 10
  %29 = load float, ptr %28, align 8, !tbaa !63
  %30 = fcmp ult float %29, %21
  br i1 %30, label %31, label %26

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 11
  %33 = load float, ptr %32, align 4, !tbaa !65
  %34 = fcmp ogt float %33, %20
  %35 = fcmp ogt float %33, %21
  %36 = or i1 %34, %35
  br i1 %36, label %48, label %22, !llvm.loop !70

37:                                               ; preds = %26, %41
  %38 = phi ptr [ %39, %41 ], [ %7, %26 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %39, i64 0, i32 10
  %43 = load float, ptr %42, align 8, !tbaa !63
  %44 = load float, ptr %10, align 4, !tbaa !65
  %45 = fcmp ult float %43, %44
  br i1 %45, label %37, label %46, !llvm.loop !71

46:                                               ; preds = %41
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %7, ptr noundef nonnull %39, ptr noundef %1) #15
  br label %48

47:                                               ; preds = %37
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %1) #15
  br label %48

48:                                               ; preds = %31, %47, %46, %6, %2
  %49 = phi i8 [ 0, %2 ], [ 1, %47 ], [ 1, %46 ], [ 0, %6 ], [ 0, %31 ]
  ret i8 %49
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nlastrip_validate_name(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 7
  %8 = load i8, ptr %7, align 8, !tbaa !72
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 21
  %12 = load i16, ptr %11, align 2, !tbaa !73
  switch i16 %12, label %20 [
    i16 0, label %13
    i16 1, label %21
    i16 2, label %19
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !47
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
  %23 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %22, i64 noundef 64) #15
  br label %24

24:                                               ; preds = %21, %6
  %25 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.15) #15
  %26 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %32

29:                                               ; preds = %42, %32
  %30 = load ptr, ptr %33, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32, !llvm.loop !74

32:                                               ; preds = %24, %29
  %33 = phi ptr [ %30, %29 ], [ %27, %24 ]
  %34 = getelementptr inbounds %struct.NlaTrack, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = icmp eq ptr %35, null
  br i1 %36, label %29, label %37

37:                                               ; preds = %32, %42
  %38 = phi ptr [ %43, %42 ], [ %35, %32 ]
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.NlaStrip, ptr %38, i64 0, i32 7
  tail call void @BLI_ghash_insert(ptr noundef %25, ptr noundef nonnull %41, ptr noundef nonnull %38) #15
  br label %42

42:                                               ; preds = %37, %40
  %43 = load ptr, ptr %38, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %29, label %37, !llvm.loop !75

45:                                               ; preds = %29, %24
  %46 = tail call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @nla_editbone_name_check, ptr noundef %25, ptr noundef nonnull @.str.1, i8 noundef zeroext 46, ptr noundef nonnull %7, i32 noundef 64) #15
  tail call void @BLI_ghash_free(ptr noundef %25, ptr noundef null, ptr noundef null) #15
  br label %47

47:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @add_nla_soundstrip(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %4 = tail call ptr %3(i64 noundef 208, ptr noundef nonnull @.str.2) #15
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 11
  store float 1.000000e+01, ptr %5, align 4, !tbaa !65
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 21
  store i16 3, ptr %6, align 2, !tbaa !73
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 23
  store i32 2, ptr %7, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 19
  store i16 2, ptr %8, align 2, !tbaa !76
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 15
  store float 1.000000e+00, ptr %9, align 4, !tbaa !66
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %4, i64 0, i32 14
  store float 1.000000e+00, ptr %10, align 8, !tbaa !67
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @nlastrip_get_frame(ptr nocapture noundef %0, float noundef %1, i16 noundef signext %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 21
  %5 = load i16, ptr %4, align 2, !tbaa !73
  %6 = add i16 %5, -1
  %7 = icmp ult i16 %6, 2
  br i1 %7, label %8, label %32

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %12 = load float, ptr %11, align 8, !tbaa !63
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 23
  %15 = load i32, ptr %14, align 8, !tbaa !61
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i16 %2, 2
  br i1 %17, label %26, label %19

19:                                               ; preds = %8
  br i1 %18, label %20, label %23

20:                                               ; preds = %19
  %21 = fneg float %13
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %1, float %10)
  br label %121

23:                                               ; preds = %19
  %24 = fsub float %10, %1
  %25 = fdiv float %24, %13
  br label %121

26:                                               ; preds = %8
  br i1 %18, label %27, label %29

27:                                               ; preds = %26
  %28 = tail call float @llvm.fmuladd.f32(float %13, float %1, float %12)
  br label %121

29:                                               ; preds = %26
  %30 = fsub float %1, %12
  %31 = fdiv float %30, %13
  br label %121

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 14
  %34 = load float, ptr %33, align 8, !tbaa !67
  %35 = tail call float @llvm.fabs.f32(float %34)
  %36 = fcmp ult float %35, 0x3E80000000000000
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store float 1.000000e+00, ptr %33, align 8, !tbaa !67
  br label %38

38:                                               ; preds = %37, %32
  %39 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 15
  %40 = load float, ptr %39, align 4, !tbaa !66
  %41 = tail call float @llvm.fabs.f32(float %40)
  %42 = fcmp ult float %41, 0x3E80000000000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store float 1.000000e+00, ptr %39, align 4, !tbaa !66
  br label %44

44:                                               ; preds = %43, %38
  %45 = load float, ptr %39, align 4, !tbaa !66
  %46 = tail call float @llvm.fabs.f32(float %45)
  %47 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 13
  %48 = load float, ptr %47, align 4, !tbaa !64
  %49 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 12
  %50 = load float, ptr %49, align 8, !tbaa !62
  %51 = fsub float %48, %50
  %52 = tail call float @llvm.fabs.f32(float %51)
  %53 = fcmp ult float %52, 0x3E80000000000000
  %54 = select i1 %53, float 1.000000e+00, float %51
  %55 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 23
  %56 = load i32, ptr %55, align 8, !tbaa !61
  %57 = and i32 %56, 2048
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %89, label %59

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %61 = load float, ptr %60, align 4, !tbaa !65
  switch i16 %2, label %71 [
    i16 2, label %62
    i16 1, label %66
  ]

62:                                               ; preds = %59
  %63 = fsub float %1, %50
  %64 = fneg float %46
  %65 = tail call float @llvm.fmuladd.f32(float %64, float %63, float %61)
  br label %121

66:                                               ; preds = %59
  %67 = fneg float %1
  %68 = tail call float @llvm.fmuladd.f32(float %50, float %46, float %67)
  %69 = fadd float %68, %61
  %70 = fdiv float %69, %46
  br label %121

71:                                               ; preds = %59
  %72 = fsub float %1, %61
  %73 = tail call float @llvm.fabs.f32(float %72)
  %74 = fcmp ult float %73, 0x3E80000000000000
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load float, ptr %33, align 8, !tbaa !67
  %77 = tail call float @llvm.floor.f32(float %76)
  %78 = fsub float %76, %77
  %79 = tail call float @llvm.fabs.f32(float %78)
  %80 = fcmp ult float %79, 0x3E80000000000000
  br i1 %80, label %121, label %81

81:                                               ; preds = %75, %71
  %82 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %83 = load float, ptr %82, align 8, !tbaa !63
  %84 = fsub float %1, %83
  %85 = fmul float %46, %54
  %86 = tail call float @fmodf(float noundef %84, float noundef %85) #15
  %87 = fdiv float %86, %46
  %88 = fsub float %48, %87
  br label %121

89:                                               ; preds = %44
  switch i16 %2, label %101 [
    i16 2, label %90
    i16 1, label %95
  ]

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %92 = load float, ptr %91, align 8, !tbaa !63
  %93 = fsub float %1, %50
  %94 = tail call float @llvm.fmuladd.f32(float %46, float %93, float %92)
  br label %121

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %97 = load float, ptr %96, align 8, !tbaa !63
  %98 = fsub float %1, %97
  %99 = fdiv float %98, %46
  %100 = fadd float %50, %99
  br label %121

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %103 = load float, ptr %102, align 4, !tbaa !65
  %104 = fsub float %1, %103
  %105 = tail call float @llvm.fabs.f32(float %104)
  %106 = fcmp ult float %105, 0x3E80000000000000
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load float, ptr %33, align 8, !tbaa !67
  %109 = tail call float @llvm.floor.f32(float %108)
  %110 = fsub float %108, %109
  %111 = tail call float @llvm.fabs.f32(float %110)
  %112 = fcmp ult float %111, 0x3E80000000000000
  br i1 %112, label %121, label %113

113:                                              ; preds = %107, %101
  %114 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %115 = load float, ptr %114, align 8, !tbaa !63
  %116 = fsub float %1, %115
  %117 = fmul float %46, %54
  %118 = tail call float @fmodf(float noundef %116, float noundef %117) #15
  %119 = fdiv float %118, %46
  %120 = fadd float %50, %119
  br label %121

121:                                              ; preds = %113, %107, %95, %90, %81, %75, %66, %62, %29, %27, %23, %20
  %122 = phi float [ %22, %20 ], [ %25, %23 ], [ %28, %27 ], [ %31, %29 ], [ %65, %62 ], [ %70, %66 ], [ %88, %81 ], [ %94, %90 ], [ %100, %95 ], [ %120, %113 ], [ %50, %75 ], [ %48, %107 ]
  ret float %122
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @BKE_nla_tweakedit_remap(ptr noundef %0, float noundef %1, i16 noundef signext %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !77
  %8 = and i32 %7, 12
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %55

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14, %24
  %19 = phi ptr [ %25, %24 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.NlaTrack, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !58
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load ptr, ptr %19, align 8, !tbaa !53
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %18, !llvm.loop !79

27:                                               ; preds = %24, %18, %14
  %28 = phi ptr [ null, %14 ], [ %19, %18 ], [ null, %24 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.NlaTrack, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %30, %40
  %35 = phi ptr [ %41, %40 ], [ %32, %30 ]
  %36 = getelementptr inbounds %struct.NlaStrip, ptr %35, i64 0, i32 23
  %37 = load i32, ptr %36, align 8, !tbaa !61
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load ptr, ptr %35, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %34, !llvm.loop !80

43:                                               ; preds = %40, %34, %27, %30
  %44 = phi ptr [ null, %30 ], [ null, %27 ], [ %35, %34 ], [ null, %40 ]
  store ptr %44, ptr %11, align 8, !tbaa !78
  br label %45

45:                                               ; preds = %43, %10
  %46 = load ptr, ptr %11, align 8, !tbaa !78
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.NlaStrip, ptr %46, i64 0, i32 23
  %50 = load i32, ptr %49, align 8, !tbaa !61
  %51 = and i32 %50, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = tail call float @nlastrip_get_frame(ptr noundef nonnull %46, float noundef %1, i16 noundef signext %2)
  br label %55

55:                                               ; preds = %45, %48, %3, %5, %53
  %56 = phi float [ %54, %53 ], [ %1, %5 ], [ %1, %3 ], [ %1, %48 ], [ %1, %45 ]
  ret float %56
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_nlatrack_find_active(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !52
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
  %13 = load ptr, ptr %7, align 8, !tbaa !53
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !79

15:                                               ; preds = %12, %6, %1, %3
  %16 = phi ptr [ null, %3 ], [ null, %1 ], [ %7, %6 ], [ null, %12 ]
  ret ptr %16
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_nlastrip_find_active(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
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
  br i1 %15, label %16, label %7, !llvm.loop !80

16:                                               ; preds = %13, %7, %1, %3
  %17 = phi ptr [ null, %3 ], [ null, %1 ], [ %8, %7 ], [ null, %13 ]
  ret ptr %17
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef zeroext i8 @BKE_nlastrips_has_space(ptr noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #8 {
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
  %12 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi float [ %2, %11 ], [ %1, %9 ]
  %15 = phi float [ %1, %11 ], [ %2, %9 ]
  br label %16

16:                                               ; preds = %24, %13
  %17 = phi ptr [ %0, %13 ], [ %18, %24 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !48
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
  br i1 %29, label %30, label %16, !llvm.loop !70

30:                                               ; preds = %16, %24, %20, %3, %5
  %31 = phi i8 [ 0, %5 ], [ 0, %3 ], [ 1, %20 ], [ 0, %24 ], [ 1, %16 ]
  ret i8 %31
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nlastrips_sort_strips(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %28
  %10 = phi ptr [ %5, %7 ], [ %11, %28 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %10) #15
  %12 = load ptr, ptr %8, align 8, !tbaa !81
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
  call void @BLI_insertlinkafter(ptr noundef nonnull %2, ptr noundef nonnull %18, ptr noundef nonnull %10) #15
  br label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %18, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !82
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %17, !llvm.loop !83

27:                                               ; preds = %23, %9
  call void @BLI_addhead(ptr noundef nonnull %2, ptr noundef nonnull %10) #15
  br label %28

28:                                               ; preds = %22, %27
  %29 = icmp eq ptr %11, null
  br i1 %29, label %30, label %9, !llvm.loop !84

30:                                               ; preds = %28
  %31 = load ptr, ptr %2, align 8, !tbaa !52
  store ptr %31, ptr %0, align 8, !tbaa !52
  %32 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !81
  %34 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !81
  br label %35

35:                                               ; preds = %1, %4, %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_nlastrips_add_strip(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 10
  %8 = load float, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 11
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = fsub float %8, %10
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fcmp ult float %12, 0x3E80000000000000
  br i1 %13, label %47, label %14

14:                                               ; preds = %6
  %15 = fcmp ogt float %8, %10
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi float [ %10, %16 ], [ %8, %14 ]
  %20 = phi float [ %8, %16 ], [ %10, %14 ]
  br label %21

21:                                               ; preds = %30, %18
  %22 = phi ptr [ %0, %18 ], [ %23, %30 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.NlaStrip, ptr %23, i64 0, i32 10
  %27 = load float, ptr %26, align 8, !tbaa !63
  %28 = fcmp ult float %27, %20
  br i1 %28, label %30, label %29

29:                                               ; preds = %21, %25
  br label %36

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %23, i64 0, i32 11
  %32 = load float, ptr %31, align 4, !tbaa !65
  %33 = fcmp ogt float %32, %19
  %34 = fcmp ogt float %32, %20
  %35 = or i1 %33, %34
  br i1 %35, label %47, label %21, !llvm.loop !70

36:                                               ; preds = %29, %40
  %37 = phi ptr [ %38, %40 ], [ %0, %29 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.NlaStrip, ptr %38, i64 0, i32 10
  %42 = load float, ptr %41, align 8, !tbaa !63
  %43 = load float, ptr %9, align 4, !tbaa !65
  %44 = fcmp ult float %42, %43
  br i1 %44, label %36, label %45, !llvm.loop !71

45:                                               ; preds = %40
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef nonnull %38, ptr noundef %1) #15
  br label %47

46:                                               ; preds = %36
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %1) #15
  br label %47

47:                                               ; preds = %30, %6, %45, %46, %2
  %48 = phi i8 [ 0, %2 ], [ 1, %46 ], [ 1, %45 ], [ 0, %6 ], [ 0, %30 ]
  ret i8 %48
}

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nlastrips_make_metas(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %4
  %8 = icmp eq i8 %1, 0
  %9 = select i1 %8, i32 2, i32 1073741826
  br label %10

10:                                               ; preds = %7, %36
  %11 = phi ptr [ null, %7 ], [ %37, %36 ]
  %12 = phi ptr [ %5, %7 ], [ %13, %36 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 23
  %15 = load i32, ptr %14, align 8, !tbaa !61
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %10
  %19 = icmp eq ptr %11, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %18
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %22 = tail call ptr %21(i64 noundef 208, ptr noundef nonnull @.str.4) #15
  %23 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 21
  store i16 2, ptr %23, align 2, !tbaa !73
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef %22) #15
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 23
  store i32 %9, ptr %24, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 15
  store float 1.000000e+00, ptr %25, align 4, !tbaa !66
  %26 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 14
  store float 1.000000e+00, ptr %26, align 8, !tbaa !67
  %27 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 10
  %28 = load float, ptr %27, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 10
  store float %28, ptr %29, align 8, !tbaa !63
  br label %30

30:                                               ; preds = %20, %18
  %31 = phi ptr [ %22, %20 ], [ %11, %18 ]
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %12) #15
  %32 = getelementptr inbounds %struct.NlaStrip, ptr %31, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %32, ptr noundef nonnull %12) #15
  %33 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 11
  %34 = load float, ptr %33, align 4, !tbaa !65
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %31, i64 0, i32 11
  store float %34, ptr %35, align 4, !tbaa !65
  br label %36

36:                                               ; preds = %10, %30
  %37 = phi ptr [ %31, %30 ], [ null, %10 ]
  %38 = icmp eq ptr %13, null
  br i1 %38, label %39, label %10, !llvm.loop !85

39:                                               ; preds = %36, %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
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
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %11) #15
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !86

14:                                               ; preds = %10, %6
  tail call void @free_nlastrip(ptr noundef %0, ptr noundef %1)
  br label %15

15:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nlastrips_clear_metas(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %5
  %9 = icmp eq i8 %1, 0
  %10 = icmp eq i8 %2, 0
  br label %11

11:                                               ; preds = %8, %38
  %12 = phi ptr [ %6, %8 ], [ %13, %38 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 21
  %15 = load i16, ptr %14, align 2, !tbaa !73
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  br i1 %9, label %23, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 23
  %20 = load i32, ptr %19, align 8, !tbaa !61
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18, %17
  br i1 %10, label %29, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 23
  %26 = load i32, ptr %25, align 8, !tbaa !61
  %27 = and i32 %26, 1073741824
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %23, %24
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %33
  %34 = phi ptr [ %35, %33 ], [ %31, %29 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !43
  tail call void @BLI_remlink(ptr noundef nonnull %30, ptr noundef nonnull %34) #15
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull %34) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %33, !llvm.loop !86

37:                                               ; preds = %33, %29
  tail call void @free_nlastrip(ptr noundef nonnull %0, ptr noundef nonnull %12)
  br label %38

38:                                               ; preds = %11, %24, %37, %18
  %39 = icmp eq ptr %13, null
  br i1 %39, label %40, label %11, !llvm.loop !87

40:                                               ; preds = %38, %3, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_nlameta_add_strip(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %102, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 10
  %9 = load float, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 11
  %11 = load float, ptr %10, align 4, !tbaa !65
  %12 = fsub float %9, %11
  %13 = tail call float @llvm.fabs.f32(float %12)
  %14 = fcmp ult float %13, 0x3E80000000000000
  br i1 %14, label %102, label %15

15:                                               ; preds = %6
  %16 = fcmp ogt float %9, %11
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi float [ %11, %17 ], [ %9, %15 ]
  %21 = phi float [ %9, %17 ], [ %11, %15 ]
  br label %22

22:                                               ; preds = %30, %19
  %23 = phi ptr [ %7, %19 ], [ %24, %30 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 10
  %28 = load float, ptr %27, align 8, !tbaa !63
  %29 = fcmp ult float %28, %21
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %24, i64 0, i32 11
  %32 = load float, ptr %31, align 4, !tbaa !65
  %33 = fcmp ogt float %32, %20
  %34 = fcmp ogt float %32, %21
  %35 = or i1 %33, %34
  br i1 %35, label %102, label %22, !llvm.loop !70

36:                                               ; preds = %26, %22
  %37 = load float, ptr %8, align 8, !tbaa !63
  %38 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %39 = load float, ptr %38, align 8, !tbaa !63
  %40 = fcmp olt float %37, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.NlaStrip, ptr %43, i64 0, i32 11
  %47 = load float, ptr %46, align 4, !tbaa !65
  %48 = fcmp ugt float %47, %37
  br i1 %48, label %102, label %49

49:                                               ; preds = %45, %41
  tail call void @BLI_addhead(ptr noundef nonnull %7, ptr noundef %1) #15
  %50 = load float, ptr %8, align 8, !tbaa !63
  store float %50, ptr %38, align 8, !tbaa !63
  br label %102

51:                                               ; preds = %36
  %52 = load float, ptr %10, align 4, !tbaa !65
  %53 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %54 = load float, ptr %53, align 4, !tbaa !65
  %55 = fcmp ogt float %52, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load ptr, ptr %0, align 8, !tbaa !43
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.NlaStrip, ptr %57, i64 0, i32 10
  %61 = load float, ptr %60, align 8, !tbaa !63
  %62 = fcmp ult float %61, %52
  br i1 %62, label %102, label %63

63:                                               ; preds = %59, %56
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %1) #15
  %64 = load float, ptr %10, align 4, !tbaa !65
  store float %64, ptr %53, align 4, !tbaa !65
  br label %102

65:                                               ; preds = %51
  %66 = fsub float %37, %52
  %67 = tail call float @llvm.fabs.f32(float %66)
  %68 = fcmp ult float %67, 0x3E80000000000000
  br i1 %68, label %102, label %69

69:                                               ; preds = %65
  %70 = fcmp ogt float %37, %52
  br i1 %70, label %71, label %73

71:                                               ; preds = %69
  %72 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi float [ %52, %71 ], [ %37, %69 ]
  %75 = phi float [ %37, %71 ], [ %52, %69 ]
  br label %76

76:                                               ; preds = %85, %73
  %77 = phi ptr [ %7, %73 ], [ %78, %85 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !48
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %81, %76
  br label %91

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.NlaStrip, ptr %78, i64 0, i32 10
  %83 = load float, ptr %82, align 8, !tbaa !63
  %84 = fcmp ult float %83, %75
  br i1 %84, label %85, label %80

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.NlaStrip, ptr %78, i64 0, i32 11
  %87 = load float, ptr %86, align 4, !tbaa !65
  %88 = fcmp ogt float %87, %74
  %89 = fcmp ogt float %87, %75
  %90 = or i1 %88, %89
  br i1 %90, label %102, label %76, !llvm.loop !70

91:                                               ; preds = %80, %95
  %92 = phi ptr [ %93, %95 ], [ %7, %80 ]
  %93 = load ptr, ptr %92, align 8, !tbaa !48
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.NlaStrip, ptr %93, i64 0, i32 10
  %97 = load float, ptr %96, align 8, !tbaa !63
  %98 = load float, ptr %10, align 4, !tbaa !65
  %99 = fcmp ult float %97, %98
  br i1 %99, label %91, label %100, !llvm.loop !71

100:                                              ; preds = %95
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %7, ptr noundef nonnull %93, ptr noundef %1) #15
  br label %102

101:                                              ; preds = %91
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %1) #15
  br label %102

102:                                              ; preds = %30, %85, %6, %101, %100, %65, %59, %45, %2, %63, %49
  %103 = phi i8 [ 1, %49 ], [ 1, %63 ], [ 0, %2 ], [ 0, %45 ], [ 0, %59 ], [ 1, %101 ], [ 1, %100 ], [ 0, %65 ], [ 0, %6 ], [ 0, %85 ], [ 0, %30 ]
  ret i8 %103
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nlameta_flush_transforms(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %77, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 21
  %10 = load i16, ptr %9, align 2, !tbaa !73
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %12, label %77

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 10
  %14 = load float, ptr %13, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %16, i64 0, i32 11
  %18 = load float, ptr %17, align 4, !tbaa !65
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %20 = load float, ptr %19, align 8, !tbaa !63
  %21 = fsub float %20, %14
  %22 = fsub float %14, %20
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fcmp ult float %23, 0x3E80000000000000
  br i1 %24, label %25, label %31

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %27 = load float, ptr %26, align 4, !tbaa !65
  %28 = fsub float %18, %27
  %29 = tail call float @llvm.fabs.f32(float %28)
  %30 = fcmp ult float %29, 0x3E80000000000000
  br i1 %30, label %77, label %31

31:                                               ; preds = %25, %12
  %32 = fsub float %18, %14
  %33 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %34 = load float, ptr %33, align 4, !tbaa !65
  %35 = fsub float %34, %20
  %36 = fsub float %35, %32
  %37 = tail call float @llvm.fabs.f32(float %36)
  %38 = fcmp ult float %37, 0x3E80000000000000
  %39 = load ptr, ptr %5, align 8, !tbaa !48
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %63, %31
  %42 = load ptr, ptr %5, align 8, !tbaa !48
  %43 = icmp eq ptr %42, null
  br i1 %43, label %77, label %67

44:                                               ; preds = %31, %63
  %45 = phi ptr [ %65, %63 ], [ %39, %31 ]
  %46 = getelementptr inbounds %struct.NlaStrip, ptr %45, i64 0, i32 10
  %47 = load float, ptr %46, align 8, !tbaa !63
  %48 = getelementptr inbounds %struct.NlaStrip, ptr %45, i64 0, i32 11
  br i1 %38, label %59, label %49

49:                                               ; preds = %44
  %50 = fsub float %47, %14
  %51 = fdiv float %50, %32
  %52 = load float, ptr %48, align 4, !tbaa !65
  %53 = fsub float %52, %14
  %54 = fdiv float %53, %32
  %55 = load float, ptr %19, align 8, !tbaa !63
  %56 = tail call float @llvm.fmuladd.f32(float %51, float %35, float %55)
  store float %56, ptr %46, align 8, !tbaa !63
  %57 = load float, ptr %19, align 8, !tbaa !63
  %58 = tail call float @llvm.fmuladd.f32(float %54, float %35, float %57)
  br label %63

59:                                               ; preds = %44
  %60 = fadd float %21, %47
  store float %60, ptr %46, align 8, !tbaa !63
  %61 = load float, ptr %48, align 4, !tbaa !65
  %62 = fadd float %21, %61
  br label %63

63:                                               ; preds = %49, %59
  %64 = phi float [ %58, %49 ], [ %62, %59 ]
  store float %64, ptr %48, align 4, !tbaa !65
  %65 = load ptr, ptr %45, align 8, !tbaa !48
  %66 = icmp eq ptr %65, null
  br i1 %66, label %41, label %44, !llvm.loop !89

67:                                               ; preds = %41, %74
  %68 = phi ptr [ %75, %74 ], [ %42, %41 ]
  br i1 %38, label %74, label %69

69:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_NlaStrip, ptr noundef nonnull %68, ptr noundef nonnull %2) #15
  %70 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 10
  %71 = load float, ptr %70, align 8, !tbaa !63
  call void @RNA_float_set(ptr noundef nonnull %2, ptr noundef nonnull @.str.5, float noundef %71) #15
  %72 = getelementptr inbounds %struct.NlaStrip, ptr %68, i64 0, i32 11
  %73 = load float, ptr %72, align 4, !tbaa !65
  call void @RNA_float_set(ptr noundef nonnull %2, ptr noundef nonnull @.str.6, float noundef %73) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %74

74:                                               ; preds = %69, %67
  call void @BKE_nlameta_flush_transforms(ptr noundef nonnull %68)
  %75 = load ptr, ptr %68, align 8, !tbaa !48
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %67, !llvm.loop !90

77:                                               ; preds = %74, %41, %25, %8, %1, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nlatrack_solo_toggle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !91
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
  %16 = load ptr, ptr %9, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !92

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
  %27 = load i32, ptr %26, align 8, !tbaa !77
  br i1 %25, label %28, label %30

28:                                               ; preds = %20
  %29 = or i32 %27, 1
  store i32 %29, ptr %26, align 8, !tbaa !77
  br label %36

30:                                               ; preds = %20
  %31 = and i32 %27, -2
  store i32 %31, ptr %26, align 8, !tbaa !77
  br label %36

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !77
  %35 = and i32 %34, -2
  store i32 %35, ptr %33, align 8, !tbaa !77
  br label %36

36:                                               ; preds = %32, %30, %28, %2, %4
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef zeroext i8 @BKE_nlatrack_has_space(ptr noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %5
  %11 = fsub float %1, %2
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fcmp ult float %12, 0x3E80000000000000
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = fcmp ogt float %1, %2
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.7)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi float [ %2, %16 ], [ %1, %14 ]
  %20 = phi float [ %1, %16 ], [ %2, %14 ]
  %21 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %22 = fsub float %19, %20
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fcmp ult float %23, 0x3E80000000000000
  br i1 %24, label %46, label %25

25:                                               ; preds = %18
  %26 = fcmp ogt float %19, %20
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi float [ %20, %27 ], [ %19, %25 ]
  %31 = phi float [ %19, %27 ], [ %20, %25 ]
  br label %32

32:                                               ; preds = %40, %29
  %33 = phi ptr [ %21, %29 ], [ %34, %40 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 10
  %38 = load float, ptr %37, align 8, !tbaa !63
  %39 = fcmp ult float %38, %31
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 11
  %42 = load float, ptr %41, align 4, !tbaa !65
  %43 = fcmp ogt float %42, %30
  %44 = fcmp ogt float %42, %31
  %45 = or i1 %43, %44
  br i1 %45, label %46, label %32, !llvm.loop !70

46:                                               ; preds = %40, %36, %32, %18, %3, %5, %10
  %47 = phi i8 [ 0, %10 ], [ 0, %5 ], [ 0, %3 ], [ 0, %18 ], [ 1, %36 ], [ 0, %40 ], [ 1, %32 ]
  ret i8 %47
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nlatrack_sort_strips(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  br label %10

10:                                               ; preds = %29, %8
  %11 = phi ptr [ %6, %8 ], [ %12, %29 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %11) #15
  %13 = load ptr, ptr %9, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.NlaStrip, ptr %11, i64 0, i32 10
  %17 = load float, ptr %16, align 8, !tbaa !63
  br label %18

18:                                               ; preds = %24, %15
  %19 = phi ptr [ %13, %15 ], [ %26, %24 ]
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 11
  %21 = load float, ptr %20, align 4, !tbaa !65
  %22 = fcmp ugt float %21, %17
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  call void @BLI_insertlinkafter(ptr noundef nonnull %2, ptr noundef nonnull %19, ptr noundef nonnull %11) #15
  br label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %18, !llvm.loop !83

28:                                               ; preds = %24, %10
  call void @BLI_addhead(ptr noundef nonnull %2, ptr noundef nonnull %11) #15
  br label %29

29:                                               ; preds = %28, %23
  %30 = icmp eq ptr %12, null
  br i1 %30, label %31, label %10, !llvm.loop !84

31:                                               ; preds = %29
  %32 = load ptr, ptr %2, align 8, !tbaa !52
  store ptr %32, ptr %5, align 8, !tbaa !52
  %33 = load ptr, ptr %9, align 8, !tbaa !81
  %34 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  br label %35

35:                                               ; preds = %1, %4, %31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_nlatrack_get_bounds(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %5, align 4, !tbaa !93
  store float 0.000000e+00, ptr %1, align 4, !tbaa !93
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.NlaStrip, ptr %9, i64 0, i32 10
  %13 = load float, ptr %12, align 8, !tbaa !63
  store float %13, ptr %1, align 4, !tbaa !93
  %14 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.NlaStrip, ptr %15, i64 0, i32 11
  %17 = load float, ptr %16, align 4, !tbaa !65
  store float %17, ptr %5, align 4, !tbaa !93
  br label %18

18:                                               ; preds = %4, %7, %2, %11
  %19 = phi i8 [ 1, %11 ], [ 0, %2 ], [ 0, %7 ], [ 0, %4 ]
  ret i8 %19
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nlastrip_set_active(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %11

8:                                                ; preds = %16, %11
  %9 = load ptr, ptr %12, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11, !llvm.loop !95

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %9, %8 ], [ %6, %4 ]
  %13 = getelementptr inbounds %struct.NlaTrack, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %16

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %24, %16 ], [ %14, %11 ]
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %17, i64 0, i32 23
  %20 = load i32, ptr %19, align 8, !tbaa !61
  %21 = and i32 %20, -2
  %22 = zext i1 %18 to i32
  %23 = or disjoint i32 %21, %22
  store i32 %23, ptr %19, align 8, !tbaa !61
  %24 = load ptr, ptr %17, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %8, label %16, !llvm.loop !96

26:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #12 {
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
  br i1 %21, label %22, label %45

22:                                               ; preds = %20
  %23 = fcmp olt float %1, %2
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %25 = load float, ptr %24, align 8, !tbaa !63
  br i1 %23, label %26, label %30

26:                                               ; preds = %22
  %27 = fcmp ogt float %25, %1
  %28 = fcmp olt float %25, %2
  %29 = and i1 %27, %28
  br i1 %29, label %45, label %34

30:                                               ; preds = %22
  %31 = fcmp ogt float %25, %2
  %32 = fcmp olt float %25, %1
  %33 = and i1 %31, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %36 = load float, ptr %35, align 4, !tbaa !65
  br i1 %23, label %37, label %41

37:                                               ; preds = %34
  %38 = fcmp ogt float %36, %1
  %39 = fcmp olt float %36, %2
  %40 = and i1 %38, %39
  br i1 %40, label %45, label %71

41:                                               ; preds = %34
  %42 = fcmp ogt float %36, %2
  %43 = fcmp olt float %36, %1
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %41, %37, %30, %26, %20
  %46 = fcmp ogt float %12, %14
  br i1 %46, label %47, label %70

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %49 = load float, ptr %48, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %51 = load float, ptr %50, align 4, !tbaa !65
  %52 = fcmp olt float %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = fcmp olt float %49, %1
  %55 = fcmp ogt float %51, %1
  %56 = and i1 %54, %55
  br i1 %56, label %70, label %61

57:                                               ; preds = %47
  %58 = fcmp olt float %51, %1
  %59 = fcmp ogt float %49, %1
  %60 = and i1 %59, %58
  br i1 %60, label %70, label %61

61:                                               ; preds = %57, %53
  br i1 %52, label %62, label %66

62:                                               ; preds = %61
  %63 = fcmp olt float %49, %2
  %64 = fcmp ogt float %51, %2
  %65 = and i1 %63, %64
  br i1 %65, label %70, label %71

66:                                               ; preds = %61
  %67 = fcmp olt float %51, %2
  %68 = fcmp ogt float %49, %2
  %69 = and i1 %68, %67
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62, %57, %53, %45
  br label %71

71:                                               ; preds = %62, %66, %37, %41, %11, %70
  %72 = phi i8 [ 1, %70 ], [ 0, %11 ], [ 0, %41 ], [ 0, %37 ], [ 0, %66 ], [ 0, %62 ]
  ret i8 %72
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nlastrip_recalculate_bounds(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 21
  %5 = load i16, ptr %4, align 2, !tbaa !73
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %74

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 15
  %9 = load float, ptr %8, align 4, !tbaa !66
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 14
  %11 = load float, ptr %10, align 8, !tbaa !67
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
  %29 = load ptr, ptr %0, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %33 = load float, ptr %32, align 4, !tbaa !65
  %34 = getelementptr inbounds %struct.NlaStrip, ptr %29, i64 0, i32 10
  %35 = load float, ptr %34, align 8, !tbaa !63
  %36 = fcmp ogt float %33, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = fsub float %33, %35
  %39 = tail call float @llvm.ceil.f32(float %38)
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi ptr [ %29, %37 ], [ %48, %40 ]
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %41, i64 0, i32 10
  %43 = load float, ptr %42, align 8, !tbaa !63
  %44 = fadd float %39, %43
  store float %44, ptr %42, align 8, !tbaa !63
  %45 = getelementptr inbounds %struct.NlaStrip, ptr %41, i64 0, i32 11
  %46 = load float, ptr %45, align 4, !tbaa !65
  %47 = fadd float %39, %46
  store float %47, ptr %45, align 4, !tbaa !65
  %48 = load ptr, ptr %41, align 8, !tbaa !43
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %40, !llvm.loop !97

50:                                               ; preds = %40, %31, %28
  %51 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !82
  %53 = icmp eq ptr %52, null
  br i1 %53, label %74, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %56 = load float, ptr %55, align 8, !tbaa !63
  %57 = getelementptr inbounds %struct.NlaStrip, ptr %52, i64 0, i32 11
  %58 = load float, ptr %57, align 4, !tbaa !65
  %59 = fcmp olt float %56, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = fsub float %58, %56
  %62 = tail call float @llvm.ceil.f32(float %61)
  br label %63

63:                                               ; preds = %60, %63
  %64 = phi ptr [ %52, %60 ], [ %72, %63 ]
  %65 = getelementptr inbounds %struct.NlaStrip, ptr %64, i64 0, i32 10
  %66 = load float, ptr %65, align 8, !tbaa !63
  %67 = fsub float %66, %62
  store float %67, ptr %65, align 8, !tbaa !63
  %68 = getelementptr inbounds %struct.NlaStrip, ptr %64, i64 0, i32 11
  %69 = load float, ptr %68, align 4, !tbaa !65
  %70 = fsub float %69, %62
  store float %70, ptr %68, align 4, !tbaa !65
  %71 = getelementptr inbounds %struct.NlaStrip, ptr %64, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !82
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %63, !llvm.loop !98

74:                                               ; preds = %63, %54, %50, %1, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_nlatrack_has_animated_strips(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3, %12
  %8 = phi ptr [ %13, %12 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !100

15:                                               ; preds = %12, %7, %1, %3
  %16 = phi i8 [ 0, %3 ], [ 0, %1 ], [ 1, %7 ], [ 0, %12 ]
  ret i8 %16
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_nlatracks_have_animated_strips(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3, %19
  %7 = phi ptr [ %20, %19 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.NlaTrack, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %6, %16
  %12 = phi ptr [ %17, %16 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11, !llvm.loop !100

19:                                               ; preds = %16, %6
  %20 = load ptr, ptr %7, align 8, !tbaa !53
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !101

22:                                               ; preds = %19, %11, %1, %3
  %23 = phi i8 [ 0, %3 ], [ 0, %1 ], [ 1, %11 ], [ 0, %19 ]
  ret i8 %23
}

; Function Attrs: nounwind uwtable
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
  %10 = tail call ptr @list_find_fcurve(ptr noundef nonnull %9, ptr noundef nonnull @.str.8, i32 noundef 0) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %14 = tail call ptr %13(i64 noundef 112, ptr noundef nonnull @.str.9) #15
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %14) #15
  %15 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 9
  store i16 3, ptr %15, align 8, !tbaa !102
  %16 = tail call ptr @BLI_strdupn(ptr noundef nonnull @.str.8, i64 noundef 9) #15
  %17 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 12
  store ptr %16, ptr %17, align 8, !tbaa !104
  br label %18

18:                                               ; preds = %8, %12, %3
  %19 = load i32, ptr %4, align 8, !tbaa !61
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 5
  %24 = tail call ptr @list_find_fcurve(ptr noundef nonnull %23, ptr noundef nonnull @.str.10, i32 noundef 0) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %28 = tail call ptr %27(i64 noundef 112, ptr noundef nonnull @.str.9) #15
  tail call void @BLI_addtail(ptr noundef nonnull %23, ptr noundef %28) #15
  %29 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 9
  store i16 3, ptr %29, align 8, !tbaa !102
  %30 = tail call ptr @BLI_strdupn(ptr noundef nonnull @.str.10, i64 noundef 10) #15
  %31 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 12
  store ptr %30, ptr %31, align 8, !tbaa !104
  br label %32

32:                                               ; preds = %18, %26, %22, %1
  ret void
}

declare ptr @list_find_fcurve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @nla_editbone_name_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %0, ptr noundef %1) #15
  ret i8 %3
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_nla_validate_state(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %277, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %277, label %10

7:                                                ; preds = %249
  %8 = load ptr, ptr %4, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %277, label %256

10:                                               ; preds = %3, %249
  %11 = phi ptr [ %251, %249 ], [ %5, %3 ]
  %12 = phi ptr [ %250, %249 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.NlaTrack, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %249, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.NlaTrack, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.NlaTrack, ptr %18, i64 0, i32 2
  br label %21

21:                                               ; preds = %16, %245
  %22 = phi ptr [ %14, %16 ], [ %247, %245 ]
  %23 = phi ptr [ %12, %16 ], [ %246, %245 ]
  br i1 %19, label %24, label %27

24:                                               ; preds = %21
  %25 = load ptr, ptr %11, align 8, !tbaa !53
  %26 = icmp eq ptr %25, null
  br i1 %26, label %236, label %27

27:                                               ; preds = %24, %21
  %28 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 23
  %29 = load i32, ptr %28, align 8, !tbaa !61
  %30 = and i32 %29, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %236, label %32

32:                                               ; preds = %27
  br i1 %19, label %102, label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %20, align 8, !tbaa !48
  %35 = icmp eq ptr %34, null
  br i1 %35, label %102, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 10
  %38 = load float, ptr %37, align 8, !tbaa !63
  %39 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 11
  br label %40

40:                                               ; preds = %97, %36
  %41 = phi ptr [ null, %36 ], [ %98, %97 ]
  %42 = phi ptr [ null, %36 ], [ %99, %97 ]
  %43 = phi ptr [ %34, %36 ], [ %100, %97 ]
  %44 = getelementptr inbounds %struct.NlaStrip, ptr %43, i64 0, i32 10
  %45 = load float, ptr %44, align 8, !tbaa !63
  %46 = fcmp ugt float %45, %38
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.NlaStrip, ptr %43, i64 0, i32 11
  %49 = load float, ptr %48, align 4, !tbaa !65
  %50 = load float, ptr %39, align 4, !tbaa !65
  %51 = fcmp ult float %49, %50
  br i1 %51, label %52, label %102

52:                                               ; preds = %47, %40
  %53 = getelementptr inbounds %struct.NlaStrip, ptr %43, i64 0, i32 11
  %54 = load float, ptr %53, align 4, !tbaa !65
  %55 = fcmp olt float %54, %38
  br i1 %55, label %97, label %56

56:                                               ; preds = %52
  %57 = load float, ptr %39, align 4, !tbaa !65
  %58 = fcmp ogt float %45, %57
  br i1 %58, label %102, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %43, align 8, !tbaa !43
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.NlaStrip, ptr %60, i64 0, i32 10
  %64 = load float, ptr %63, align 8, !tbaa !63
  %65 = fsub float %64, %54
  %66 = tail call float @llvm.fabs.f32(float %65)
  %67 = fcmp oge float %66, 0x3E80000000000000
  %68 = fcmp ogt float %54, %38
  %69 = and i1 %68, %67
  %70 = fcmp olt float %54, %57
  %71 = and i1 %70, %69
  br i1 %71, label %76, label %77

72:                                               ; preds = %59
  %73 = fcmp ogt float %54, %38
  %74 = fcmp olt float %54, %57
  %75 = and i1 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %62
  br label %77

77:                                               ; preds = %76, %72, %62
  %78 = phi ptr [ %53, %76 ], [ %41, %72 ], [ %41, %62 ]
  %79 = getelementptr inbounds %struct.NlaStrip, ptr %43, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !82
  %81 = icmp eq ptr %80, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.NlaStrip, ptr %80, i64 0, i32 11
  %84 = load float, ptr %83, align 4, !tbaa !65
  %85 = fsub float %84, %45
  %86 = tail call float @llvm.fabs.f32(float %85)
  %87 = fcmp oge float %86, 0x3E80000000000000
  %88 = fcmp olt float %45, %57
  %89 = and i1 %88, %87
  %90 = fcmp ogt float %45, %38
  %91 = and i1 %90, %89
  br i1 %91, label %96, label %97

92:                                               ; preds = %77
  %93 = fcmp olt float %45, %57
  %94 = fcmp ogt float %45, %38
  %95 = and i1 %94, %93
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %82
  br label %97

97:                                               ; preds = %96, %92, %82, %52
  %98 = phi ptr [ %41, %52 ], [ %78, %96 ], [ %78, %92 ], [ %78, %82 ]
  %99 = phi ptr [ %42, %52 ], [ %44, %96 ], [ %42, %92 ], [ %42, %82 ]
  %100 = load ptr, ptr %43, align 8, !tbaa !48
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %40, !llvm.loop !106

102:                                              ; preds = %97, %56, %47, %33, %32
  %103 = phi ptr [ null, %32 ], [ null, %33 ], [ %98, %97 ], [ %41, %56 ], [ null, %47 ]
  %104 = phi ptr [ null, %32 ], [ null, %33 ], [ %99, %97 ], [ %42, %56 ], [ null, %47 ]
  %105 = load ptr, ptr %11, align 8, !tbaa !53
  %106 = icmp eq ptr %105, null
  br i1 %106, label %177, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.NlaTrack, ptr %105, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !48
  %110 = icmp eq ptr %109, null
  br i1 %110, label %177, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 10
  %113 = load float, ptr %112, align 8, !tbaa !63
  %114 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 11
  br label %115

115:                                              ; preds = %172, %111
  %116 = phi ptr [ null, %111 ], [ %173, %172 ]
  %117 = phi ptr [ null, %111 ], [ %174, %172 ]
  %118 = phi ptr [ %109, %111 ], [ %175, %172 ]
  %119 = getelementptr inbounds %struct.NlaStrip, ptr %118, i64 0, i32 10
  %120 = load float, ptr %119, align 8, !tbaa !63
  %121 = fcmp ugt float %120, %113
  br i1 %121, label %127, label %122

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.NlaStrip, ptr %118, i64 0, i32 11
  %124 = load float, ptr %123, align 4, !tbaa !65
  %125 = load float, ptr %114, align 4, !tbaa !65
  %126 = fcmp ult float %124, %125
  br i1 %126, label %127, label %177

127:                                              ; preds = %122, %115
  %128 = getelementptr inbounds %struct.NlaStrip, ptr %118, i64 0, i32 11
  %129 = load float, ptr %128, align 4, !tbaa !65
  %130 = fcmp olt float %129, %113
  br i1 %130, label %172, label %131

131:                                              ; preds = %127
  %132 = load float, ptr %114, align 4, !tbaa !65
  %133 = fcmp ogt float %120, %132
  br i1 %133, label %177, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr %118, align 8, !tbaa !43
  %136 = icmp eq ptr %135, null
  br i1 %136, label %147, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.NlaStrip, ptr %135, i64 0, i32 10
  %139 = load float, ptr %138, align 8, !tbaa !63
  %140 = fsub float %139, %129
  %141 = tail call float @llvm.fabs.f32(float %140)
  %142 = fcmp oge float %141, 0x3E80000000000000
  %143 = fcmp ogt float %129, %113
  %144 = and i1 %143, %142
  %145 = fcmp olt float %129, %132
  %146 = and i1 %145, %144
  br i1 %146, label %151, label %152

147:                                              ; preds = %134
  %148 = fcmp ogt float %129, %113
  %149 = fcmp olt float %129, %132
  %150 = and i1 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %137
  br label %152

152:                                              ; preds = %151, %147, %137
  %153 = phi ptr [ %128, %151 ], [ %116, %147 ], [ %116, %137 ]
  %154 = getelementptr inbounds %struct.NlaStrip, ptr %118, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !82
  %156 = icmp eq ptr %155, null
  br i1 %156, label %167, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.NlaStrip, ptr %155, i64 0, i32 11
  %159 = load float, ptr %158, align 4, !tbaa !65
  %160 = fsub float %159, %120
  %161 = tail call float @llvm.fabs.f32(float %160)
  %162 = fcmp oge float %161, 0x3E80000000000000
  %163 = fcmp olt float %120, %132
  %164 = and i1 %163, %162
  %165 = fcmp ogt float %120, %113
  %166 = and i1 %165, %164
  br i1 %166, label %171, label %172

167:                                              ; preds = %152
  %168 = fcmp olt float %120, %132
  %169 = fcmp ogt float %120, %113
  %170 = and i1 %169, %168
  br i1 %170, label %171, label %172

171:                                              ; preds = %167, %157
  br label %172

172:                                              ; preds = %171, %167, %157, %127
  %173 = phi ptr [ %116, %127 ], [ %153, %171 ], [ %153, %167 ], [ %153, %157 ]
  %174 = phi ptr [ %117, %127 ], [ %119, %171 ], [ %117, %167 ], [ %117, %157 ]
  %175 = load ptr, ptr %118, align 8, !tbaa !48
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %115, !llvm.loop !106

177:                                              ; preds = %172, %131, %122, %107, %102
  %178 = phi ptr [ null, %102 ], [ null, %107 ], [ %173, %172 ], [ %116, %131 ], [ null, %122 ]
  %179 = phi ptr [ null, %102 ], [ null, %107 ], [ %174, %172 ], [ %117, %131 ], [ null, %122 ]
  %180 = icmp ne ptr %103, null
  %181 = icmp ne ptr %178, null
  %182 = select i1 %180, i1 true, i1 %181
  br i1 %182, label %183, label %206

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !82
  %186 = icmp eq ptr %185, null
  br i1 %186, label %195, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.NlaStrip, ptr %185, i64 0, i32 11
  %189 = load float, ptr %188, align 4, !tbaa !65
  %190 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 10
  %191 = load float, ptr %190, align 8, !tbaa !63
  %192 = fsub float %189, %191
  %193 = tail call float @llvm.fabs.f32(float %192)
  %194 = fcmp ult float %193, 0x3E80000000000000
  br i1 %194, label %206, label %195

195:                                              ; preds = %187, %183
  %196 = icmp eq ptr %103, null
  %197 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 10
  %198 = load float, ptr %197, align 8, !tbaa !63
  %199 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 16
  br i1 %196, label %203, label %200

200:                                              ; preds = %195
  %201 = load float, ptr %103, align 4, !tbaa !93
  %202 = fsub float %201, %198
  store float %202, ptr %199, align 8, !tbaa !107
  br label %208

203:                                              ; preds = %195
  %204 = load float, ptr %178, align 4, !tbaa !93
  %205 = fsub float %204, %198
  store float %205, ptr %199, align 8, !tbaa !107
  br label %208

206:                                              ; preds = %187, %177
  %207 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 16
  store float 0.000000e+00, ptr %207, align 8, !tbaa !107
  br label %208

208:                                              ; preds = %206, %203, %200
  %209 = icmp ne ptr %104, null
  %210 = icmp ne ptr %179, null
  %211 = select i1 %209, i1 true, i1 %210
  br i1 %211, label %212, label %234

212:                                              ; preds = %208
  %213 = load ptr, ptr %22, align 8, !tbaa !43
  %214 = icmp eq ptr %213, null
  br i1 %214, label %223, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.NlaStrip, ptr %213, i64 0, i32 10
  %217 = load float, ptr %216, align 8, !tbaa !63
  %218 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 11
  %219 = load float, ptr %218, align 4, !tbaa !65
  %220 = fsub float %217, %219
  %221 = tail call float @llvm.fabs.f32(float %220)
  %222 = fcmp ult float %221, 0x3E80000000000000
  br i1 %222, label %234, label %223

223:                                              ; preds = %215, %212
  %224 = icmp eq ptr %104, null
  %225 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 11
  %226 = load float, ptr %225, align 4, !tbaa !65
  %227 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 17
  br i1 %224, label %231, label %228

228:                                              ; preds = %223
  %229 = load float, ptr %104, align 4, !tbaa !93
  %230 = fsub float %226, %229
  store float %230, ptr %227, align 4, !tbaa !108
  br label %236

231:                                              ; preds = %223
  %232 = load float, ptr %179, align 4, !tbaa !93
  %233 = fsub float %226, %232
  store float %233, ptr %227, align 4, !tbaa !108
  br label %236

234:                                              ; preds = %215, %208
  %235 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 17
  store float 0.000000e+00, ptr %235, align 4, !tbaa !108
  br label %236

236:                                              ; preds = %24, %27, %228, %231, %234
  %237 = icmp eq ptr %23, null
  br i1 %237, label %244, label %238

238:                                              ; preds = %236
  %239 = getelementptr inbounds %struct.NlaStrip, ptr %22, i64 0, i32 10
  %240 = load float, ptr %239, align 8, !tbaa !63
  %241 = getelementptr inbounds %struct.NlaStrip, ptr %23, i64 0, i32 10
  %242 = load float, ptr %241, align 8, !tbaa !63
  %243 = fcmp olt float %240, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %238, %236
  br label %245

245:                                              ; preds = %238, %244
  %246 = phi ptr [ %22, %244 ], [ %23, %238 ]
  %247 = load ptr, ptr %22, align 8, !tbaa !48
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %21, !llvm.loop !109

249:                                              ; preds = %245, %10
  %250 = phi ptr [ %12, %10 ], [ %246, %245 ]
  %251 = load ptr, ptr %11, align 8, !tbaa !53
  %252 = icmp eq ptr %251, null
  br i1 %252, label %7, label %10, !llvm.loop !110

253:                                              ; preds = %274, %256
  %254 = load ptr, ptr %257, align 8, !tbaa !48
  %255 = icmp eq ptr %254, null
  br i1 %255, label %277, label %256, !llvm.loop !111

256:                                              ; preds = %7, %253
  %257 = phi ptr [ %254, %253 ], [ %8, %7 ]
  %258 = getelementptr inbounds %struct.NlaTrack, ptr %257, i64 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !48
  %260 = icmp eq ptr %259, null
  br i1 %260, label %253, label %261

261:                                              ; preds = %256, %274
  %262 = phi ptr [ %275, %274 ], [ %259, %256 ]
  %263 = getelementptr inbounds %struct.NlaStrip, ptr %262, i64 0, i32 19
  %264 = load i16, ptr %263, align 2, !tbaa !76
  %265 = icmp eq i16 %264, 2
  br i1 %265, label %274, label %266

266:                                              ; preds = %261
  %267 = icmp eq ptr %262, %250
  br i1 %267, label %272, label %268

268:                                              ; preds = %266
  %269 = getelementptr inbounds %struct.NlaStrip, ptr %262, i64 0, i32 18
  %270 = load i16, ptr %269, align 8, !tbaa !112
  %271 = icmp eq i16 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %268, %266
  %273 = phi i16 [ 0, %266 ], [ 1, %268 ]
  store i16 %273, ptr %263, align 2, !tbaa !76
  br label %274

274:                                              ; preds = %272, %261, %268
  %275 = load ptr, ptr %262, align 8, !tbaa !48
  %276 = icmp eq ptr %275, null
  br i1 %276, label %253, label %261, !llvm.loop !113

277:                                              ; preds = %253, %7, %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nla_action_pushdown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %63, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !114
  %5 = icmp eq ptr %4, null
  br i1 %5, label %63, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @action_has_motion(ptr noundef nonnull %4) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %63

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8, !tbaa !114
  %13 = tail call ptr @add_nlastrip_to_stack(ptr noundef nonnull %0, ptr noundef %12)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %63, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !114
  tail call void @id_us_min(ptr noundef %16) #15
  store ptr null, ptr %0, align 8, !tbaa !114
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %13, i64 0, i32 10
  br label %26

26:                                               ; preds = %24, %36
  %27 = phi ptr [ %22, %24 ], [ %37, %36 ]
  %28 = getelementptr inbounds %struct.NlaTrack, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.NlaStrip, ptr %29, i64 0, i32 10
  %33 = load float, ptr %32, align 8, !tbaa !63
  %34 = load float, ptr %25, align 8, !tbaa !63
  %35 = fcmp olt float %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %26
  %37 = load ptr, ptr %27, align 8, !tbaa !48
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %26, !llvm.loop !115

39:                                               ; preds = %31, %15
  %40 = getelementptr inbounds %struct.NlaStrip, ptr %13, i64 0, i32 19
  store i16 1, ptr %40, align 2, !tbaa !76
  br label %41

41:                                               ; preds = %36, %20, %39
  %42 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %63, label %48

45:                                               ; preds = %53, %48
  %46 = load ptr, ptr %49, align 8, !tbaa !48
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48, !llvm.loop !95

48:                                               ; preds = %41, %45
  %49 = phi ptr [ %46, %45 ], [ %43, %41 ]
  %50 = getelementptr inbounds %struct.NlaTrack, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  %52 = icmp eq ptr %51, null
  br i1 %52, label %45, label %53

53:                                               ; preds = %48, %53
  %54 = phi ptr [ %61, %53 ], [ %51, %48 ]
  %55 = icmp eq ptr %54, %13
  %56 = getelementptr inbounds %struct.NlaStrip, ptr %54, i64 0, i32 23
  %57 = load i32, ptr %56, align 8, !tbaa !61
  %58 = and i32 %57, -2
  %59 = zext i1 %55 to i32
  %60 = or disjoint i32 %58, %59
  store i32 %60, ptr %56, align 8, !tbaa !61
  %61 = load ptr, ptr %54, align 8, !tbaa !48
  %62 = icmp eq ptr %61, null
  br i1 %62, label %45, label %53, !llvm.loop !96

63:                                               ; preds = %45, %41, %11, %1, %3, %9
  ret void
}

declare zeroext i8 @action_has_motion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_nla_tweakmode_enter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %138, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %138, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !77
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %138

12:                                               ; preds = %7, %31
  %13 = phi ptr [ %32, %31 ], [ %5, %7 ]
  %14 = getelementptr inbounds %struct.NlaTrack, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !58
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.NlaTrack, ptr %13, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %18, %28
  %23 = phi ptr [ %29, %28 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %23, i64 0, i32 23
  %25 = load i32, ptr %24, align 8, !tbaa !61
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load ptr, ptr %23, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %22, !llvm.loop !80

31:                                               ; preds = %12
  %32 = load ptr, ptr %13, align 8, !tbaa !53
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %12, !llvm.loop !116

34:                                               ; preds = %31, %22, %28, %18
  %35 = phi ptr [ %13, %18 ], [ %13, %28 ], [ %13, %22 ], [ null, %31 ]
  %36 = phi ptr [ null, %18 ], [ %23, %22 ], [ null, %28 ], [ null, %31 ]
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = icmp eq ptr %40, null
  br i1 %41, label %65, label %42

42:                                               ; preds = %38, %61
  %43 = phi ptr [ %63, %61 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.NlaTrack, ptr %43, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !58
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.NlaTrack, ptr %43, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = icmp eq ptr %50, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %48, %58
  %53 = phi ptr [ %59, %58 ], [ %50, %48 ]
  %54 = getelementptr inbounds %struct.NlaStrip, ptr %53, i64 0, i32 23
  %55 = load i32, ptr %54, align 8, !tbaa !61
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load ptr, ptr %53, align 8, !tbaa !43
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %52, !llvm.loop !80

61:                                               ; preds = %42
  %62 = getelementptr inbounds %struct.NlaTrack, ptr %43, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !48
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %42, !llvm.loop !117

65:                                               ; preds = %61, %52, %58, %38, %48, %34
  %66 = phi ptr [ %35, %34 ], [ %43, %48 ], [ null, %38 ], [ %43, %58 ], [ %43, %52 ], [ null, %61 ]
  %67 = phi ptr [ %36, %34 ], [ null, %48 ], [ %36, %38 ], [ %53, %52 ], [ null, %58 ], [ %36, %61 ]
  %68 = icmp ne ptr %66, null
  %69 = icmp eq ptr %67, null
  %70 = and i1 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.NlaTrack, ptr %66, i64 0, i32 2
  br label %73

73:                                               ; preds = %77, %71
  %74 = phi ptr [ %72, %71 ], [ %75, %77 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !48
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.NlaStrip, ptr %75, i64 0, i32 23
  %79 = load i32, ptr %78, align 8, !tbaa !61
  %80 = and i32 %79, 3
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %73, label %82, !llvm.loop !118

82:                                               ; preds = %77, %73, %65
  %83 = phi ptr [ %67, %65 ], [ null, %73 ], [ %75, %77 ]
  %84 = icmp eq ptr %66, null
  %85 = icmp eq ptr %83, null
  %86 = or i1 %84, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.NlaStrip, ptr %83, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !47
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.NlaTrack, ptr %66, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !105
  %94 = icmp eq ptr %93, null
  br i1 %94, label %106, label %108

95:                                               ; preds = %87, %82
  %96 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !119
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %138, label %99

99:                                               ; preds = %95
  %100 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  %101 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %66, ptr noundef %83)
  br label %138

102:                                              ; preds = %113, %108
  %103 = getelementptr inbounds %struct.NlaTrack, ptr %109, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !105
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %108, !llvm.loop !121

106:                                              ; preds = %102, %91
  %107 = icmp eq ptr %66, null
  br i1 %107, label %132, label %125

108:                                              ; preds = %91, %102
  %109 = phi ptr [ %104, %102 ], [ %93, %91 ]
  %110 = getelementptr inbounds %struct.NlaTrack, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !48
  %112 = icmp eq ptr %111, null
  br i1 %112, label %102, label %113

113:                                              ; preds = %108, %113
  %114 = phi ptr [ %123, %113 ], [ %111, %108 ]
  %115 = getelementptr inbounds %struct.NlaStrip, ptr %114, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !47
  %117 = icmp eq ptr %116, %89
  %118 = getelementptr inbounds %struct.NlaStrip, ptr %114, i64 0, i32 23
  %119 = load i32, ptr %118, align 8, !tbaa !61
  %120 = and i32 %119, -17
  %121 = select i1 %117, i32 16, i32 0
  %122 = or disjoint i32 %120, %121
  store i32 %122, ptr %118, align 8, !tbaa !61
  %123 = load ptr, ptr %114, align 8, !tbaa !48
  %124 = icmp eq ptr %123, null
  br i1 %124, label %102, label %113, !llvm.loop !122

125:                                              ; preds = %106, %125
  %126 = phi ptr [ %130, %125 ], [ %66, %106 ]
  %127 = getelementptr inbounds %struct.NlaTrack, ptr %126, i64 0, i32 3
  %128 = load i32, ptr %127, align 8, !tbaa !58
  %129 = or i32 %128, 1024
  store i32 %129, ptr %127, align 8, !tbaa !58
  %130 = load ptr, ptr %126, align 8, !tbaa !53
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %125, !llvm.loop !123

132:                                              ; preds = %125, %106
  %133 = load ptr, ptr %0, align 8, !tbaa !114
  %134 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !124
  store ptr %89, ptr %0, align 8, !tbaa !114
  %135 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 4
  store ptr %83, ptr %135, align 8, !tbaa !78
  tail call void @id_us_plus(ptr noundef nonnull %89) #15
  %136 = load i32, ptr %8, align 8, !tbaa !77
  %137 = or i32 %136, 4
  store i32 %137, ptr %8, align 8, !tbaa !77
  br label %138

138:                                              ; preds = %95, %99, %7, %1, %3, %132
  %139 = phi i8 [ 1, %132 ], [ 0, %3 ], [ 0, %1 ], [ 1, %7 ], [ 0, %99 ], [ 0, %95 ]
  ret i8 %139
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_nla_tweakmode_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %65, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %65, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !77
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %65, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 23
  %18 = load i32, ptr %17, align 8, !tbaa !61
  %19 = and i32 %18, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 21
  %23 = load i16, ptr %22, align 2, !tbaa !73
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 12
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 13
  tail call void @calc_action_range(ptr noundef nonnull %27, ptr noundef nonnull %30, ptr noundef nonnull %31, i16 noundef signext 0) #15
  tail call void @BKE_nlastrip_recalculate_bounds(ptr noundef nonnull %14)
  br label %32

32:                                               ; preds = %21, %25, %29, %16, %12
  %33 = load ptr, ptr %4, align 8, !tbaa !48
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %38

35:                                               ; preds = %46, %38
  %36 = load ptr, ptr %39, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %53, label %38, !llvm.loop !125

38:                                               ; preds = %32, %35
  %39 = phi ptr [ %36, %35 ], [ %33, %32 ]
  %40 = getelementptr inbounds %struct.NlaTrack, ptr %39, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !58
  %42 = and i32 %41, -1025
  store i32 %42, ptr %40, align 8, !tbaa !58
  %43 = getelementptr inbounds %struct.NlaTrack, ptr %39, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  %45 = icmp eq ptr %44, null
  br i1 %45, label %35, label %46

46:                                               ; preds = %38, %46
  %47 = phi ptr [ %51, %46 ], [ %44, %38 ]
  %48 = getelementptr inbounds %struct.NlaStrip, ptr %47, i64 0, i32 23
  %49 = load i32, ptr %48, align 8, !tbaa !61
  %50 = and i32 %49, -17
  store i32 %50, ptr %48, align 8, !tbaa !61
  %51 = load ptr, ptr %47, align 8, !tbaa !48
  %52 = icmp eq ptr %51, null
  br i1 %52, label %35, label %46, !llvm.loop !126

53:                                               ; preds = %35, %32
  %54 = load ptr, ptr %0, align 8, !tbaa !114
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 6
  %58 = load i32, ptr %57, align 4, !tbaa !127
  %59 = add nsw i32 %58, -1
  store i32 %59, ptr %57, align 4, !tbaa !127
  br label %60

60:                                               ; preds = %56, %53
  %61 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !124
  store ptr %62, ptr %0, align 8, !tbaa !114
  store ptr null, ptr %61, align 8, !tbaa !124
  store ptr null, ptr %13, align 8, !tbaa !78
  %63 = load i32, ptr %8, align 8, !tbaa !77
  %64 = and i32 %63, -5
  store i32 %64, ptr %8, align 8, !tbaa !77
  br label %65

65:                                               ; preds = %7, %1, %3, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #4

declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nounwind }

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
!35 = !{!"NlaStrip", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !36, i64 40, !39, i64 48, !39, i64 64, !37, i64 80, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !41, i64 184, !41, i64 186, !41, i64 188, !41, i64 190, !36, i64 192, !42, i64 200, !42, i64 204}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"float", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"int", !37, i64 0}
!43 = !{!35, !36, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!35, !36, i64 32}
!48 = !{!36, !36, i64 0}
!49 = !{!50, !36, i64 16}
!50 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !39, i64 16, !42, i64 32, !42, i64 36, !37, i64 40}
!51 = distinct !{!51, !45, !46}
!52 = !{!39, !36, i64 0}
!53 = !{!50, !36, i64 0}
!54 = distinct !{!54, !45, !46}
!55 = distinct !{!55, !45, !46}
!56 = distinct !{!56, !45, !46}
!57 = distinct !{!57, !45, !46}
!58 = !{!50, !42, i64 32}
!59 = !{!50, !42, i64 36}
!60 = distinct !{!60, !45, !46}
!61 = !{!35, !42, i64 200}
!62 = !{!35, !40, i64 160}
!63 = !{!35, !40, i64 152}
!64 = !{!35, !40, i64 164}
!65 = !{!35, !40, i64 156}
!66 = !{!35, !40, i64 172}
!67 = !{!35, !40, i64 168}
!68 = !{!69, !36, i64 32}
!69 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !36, i64 40, !39, i64 48, !39, i64 64, !42, i64 80, !42, i64 84, !41, i64 88, !41, i64 90, !40, i64 92}
!70 = distinct !{!70, !45, !46}
!71 = distinct !{!71, !45, !46}
!72 = !{!37, !37, i64 0}
!73 = !{!35, !41, i64 190}
!74 = distinct !{!74, !45, !46}
!75 = distinct !{!75, !45, !46}
!76 = !{!35, !41, i64 186}
!77 = !{!69, !42, i64 80}
!78 = !{!69, !36, i64 40}
!79 = distinct !{!79, !45, !46}
!80 = distinct !{!80, !45, !46}
!81 = !{!39, !36, i64 8}
!82 = !{!35, !36, i64 8}
!83 = distinct !{!83, !45, !46}
!84 = distinct !{!84, !45, !46}
!85 = distinct !{!85, !45, !46}
!86 = distinct !{!86, !45, !46}
!87 = distinct !{!87, !45, !46}
!88 = !{!35, !36, i64 24}
!89 = distinct !{!89, !45, !46}
!90 = distinct !{!90, !45, !46}
!91 = !{!69, !36, i64 24}
!92 = distinct !{!92, !45, !46}
!93 = !{!40, !40, i64 0}
!94 = !{!50, !36, i64 24}
!95 = distinct !{!95, !45, !46}
!96 = distinct !{!96, !45, !46}
!97 = distinct !{!97, !45, !46}
!98 = distinct !{!98, !45, !46}
!99 = !{!35, !36, i64 48}
!100 = distinct !{!100, !45, !46}
!101 = distinct !{!101, !45, !46}
!102 = !{!103, !41, i64 72}
!103 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !42, i64 64, !40, i64 68, !41, i64 72, !41, i64 74, !42, i64 76, !36, i64 80, !42, i64 88, !37, i64 92, !40, i64 104, !40, i64 108}
!104 = !{!103, !36, i64 80}
!105 = !{!50, !36, i64 8}
!106 = distinct !{!106, !45, !46}
!107 = !{!35, !40, i64 176}
!108 = !{!35, !40, i64 180}
!109 = distinct !{!109, !45, !46}
!110 = distinct !{!110, !45, !46}
!111 = distinct !{!111, !45, !46}
!112 = !{!35, !41, i64 184}
!113 = distinct !{!113, !45, !46}
!114 = !{!69, !36, i64 0}
!115 = distinct !{!115, !45, !46}
!116 = distinct !{!116, !45, !46}
!117 = distinct !{!117, !45, !46}
!118 = distinct !{!118, !45, !46}
!119 = !{!120, !42, i64 2100}
!120 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !42, i64 2096, !42, i64 2100, !37, i64 2104, !42, i64 2108, !42, i64 2112, !37, i64 2116}
!121 = distinct !{!121, !45, !46}
!122 = distinct !{!122, !45, !46}
!123 = distinct !{!123, !45, !46}
!124 = !{!69, !36, i64 8}
!125 = distinct !{!125, !45, !46}
!126 = distinct !{!126, !45, !46}
!127 = !{!128, !42, i64 100}
!128 = !{!"bAction", !129, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196}
!129 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !36, i64 112}
